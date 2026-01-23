; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505038 () Bool)

(assert start!505038)

(declare-fun b!4847198 () Bool)

(declare-fun e!3029699 () Bool)

(declare-fun e!3029702 () Bool)

(assert (=> b!4847198 (= e!3029699 (not e!3029702))))

(declare-fun res!2068044 () Bool)

(assert (=> b!4847198 (=> res!2068044 e!3029702)))

(declare-datatypes ((K!17322 0))(
  ( (K!17323 (val!22163 Int)) )
))
(declare-datatypes ((V!17568 0))(
  ( (V!17569 (val!22164 Int)) )
))
(declare-datatypes ((tuple2!59198 0))(
  ( (tuple2!59199 (_1!32893 K!17322) (_2!32893 V!17568)) )
))
(declare-datatypes ((List!55656 0))(
  ( (Nil!55532) (Cons!55532 (h!61969 tuple2!59198) (t!363152 List!55656)) )
))
(declare-fun lt!1988493 () List!55656)

(declare-fun key!6445 () K!17322)

(declare-datatypes ((Option!13651 0))(
  ( (None!13650) (Some!13650 (v!49404 tuple2!59198)) )
))
(declare-fun isDefined!10743 (Option!13651) Bool)

(declare-fun getPair!1077 (List!55656 K!17322) Option!13651)

(assert (=> b!4847198 (= res!2068044 (not (isDefined!10743 (getPair!1077 lt!1988493 key!6445))))))

(declare-fun lambda!242455 () Int)

(declare-datatypes ((tuple2!59200 0))(
  ( (tuple2!59201 (_1!32894 (_ BitVec 64)) (_2!32894 List!55656)) )
))
(declare-fun lt!1988490 () tuple2!59200)

(declare-datatypes ((Unit!145659 0))(
  ( (Unit!145660) )
))
(declare-fun lt!1988492 () Unit!145659)

(declare-datatypes ((List!55657 0))(
  ( (Nil!55533) (Cons!55533 (h!61970 tuple2!59200) (t!363153 List!55657)) )
))
(declare-datatypes ((ListLongMap!6437 0))(
  ( (ListLongMap!6438 (toList!7847 List!55657)) )
))
(declare-fun lm!2646 () ListLongMap!6437)

(declare-fun forallContained!4528 (List!55657 Int tuple2!59200) Unit!145659)

(assert (=> b!4847198 (= lt!1988492 (forallContained!4528 (toList!7847 lm!2646) lambda!242455 lt!1988490))))

(declare-fun contains!19180 (List!55657 tuple2!59200) Bool)

(assert (=> b!4847198 (contains!19180 (toList!7847 lm!2646) lt!1988490)))

(declare-fun lt!1988489 () (_ BitVec 64))

(assert (=> b!4847198 (= lt!1988490 (tuple2!59201 lt!1988489 lt!1988493))))

(declare-fun lt!1988491 () Unit!145659)

(declare-fun lemmaGetValueImpliesTupleContained!754 (ListLongMap!6437 (_ BitVec 64) List!55656) Unit!145659)

(assert (=> b!4847198 (= lt!1988491 (lemmaGetValueImpliesTupleContained!754 lm!2646 lt!1988489 lt!1988493))))

(declare-fun apply!13430 (ListLongMap!6437 (_ BitVec 64)) List!55656)

(assert (=> b!4847198 (= lt!1988493 (apply!13430 lm!2646 lt!1988489))))

(declare-fun b!4847199 () Bool)

(declare-fun e!3029700 () Bool)

(assert (=> b!4847199 (= e!3029700 e!3029699)))

(declare-fun res!2068042 () Bool)

(assert (=> b!4847199 (=> (not res!2068042) (not e!3029699))))

(declare-fun contains!19181 (ListLongMap!6437 (_ BitVec 64)) Bool)

(assert (=> b!4847199 (= res!2068042 (contains!19181 lm!2646 lt!1988489))))

(declare-datatypes ((Hashable!7487 0))(
  ( (HashableExt!7486 (__x!33762 Int)) )
))
(declare-fun hashF!1641 () Hashable!7487)

