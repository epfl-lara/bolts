; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502618 () Bool)

(assert start!502618)

(declare-fun b!4835087 () Bool)

(declare-fun e!3021608 () Bool)

(declare-fun e!3021607 () Bool)

(assert (=> b!4835087 (= e!3021608 e!3021607)))

(declare-fun res!2059891 () Bool)

(assert (=> b!4835087 (=> (not res!2059891) (not e!3021607))))

(declare-datatypes ((K!16869 0))(
  ( (K!16870 (val!21801 Int)) )
))
(declare-datatypes ((V!17115 0))(
  ( (V!17116 (val!21802 Int)) )
))
(declare-datatypes ((tuple2!58474 0))(
  ( (tuple2!58475 (_1!32531 K!16869) (_2!32531 V!17115)) )
))
(declare-datatypes ((List!55270 0))(
  ( (Nil!55146) (Cons!55146 (h!61580 tuple2!58474) (t!362766 List!55270)) )
))
(declare-datatypes ((tuple2!58476 0))(
  ( (tuple2!58477 (_1!32532 (_ BitVec 64)) (_2!32532 List!55270)) )
))
(declare-datatypes ((List!55271 0))(
  ( (Nil!55147) (Cons!55147 (h!61581 tuple2!58476) (t!362767 List!55271)) )
))
(declare-datatypes ((ListLongMap!6103 0))(
  ( (ListLongMap!6104 (toList!7604 List!55271)) )
))
(declare-fun lm!1282 () ListLongMap!6103)

(declare-fun lt!1981077 () (_ BitVec 64))

(declare-fun contains!18970 (ListLongMap!6103 (_ BitVec 64)) Bool)

(assert (=> b!4835087 (= res!2059891 (contains!18970 lm!1282 lt!1981077))))

(declare-datatypes ((Hashable!7320 0))(
  ( (HashableExt!7319 (__x!33595 Int)) )
))
(declare-fun hashF!961 () Hashable!7320)

(declare-fun key!2791 () K!16869)

(declare-fun hash!5505 (Hashable!7320 K!16869) (_ BitVec 64))

(assert (=> b!4835087 (= lt!1981077 (hash!5505 hashF!961 key!2791))))

(declare-fun b!4835088 () Bool)

(declare-fun lt!1981080 () List!55270)

(declare-fun noDuplicateKeys!2510 (List!55270) Bool)

(assert (=> b!4835088 (= e!3021607 (not (noDuplicateKeys!2510 lt!1981080)))))

(declare-datatypes ((Unit!144531 0))(
  ( (Unit!144532) )
))
(declare-fun lt!1981079 () Unit!144531)

(declare-fun lt!1981081 () tuple2!58476)

(declare-fun lambda!239178 () Int)

(declare-fun forallContained!4443 (List!55271 Int tuple2!58476) Unit!144531)

(assert (=> b!4835088 (= lt!1981079 (forallContained!4443 (toList!7604 lm!1282) lambda!239178 lt!1981081))))

(declare-fun contains!18971 (List!55271 tuple2!58476) Bool)

(assert (=> b!4835088 (contains!18971 (toList!7604 lm!1282) lt!1981081)))

(assert (=> b!4835088 (= lt!1981081 (tuple2!58477 lt!1981077 lt!1981080))))

(declare-fun lt!1981078 () Unit!144531)

(declare-fun lemmaGetValueImpliesTupleContained!699 (ListLongMap!6103 (_ BitVec 64) List!55270) Unit!144531)

(assert (=> b!4835088 (= lt!1981078 (lemmaGetValueImpliesTupleContained!699 lm!1282 lt!1981077 lt!1981080))))

(declare-fun apply!13383 (ListLongMap!6103 (_ BitVec 64)) List!55270)

(assert (=> b!4835088 (= lt!1981080 (apply!13383 lm!1282 lt!1981077))))

(declare-fun res!2059892 () Bool)

(assert (=> start!502618 (=> (not res!2059892) (not e!3021608))))

(declare-fun forall!12719 (List!55271 Int) Bool)

(assert (=> start!502618 (= res!2059892 (forall!12719 (toList!7604 lm!1282) lambda!239178))))

(assert (=> start!502618 e!3021608))

(declare-fun e!3021609 () Bool)

(declare-fun inv!70769 (ListLongMap!6103) Bool)

(assert (=> start!502618 (and (inv!70769 lm!1282) e!3021609)))

