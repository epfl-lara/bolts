; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1650 () Bool)

(assert start!1650)

(declare-fun res!9750 () Bool)

(declare-fun e!7027 () Bool)

(assert (=> start!1650 (=> (not res!9750) (not e!7027))))

(declare-datatypes ((B!410 0))(
  ( (B!411 (val!300 Int)) )
))
(declare-datatypes ((tuple2!382 0))(
  ( (tuple2!383 (_1!191 (_ BitVec 64)) (_2!191 B!410)) )
))
(declare-datatypes ((List!347 0))(
  ( (Nil!344) (Cons!343 (h!909 tuple2!382) (t!2734 List!347)) )
))
(declare-datatypes ((ListLongMap!363 0))(
  ( (ListLongMap!364 (toList!197 List!347)) )
))
(declare-fun lm!265 () ListLongMap!363)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!164 (ListLongMap!363 (_ BitVec 64)) Bool)

(assert (=> start!1650 (= res!9750 (contains!164 lm!265 a!527))))

(assert (=> start!1650 e!7027))

(declare-fun e!7028 () Bool)

(declare-fun inv!590 (ListLongMap!363) Bool)

(assert (=> start!1650 (and (inv!590 lm!265) e!7028)))

(assert (=> start!1650 true))

(declare-fun tp_is_empty!583 () Bool)

(assert (=> start!1650 tp_is_empty!583))

(declare-fun b!11808 () Bool)

(declare-fun res!9751 () Bool)

(assert (=> b!11808 (=> (not res!9751) (not e!7027))))

(declare-fun b!100 () B!410)

(declare-datatypes ((Option!38 0))(
  ( (Some!37 (v!1352 B!410)) (None!36) )
))
(declare-fun getValueByKey!32 (List!347 (_ BitVec 64)) Option!38)

(assert (=> b!11808 (= res!9751 (= (getValueByKey!32 (toList!197 lm!265) a!527) (Some!37 b!100)))))

(declare-fun b!11809 () Bool)

(declare-fun isStrictlySorted!50 (List!347) Bool)

(assert (=> b!11809 (= e!7027 (not (isStrictlySorted!50 (toList!197 lm!265))))))

(declare-fun b!11810 () Bool)

(declare-fun tp!1979 () Bool)

(assert (=> b!11810 (= e!7028 tp!1979)))

(assert (= (and start!1650 res!9750) b!11808))

(assert (= (and b!11808 res!9751) b!11809))

(assert (= start!1650 b!11810))

(declare-fun m!8237 () Bool)

(assert (=> start!1650 m!8237))

(declare-fun m!8239 () Bool)

(assert (=> start!1650 m!8239))

(declare-fun m!8241 () Bool)

(assert (=> b!11808 m!8241))

(declare-fun m!8243 () Bool)

(assert (=> b!11809 m!8243))

(push 1)

(assert tp_is_empty!583)

(assert (not b!11810))

(assert (not b!11808))

(assert (not b!11809))