(declare-fun hash!5568 (Hashable!7487 K!17322) (_ BitVec 64))

(assert (=> b!4847199 (= lt!1988489 (hash!5568 hashF!1641 key!6445))))

(declare-fun b!4847200 () Bool)

(declare-fun res!2068041 () Bool)

(assert (=> b!4847200 (=> (not res!2068041) (not e!3029700))))

(declare-fun allKeysSameHashInMap!2803 (ListLongMap!6437 Hashable!7487) Bool)

(assert (=> b!4847200 (= res!2068041 (allKeysSameHashInMap!2803 lm!2646 hashF!1641))))

(declare-fun b!4847201 () Bool)

(declare-fun size!36643 (List!55657) Int)

(assert (=> b!4847201 (= e!3029702 (>= (size!36643 (toList!7847 lm!2646)) 0))))

(declare-fun b!4847197 () Bool)

(declare-fun e!3029701 () Bool)

(declare-fun tp!1364549 () Bool)

(assert (=> b!4847197 (= e!3029701 tp!1364549)))

(declare-fun res!2068043 () Bool)

(assert (=> start!505038 (=> (not res!2068043) (not e!3029700))))

(declare-fun forall!12940 (List!55657 Int) Bool)

(assert (=> start!505038 (= res!2068043 (forall!12940 (toList!7847 lm!2646) lambda!242455))))

(assert (=> start!505038 e!3029700))

(declare-fun inv!71209 (ListLongMap!6437) Bool)

(assert (=> start!505038 (and (inv!71209 lm!2646) e!3029701)))

(assert (=> start!505038 true))

(declare-fun tp_is_empty!35157 () Bool)

(assert (=> start!505038 tp_is_empty!35157))

(assert (= (and start!505038 res!2068043) b!4847200))

(assert (= (and b!4847200 res!2068041) b!4847199))

(assert (= (and b!4847199 res!2068042) b!4847198))

(assert (= (and b!4847198 (not res!2068044)) b!4847201))

(assert (= start!505038 b!4847197))

(declare-fun m!5845246 () Bool)

(assert (=> b!4847200 m!5845246))

(declare-fun m!5845248 () Bool)

(assert (=> b!4847199 m!5845248))

(declare-fun m!5845250 () Bool)

(assert (=> b!4847199 m!5845250))

(declare-fun m!5845252 () Bool)

(assert (=> b!4847201 m!5845252))

(declare-fun m!5845254 () Bool)

(assert (=> start!505038 m!5845254))

(declare-fun m!5845256 () Bool)

(assert (=> start!505038 m!5845256))

(declare-fun m!5845258 () Bool)

(assert (=> b!4847198 m!5845258))

(declare-fun m!5845260 () Bool)

(assert (=> b!4847198 m!5845260))

(declare-fun m!5845262 () Bool)

(assert (=> b!4847198 m!5845262))

(declare-fun m!5845264 () Bool)

(assert (=> b!4847198 m!5845264))

(declare-fun m!5845266 () Bool)

(assert (=> b!4847198 m!5845266))

(assert (=> b!4847198 m!5845258))

(declare-fun m!5845268 () Bool)

(assert (=> b!4847198 m!5845268))

(push 1)

(assert (not b!4847197))

(assert (not b!4847198))

(assert (not start!505038))

(assert (not b!4847201))

(assert (not b!4847199))

(assert (not b!4847200))

(assert tp_is_empty!35157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1555060 () Bool)

(declare-fun lt!1988511 () Bool)

(declare-fun content!9871 (List!55657) (Set tuple2!59200))

(assert (=> d!1555060 (= lt!1988511 (set.member lt!1988490 (content!9871 (toList!7847 lm!2646))))))

(declare-fun e!3029720 () Bool)

(assert (=> d!1555060 (= lt!1988511 e!3029720)))

(declare-fun res!2068061 () Bool)

(assert (=> d!1555060 (=> (not res!2068061) (not e!3029720))))