(assert (=> start!502618 true))

(declare-fun tp_is_empty!34735 () Bool)

(assert (=> start!502618 tp_is_empty!34735))

(declare-fun b!4835086 () Bool)

(declare-fun res!2059893 () Bool)

(assert (=> b!4835086 (=> (not res!2059893) (not e!3021608))))

(declare-fun allKeysSameHashInMap!2636 (ListLongMap!6103 Hashable!7320) Bool)

(assert (=> b!4835086 (= res!2059893 (allKeysSameHashInMap!2636 lm!1282 hashF!961))))

(declare-fun b!4835089 () Bool)

(declare-fun tp!1363276 () Bool)

(assert (=> b!4835089 (= e!3021609 tp!1363276)))

(assert (= (and start!502618 res!2059892) b!4835086))

(assert (= (and b!4835086 res!2059893) b!4835087))

(assert (= (and b!4835087 res!2059891) b!4835088))

(assert (= start!502618 b!4835089))

(declare-fun m!5830224 () Bool)

(assert (=> b!4835087 m!5830224))

(declare-fun m!5830226 () Bool)

(assert (=> b!4835087 m!5830226))

(declare-fun m!5830228 () Bool)

(assert (=> b!4835088 m!5830228))

(declare-fun m!5830230 () Bool)

(assert (=> b!4835088 m!5830230))

(declare-fun m!5830232 () Bool)

(assert (=> b!4835088 m!5830232))

(declare-fun m!5830234 () Bool)

(assert (=> b!4835088 m!5830234))

(declare-fun m!5830236 () Bool)

(assert (=> b!4835088 m!5830236))

(declare-fun m!5830238 () Bool)

(assert (=> start!502618 m!5830238))

(declare-fun m!5830240 () Bool)

(assert (=> start!502618 m!5830240))

(declare-fun m!5830242 () Bool)

(assert (=> b!4835086 m!5830242))

(check-sat (not start!502618) (not b!4835086) (not b!4835087) tp_is_empty!34735 (not b!4835089) (not b!4835088))
(check-sat)
(get-model)

(declare-fun d!1550141 () Bool)

(declare-fun res!2059898 () Bool)

(declare-fun e!3021614 () Bool)

(assert (=> d!1550141 (=> res!2059898 e!3021614)))

(get-info :version)

(assert (=> d!1550141 (= res!2059898 ((_ is Nil!55147) (toList!7604 lm!1282)))))

(assert (=> d!1550141 (= (forall!12719 (toList!7604 lm!1282) lambda!239178) e!3021614)))

(declare-fun b!4835094 () Bool)

(declare-fun e!3021615 () Bool)

(assert (=> b!4835094 (= e!3021614 e!3021615)))

(declare-fun res!2059899 () Bool)

(assert (=> b!4835094 (=> (not res!2059899) (not e!3021615))))

(declare-fun dynLambda!22256 (Int tuple2!58476) Bool)

(assert (=> b!4835094 (= res!2059899 (dynLambda!22256 lambda!239178 (h!61581 (toList!7604 lm!1282))))))

(declare-fun b!4835095 () Bool)

(assert (=> b!4835095 (= e!3021615 (forall!12719 (t!362767 (toList!7604 lm!1282)) lambda!239178))))

(assert (= (and d!1550141 (not res!2059898)) b!4835094))

(assert (= (and b!4835094 res!2059899) b!4835095))

(declare-fun b_lambda!190979 () Bool)

(assert (=> (not b_lambda!190979) (not b!4835094)))

(declare-fun m!5830244 () Bool)

(assert (=> b!4835094 m!5830244))

(declare-fun m!5830246 () Bool)

(assert (=> b!4835095 m!5830246))

(assert (=> start!502618 d!1550141))

(declare-fun d!1550145 () Bool)

(declare-fun isStrictlySorted!1008 (List!55271) Bool)

(assert (=> d!1550145 (= (inv!70769 lm!1282) (isStrictlySorted!1008 (toList!7604 lm!1282)))))

(declare-fun bs!1167384 () Bool)

(assert (= bs!1167384 d!1550145))

(declare-fun m!5830248 () Bool)

(assert (=> bs!1167384 m!5830248))

(assert (=> start!502618 d!1550145))

(declare-fun bs!1167386 () Bool)

(declare-fun d!1550147 () Bool)

(assert (= bs!1167386 (and d!1550147 start!502618)))

