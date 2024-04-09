; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1654 () Bool)

(assert start!1654)

(declare-fun res!9763 () Bool)

(declare-fun e!7040 () Bool)

(assert (=> start!1654 (=> (not res!9763) (not e!7040))))

(declare-datatypes ((B!414 0))(
  ( (B!415 (val!302 Int)) )
))
(declare-datatypes ((tuple2!386 0))(
  ( (tuple2!387 (_1!193 (_ BitVec 64)) (_2!193 B!414)) )
))
(declare-datatypes ((List!349 0))(
  ( (Nil!346) (Cons!345 (h!911 tuple2!386) (t!2736 List!349)) )
))
(declare-datatypes ((ListLongMap!367 0))(
  ( (ListLongMap!368 (toList!199 List!349)) )
))
(declare-fun lm!265 () ListLongMap!367)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!166 (ListLongMap!367 (_ BitVec 64)) Bool)

(assert (=> start!1654 (= res!9763 (contains!166 lm!265 a!527))))

(assert (=> start!1654 e!7040))

(declare-fun e!7039 () Bool)

(declare-fun inv!592 (ListLongMap!367) Bool)

(assert (=> start!1654 (and (inv!592 lm!265) e!7039)))

(assert (=> start!1654 true))

(declare-fun tp_is_empty!587 () Bool)

(assert (=> start!1654 tp_is_empty!587))

(declare-fun b!11826 () Bool)

(declare-fun res!9762 () Bool)

(assert (=> b!11826 (=> (not res!9762) (not e!7040))))

(declare-fun b!100 () B!414)

(declare-datatypes ((Option!40 0))(
  ( (Some!39 (v!1354 B!414)) (None!38) )
))
(declare-fun getValueByKey!34 (List!349 (_ BitVec 64)) Option!40)

(assert (=> b!11826 (= res!9762 (= (getValueByKey!34 (toList!199 lm!265) a!527) (Some!39 b!100)))))

(declare-fun b!11827 () Bool)

(declare-fun isStrictlySorted!52 (List!349) Bool)

(assert (=> b!11827 (= e!7040 (not (isStrictlySorted!52 (toList!199 lm!265))))))

(declare-fun b!11828 () Bool)

(declare-fun tp!1985 () Bool)

(assert (=> b!11828 (= e!7039 tp!1985)))

(assert (= (and start!1654 res!9763) b!11826))

(assert (= (and b!11826 res!9762) b!11827))

(assert (= start!1654 b!11828))

(declare-fun m!8253 () Bool)

(assert (=> start!1654 m!8253))

(declare-fun m!8255 () Bool)

(assert (=> start!1654 m!8255))

(declare-fun m!8257 () Bool)

(assert (=> b!11826 m!8257))

(declare-fun m!8259 () Bool)

(assert (=> b!11827 m!8259))

(push 1)

(assert tp_is_empty!587)

(assert (not b!11827))

(assert (not start!1654))

(assert (not b!11828))

(assert (not b!11826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1641 () Bool)

(declare-fun e!7077 () Bool)

(assert (=> d!1641 e!7077))

(declare-fun res!9780 () Bool)

(assert (=> d!1641 (=> res!9780 e!7077)))

(declare-fun lt!3078 () Bool)

(assert (=> d!1641 (= res!9780 (not lt!3078))))

(declare-fun lt!3077 () Bool)

(assert (=> d!1641 (= lt!3078 lt!3077)))

(declare-datatypes ((Unit!257 0))(
  ( (Unit!258) )
))
(declare-fun lt!3076 () Unit!257)

(declare-fun e!7078 () Unit!257)

(assert (=> d!1641 (= lt!3076 e!7078)))

(declare-fun c!1007 () Bool)

(assert (=> d!1641 (= c!1007 lt!3077)))

(declare-fun containsKey!16 (List!349 (_ BitVec 64)) Bool)

(assert (=> d!1641 (= lt!3077 (containsKey!16 (toList!199 lm!265) a!527))))

(assert (=> d!1641 (= (contains!166 lm!265 a!527) lt!3078)))

(declare-fun b!11885 () Bool)

(declare-fun lt!3075 () Unit!257)

(assert (=> b!11885 (= e!7078 lt!3075)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!13 (List!349 (_ BitVec 64)) Unit!257)

(assert (=> b!11885 (= lt!3075 (lemmaContainsKeyImpliesGetValueByKeyDefined!13 (toList!199 lm!265) a!527))))

(declare-fun isDefined!14 (Option!40) Bool)

(assert (=> b!11885 (isDefined!14 (getValueByKey!34 (toList!199 lm!265) a!527))))

(declare-fun b!11886 () Bool)

(declare-fun Unit!259 () Unit!257)

(assert (=> b!11886 (= e!7078 Unit!259)))

(declare-fun b!11887 () Bool)