(assert (=> d!1555060 (= res!2068061 (is-Cons!55533 (toList!7847 lm!2646)))))

(assert (=> d!1555060 (= (contains!19180 (toList!7847 lm!2646) lt!1988490) lt!1988511)))

(declare-fun b!4847221 () Bool)

(declare-fun e!3029719 () Bool)

(assert (=> b!4847221 (= e!3029720 e!3029719)))

(declare-fun res!2068062 () Bool)

(assert (=> b!4847221 (=> res!2068062 e!3029719)))

(assert (=> b!4847221 (= res!2068062 (= (h!61970 (toList!7847 lm!2646)) lt!1988490))))

(declare-fun b!4847222 () Bool)

(assert (=> b!4847222 (= e!3029719 (contains!19180 (t!363153 (toList!7847 lm!2646)) lt!1988490))))

(assert (= (and d!1555060 res!2068061) b!4847221))

(assert (= (and b!4847221 (not res!2068062)) b!4847222))

(declare-fun m!5845294 () Bool)

(assert (=> d!1555060 m!5845294))

(declare-fun m!5845296 () Bool)

(assert (=> d!1555060 m!5845296))

(declare-fun m!5845298 () Bool)

(assert (=> b!4847222 m!5845298))

(assert (=> b!4847198 d!1555060))

(declare-fun d!1555062 () Bool)

(assert (=> d!1555062 (contains!19180 (toList!7847 lm!2646) (tuple2!59201 lt!1988489 lt!1988493))))

(declare-fun lt!1988514 () Unit!145659)

(declare-fun choose!35434 (ListLongMap!6437 (_ BitVec 64) List!55656) Unit!145659)

(assert (=> d!1555062 (= lt!1988514 (choose!35434 lm!2646 lt!1988489 lt!1988493))))

(assert (=> d!1555062 (contains!19181 lm!2646 lt!1988489)))

(assert (=> d!1555062 (= (lemmaGetValueImpliesTupleContained!754 lm!2646 lt!1988489 lt!1988493) lt!1988514)))

(declare-fun bs!1172418 () Bool)

(assert (= bs!1172418 d!1555062))

(declare-fun m!5845300 () Bool)

(assert (=> bs!1172418 m!5845300))

(declare-fun m!5845302 () Bool)

(assert (=> bs!1172418 m!5845302))

(assert (=> bs!1172418 m!5845248))

(assert (=> b!4847198 d!1555062))

(declare-fun d!1555064 () Bool)

(declare-datatypes ((Option!13653 0))(
  ( (None!13652) (Some!13652 (v!49407 List!55656)) )
))
(declare-fun get!19013 (Option!13653) List!55656)

(declare-fun getValueByKey!2722 (List!55657 (_ BitVec 64)) Option!13653)

(assert (=> d!1555064 (= (apply!13430 lm!2646 lt!1988489) (get!19013 (getValueByKey!2722 (toList!7847 lm!2646) lt!1988489)))))

(declare-fun bs!1172419 () Bool)

(assert (= bs!1172419 d!1555064))

(declare-fun m!5845304 () Bool)

(assert (=> bs!1172419 m!5845304))

(assert (=> bs!1172419 m!5845304))

(declare-fun m!5845306 () Bool)

(assert (=> bs!1172419 m!5845306))

(assert (=> b!4847198 d!1555064))

(declare-fun d!1555066 () Bool)

(declare-fun dynLambda!22348 (Int tuple2!59200) Bool)

(assert (=> d!1555066 (dynLambda!22348 lambda!242455 lt!1988490)))

(declare-fun lt!1988517 () Unit!145659)

(declare-fun choose!35435 (List!55657 Int tuple2!59200) Unit!145659)

(assert (=> d!1555066 (= lt!1988517 (choose!35435 (toList!7847 lm!2646) lambda!242455 lt!1988490))))

(declare-fun e!3029723 () Bool)

(assert (=> d!1555066 e!3029723))

(declare-fun res!2068065 () Bool)

(assert (=> d!1555066 (=> (not res!2068065) (not e!3029723))))