(declare-fun lambda!239181 () Int)

(assert (=> bs!1167386 (not (= lambda!239181 lambda!239178))))

(assert (=> d!1550147 true))

(assert (=> d!1550147 (= (allKeysSameHashInMap!2636 lm!1282 hashF!961) (forall!12719 (toList!7604 lm!1282) lambda!239181))))

(declare-fun bs!1167387 () Bool)

(assert (= bs!1167387 d!1550147))

(declare-fun m!5830256 () Bool)

(assert (=> bs!1167387 m!5830256))

(assert (=> b!4835086 d!1550147))

(declare-fun d!1550153 () Bool)

(declare-fun e!3021635 () Bool)

(assert (=> d!1550153 e!3021635))

(declare-fun res!2059917 () Bool)

(assert (=> d!1550153 (=> res!2059917 e!3021635)))

(declare-fun lt!1981094 () Bool)

(assert (=> d!1550153 (= res!2059917 (not lt!1981094))))

(declare-fun lt!1981095 () Bool)

(assert (=> d!1550153 (= lt!1981094 lt!1981095)))

(declare-fun lt!1981096 () Unit!144531)

(declare-fun e!3021636 () Unit!144531)

(assert (=> d!1550153 (= lt!1981096 e!3021636)))

(declare-fun c!823820 () Bool)

(assert (=> d!1550153 (= c!823820 lt!1981095)))

(declare-fun containsKey!4492 (List!55271 (_ BitVec 64)) Bool)

(assert (=> d!1550153 (= lt!1981095 (containsKey!4492 (toList!7604 lm!1282) lt!1981077))))

(assert (=> d!1550153 (= (contains!18970 lm!1282 lt!1981077) lt!1981094)))

(declare-fun b!4835119 () Bool)

(declare-fun lt!1981093 () Unit!144531)