(assert (not start!1650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1637 () Bool)

(declare-fun e!7049 () Bool)

(assert (=> d!1637 e!7049))

(declare-fun res!9769 () Bool)

(assert (=> d!1637 (=> res!9769 e!7049)))

(declare-fun lt!3064 () Bool)

(assert (=> d!1637 (= res!9769 (not lt!3064))))

(declare-fun lt!3060 () Bool)

(assert (=> d!1637 (= lt!3064 lt!3060)))

(declare-datatypes ((Unit!252 0))(
  ( (Unit!254) )
))
(declare-fun lt!3062 () Unit!252)

(declare-fun e!7051 () Unit!252)

(assert (=> d!1637 (= lt!3062 e!7051)))

(declare-fun c!992 () Bool)

(assert (=> d!1637 (= c!992 lt!3060)))

(declare-fun containsKey!15 (List!347 (_ BitVec 64)) Bool)

(assert (=> d!1637 (= lt!3060 (containsKey!15 (toList!197 lm!265) a!527))))

(assert (=> d!1637 (= (contains!164 lm!265 a!527) lt!3064)))

(declare-fun b!11842 () Bool)

(declare-fun lt!3065 () Unit!252)

(assert (=> b!11842 (= e!7051 lt!3065)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!12 (List!347 (_ BitVec 64)) Unit!252)

(assert (=> b!11842 (= lt!3065 (lemmaContainsKeyImpliesGetValueByKeyDefined!12 (toList!197 lm!265) a!527))))

(declare-fun isDefined!13 (Option!38) Bool)

(assert (=> b!11842 (isDefined!13 (getValueByKey!32 (toList!197 lm!265) a!527))))

(declare-fun b!11844 () Bool)

(declare-fun Unit!256 () Unit!252)

(assert (=> b!11844 (= e!7051 Unit!256)))

(declare-fun b!11846 () Bool)

(assert (=> b!11846 (= e!7049 (isDefined!13 (getValueByKey!32 (toList!197 lm!265) a!527)))))

(assert (= (and d!1637 c!992) b!11842))

(assert (= (and d!1637 (not c!992)) b!11844))

(assert (= (and d!1637 (not res!9769)) b!11846))

(declare-fun m!8262 () Bool)

(assert (=> d!1637 m!8262))

(declare-fun m!8266 () Bool)

(assert (=> b!11842 m!8266))

(assert (=> b!11842 m!8241))

(assert (=> b!11842 m!8241))

(declare-fun m!8271 () Bool)

(assert (=> b!11842 m!8271))

(assert (=> b!11846 m!8241))

(assert (=> b!11846 m!8241))

(assert (=> b!11846 m!8271))

(assert (=> start!1650 d!1637))

(declare-fun d!1645 () Bool)

(assert (=> d!1645 (= (inv!590 lm!265) (isStrictlySorted!50 (toList!197 lm!265)))))

(declare-fun bs!453 () Bool)

(assert (= bs!453 d!1645))

(assert (=> bs!453 m!8243))

(assert (=> start!1650 d!1645))

(declare-fun d!1648 () Bool)

(declare-fun c!1003 () Bool)

(assert (=> d!1648 (= c!1003 (and (is-Cons!343 (toList!197 lm!265)) (= (_1!191 (h!909 (toList!197 lm!265))) a!527)))))

(declare-fun e!7065 () Option!38)

(assert (=> d!1648 (= (getValueByKey!32 (toList!197 lm!265) a!527) e!7065)))

(declare-fun b!11872 () Bool)

(declare-fun e!7066 () Option!38)

(assert (=> b!11872 (= e!7066 None!36)))

(declare-fun b!11871 () Bool)

(assert (=> b!11871 (= e!7066 (getValueByKey!32 (t!2734 (toList!197 lm!265)) a!527))))

(declare-fun b!11870 () Bool)

(assert (=> b!11870 (= e!7065 e!7066)))

(declare-fun c!1004 () Bool)

(assert (=> b!11870 (= c!1004 (and (is-Cons!343 (toList!197 lm!265)) (not (= (_1!191 (h!909 (toList!197 lm!265))) a!527))))))

(declare-fun b!11869 () Bool)

(assert (=> b!11869 (= e!7065 (Some!37 (_2!191 (h!909 (toList!197 lm!265)))))))

(assert (= (and d!1648 c!1003) b!11869))

(assert (= (and d!1648 (not c!1003)) b!11870))

(assert (= (and b!11870 c!1004) b!11871))

(assert (= (and b!11870 (not c!1004)) b!11872))

(declare-fun m!8273 () Bool)

(assert (=> b!11871 m!8273))

(assert (=> b!11808 d!1648))

(declare-fun d!1651 () Bool)

(declare-fun res!9781 () Bool)

(declare-fun e!7079 () Bool)

(assert (=> d!1651 (=> res!9781 e!7079)))

(assert (=> d!1651 (= res!9781 (or (is-Nil!344 (toList!197 lm!265)) (is-Nil!344 (t!2734 (toList!197 lm!265)))))))

(assert (=> d!1651 (= (isStrictlySorted!50 (toList!197 lm!265)) e!7079)))

(declare-fun b!11888 () Bool)

(declare-fun e!7080 () Bool)

(assert (=> b!11888 (= e!7079 e!7080)))

(declare-fun res!9782 () Bool)

(assert (=> b!11888 (=> (not res!9782) (not e!7080))))

(assert (=> b!11888 (= res!9782 (bvslt (_1!191 (h!909 (toList!197 lm!265))) (_1!191 (h!909 (t!2734 (toList!197 lm!265))))))))

(declare-fun b!11889 () Bool)

(assert (=> b!11889 (= e!7080 (isStrictlySorted!50 (t!2734 (toList!197 lm!265))))))

(assert (= (and d!1651 (not res!9781)) b!11888))

(assert (= (and b!11888 res!9782) b!11889))

(declare-fun m!8284 () Bool)

(assert (=> b!11889 m!8284))

(assert (=> b!11809 d!1651))

(declare-fun b!11901 () Bool)

(declare-fun e!7088 () Bool)

(declare-fun tp!1991 () Bool)

(assert (=> b!11901 (= e!7088 (and tp_is_empty!583 tp!1991))))

(assert (=> b!11810 (= tp!1979 e!7088)))

(assert (= (and b!11810 (is-Cons!343 (toList!197 lm!265))) b!11901))

(push 1)