(assert (=> d!1555066 (= res!2068065 (forall!12940 (toList!7847 lm!2646) lambda!242455))))

(assert (=> d!1555066 (= (forallContained!4528 (toList!7847 lm!2646) lambda!242455 lt!1988490) lt!1988517)))

(declare-fun b!4847226 () Bool)

(assert (=> b!4847226 (= e!3029723 (contains!19180 (toList!7847 lm!2646) lt!1988490))))

(assert (= (and d!1555066 res!2068065) b!4847226))

(declare-fun b_lambda!192447 () Bool)

(assert (=> (not b_lambda!192447) (not d!1555066)))

(declare-fun m!5845308 () Bool)

(assert (=> d!1555066 m!5845308))

(declare-fun m!5845310 () Bool)

(assert (=> d!1555066 m!5845310))

(assert (=> d!1555066 m!5845254))

(assert (=> b!4847226 m!5845260))

(assert (=> b!4847198 d!1555066))

(declare-fun d!1555068 () Bool)

(declare-fun isEmpty!29722 (Option!13651) Bool)

(assert (=> d!1555068 (= (isDefined!10743 (getPair!1077 lt!1988493 key!6445)) (not (isEmpty!29722 (getPair!1077 lt!1988493 key!6445))))))

(declare-fun bs!1172420 () Bool)

(assert (= bs!1172420 d!1555068))

(assert (=> bs!1172420 m!5845258))

(declare-fun m!5845312 () Bool)

(assert (=> bs!1172420 m!5845312))

(assert (=> b!4847198 d!1555068))

(declare-fun b!4847243 () Bool)

(declare-fun e!3029737 () Option!13651)

(declare-fun e!3029736 () Option!13651)

(assert (=> b!4847243 (= e!3029737 e!3029736)))

(declare-fun c!825066 () Bool)

(assert (=> b!4847243 (= c!825066 (is-Cons!55532 lt!1988493))))

(declare-fun b!4847244 () Bool)

(declare-fun e!3029734 () Bool)

(declare-fun lt!1988520 () Option!13651)

(declare-fun contains!19184 (List!55656 tuple2!59198) Bool)

(declare-fun get!19014 (Option!13651) tuple2!59198)

(assert (=> b!4847244 (= e!3029734 (contains!19184 lt!1988493 (get!19014 lt!1988520)))))

(declare-fun b!4847245 () Bool)

(declare-fun e!3029738 () Bool)

(assert (=> b!4847245 (= e!3029738 e!3029734)))

(declare-fun res!2068076 () Bool)

(assert (=> b!4847245 (=> (not res!2068076) (not e!3029734))))

(assert (=> b!4847245 (= res!2068076 (isDefined!10743 lt!1988520))))

(declare-fun b!4847246 () Bool)

(assert (=> b!4847246 (= e!3029736 (getPair!1077 (t!363152 lt!1988493) key!6445))))

(declare-fun b!4847247 () Bool)

(assert (=> b!4847247 (= e!3029737 (Some!13650 (h!61969 lt!1988493)))))

(declare-fun b!4847249 () Bool)

(declare-fun res!2068077 () Bool)

(assert (=> b!4847249 (=> (not res!2068077) (not e!3029734))))

(assert (=> b!4847249 (= res!2068077 (= (_1!32893 (get!19014 lt!1988520)) key!6445))))

(declare-fun b!4847250 () Bool)

(declare-fun e!3029735 () Bool)

(declare-fun containsKey!4669 (List!55656 K!17322) Bool)

(assert (=> b!4847250 (= e!3029735 (not (containsKey!4669 lt!1988493 key!6445)))))

(declare-fun b!4847248 () Bool)

(assert (=> b!4847248 (= e!3029736 None!13650)))

(declare-fun d!1555070 () Bool)

(assert (=> d!1555070 e!3029738))

(declare-fun res!2068074 () Bool)

(assert (=> d!1555070 (=> res!2068074 e!3029738)))

(assert (=> d!1555070 (= res!2068074 e!3029735)))

