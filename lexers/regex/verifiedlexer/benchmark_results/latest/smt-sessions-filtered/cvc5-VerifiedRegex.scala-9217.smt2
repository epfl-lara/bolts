; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489412 () Bool)

(assert start!489412)

(declare-fun bs!1150473 () Bool)

(declare-fun b!4775154 () Bool)

(assert (= bs!1150473 (and b!4775154 start!489412)))

(declare-fun lambda!226465 () Int)

(declare-fun lambda!226464 () Int)

(assert (=> bs!1150473 (not (= lambda!226465 lambda!226464))))

(assert (=> b!4775154 true))

(declare-fun b!4775153 () Bool)

(declare-fun e!2981084 () Bool)

(declare-fun tp!1357041 () Bool)

(assert (=> b!4775153 (= e!2981084 tp!1357041)))

(declare-fun res!2026192 () Bool)

(declare-fun e!2981081 () Bool)

(assert (=> start!489412 (=> (not res!2026192) (not e!2981081))))

(declare-datatypes ((K!15372 0))(
  ( (K!15373 (val!20603 Int)) )
))
(declare-datatypes ((V!15618 0))(
  ( (V!15619 (val!20604 Int)) )
))
(declare-datatypes ((tuple2!56180 0))(
  ( (tuple2!56181 (_1!31384 K!15372) (_2!31384 V!15618)) )
))
(declare-datatypes ((List!53951 0))(
  ( (Nil!53827) (Cons!53827 (h!60241 tuple2!56180) (t!361401 List!53951)) )
))
(declare-datatypes ((tuple2!56182 0))(
  ( (tuple2!56183 (_1!31385 (_ BitVec 64)) (_2!31385 List!53951)) )
))
(declare-datatypes ((List!53952 0))(
  ( (Nil!53828) (Cons!53828 (h!60242 tuple2!56182) (t!361402 List!53952)) )
))
(declare-datatypes ((ListLongMap!5007 0))(
  ( (ListLongMap!5008 (toList!6589 List!53952)) )
))
(declare-fun lm!2709 () ListLongMap!5007)

(declare-fun forall!12021 (List!53952 Int) Bool)

(assert (=> start!489412 (= res!2026192 (forall!12021 (toList!6589 lm!2709) lambda!226464))))

(assert (=> start!489412 e!2981081))

(declare-fun inv!69399 (ListLongMap!5007) Bool)

(assert (=> start!489412 (and (inv!69399 lm!2709) e!2981084)))

(assert (=> start!489412 true))

(declare-fun tp_is_empty!32941 () Bool)

(assert (=> start!489412 tp_is_empty!32941))

(declare-fun tp_is_empty!32943 () Bool)

(assert (=> start!489412 tp_is_empty!32943))

(declare-fun e!2981082 () Bool)

(declare-fun e!2981083 () Bool)

(assert (=> b!4775154 (= e!2981082 e!2981083)))

(declare-fun res!2026193 () Bool)

(assert (=> b!4775154 (=> (not res!2026193) (not e!2981083))))

(assert (=> b!4775154 (= res!2026193 (forall!12021 (toList!6589 lm!2709) lambda!226465))))

(declare-fun b!4775155 () Bool)

(declare-fun res!2026194 () Bool)

(assert (=> b!4775155 (=> res!2026194 e!2981082)))

(declare-fun lt!1938176 () (_ BitVec 64))

(assert (=> b!4775155 (= res!2026194 (or (not (is-Cons!53828 (toList!6589 lm!2709))) (not (= (_1!31385 (h!60242 (toList!6589 lm!2709))) lt!1938176))))))

(declare-fun b!4775156 () Bool)

(declare-fun res!2026196 () Bool)

(assert (=> b!4775156 (=> (not res!2026196) (not e!2981081))))

(declare-datatypes ((Hashable!6753 0))(
  ( (HashableExt!6752 (__x!32776 Int)) )
))
(declare-fun hashF!1687 () Hashable!6753)

(declare-fun allKeysSameHashInMap!2158 (ListLongMap!5007 Hashable!6753) Bool)

(assert (=> b!4775156 (= res!2026196 (allKeysSameHashInMap!2158 lm!2709 hashF!1687))))

(declare-fun b!4775157 () Bool)

(declare-fun contains!17291 (List!53952 tuple2!56182) Bool)

(assert (=> b!4775157 (= e!2981083 (contains!17291 (toList!6589 lm!2709) (h!60242 (toList!6589 lm!2709))))))

(declare-fun b!4775158 () Bool)

(assert (=> b!4775158 (= e!2981081 (not e!2981082))))

(declare-fun res!2026195 () Bool)

(assert (=> b!4775158 (=> res!2026195 e!2981082)))

(declare-datatypes ((Option!12838 0))(
  ( (None!12837) (Some!12837 (v!47994 tuple2!56180)) )
))
(declare-fun lt!1938180 () Option!12838)

(declare-fun v!11584 () V!15618)

(declare-fun get!18246 (Option!12838) tuple2!56180)

(assert (=> b!4775158 (= res!2026195 (not (= (_2!31384 (get!18246 lt!1938180)) v!11584)))))

(declare-fun isDefined!9982 (Option!12838) Bool)

(assert (=> b!4775158 (isDefined!9982 lt!1938180)))

(declare-fun lt!1938174 () List!53951)

(declare-fun key!6641 () K!15372)

(declare-fun getPair!741 (List!53951 K!15372) Option!12838)

(assert (=> b!4775158 (= lt!1938180 (getPair!741 lt!1938174 key!6641))))

(declare-fun lt!1938179 () tuple2!56182)

(declare-datatypes ((Unit!138818 0))(
  ( (Unit!138819) )
))
(declare-fun lt!1938181 () Unit!138818)

(declare-fun forallContained!3978 (List!53952 Int tuple2!56182) Unit!138818)

(assert (=> b!4775158 (= lt!1938181 (forallContained!3978 (toList!6589 lm!2709) lambda!226464 lt!1938179))))

(declare-fun lt!1938183 () Unit!138818)