(assert (=> b!4835119 (= e!3021636 lt!1981093)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2463 (List!55271 (_ BitVec 64)) Unit!144531)

(assert (=> b!4835119 (= lt!1981093 (lemmaContainsKeyImpliesGetValueByKeyDefined!2463 (toList!7604 lm!1282) lt!1981077))))

(declare-datatypes ((Option!13555 0))(
  ( (None!13554) (Some!13554 (v!49257 List!55270)) )
))
(declare-fun isDefined!10666 (Option!13555) Bool)

(declare-fun getValueByKey!2682 (List!55271 (_ BitVec 64)) Option!13555)

(assert (=> b!4835119 (isDefined!10666 (getValueByKey!2682 (toList!7604 lm!1282) lt!1981077))))

(declare-fun b!4835120 () Bool)

(declare-fun Unit!144533 () Unit!144531)

(assert (=> b!4835120 (= e!3021636 Unit!144533)))

(declare-fun b!4835121 () Bool)

(assert (=> b!4835121 (= e!3021635 (isDefined!10666 (getValueByKey!2682 (toList!7604 lm!1282) lt!1981077)))))

(assert (= (and d!1550153 c!823820) b!4835119))

(assert (= (and d!1550153 (not c!823820)) b!4835120))

(assert (= (and d!1550153 (not res!2059917)) b!4835121))

(declare-fun m!5830270 () Bool)

(assert (=> d!1550153 m!5830270))

(declare-fun m!5830272 () Bool)

(assert (=> b!4835119 m!5830272))

(declare-fun m!5830274 () Bool)

(assert (=> b!4835119 m!5830274))

(assert (=> b!4835119 m!5830274))

(declare-fun m!5830276 () Bool)

(assert (=> b!4835119 m!5830276))

(assert (=> b!4835121 m!5830274))

(assert (=> b!4835121 m!5830274))

(assert (=> b!4835121 m!5830276))

(assert (=> b!4835087 d!1550153))

(declare-fun d!1550161 () Bool)

(declare-fun hash!5506 (Hashable!7320 K!16869) (_ BitVec 64))

(assert (=> d!1550161 (= (hash!5505 hashF!961 key!2791) (hash!5506 hashF!961 key!2791))))

(declare-fun bs!1167389 () Bool)

(assert (= bs!1167389 d!1550161))

(declare-fun m!5830278 () Bool)

(assert (=> bs!1167389 m!5830278))

(assert (=> b!4835087 d!1550161))

(declare-fun d!1550163 () Bool)

(assert (=> d!1550163 (contains!18971 (toList!7604 lm!1282) (tuple2!58477 lt!1981077 lt!1981080))))

(declare-fun lt!1981102 () Unit!144531)

(declare-fun choose!35319 (ListLongMap!6103 (_ BitVec 64) List!55270) Unit!144531)

(assert (=> d!1550163 (= lt!1981102 (choose!35319 lm!1282 lt!1981077 lt!1981080))))

(assert (=> d!1550163 (contains!18970 lm!1282 lt!1981077)))

(assert (=> d!1550163 (= (lemmaGetValueImpliesTupleContained!699 lm!1282 lt!1981077 lt!1981080) lt!1981102)))

(declare-fun bs!1167390 () Bool)

(assert (= bs!1167390 d!1550163))

(declare-fun m!5830286 () Bool)

(assert (=> bs!1167390 m!5830286))

(declare-fun m!5830288 () Bool)

(assert (=> bs!1167390 m!5830288))

(assert (=> bs!1167390 m!5830224))

(assert (=> b!4835088 d!1550163))

(declare-fun d!1550167 () Bool)

(declare-fun get!18882 (Option!13555) List!55270)

(assert (=> d!1550167 (= (apply!13383 lm!1282 lt!1981077) (get!18882 (getValueByKey!2682 (toList!7604 lm!1282) lt!1981077)))))

(declare-fun bs!1167391 () Bool)

(assert (= bs!1167391 d!1550167))

(assert (=> bs!1167391 m!5830274))

(assert (=> bs!1167391 m!5830274))

(declare-fun m!5830290 () Bool)

(assert (=> bs!1167391 m!5830290))

(assert (=> b!4835088 d!1550167))

(declare-fun d!1550169 () Bool)

(assert (=> d!1550169 (dynLambda!22256 lambda!239178 lt!1981081)))

(declare-fun lt!1981108 () Unit!144531)

(declare-fun choose!35321 (List!55271 Int tuple2!58476) Unit!144531)

(assert (=> d!1550169 (= lt!1981108 (choose!35321 (toList!7604 lm!1282) lambda!239178 lt!1981081))))

(declare-fun e!3021645 () Bool)

(assert (=> d!1550169 e!3021645))

(declare-fun res!2059926 () Bool)

(assert (=> d!1550169 (=> (not res!2059926) (not e!3021645))))

(assert (=> d!1550169 (= res!2059926 (forall!12719 (toList!7604 lm!1282) lambda!239178))))

(assert (=> d!1550169 (= (forallContained!4443 (toList!7604 lm!1282) lambda!239178 lt!1981081) lt!1981108)))

(declare-fun b!4835132 () Bool)

(assert (=> b!4835132 (= e!3021645 (contains!18971 (toList!7604 lm!1282) lt!1981081))))

(assert (= (and d!1550169 res!2059926) b!4835132))

(declare-fun b_lambda!190985 () Bool)

(assert (=> (not b_lambda!190985) (not d!1550169)))

(declare-fun m!5830296 () Bool)

(assert (=> d!1550169 m!5830296))

(declare-fun m!5830298 () Bool)

(assert (=> d!1550169 m!5830298))

(assert (=> d!1550169 m!5830238))

(assert (=> b!4835132 m!5830236))

(assert (=> b!4835088 d!1550169))

(declare-fun d!1550173 () Bool)

(declare-fun res!2059931 () Bool)

(declare-fun e!3021650 () Bool)

(assert (=> d!1550173 (=> res!2059931 e!3021650)))

(assert (=> d!1550173 (= res!2059931 (not ((_ is Cons!55146) lt!1981080)))))

(assert (=> d!1550173 (= (noDuplicateKeys!2510 lt!1981080) e!3021650)))

(declare-fun b!4835139 () Bool)

(declare-fun e!3021651 () Bool)

(assert (=> b!4835139 (= e!3021650 e!3021651)))

(declare-fun res!2059932 () Bool)

(assert (=> b!4835139 (=> (not res!2059932) (not e!3021651))))

(declare-fun containsKey!4494 (List!55270 K!16869) Bool)

(assert (=> b!4835139 (= res!2059932 (not (containsKey!4494 (t!362766 lt!1981080) (_1!32531 (h!61580 lt!1981080)))))))

(declare-fun b!4835140 () Bool)

(assert (=> b!4835140 (= e!3021651 (noDuplicateKeys!2510 (t!362766 lt!1981080)))))

(assert (= (and d!1550173 (not res!2059931)) b!4835139))

(assert (= (and b!4835139 res!2059932) b!4835140))

(declare-fun m!5830302 () Bool)

(assert (=> b!4835139 m!5830302))

(declare-fun m!5830304 () Bool)

(assert (=> b!4835140 m!5830304))

(assert (=> b!4835088 d!1550173))

(declare-fun d!1550177 () Bool)

(declare-fun lt!1981117 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9841 (List!55271) (InoxSet tuple2!58476))

(assert (=> d!1550177 (= lt!1981117 (select (content!9841 (toList!7604 lm!1282)) lt!1981081))))

(declare-fun e!3021658 () Bool)

(assert (=> d!1550177 (= lt!1981117 e!3021658)))

(declare-fun res!2059937 () Bool)

(assert (=> d!1550177 (=> (not res!2059937) (not e!3021658))))

(assert (=> d!1550177 (= res!2059937 ((_ is Cons!55147) (toList!7604 lm!1282)))))

(assert (=> d!1550177 (= (contains!18971 (toList!7604 lm!1282) lt!1981081) lt!1981117)))

(declare-fun b!4835148 () Bool)

(declare-fun e!3021656 () Bool)

(assert (=> b!4835148 (= e!3021658 e!3021656)))

(declare-fun res!2059938 () Bool)

(assert (=> b!4835148 (=> res!2059938 e!3021656)))

(assert (=> b!4835148 (= res!2059938 (= (h!61581 (toList!7604 lm!1282)) lt!1981081))))

(declare-fun b!4835150 () Bool)

(assert (=> b!4835150 (= e!3021656 (contains!18971 (t!362767 (toList!7604 lm!1282)) lt!1981081))))

(assert (= (and d!1550177 res!2059937) b!4835148))

(assert (= (and b!4835148 (not res!2059938)) b!4835150))

(declare-fun m!5830306 () Bool)

(assert (=> d!1550177 m!5830306))

(declare-fun m!5830308 () Bool)

(assert (=> d!1550177 m!5830308))

(declare-fun m!5830310 () Bool)

(assert (=> b!4835150 m!5830310))

(assert (=> b!4835088 d!1550177))

(declare-fun b!4835157 () Bool)

(declare-fun e!3021664 () Bool)

(declare-fun tp!1363281 () Bool)

(declare-fun tp!1363282 () Bool)

(assert (=> b!4835157 (= e!3021664 (and tp!1363281 tp!1363282))))

(assert (=> b!4835089 (= tp!1363276 e!3021664)))

(assert (= (and b!4835089 ((_ is Cons!55147) (toList!7604 lm!1282))) b!4835157))

(declare-fun b_lambda!190987 () Bool)

(assert (= b_lambda!190979 (or start!502618 b_lambda!190987)))

(declare-fun bs!1167395 () Bool)

(declare-fun d!1550179 () Bool)

(assert (= bs!1167395 (and d!1550179 start!502618)))

(assert (=> bs!1167395 (= (dynLambda!22256 lambda!239178 (h!61581 (toList!7604 lm!1282))) (noDuplicateKeys!2510 (_2!32532 (h!61581 (toList!7604 lm!1282)))))))

(declare-fun m!5830312 () Bool)

(assert (=> bs!1167395 m!5830312))

(assert (=> b!4835094 d!1550179))

(declare-fun b_lambda!190989 () Bool)

(assert (= b_lambda!190985 (or start!502618 b_lambda!190989)))

(declare-fun bs!1167396 () Bool)

(declare-fun d!1550181 () Bool)

(assert (= bs!1167396 (and d!1550181 start!502618)))

(assert (=> bs!1167396 (= (dynLambda!22256 lambda!239178 lt!1981081) (noDuplicateKeys!2510 (_2!32532 lt!1981081)))))

(declare-fun m!5830314 () Bool)

(assert (=> bs!1167396 m!5830314))

(assert (=> d!1550169 d!1550181))

(check-sat (not d!1550167) (not b!4835119) (not d!1550169) (not d!1550147) (not d!1550177) (not d!1550161) (not bs!1167396) (not b_lambda!190987) (not b!4835121) (not bs!1167395) tp_is_empty!34735 (not d!1550163) (not b!4835095) (not b!4835157) (not b!4835140) (not d!1550153) (not b!4835132) (not b!4835139) (not b!4835150) (not d!1550145) (not b_lambda!190989))
(check-sat)