(declare-fun res!2068075 () Bool)

(assert (=> d!1555070 (=> (not res!2068075) (not e!3029735))))

(assert (=> d!1555070 (= res!2068075 (isEmpty!29722 lt!1988520))))

(assert (=> d!1555070 (= lt!1988520 e!3029737)))

(declare-fun c!825067 () Bool)

(assert (=> d!1555070 (= c!825067 (and (is-Cons!55532 lt!1988493) (= (_1!32893 (h!61969 lt!1988493)) key!6445)))))

(declare-fun noDuplicateKeys!2582 (List!55656) Bool)

(assert (=> d!1555070 (noDuplicateKeys!2582 lt!1988493)))

(assert (=> d!1555070 (= (getPair!1077 lt!1988493 key!6445) lt!1988520)))

(assert (= (and d!1555070 c!825067) b!4847247))

(assert (= (and d!1555070 (not c!825067)) b!4847243))

(assert (= (and b!4847243 c!825066) b!4847246))

(assert (= (and b!4847243 (not c!825066)) b!4847248))

(assert (= (and d!1555070 res!2068075) b!4847250))

(assert (= (and d!1555070 (not res!2068074)) b!4847245))

(assert (= (and b!4847245 res!2068076) b!4847249))

(assert (= (and b!4847249 res!2068077) b!4847244))

(declare-fun m!5845314 () Bool)

(assert (=> d!1555070 m!5845314))

(declare-fun m!5845316 () Bool)

(assert (=> d!1555070 m!5845316))

(declare-fun m!5845318 () Bool)

(assert (=> b!4847250 m!5845318))

(declare-fun m!5845320 () Bool)

(assert (=> b!4847245 m!5845320))

(declare-fun m!5845322 () Bool)

(assert (=> b!4847246 m!5845322))

(declare-fun m!5845324 () Bool)

(assert (=> b!4847244 m!5845324))

(assert (=> b!4847244 m!5845324))

(declare-fun m!5845326 () Bool)

(assert (=> b!4847244 m!5845326))

(assert (=> b!4847249 m!5845324))

(assert (=> b!4847198 d!1555070))

(declare-fun d!1555074 () Bool)

(declare-fun e!3029746 () Bool)

(assert (=> d!1555074 e!3029746))

(declare-fun res!2068080 () Bool)

(assert (=> d!1555074 (=> res!2068080 e!3029746)))

(declare-fun lt!1988535 () Bool)

(assert (=> d!1555074 (= res!2068080 (not lt!1988535))))

(declare-fun lt!1988533 () Bool)

(assert (=> d!1555074 (= lt!1988535 lt!1988533)))

(declare-fun lt!1988534 () Unit!145659)

(declare-fun e!3029747 () Unit!145659)

(assert (=> d!1555074 (= lt!1988534 e!3029747)))

(declare-fun c!825073 () Bool)

(assert (=> d!1555074 (= c!825073 lt!1988533)))

(declare-fun containsKey!4670 (List!55657 (_ BitVec 64)) Bool)

(assert (=> d!1555074 (= lt!1988533 (containsKey!4670 (toList!7847 lm!2646) lt!1988489))))

(assert (=> d!1555074 (= (contains!19181 lm!2646 lt!1988489) lt!1988535)))

(declare-fun b!4847263 () Bool)

(declare-fun lt!1988532 () Unit!145659)