(declare-fun lemmaInGenMapThenGetPairDefined!515 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> b!4775158 (= lt!1938183 (lemmaInGenMapThenGetPairDefined!515 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938178 () Unit!138818)

(assert (=> b!4775158 (= lt!1938178 (forallContained!3978 (toList!6589 lm!2709) lambda!226464 lt!1938179))))

(assert (=> b!4775158 (contains!17291 (toList!6589 lm!2709) lt!1938179)))

(assert (=> b!4775158 (= lt!1938179 (tuple2!56183 lt!1938176 lt!1938174))))

(declare-fun lt!1938177 () Unit!138818)

(declare-fun lemmaGetValueImpliesTupleContained!544 (ListLongMap!5007 (_ BitVec 64) List!53951) Unit!138818)

(assert (=> b!4775158 (= lt!1938177 (lemmaGetValueImpliesTupleContained!544 lm!2709 lt!1938176 lt!1938174))))

(declare-fun apply!12816 (ListLongMap!5007 (_ BitVec 64)) List!53951)

(assert (=> b!4775158 (= lt!1938174 (apply!12816 lm!2709 lt!1938176))))

(declare-fun contains!17292 (ListLongMap!5007 (_ BitVec 64)) Bool)

(assert (=> b!4775158 (contains!17292 lm!2709 lt!1938176)))

(declare-fun hash!4724 (Hashable!6753 K!15372) (_ BitVec 64))

(assert (=> b!4775158 (= lt!1938176 (hash!4724 hashF!1687 key!6641))))

(declare-fun lt!1938182 () Unit!138818)

(declare-fun lemmaInGenMapThenLongMapContainsHash!957 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> b!4775158 (= lt!1938182 (lemmaInGenMapThenLongMapContainsHash!957 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6065 0))(
  ( (ListMap!6066 (toList!6590 List!53951)) )
))
(declare-fun contains!17293 (ListMap!6065 K!15372) Bool)

(declare-fun extractMap!2284 (List!53952) ListMap!6065)

(assert (=> b!4775158 (contains!17293 (extractMap!2284 (toList!6589 lm!2709)) key!6641)))

(declare-fun lt!1938175 () Unit!138818)

(declare-fun lemmaListContainsThenExtractedMapContains!605 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> b!4775158 (= lt!1938175 (lemmaListContainsThenExtractedMapContains!605 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775159 () Bool)

(declare-fun res!2026191 () Bool)

(assert (=> b!4775159 (=> (not res!2026191) (not e!2981081))))

(declare-fun containsKeyBiggerList!409 (List!53952 K!15372) Bool)

(assert (=> b!4775159 (= res!2026191 (containsKeyBiggerList!409 (toList!6589 lm!2709) key!6641))))

(assert (= (and start!489412 res!2026192) b!4775156))

(assert (= (and b!4775156 res!2026196) b!4775159))

(assert (= (and b!4775159 res!2026191) b!4775158))

(assert (= (and b!4775158 (not res!2026195)) b!4775155))

(assert (= (and b!4775155 (not res!2026194)) b!4775154))

(assert (= (and b!4775154 res!2026193) b!4775157))

(assert (= start!489412 b!4775153))

(declare-fun m!5749492 () Bool)

(assert (=> b!4775154 m!5749492))

(declare-fun m!5749494 () Bool)

(assert (=> b!4775158 m!5749494))

(declare-fun m!5749496 () Bool)

(assert (=> b!4775158 m!5749496))

(declare-fun m!5749498 () Bool)

(assert (=> b!4775158 m!5749498))

(declare-fun m!5749500 () Bool)

(assert (=> b!4775158 m!5749500))

(declare-fun m!5749502 () Bool)

(assert (=> b!4775158 m!5749502))

(declare-fun m!5749504 () Bool)

(assert (=> b!4775158 m!5749504))

(declare-fun m!5749506 () Bool)

(assert (=> b!4775158 m!5749506))

(declare-fun m!5749508 () Bool)

(assert (=> b!4775158 m!5749508))

(declare-fun m!5749510 () Bool)

(assert (=> b!4775158 m!5749510))

(assert (=> b!4775158 m!5749494))

(assert (=> b!4775158 m!5749506))

(declare-fun m!5749512 () Bool)

(assert (=> b!4775158 m!5749512))

(declare-fun m!5749514 () Bool)

(assert (=> b!4775158 m!5749514))

(declare-fun m!5749516 () Bool)

(assert (=> b!4775158 m!5749516))

(declare-fun m!5749518 () Bool)

(assert (=> b!4775158 m!5749518))

(declare-fun m!5749520 () Bool)

(assert (=> b!4775158 m!5749520))

(declare-fun m!5749522 () Bool)

(assert (=> start!489412 m!5749522))

(declare-fun m!5749524 () Bool)

(assert (=> start!489412 m!5749524))

(declare-fun m!5749526 () Bool)

(assert (=> b!4775156 m!5749526))

(declare-fun m!5749528 () Bool)

(assert (=> b!4775157 m!5749528))

(declare-fun m!5749530 () Bool)

(assert (=> b!4775159 m!5749530))

(push 1)

(assert (not b!4775159))

(assert (not start!489412))

(assert (not b!4775157))

(assert (not b!4775158))

(assert (not b!4775156))

(assert tp_is_empty!32943)

(assert (not b!4775153))

(assert tp_is_empty!32941)

(assert (not b!4775154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1150475 () Bool)

(declare-fun d!1526004 () Bool)

(assert (= bs!1150475 (and d!1526004 start!489412)))

(declare-fun lambda!226478 () Int)

(assert (=> bs!1150475 (not (= lambda!226478 lambda!226464))))

(declare-fun bs!1150476 () Bool)

(assert (= bs!1150476 (and d!1526004 b!4775154)))

(assert (=> bs!1150476 (= lambda!226478 lambda!226465)))

(assert (=> d!1526004 true))

(assert (=> d!1526004 (= (allKeysSameHashInMap!2158 lm!2709 hashF!1687) (forall!12021 (toList!6589 lm!2709) lambda!226478))))

(declare-fun bs!1150477 () Bool)

(assert (= bs!1150477 d!1526004))

(declare-fun m!5749572 () Bool)

(assert (=> bs!1150477 m!5749572))

(assert (=> b!4775156 d!1526004))

(declare-fun d!1526006 () Bool)

(declare-fun res!2026219 () Bool)

(declare-fun e!2981101 () Bool)

(assert (=> d!1526006 (=> res!2026219 e!2981101)))

(assert (=> d!1526006 (= res!2026219 (is-Nil!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526006 (= (forall!12021 (toList!6589 lm!2709) lambda!226464) e!2981101)))

(declare-fun b!4775189 () Bool)

(declare-fun e!2981102 () Bool)

(assert (=> b!4775189 (= e!2981101 e!2981102)))

(declare-fun res!2026220 () Bool)

(assert (=> b!4775189 (=> (not res!2026220) (not e!2981102))))

(declare-fun dynLambda!21991 (Int tuple2!56182) Bool)

(assert (=> b!4775189 (= res!2026220 (dynLambda!21991 lambda!226464 (h!60242 (toList!6589 lm!2709))))))

(declare-fun b!4775190 () Bool)

(assert (=> b!4775190 (= e!2981102 (forall!12021 (t!361402 (toList!6589 lm!2709)) lambda!226464))))

(assert (= (and d!1526006 (not res!2026219)) b!4775189))

(assert (= (and b!4775189 res!2026220) b!4775190))

(declare-fun b_lambda!184927 () Bool)

(assert (=> (not b_lambda!184927) (not b!4775189)))

(declare-fun m!5749574 () Bool)

(assert (=> b!4775189 m!5749574))

(declare-fun m!5749576 () Bool)

(assert (=> b!4775190 m!5749576))

(assert (=> start!489412 d!1526006))

(declare-fun d!1526008 () Bool)

(declare-fun isStrictlySorted!831 (List!53952) Bool)

(assert (=> d!1526008 (= (inv!69399 lm!2709) (isStrictlySorted!831 (toList!6589 lm!2709)))))

(declare-fun bs!1150478 () Bool)

(assert (= bs!1150478 d!1526008))

(declare-fun m!5749578 () Bool)

(assert (=> bs!1150478 m!5749578))

(assert (=> start!489412 d!1526008))

(declare-fun d!1526010 () Bool)

(declare-fun lt!1938216 () Bool)

(declare-fun content!9612 (List!53952) (Set tuple2!56182))

(assert (=> d!1526010 (= lt!1938216 (set.member (h!60242 (toList!6589 lm!2709)) (content!9612 (toList!6589 lm!2709))))))

(declare-fun e!2981107 () Bool)

(assert (=> d!1526010 (= lt!1938216 e!2981107)))

(declare-fun res!2026225 () Bool)

(assert (=> d!1526010 (=> (not res!2026225) (not e!2981107))))

(assert (=> d!1526010 (= res!2026225 (is-Cons!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526010 (= (contains!17291 (toList!6589 lm!2709) (h!60242 (toList!6589 lm!2709))) lt!1938216)))

(declare-fun b!4775195 () Bool)

(declare-fun e!2981108 () Bool)

(assert (=> b!4775195 (= e!2981107 e!2981108)))

(declare-fun res!2026226 () Bool)

(assert (=> b!4775195 (=> res!2026226 e!2981108)))

(assert (=> b!4775195 (= res!2026226 (= (h!60242 (toList!6589 lm!2709)) (h!60242 (toList!6589 lm!2709))))))

(declare-fun b!4775196 () Bool)

(assert (=> b!4775196 (= e!2981108 (contains!17291 (t!361402 (toList!6589 lm!2709)) (h!60242 (toList!6589 lm!2709))))))

(assert (= (and d!1526010 res!2026225) b!4775195))

(assert (= (and b!4775195 (not res!2026226)) b!4775196))

(declare-fun m!5749580 () Bool)

(assert (=> d!1526010 m!5749580))

(declare-fun m!5749582 () Bool)

(assert (=> d!1526010 m!5749582))

(declare-fun m!5749584 () Bool)

(assert (=> b!4775196 m!5749584))

(assert (=> b!4775157 d!1526010))

(declare-fun bs!1150479 () Bool)

(declare-fun d!1526012 () Bool)

(assert (= bs!1150479 (and d!1526012 start!489412)))

(declare-fun lambda!226481 () Int)

(assert (=> bs!1150479 (= lambda!226481 lambda!226464)))

(declare-fun bs!1150480 () Bool)

(assert (= bs!1150480 (and d!1526012 b!4775154)))

(assert (=> bs!1150480 (not (= lambda!226481 lambda!226465))))

(declare-fun bs!1150481 () Bool)

(assert (= bs!1150481 (and d!1526012 d!1526004)))

(assert (=> bs!1150481 (not (= lambda!226481 lambda!226478))))

(assert (=> d!1526012 (contains!17293 (extractMap!2284 (toList!6589 lm!2709)) key!6641)))

(declare-fun lt!1938219 () Unit!138818)

(declare-fun choose!34126 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> d!1526012 (= lt!1938219 (choose!34126 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526012 (forall!12021 (toList!6589 lm!2709) lambda!226481)))

(assert (=> d!1526012 (= (lemmaListContainsThenExtractedMapContains!605 lm!2709 key!6641 hashF!1687) lt!1938219)))

(declare-fun bs!1150482 () Bool)

(assert (= bs!1150482 d!1526012))

(assert (=> bs!1150482 m!5749506))

(assert (=> bs!1150482 m!5749506))

(assert (=> bs!1150482 m!5749512))

(declare-fun m!5749586 () Bool)

(assert (=> bs!1150482 m!5749586))

(declare-fun m!5749588 () Bool)

(assert (=> bs!1150482 m!5749588))

(assert (=> b!4775158 d!1526012))

(declare-fun d!1526016 () Bool)

(assert (=> d!1526016 (contains!17291 (toList!6589 lm!2709) (tuple2!56183 lt!1938176 lt!1938174))))

(declare-fun lt!1938222 () Unit!138818)

(declare-fun choose!34127 (ListLongMap!5007 (_ BitVec 64) List!53951) Unit!138818)

(assert (=> d!1526016 (= lt!1938222 (choose!34127 lm!2709 lt!1938176 lt!1938174))))

(assert (=> d!1526016 (contains!17292 lm!2709 lt!1938176)))

(assert (=> d!1526016 (= (lemmaGetValueImpliesTupleContained!544 lm!2709 lt!1938176 lt!1938174) lt!1938222)))

(declare-fun bs!1150483 () Bool)

(assert (= bs!1150483 d!1526016))

(declare-fun m!5749590 () Bool)

(assert (=> bs!1150483 m!5749590))

(declare-fun m!5749592 () Bool)

(assert (=> bs!1150483 m!5749592))

(assert (=> bs!1150483 m!5749508))

(assert (=> b!4775158 d!1526016))

(declare-fun d!1526018 () Bool)

(declare-fun lt!1938223 () Bool)

(assert (=> d!1526018 (= lt!1938223 (set.member lt!1938179 (content!9612 (toList!6589 lm!2709))))))

(declare-fun e!2981109 () Bool)

(assert (=> d!1526018 (= lt!1938223 e!2981109)))

(declare-fun res!2026227 () Bool)

(assert (=> d!1526018 (=> (not res!2026227) (not e!2981109))))

(assert (=> d!1526018 (= res!2026227 (is-Cons!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526018 (= (contains!17291 (toList!6589 lm!2709) lt!1938179) lt!1938223)))

(declare-fun b!4775198 () Bool)

(declare-fun e!2981110 () Bool)

(assert (=> b!4775198 (= e!2981109 e!2981110)))

(declare-fun res!2026228 () Bool)

(assert (=> b!4775198 (=> res!2026228 e!2981110)))

(assert (=> b!4775198 (= res!2026228 (= (h!60242 (toList!6589 lm!2709)) lt!1938179))))

(declare-fun b!4775199 () Bool)

(assert (=> b!4775199 (= e!2981110 (contains!17291 (t!361402 (toList!6589 lm!2709)) lt!1938179))))

(assert (= (and d!1526018 res!2026227) b!4775198))

(assert (= (and b!4775198 (not res!2026228)) b!4775199))

(assert (=> d!1526018 m!5749580))

(declare-fun m!5749594 () Bool)

(assert (=> d!1526018 m!5749594))

(declare-fun m!5749596 () Bool)

(assert (=> b!4775199 m!5749596))

(assert (=> b!4775158 d!1526018))

(declare-fun b!4775242 () Bool)

(declare-fun e!2981138 () Bool)

(declare-fun e!2981141 () Bool)

(assert (=> b!4775242 (= e!2981138 e!2981141)))

(declare-fun res!2026248 () Bool)

(assert (=> b!4775242 (=> (not res!2026248) (not e!2981141))))

(declare-datatypes ((Option!12840 0))(
  ( (None!12839) (Some!12839 (v!47999 V!15618)) )
))
(declare-fun isDefined!9984 (Option!12840) Bool)

(declare-fun getValueByKey!2245 (List!53951 K!15372) Option!12840)

(assert (=> b!4775242 (= res!2026248 (isDefined!9984 (getValueByKey!2245 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641)))))

(declare-fun d!1526020 () Bool)

(assert (=> d!1526020 e!2981138))

(declare-fun res!2026249 () Bool)

(assert (=> d!1526020 (=> res!2026249 e!2981138)))

(declare-fun e!2981143 () Bool)

(assert (=> d!1526020 (= res!2026249 e!2981143)))

(declare-fun res!2026247 () Bool)

(assert (=> d!1526020 (=> (not res!2026247) (not e!2981143))))

(declare-fun lt!1938248 () Bool)

(assert (=> d!1526020 (= res!2026247 (not lt!1938248))))

(declare-fun lt!1938243 () Bool)

(assert (=> d!1526020 (= lt!1938248 lt!1938243)))

(declare-fun lt!1938244 () Unit!138818)

(declare-fun e!2981140 () Unit!138818)

(assert (=> d!1526020 (= lt!1938244 e!2981140)))

(declare-fun c!814288 () Bool)

(assert (=> d!1526020 (= c!814288 lt!1938243)))

(declare-fun containsKey!3724 (List!53951 K!15372) Bool)

(assert (=> d!1526020 (= lt!1938243 (containsKey!3724 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(assert (=> d!1526020 (= (contains!17293 (extractMap!2284 (toList!6589 lm!2709)) key!6641) lt!1938248)))

(declare-fun b!4775243 () Bool)

(declare-datatypes ((List!53955 0))(
  ( (Nil!53831) (Cons!53831 (h!60245 K!15372) (t!361405 List!53955)) )
))
(declare-fun e!2981139 () List!53955)

(declare-fun getKeysList!1023 (List!53951) List!53955)

(assert (=> b!4775243 (= e!2981139 (getKeysList!1023 (toList!6590 (extractMap!2284 (toList!6589 lm!2709)))))))

(declare-fun b!4775244 () Bool)

(declare-fun lt!1938245 () Unit!138818)

(assert (=> b!4775244 (= e!2981140 lt!1938245)))

(declare-fun lt!1938247 () Unit!138818)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2039 (List!53951 K!15372) Unit!138818)

(assert (=> b!4775244 (= lt!1938247 (lemmaContainsKeyImpliesGetValueByKeyDefined!2039 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(assert (=> b!4775244 (isDefined!9984 (getValueByKey!2245 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(declare-fun lt!1938249 () Unit!138818)

(assert (=> b!4775244 (= lt!1938249 lt!1938247)))

(declare-fun lemmaInListThenGetKeysListContains!1018 (List!53951 K!15372) Unit!138818)

(assert (=> b!4775244 (= lt!1938245 (lemmaInListThenGetKeysListContains!1018 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(declare-fun call!334561 () Bool)

(assert (=> b!4775244 call!334561))

(declare-fun b!4775245 () Bool)

(declare-fun e!2981142 () Unit!138818)

(assert (=> b!4775245 (= e!2981140 e!2981142)))

(declare-fun c!814287 () Bool)

(assert (=> b!4775245 (= c!814287 call!334561)))

(declare-fun b!4775246 () Bool)

(assert (=> b!4775246 false))

(declare-fun lt!1938246 () Unit!138818)

(declare-fun lt!1938250 () Unit!138818)

(assert (=> b!4775246 (= lt!1938246 lt!1938250)))

(assert (=> b!4775246 (containsKey!3724 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1022 (List!53951 K!15372) Unit!138818)

(assert (=> b!4775246 (= lt!1938250 (lemmaInGetKeysListThenContainsKey!1022 (toList!6590 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(declare-fun Unit!138822 () Unit!138818)

(assert (=> b!4775246 (= e!2981142 Unit!138822)))

(declare-fun b!4775247 () Bool)

(declare-fun keys!19573 (ListMap!6065) List!53955)

(assert (=> b!4775247 (= e!2981139 (keys!19573 (extractMap!2284 (toList!6589 lm!2709))))))

(declare-fun b!4775248 () Bool)

(declare-fun contains!17297 (List!53955 K!15372) Bool)

(assert (=> b!4775248 (= e!2981143 (not (contains!17297 (keys!19573 (extractMap!2284 (toList!6589 lm!2709))) key!6641)))))

(declare-fun bm!334556 () Bool)

(assert (=> bm!334556 (= call!334561 (contains!17297 e!2981139 key!6641))))

(declare-fun c!814286 () Bool)

(assert (=> bm!334556 (= c!814286 c!814288)))

(declare-fun b!4775249 () Bool)

(assert (=> b!4775249 (= e!2981141 (contains!17297 (keys!19573 (extractMap!2284 (toList!6589 lm!2709))) key!6641))))

(declare-fun b!4775250 () Bool)

(declare-fun Unit!138823 () Unit!138818)

(assert (=> b!4775250 (= e!2981142 Unit!138823)))

(assert (= (and d!1526020 c!814288) b!4775244))

(assert (= (and d!1526020 (not c!814288)) b!4775245))

(assert (= (and b!4775245 c!814287) b!4775246))

(assert (= (and b!4775245 (not c!814287)) b!4775250))

(assert (= (or b!4775244 b!4775245) bm!334556))

(assert (= (and bm!334556 c!814286) b!4775243))

(assert (= (and bm!334556 (not c!814286)) b!4775247))

(assert (= (and d!1526020 res!2026247) b!4775248))

(assert (= (and d!1526020 (not res!2026249)) b!4775242))

(assert (= (and b!4775242 res!2026248) b!4775249))

(declare-fun m!5749612 () Bool)

(assert (=> b!4775242 m!5749612))

(assert (=> b!4775242 m!5749612))

(declare-fun m!5749614 () Bool)

(assert (=> b!4775242 m!5749614))

(declare-fun m!5749616 () Bool)

(assert (=> d!1526020 m!5749616))

(assert (=> b!4775247 m!5749506))

(declare-fun m!5749618 () Bool)

(assert (=> b!4775247 m!5749618))

(declare-fun m!5749620 () Bool)

(assert (=> b!4775243 m!5749620))

(assert (=> b!4775248 m!5749506))

(assert (=> b!4775248 m!5749618))

(assert (=> b!4775248 m!5749618))

(declare-fun m!5749622 () Bool)

(assert (=> b!4775248 m!5749622))

(declare-fun m!5749624 () Bool)

(assert (=> b!4775244 m!5749624))

(assert (=> b!4775244 m!5749612))

(assert (=> b!4775244 m!5749612))

(assert (=> b!4775244 m!5749614))

(declare-fun m!5749626 () Bool)

(assert (=> b!4775244 m!5749626))

(declare-fun m!5749628 () Bool)

(assert (=> bm!334556 m!5749628))

(assert (=> b!4775249 m!5749506))

(assert (=> b!4775249 m!5749618))

(assert (=> b!4775249 m!5749618))

(assert (=> b!4775249 m!5749622))

(assert (=> b!4775246 m!5749616))

(declare-fun m!5749630 () Bool)

(assert (=> b!4775246 m!5749630))

(assert (=> b!4775158 d!1526020))

(declare-fun d!1526024 () Bool)

(declare-datatypes ((Option!12841 0))(
  ( (None!12840) (Some!12840 (v!48001 List!53951)) )
))
(declare-fun get!18248 (Option!12841) List!53951)

(declare-fun getValueByKey!2246 (List!53952 (_ BitVec 64)) Option!12841)

(assert (=> d!1526024 (= (apply!12816 lm!2709 lt!1938176) (get!18248 (getValueByKey!2246 (toList!6589 lm!2709) lt!1938176)))))

(declare-fun bs!1150484 () Bool)

(assert (= bs!1150484 d!1526024))

(declare-fun m!5749632 () Bool)

(assert (=> bs!1150484 m!5749632))

(assert (=> bs!1150484 m!5749632))

(declare-fun m!5749634 () Bool)

(assert (=> bs!1150484 m!5749634))

(assert (=> b!4775158 d!1526024))

(declare-fun bs!1150488 () Bool)

(declare-fun d!1526026 () Bool)

(assert (= bs!1150488 (and d!1526026 start!489412)))

(declare-fun lambda!226491 () Int)

(assert (=> bs!1150488 (= lambda!226491 lambda!226464)))

(declare-fun bs!1150489 () Bool)

(assert (= bs!1150489 (and d!1526026 b!4775154)))

(assert (=> bs!1150489 (not (= lambda!226491 lambda!226465))))

(declare-fun bs!1150490 () Bool)

(assert (= bs!1150490 (and d!1526026 d!1526004)))

(assert (=> bs!1150490 (not (= lambda!226491 lambda!226478))))

(declare-fun bs!1150491 () Bool)

(assert (= bs!1150491 (and d!1526026 d!1526012)))

(assert (=> bs!1150491 (= lambda!226491 lambda!226481)))

(declare-fun e!2981154 () Bool)

(declare-fun lt!1938273 () List!53951)

(declare-fun lt!1938276 () (_ BitVec 64))

(declare-fun b!4775268 () Bool)

(assert (=> b!4775268 (= e!2981154 (= (getValueByKey!2246 (toList!6589 lm!2709) lt!1938276) (Some!12840 lt!1938273)))))

(declare-fun e!2981155 () Bool)

(assert (=> d!1526026 e!2981155))

(declare-fun res!2026265 () Bool)

(assert (=> d!1526026 (=> (not res!2026265) (not e!2981155))))

(assert (=> d!1526026 (= res!2026265 (forall!12021 (toList!6589 lm!2709) lambda!226491))))

(declare-fun lt!1938279 () Unit!138818)

(declare-fun choose!34128 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> d!1526026 (= lt!1938279 (choose!34128 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526026 (forall!12021 (toList!6589 lm!2709) lambda!226491)))

(assert (=> d!1526026 (= (lemmaInGenMapThenGetPairDefined!515 lm!2709 key!6641 hashF!1687) lt!1938279)))

(declare-fun b!4775266 () Bool)

(declare-fun res!2026264 () Bool)

(assert (=> b!4775266 (=> (not res!2026264) (not e!2981155))))

(assert (=> b!4775266 (= res!2026264 (contains!17293 (extractMap!2284 (toList!6589 lm!2709)) key!6641))))

(declare-fun b!4775267 () Bool)

(assert (=> b!4775267 (= e!2981155 (isDefined!9982 (getPair!741 (apply!12816 lm!2709 (hash!4724 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1938280 () Unit!138818)

(assert (=> b!4775267 (= lt!1938280 (forallContained!3978 (toList!6589 lm!2709) lambda!226491 (tuple2!56183 (hash!4724 hashF!1687 key!6641) (apply!12816 lm!2709 (hash!4724 hashF!1687 key!6641)))))))

(declare-fun lt!1938278 () Unit!138818)

(declare-fun lt!1938275 () Unit!138818)

(assert (=> b!4775267 (= lt!1938278 lt!1938275)))

(assert (=> b!4775267 (contains!17291 (toList!6589 lm!2709) (tuple2!56183 lt!1938276 lt!1938273))))

(assert (=> b!4775267 (= lt!1938275 (lemmaGetValueImpliesTupleContained!544 lm!2709 lt!1938276 lt!1938273))))

(assert (=> b!4775267 e!2981154))

(declare-fun res!2026266 () Bool)

(assert (=> b!4775267 (=> (not res!2026266) (not e!2981154))))

(assert (=> b!4775267 (= res!2026266 (contains!17292 lm!2709 lt!1938276))))

(assert (=> b!4775267 (= lt!1938273 (apply!12816 lm!2709 (hash!4724 hashF!1687 key!6641)))))

(assert (=> b!4775267 (= lt!1938276 (hash!4724 hashF!1687 key!6641))))

(declare-fun lt!1938274 () Unit!138818)

(declare-fun lt!1938277 () Unit!138818)

(assert (=> b!4775267 (= lt!1938274 lt!1938277)))

(assert (=> b!4775267 (contains!17292 lm!2709 (hash!4724 hashF!1687 key!6641))))

(assert (=> b!4775267 (= lt!1938277 (lemmaInGenMapThenLongMapContainsHash!957 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775265 () Bool)

(declare-fun res!2026267 () Bool)

(assert (=> b!4775265 (=> (not res!2026267) (not e!2981155))))

(assert (=> b!4775265 (= res!2026267 (allKeysSameHashInMap!2158 lm!2709 hashF!1687))))

(assert (= (and d!1526026 res!2026265) b!4775265))

(assert (= (and b!4775265 res!2026267) b!4775266))

(assert (= (and b!4775266 res!2026264) b!4775267))

(assert (= (and b!4775267 res!2026266) b!4775268))

(assert (=> b!4775265 m!5749526))

(assert (=> b!4775267 m!5749510))

(declare-fun m!5749646 () Bool)

(assert (=> b!4775267 m!5749646))

(assert (=> b!4775267 m!5749510))

(declare-fun m!5749648 () Bool)

(assert (=> b!4775267 m!5749648))

(declare-fun m!5749650 () Bool)

(assert (=> b!4775267 m!5749650))

(assert (=> b!4775267 m!5749510))

(declare-fun m!5749652 () Bool)

(assert (=> b!4775267 m!5749652))

(declare-fun m!5749654 () Bool)

(assert (=> b!4775267 m!5749654))

(declare-fun m!5749656 () Bool)

(assert (=> b!4775267 m!5749656))

(declare-fun m!5749658 () Bool)

(assert (=> b!4775267 m!5749658))

(assert (=> b!4775267 m!5749520))

(declare-fun m!5749660 () Bool)

(assert (=> b!4775267 m!5749660))

(assert (=> b!4775267 m!5749652))

(assert (=> b!4775267 m!5749654))

(declare-fun m!5749662 () Bool)

(assert (=> d!1526026 m!5749662))

(declare-fun m!5749664 () Bool)

(assert (=> d!1526026 m!5749664))

(assert (=> d!1526026 m!5749662))

(assert (=> b!4775266 m!5749506))

(assert (=> b!4775266 m!5749506))

(assert (=> b!4775266 m!5749512))

(declare-fun m!5749666 () Bool)

(assert (=> b!4775268 m!5749666))

(assert (=> b!4775158 d!1526026))

(declare-fun d!1526032 () Bool)

(assert (=> d!1526032 (= (get!18246 lt!1938180) (v!47994 lt!1938180))))

(assert (=> b!4775158 d!1526032))

(declare-fun d!1526034 () Bool)

(declare-fun hash!4726 (Hashable!6753 K!15372) (_ BitVec 64))

(assert (=> d!1526034 (= (hash!4724 hashF!1687 key!6641) (hash!4726 hashF!1687 key!6641))))

(declare-fun bs!1150492 () Bool)

(assert (= bs!1150492 d!1526034))

(declare-fun m!5749668 () Bool)

(assert (=> bs!1150492 m!5749668))

(assert (=> b!4775158 d!1526034))

(declare-fun bs!1150493 () Bool)

(declare-fun d!1526036 () Bool)

(assert (= bs!1150493 (and d!1526036 b!4775154)))

(declare-fun lambda!226494 () Int)

(assert (=> bs!1150493 (not (= lambda!226494 lambda!226465))))

(declare-fun bs!1150494 () Bool)

(assert (= bs!1150494 (and d!1526036 start!489412)))

(assert (=> bs!1150494 (= lambda!226494 lambda!226464)))

(declare-fun bs!1150495 () Bool)

(assert (= bs!1150495 (and d!1526036 d!1526004)))

(assert (=> bs!1150495 (not (= lambda!226494 lambda!226478))))

(declare-fun bs!1150496 () Bool)

(assert (= bs!1150496 (and d!1526036 d!1526012)))

(assert (=> bs!1150496 (= lambda!226494 lambda!226481)))

(declare-fun bs!1150497 () Bool)

(assert (= bs!1150497 (and d!1526036 d!1526026)))

(assert (=> bs!1150497 (= lambda!226494 lambda!226491)))

(declare-fun lt!1938295 () ListMap!6065)

(declare-fun invariantList!1680 (List!53951) Bool)

(assert (=> d!1526036 (invariantList!1680 (toList!6590 lt!1938295))))

(declare-fun e!2981164 () ListMap!6065)

(assert (=> d!1526036 (= lt!1938295 e!2981164)))

(declare-fun c!814294 () Bool)

(assert (=> d!1526036 (= c!814294 (is-Cons!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526036 (forall!12021 (toList!6589 lm!2709) lambda!226494)))

(assert (=> d!1526036 (= (extractMap!2284 (toList!6589 lm!2709)) lt!1938295)))

(declare-fun b!4775282 () Bool)

(declare-fun addToMapMapFromBucket!1645 (List!53951 ListMap!6065) ListMap!6065)

(assert (=> b!4775282 (= e!2981164 (addToMapMapFromBucket!1645 (_2!31385 (h!60242 (toList!6589 lm!2709))) (extractMap!2284 (t!361402 (toList!6589 lm!2709)))))))

(declare-fun b!4775283 () Bool)

(assert (=> b!4775283 (= e!2981164 (ListMap!6066 Nil!53827))))

(assert (= (and d!1526036 c!814294) b!4775282))

(assert (= (and d!1526036 (not c!814294)) b!4775283))

(declare-fun m!5749678 () Bool)

(assert (=> d!1526036 m!5749678))

(declare-fun m!5749680 () Bool)

(assert (=> d!1526036 m!5749680))

(declare-fun m!5749682 () Bool)

(assert (=> b!4775282 m!5749682))

(assert (=> b!4775282 m!5749682))

(declare-fun m!5749684 () Bool)

(assert (=> b!4775282 m!5749684))

(assert (=> b!4775158 d!1526036))

(declare-fun bs!1150498 () Bool)

(declare-fun d!1526040 () Bool)

(assert (= bs!1150498 (and d!1526040 b!4775154)))

(declare-fun lambda!226497 () Int)

(assert (=> bs!1150498 (not (= lambda!226497 lambda!226465))))

(declare-fun bs!1150499 () Bool)

(assert (= bs!1150499 (and d!1526040 start!489412)))

(assert (=> bs!1150499 (= lambda!226497 lambda!226464)))

(declare-fun bs!1150500 () Bool)

(assert (= bs!1150500 (and d!1526040 d!1526036)))

(assert (=> bs!1150500 (= lambda!226497 lambda!226494)))

(declare-fun bs!1150501 () Bool)

(assert (= bs!1150501 (and d!1526040 d!1526004)))

(assert (=> bs!1150501 (not (= lambda!226497 lambda!226478))))

(declare-fun bs!1150502 () Bool)

(assert (= bs!1150502 (and d!1526040 d!1526012)))

(assert (=> bs!1150502 (= lambda!226497 lambda!226481)))

(declare-fun bs!1150503 () Bool)

(assert (= bs!1150503 (and d!1526040 d!1526026)))

(assert (=> bs!1150503 (= lambda!226497 lambda!226491)))

(assert (=> d!1526040 (contains!17292 lm!2709 (hash!4724 hashF!1687 key!6641))))

(declare-fun lt!1938298 () Unit!138818)

(declare-fun choose!34129 (ListLongMap!5007 K!15372 Hashable!6753) Unit!138818)

(assert (=> d!1526040 (= lt!1938298 (choose!34129 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526040 (forall!12021 (toList!6589 lm!2709) lambda!226497)))

(assert (=> d!1526040 (= (lemmaInGenMapThenLongMapContainsHash!957 lm!2709 key!6641 hashF!1687) lt!1938298)))

(declare-fun bs!1150504 () Bool)

(assert (= bs!1150504 d!1526040))

(assert (=> bs!1150504 m!5749510))

(assert (=> bs!1150504 m!5749510))

(assert (=> bs!1150504 m!5749646))

(declare-fun m!5749686 () Bool)

(assert (=> bs!1150504 m!5749686))

(declare-fun m!5749688 () Bool)

(assert (=> bs!1150504 m!5749688))

(assert (=> b!4775158 d!1526040))

(declare-fun d!1526042 () Bool)

(declare-fun e!2981170 () Bool)

(assert (=> d!1526042 e!2981170))

(declare-fun res!2026273 () Bool)

(assert (=> d!1526042 (=> res!2026273 e!2981170)))

(declare-fun lt!1938307 () Bool)

(assert (=> d!1526042 (= res!2026273 (not lt!1938307))))

(declare-fun lt!1938309 () Bool)

(assert (=> d!1526042 (= lt!1938307 lt!1938309)))

(declare-fun lt!1938308 () Unit!138818)

(declare-fun e!2981169 () Unit!138818)

(assert (=> d!1526042 (= lt!1938308 e!2981169)))

(declare-fun c!814297 () Bool)

(assert (=> d!1526042 (= c!814297 lt!1938309)))

(declare-fun containsKey!3725 (List!53952 (_ BitVec 64)) Bool)

(assert (=> d!1526042 (= lt!1938309 (containsKey!3725 (toList!6589 lm!2709) lt!1938176))))

(assert (=> d!1526042 (= (contains!17292 lm!2709 lt!1938176) lt!1938307)))

(declare-fun b!4775290 () Bool)

(declare-fun lt!1938310 () Unit!138818)

(assert (=> b!4775290 (= e!2981169 lt!1938310)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2040 (List!53952 (_ BitVec 64)) Unit!138818)

(assert (=> b!4775290 (= lt!1938310 (lemmaContainsKeyImpliesGetValueByKeyDefined!2040 (toList!6589 lm!2709) lt!1938176))))

(declare-fun isDefined!9985 (Option!12841) Bool)

(assert (=> b!4775290 (isDefined!9985 (getValueByKey!2246 (toList!6589 lm!2709) lt!1938176))))

(declare-fun b!4775291 () Bool)

(declare-fun Unit!138824 () Unit!138818)

(assert (=> b!4775291 (= e!2981169 Unit!138824)))

(declare-fun b!4775292 () Bool)

(assert (=> b!4775292 (= e!2981170 (isDefined!9985 (getValueByKey!2246 (toList!6589 lm!2709) lt!1938176)))))

(assert (= (and d!1526042 c!814297) b!4775290))

(assert (= (and d!1526042 (not c!814297)) b!4775291))

(assert (= (and d!1526042 (not res!2026273)) b!4775292))

(declare-fun m!5749690 () Bool)

(assert (=> d!1526042 m!5749690))

(declare-fun m!5749692 () Bool)

(assert (=> b!4775290 m!5749692))

(assert (=> b!4775290 m!5749632))

(assert (=> b!4775290 m!5749632))

(declare-fun m!5749694 () Bool)

(assert (=> b!4775290 m!5749694))

(assert (=> b!4775292 m!5749632))

(assert (=> b!4775292 m!5749632))

(assert (=> b!4775292 m!5749694))

(assert (=> b!4775158 d!1526042))

(declare-fun b!4775309 () Bool)

(declare-fun e!2981183 () Bool)

(declare-fun containsKey!3726 (List!53951 K!15372) Bool)

(assert (=> b!4775309 (= e!2981183 (not (containsKey!3726 lt!1938174 key!6641)))))

(declare-fun d!1526044 () Bool)

(declare-fun e!2981185 () Bool)

(assert (=> d!1526044 e!2981185))

(declare-fun res!2026285 () Bool)

(assert (=> d!1526044 (=> res!2026285 e!2981185)))

(assert (=> d!1526044 (= res!2026285 e!2981183)))

(declare-fun res!2026284 () Bool)

(assert (=> d!1526044 (=> (not res!2026284) (not e!2981183))))

(declare-fun lt!1938313 () Option!12838)

(declare-fun isEmpty!29315 (Option!12838) Bool)

(assert (=> d!1526044 (= res!2026284 (isEmpty!29315 lt!1938313))))

(declare-fun e!2981182 () Option!12838)

(assert (=> d!1526044 (= lt!1938313 e!2981182)))

(declare-fun c!814302 () Bool)

(assert (=> d!1526044 (= c!814302 (and (is-Cons!53827 lt!1938174) (= (_1!31384 (h!60241 lt!1938174)) key!6641)))))

(declare-fun noDuplicateKeys!2276 (List!53951) Bool)

(assert (=> d!1526044 (noDuplicateKeys!2276 lt!1938174)))

(assert (=> d!1526044 (= (getPair!741 lt!1938174 key!6641) lt!1938313)))

(declare-fun b!4775310 () Bool)

(declare-fun e!2981184 () Option!12838)

(assert (=> b!4775310 (= e!2981184 (getPair!741 (t!361401 lt!1938174) key!6641))))

(declare-fun b!4775311 () Bool)

(assert (=> b!4775311 (= e!2981184 None!12837)))

(declare-fun b!4775312 () Bool)

(declare-fun e!2981181 () Bool)

(declare-fun contains!17298 (List!53951 tuple2!56180) Bool)

(assert (=> b!4775312 (= e!2981181 (contains!17298 lt!1938174 (get!18246 lt!1938313)))))

(declare-fun b!4775313 () Bool)

(assert (=> b!4775313 (= e!2981182 e!2981184)))

(declare-fun c!814303 () Bool)

(assert (=> b!4775313 (= c!814303 (is-Cons!53827 lt!1938174))))

(declare-fun b!4775314 () Bool)

(declare-fun res!2026283 () Bool)

(assert (=> b!4775314 (=> (not res!2026283) (not e!2981181))))

(assert (=> b!4775314 (= res!2026283 (= (_1!31384 (get!18246 lt!1938313)) key!6641))))

(declare-fun b!4775315 () Bool)

(assert (=> b!4775315 (= e!2981182 (Some!12837 (h!60241 lt!1938174)))))

(declare-fun b!4775316 () Bool)

(assert (=> b!4775316 (= e!2981185 e!2981181)))

(declare-fun res!2026282 () Bool)

(assert (=> b!4775316 (=> (not res!2026282) (not e!2981181))))

(assert (=> b!4775316 (= res!2026282 (isDefined!9982 lt!1938313))))

(assert (= (and d!1526044 c!814302) b!4775315))

(assert (= (and d!1526044 (not c!814302)) b!4775313))

(assert (= (and b!4775313 c!814303) b!4775310))

(assert (= (and b!4775313 (not c!814303)) b!4775311))

(assert (= (and d!1526044 res!2026284) b!4775309))

(assert (= (and d!1526044 (not res!2026285)) b!4775316))

(assert (= (and b!4775316 res!2026282) b!4775314))

(assert (= (and b!4775314 res!2026283) b!4775312))

(declare-fun m!5749696 () Bool)

(assert (=> b!4775314 m!5749696))

(assert (=> b!4775312 m!5749696))

(assert (=> b!4775312 m!5749696))

(declare-fun m!5749698 () Bool)

(assert (=> b!4775312 m!5749698))

(declare-fun m!5749700 () Bool)

(assert (=> b!4775310 m!5749700))

(declare-fun m!5749702 () Bool)

(assert (=> d!1526044 m!5749702))

(declare-fun m!5749704 () Bool)

(assert (=> d!1526044 m!5749704))

(declare-fun m!5749706 () Bool)

(assert (=> b!4775309 m!5749706))

(declare-fun m!5749708 () Bool)

(assert (=> b!4775316 m!5749708))

(assert (=> b!4775158 d!1526044))

(declare-fun d!1526046 () Bool)

(assert (=> d!1526046 (dynLambda!21991 lambda!226464 lt!1938179)))

(declare-fun lt!1938316 () Unit!138818)

(declare-fun choose!34130 (List!53952 Int tuple2!56182) Unit!138818)

(assert (=> d!1526046 (= lt!1938316 (choose!34130 (toList!6589 lm!2709) lambda!226464 lt!1938179))))

(declare-fun e!2981188 () Bool)

(assert (=> d!1526046 e!2981188))

(declare-fun res!2026288 () Bool)

(assert (=> d!1526046 (=> (not res!2026288) (not e!2981188))))

(assert (=> d!1526046 (= res!2026288 (forall!12021 (toList!6589 lm!2709) lambda!226464))))

(assert (=> d!1526046 (= (forallContained!3978 (toList!6589 lm!2709) lambda!226464 lt!1938179) lt!1938316)))

(declare-fun b!4775319 () Bool)

(assert (=> b!4775319 (= e!2981188 (contains!17291 (toList!6589 lm!2709) lt!1938179))))

(assert (= (and d!1526046 res!2026288) b!4775319))

(declare-fun b_lambda!184929 () Bool)

(assert (=> (not b_lambda!184929) (not d!1526046)))

(declare-fun m!5749710 () Bool)

(assert (=> d!1526046 m!5749710))

(declare-fun m!5749712 () Bool)

(assert (=> d!1526046 m!5749712))

(assert (=> d!1526046 m!5749522))

(assert (=> b!4775319 m!5749518))

(assert (=> b!4775158 d!1526046))

(declare-fun d!1526048 () Bool)

(assert (=> d!1526048 (= (isDefined!9982 lt!1938180) (not (isEmpty!29315 lt!1938180)))))

(declare-fun bs!1150505 () Bool)

(assert (= bs!1150505 d!1526048))

(declare-fun m!5749714 () Bool)

(assert (=> bs!1150505 m!5749714))

(assert (=> b!4775158 d!1526048))

(declare-fun d!1526050 () Bool)

(declare-fun res!2026297 () Bool)

(declare-fun e!2981196 () Bool)

(assert (=> d!1526050 (=> res!2026297 e!2981196)))

(declare-fun e!2981195 () Bool)

(assert (=> d!1526050 (= res!2026297 e!2981195)))

(declare-fun res!2026296 () Bool)

(assert (=> d!1526050 (=> (not res!2026296) (not e!2981195))))

(assert (=> d!1526050 (= res!2026296 (is-Cons!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526050 (= (containsKeyBiggerList!409 (toList!6589 lm!2709) key!6641) e!2981196)))

(declare-fun b!4775326 () Bool)

(assert (=> b!4775326 (= e!2981195 (containsKey!3726 (_2!31385 (h!60242 (toList!6589 lm!2709))) key!6641))))

(declare-fun b!4775327 () Bool)

(declare-fun e!2981197 () Bool)

(assert (=> b!4775327 (= e!2981196 e!2981197)))

(declare-fun res!2026295 () Bool)

(assert (=> b!4775327 (=> (not res!2026295) (not e!2981197))))

(assert (=> b!4775327 (= res!2026295 (is-Cons!53828 (toList!6589 lm!2709)))))

(declare-fun b!4775328 () Bool)

(assert (=> b!4775328 (= e!2981197 (containsKeyBiggerList!409 (t!361402 (toList!6589 lm!2709)) key!6641))))

(assert (= (and d!1526050 res!2026296) b!4775326))

(assert (= (and d!1526050 (not res!2026297)) b!4775327))

(assert (= (and b!4775327 res!2026295) b!4775328))

(declare-fun m!5749716 () Bool)

(assert (=> b!4775326 m!5749716))

(declare-fun m!5749718 () Bool)

(assert (=> b!4775328 m!5749718))

(assert (=> b!4775159 d!1526050))

(declare-fun d!1526052 () Bool)

(declare-fun res!2026298 () Bool)

(declare-fun e!2981198 () Bool)

(assert (=> d!1526052 (=> res!2026298 e!2981198)))

(assert (=> d!1526052 (= res!2026298 (is-Nil!53828 (toList!6589 lm!2709)))))

(assert (=> d!1526052 (= (forall!12021 (toList!6589 lm!2709) lambda!226465) e!2981198)))

(declare-fun b!4775329 () Bool)

(declare-fun e!2981199 () Bool)

(assert (=> b!4775329 (= e!2981198 e!2981199)))

(declare-fun res!2026299 () Bool)

(assert (=> b!4775329 (=> (not res!2026299) (not e!2981199))))

(assert (=> b!4775329 (= res!2026299 (dynLambda!21991 lambda!226465 (h!60242 (toList!6589 lm!2709))))))

(declare-fun b!4775330 () Bool)

(assert (=> b!4775330 (= e!2981199 (forall!12021 (t!361402 (toList!6589 lm!2709)) lambda!226465))))

(assert (= (and d!1526052 (not res!2026298)) b!4775329))

(assert (= (and b!4775329 res!2026299) b!4775330))

(declare-fun b_lambda!184931 () Bool)

(assert (=> (not b_lambda!184931) (not b!4775329)))

(declare-fun m!5749720 () Bool)

(assert (=> b!4775329 m!5749720))

(declare-fun m!5749722 () Bool)

(assert (=> b!4775330 m!5749722))

(assert (=> b!4775154 d!1526052))

(declare-fun b!4775335 () Bool)

(declare-fun e!2981202 () Bool)

(declare-fun tp!1357049 () Bool)

(declare-fun tp!1357050 () Bool)

(assert (=> b!4775335 (= e!2981202 (and tp!1357049 tp!1357050))))

(assert (=> b!4775153 (= tp!1357041 e!2981202)))

(assert (= (and b!4775153 (is-Cons!53828 (toList!6589 lm!2709))) b!4775335))

(declare-fun b_lambda!184933 () Bool)

(assert (= b_lambda!184929 (or start!489412 b_lambda!184933)))

(declare-fun bs!1150506 () Bool)

(declare-fun d!1526054 () Bool)

(assert (= bs!1150506 (and d!1526054 start!489412)))

(assert (=> bs!1150506 (= (dynLambda!21991 lambda!226464 lt!1938179) (noDuplicateKeys!2276 (_2!31385 lt!1938179)))))

(declare-fun m!5749724 () Bool)

(assert (=> bs!1150506 m!5749724))

(assert (=> d!1526046 d!1526054))

(declare-fun b_lambda!184935 () Bool)

(assert (= b_lambda!184927 (or start!489412 b_lambda!184935)))

(declare-fun bs!1150507 () Bool)

(declare-fun d!1526056 () Bool)

(assert (= bs!1150507 (and d!1526056 start!489412)))

(assert (=> bs!1150507 (= (dynLambda!21991 lambda!226464 (h!60242 (toList!6589 lm!2709))) (noDuplicateKeys!2276 (_2!31385 (h!60242 (toList!6589 lm!2709)))))))

(declare-fun m!5749726 () Bool)

(assert (=> bs!1150507 m!5749726))

(assert (=> b!4775189 d!1526056))

(declare-fun b_lambda!184937 () Bool)

(assert (= b_lambda!184931 (or b!4775154 b_lambda!184937)))

(declare-fun bs!1150508 () Bool)

(declare-fun d!1526058 () Bool)

(assert (= bs!1150508 (and d!1526058 b!4775154)))

(declare-fun allKeysSameHash!1930 (List!53951 (_ BitVec 64) Hashable!6753) Bool)

(assert (=> bs!1150508 (= (dynLambda!21991 lambda!226465 (h!60242 (toList!6589 lm!2709))) (allKeysSameHash!1930 (_2!31385 (h!60242 (toList!6589 lm!2709))) (_1!31385 (h!60242 (toList!6589 lm!2709))) hashF!1687))))

(declare-fun m!5749728 () Bool)

(assert (=> bs!1150508 m!5749728))

(assert (=> b!4775329 d!1526058))

(push 1)

(assert (not b!4775330))

(assert (not d!1526012))

(assert (not b!4775246))

(assert (not b!4775310))

(assert (not b!4775316))

(assert (not b!4775249))

(assert (not b!4775248))

(assert (not b!4775335))

(assert (not b_lambda!184935))

(assert (not d!1526040))

(assert (not d!1526016))

(assert (not b_lambda!184937))

(assert (not d!1526024))

(assert (not b!4775244))

(assert (not b!4775242))

(assert tp_is_empty!32943)

(assert (not b!4775267))

(assert (not bs!1150506))

(assert (not d!1526042))

(assert (not d!1526008))

(assert (not b!4775312))

(assert (not b!4775247))

(assert (not d!1526018))

(assert (not d!1526034))

(assert (not b!4775314))

(assert (not b!4775282))

(assert (not bm!334556))

(assert (not d!1526046))

(assert (not b!4775243))

(assert (not b!4775268))

(assert (not b!4775326))

(assert (not b!4775328))

(assert (not b!4775265))

(assert (not b!4775292))

(assert (not d!1526026))

(assert (not d!1526048))

(assert tp_is_empty!32941)

(assert (not d!1526036))

(assert (not b!4775190))

(assert (not d!1526010))

(assert (not b!4775266))

(assert (not bs!1150508))

(assert (not b!4775199))

(assert (not d!1526020))

(assert (not bs!1150507))

(assert (not b!4775319))

(assert (not d!1526004))

(assert (not b_lambda!184933))

(assert (not b!4775196))

(assert (not b!4775309))

(assert (not d!1526044))

(assert (not b!4775290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