(assert (=> b!4847263 (= e!3029747 lt!1988532)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2494 (List!55657 (_ BitVec 64)) Unit!145659)

(assert (=> b!4847263 (= lt!1988532 (lemmaContainsKeyImpliesGetValueByKeyDefined!2494 (toList!7847 lm!2646) lt!1988489))))

(declare-fun isDefined!10745 (Option!13653) Bool)

(assert (=> b!4847263 (isDefined!10745 (getValueByKey!2722 (toList!7847 lm!2646) lt!1988489))))

(declare-fun b!4847264 () Bool)

(declare-fun Unit!145663 () Unit!145659)

(assert (=> b!4847264 (= e!3029747 Unit!145663)))

(declare-fun b!4847265 () Bool)

(assert (=> b!4847265 (= e!3029746 (isDefined!10745 (getValueByKey!2722 (toList!7847 lm!2646) lt!1988489)))))

(assert (= (and d!1555074 c!825073) b!4847263))

(assert (= (and d!1555074 (not c!825073)) b!4847264))

(assert (= (and d!1555074 (not res!2068080)) b!4847265))

(declare-fun m!5845330 () Bool)

(assert (=> d!1555074 m!5845330))

(declare-fun m!5845332 () Bool)

(assert (=> b!4847263 m!5845332))

(assert (=> b!4847263 m!5845304))

(assert (=> b!4847263 m!5845304))

(declare-fun m!5845334 () Bool)

(assert (=> b!4847263 m!5845334))

(assert (=> b!4847265 m!5845304))

(assert (=> b!4847265 m!5845304))

(assert (=> b!4847265 m!5845334))

(assert (=> b!4847199 d!1555074))

(declare-fun d!1555078 () Bool)

(declare-fun hash!5570 (Hashable!7487 K!17322) (_ BitVec 64))

(assert (=> d!1555078 (= (hash!5568 hashF!1641 key!6445) (hash!5570 hashF!1641 key!6445))))

(declare-fun bs!1172421 () Bool)

(assert (= bs!1172421 d!1555078))

(declare-fun m!5845336 () Bool)

(assert (=> bs!1172421 m!5845336))

(assert (=> b!4847199 d!1555078))

(declare-fun d!1555080 () Bool)

(declare-fun res!2068085 () Bool)

(declare-fun e!3029752 () Bool)

(assert (=> d!1555080 (=> res!2068085 e!3029752)))

(assert (=> d!1555080 (= res!2068085 (is-Nil!55533 (toList!7847 lm!2646)))))

(assert (=> d!1555080 (= (forall!12940 (toList!7847 lm!2646) lambda!242455) e!3029752)))

(declare-fun b!4847270 () Bool)

(declare-fun e!3029753 () Bool)

(assert (=> b!4847270 (= e!3029752 e!3029753)))

(declare-fun res!2068086 () Bool)

(assert (=> b!4847270 (=> (not res!2068086) (not e!3029753))))

(assert (=> b!4847270 (= res!2068086 (dynLambda!22348 lambda!242455 (h!61970 (toList!7847 lm!2646))))))

(declare-fun b!4847271 () Bool)

(assert (=> b!4847271 (= e!3029753 (forall!12940 (t!363153 (toList!7847 lm!2646)) lambda!242455))))

(assert (= (and d!1555080 (not res!2068085)) b!4847270))

(assert (= (and b!4847270 res!2068086) b!4847271))

(declare-fun b_lambda!192449 () Bool)

(assert (=> (not b_lambda!192449) (not b!4847270)))

(declare-fun m!5845338 () Bool)

(assert (=> b!4847270 m!5845338))

(declare-fun m!5845340 () Bool)

(assert (=> b!4847271 m!5845340))

(assert (=> start!505038 d!1555080))

(declare-fun d!1555082 () Bool)

(declare-fun isStrictlySorted!1071 (List!55657) Bool)

(assert (=> d!1555082 (= (inv!71209 lm!2646) (isStrictlySorted!1071 (toList!7847 lm!2646)))))

(declare-fun bs!1172422 () Bool)

(assert (= bs!1172422 d!1555082))

(declare-fun m!5845342 () Bool)

(assert (=> bs!1172422 m!5845342))

(assert (=> start!505038 d!1555082))

(declare-fun bs!1172425 () Bool)

(declare-fun d!1555084 () Bool)

(assert (= bs!1172425 (and d!1555084 start!505038)))

(declare-fun lambda!242466 () Int)

(assert (=> bs!1172425 (not (= lambda!242466 lambda!242455))))

(assert (=> d!1555084 true))

(assert (=> d!1555084 (= (allKeysSameHashInMap!2803 lm!2646 hashF!1641) (forall!12940 (toList!7847 lm!2646) lambda!242466))))

(declare-fun bs!1172426 () Bool)

(assert (= bs!1172426 d!1555084))

(declare-fun m!5845346 () Bool)

(assert (=> bs!1172426 m!5845346))

(assert (=> b!4847200 d!1555084))

(declare-fun d!1555088 () Bool)

(declare-fun lt!1988538 () Int)

(assert (=> d!1555088 (>= lt!1988538 0)))

(declare-fun e!3029756 () Int)

(assert (=> d!1555088 (= lt!1988538 e!3029756)))

(declare-fun c!825076 () Bool)

(assert (=> d!1555088 (= c!825076 (is-Nil!55533 (toList!7847 lm!2646)))))

(assert (=> d!1555088 (= (size!36643 (toList!7847 lm!2646)) lt!1988538)))

(declare-fun b!4847280 () Bool)

(assert (=> b!4847280 (= e!3029756 0)))

(declare-fun b!4847281 () Bool)

(assert (=> b!4847281 (= e!3029756 (+ 1 (size!36643 (t!363153 (toList!7847 lm!2646)))))))

(assert (= (and d!1555088 c!825076) b!4847280))

(assert (= (and d!1555088 (not c!825076)) b!4847281))

(declare-fun m!5845348 () Bool)

(assert (=> b!4847281 m!5845348))

(assert (=> b!4847201 d!1555088))

(declare-fun b!4847288 () Bool)

(declare-fun e!3029761 () Bool)

(declare-fun tp!1364557 () Bool)

(declare-fun tp!1364558 () Bool)

(assert (=> b!4847288 (= e!3029761 (and tp!1364557 tp!1364558))))

(assert (=> b!4847197 (= tp!1364549 e!3029761)))

(assert (= (and b!4847197 (is-Cons!55533 (toList!7847 lm!2646))) b!4847288))

(declare-fun b_lambda!192451 () Bool)

(assert (= b_lambda!192449 (or start!505038 b_lambda!192451)))

(declare-fun bs!1172427 () Bool)

(declare-fun d!1555090 () Bool)

(assert (= bs!1172427 (and d!1555090 start!505038)))

(assert (=> bs!1172427 (= (dynLambda!22348 lambda!242455 (h!61970 (toList!7847 lm!2646))) (noDuplicateKeys!2582 (_2!32894 (h!61970 (toList!7847 lm!2646)))))))

(declare-fun m!5845350 () Bool)

(assert (=> bs!1172427 m!5845350))

(assert (=> b!4847270 d!1555090))

(declare-fun b_lambda!192453 () Bool)

(assert (= b_lambda!192447 (or start!505038 b_lambda!192453)))

(declare-fun bs!1172428 () Bool)

(declare-fun d!1555092 () Bool)

(assert (= bs!1172428 (and d!1555092 start!505038)))

(assert (=> bs!1172428 (= (dynLambda!22348 lambda!242455 lt!1988490) (noDuplicateKeys!2582 (_2!32894 lt!1988490)))))

(declare-fun m!5845352 () Bool)

(assert (=> bs!1172428 m!5845352))

(assert (=> d!1555066 d!1555092))

(push 1)

(assert (not bs!1172427))

(assert (not d!1555078))

(assert (not d!1555070))

(assert (not d!1555062))

(assert (not bs!1172428))

(assert (not b!4847245))

(assert (not d!1555066))

(assert tp_is_empty!35157)

(assert (not b!4847246))

(assert (not d!1555074))

(assert (not b!4847244))

(assert (not b_lambda!192453))

(assert (not d!1555068))

(assert (not d!1555060))

(assert (not d!1555064))

(assert (not b!4847263))

(assert (not b!4847271))

(assert (not b!4847250))

(assert (not b!4847226))

(assert (not b!4847222))

(assert (not b!4847281))

(assert (not b!4847288))

(assert (not d!1555084))

(assert (not b_lambda!192451))

(assert (not d!1555082))

(assert (not b!4847265))

(assert (not b!4847249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

