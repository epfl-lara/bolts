; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106672 () Bool)

(assert start!106672)

(declare-fun res!843367 () Bool)

(declare-fun e!721599 () Bool)

(assert (=> start!106672 (=> (not res!843367) (not e!721599))))

(declare-datatypes ((B!2024 0))(
  ( (B!2025 (val!16347 Int)) )
))
(declare-datatypes ((tuple2!21362 0))(
  ( (tuple2!21363 (_1!10691 (_ BitVec 64)) (_2!10691 B!2024)) )
))
(declare-datatypes ((List!28514 0))(
  ( (Nil!28511) (Cons!28510 (h!29719 tuple2!21362) (t!42048 List!28514)) )
))
(declare-datatypes ((ListLongMap!19169 0))(
  ( (ListLongMap!19170 (toList!9600 List!28514)) )
))
(declare-fun lm!209 () ListLongMap!19169)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7672 (ListLongMap!19169 (_ BitVec 64)) Bool)

(assert (=> start!106672 (= res!843367 (not (contains!7672 lm!209 a!499)))))

(assert (=> start!106672 e!721599))

(declare-fun e!721600 () Bool)

(declare-fun inv!44185 (ListLongMap!19169) Bool)

(assert (=> start!106672 (and (inv!44185 lm!209) e!721600)))

(assert (=> start!106672 true))

(declare-fun b!1266756 () Bool)

(declare-fun res!843366 () Bool)

(assert (=> b!1266756 (=> (not res!843366) (not e!721599))))

(declare-fun isStrictlySorted!804 (List!28514) Bool)

(assert (=> b!1266756 (= res!843366 (isStrictlySorted!804 (toList!9600 lm!209)))))

(declare-fun b!1266757 () Bool)

(declare-fun containsKey!665 (List!28514 (_ BitVec 64)) Bool)

(assert (=> b!1266757 (= e!721599 (containsKey!665 (toList!9600 lm!209) a!499))))

(declare-fun b!1266758 () Bool)

(declare-fun tp!96489 () Bool)

(assert (=> b!1266758 (= e!721600 tp!96489)))

(assert (= (and start!106672 res!843367) b!1266756))

(assert (= (and b!1266756 res!843366) b!1266757))

(assert (= start!106672 b!1266758))

(declare-fun m!1166403 () Bool)

(assert (=> start!106672 m!1166403))

(declare-fun m!1166405 () Bool)

(assert (=> start!106672 m!1166405))

(declare-fun m!1166407 () Bool)

(assert (=> b!1266756 m!1166407))

(declare-fun m!1166409 () Bool)

(assert (=> b!1266757 m!1166409))

(push 1)

(assert (not b!1266756))

(assert (not start!106672))

(assert (not b!1266757))

(assert (not b!1266758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139259 () Bool)

(declare-fun res!843390 () Bool)

(declare-fun e!721623 () Bool)

(assert (=> d!139259 (=> res!843390 e!721623)))

(assert (=> d!139259 (= res!843390 (or (is-Nil!28511 (toList!9600 lm!209)) (is-Nil!28511 (t!42048 (toList!9600 lm!209)))))))

(assert (=> d!139259 (= (isStrictlySorted!804 (toList!9600 lm!209)) e!721623)))

(declare-fun b!1266785 () Bool)

(declare-fun e!721624 () Bool)

(assert (=> b!1266785 (= e!721623 e!721624)))

(declare-fun res!843391 () Bool)

(assert (=> b!1266785 (=> (not res!843391) (not e!721624))))

(assert (=> b!1266785 (= res!843391 (bvslt (_1!10691 (h!29719 (toList!9600 lm!209))) (_1!10691 (h!29719 (t!42048 (toList!9600 lm!209))))))))

(declare-fun b!1266786 () Bool)

(assert (=> b!1266786 (= e!721624 (isStrictlySorted!804 (t!42048 (toList!9600 lm!209))))))

(assert (= (and d!139259 (not res!843390)) b!1266785))

(assert (= (and b!1266785 res!843391) b!1266786))

(declare-fun m!1166427 () Bool)

(assert (=> b!1266786 m!1166427))

(assert (=> b!1266756 d!139259))

(declare-fun d!139265 () Bool)

(declare-fun e!721645 () Bool)

(assert (=> d!139265 e!721645))

(declare-fun res!843408 () Bool)

(assert (=> d!139265 (=> res!843408 e!721645)))

(declare-fun lt!574156 () Bool)

(assert (=> d!139265 (= res!843408 (not lt!574156))))

(declare-fun lt!574157 () Bool)

(assert (=> d!139265 (= lt!574156 lt!574157)))

(declare-datatypes ((Unit!42148 0))(
  ( (Unit!42149) )
))
(declare-fun lt!574158 () Unit!42148)

(declare-fun e!721646 () Unit!42148)

(assert (=> d!139265 (= lt!574158 e!721646)))

(declare-fun c!123465 () Bool)

(assert (=> d!139265 (= c!123465 lt!574157)))

(assert (=> d!139265 (= lt!574157 (containsKey!665 (toList!9600 lm!209) a!499))))

(assert (=> d!139265 (= (contains!7672 lm!209 a!499) lt!574156)))

(declare-fun b!1266813 () Bool)

(declare-fun lt!574159 () Unit!42148)

(assert (=> b!1266813 (= e!721646 lt!574159)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!447 (List!28514 (_ BitVec 64)) Unit!42148)

(assert (=> b!1266813 (= lt!574159 (lemmaContainsKeyImpliesGetValueByKeyDefined!447 (toList!9600 lm!209) a!499))))

(declare-datatypes ((Option!735 0))(
  ( (Some!734 (v!19015 B!2024)) (None!733) )
))
(declare-fun isDefined!487 (Option!735) Bool)

(declare-fun getValueByKey!684 (List!28514 (_ BitVec 64)) Option!735)

(assert (=> b!1266813 (isDefined!487 (getValueByKey!684 (toList!9600 lm!209) a!499))))

(declare-fun b!1266814 () Bool)

(declare-fun Unit!42151 () Unit!42148)

(assert (=> b!1266814 (= e!721646 Unit!42151)))

(declare-fun b!1266815 () Bool)

(assert (=> b!1266815 (= e!721645 (isDefined!487 (getValueByKey!684 (toList!9600 lm!209) a!499)))))

(assert (= (and d!139265 c!123465) b!1266813))

(assert (= (and d!139265 (not c!123465)) b!1266814))

(assert (= (and d!139265 (not res!843408)) b!1266815))

(assert (=> d!139265 m!1166409))

(declare-fun m!1166435 () Bool)

(assert (=> b!1266813 m!1166435))

(declare-fun m!1166437 () Bool)

(assert (=> b!1266813 m!1166437))

(assert (=> b!1266813 m!1166437))

(declare-fun m!1166439 () Bool)

(assert (=> b!1266813 m!1166439))

(assert (=> b!1266815 m!1166437))

(assert (=> b!1266815 m!1166437))

(assert (=> b!1266815 m!1166439))

(assert (=> start!106672 d!139265))

(declare-fun d!139273 () Bool)

(assert (=> d!139273 (= (inv!44185 lm!209) (isStrictlySorted!804 (toList!9600 lm!209)))))

(declare-fun bs!35851 () Bool)

(assert (= bs!35851 d!139273))

(assert (=> bs!35851 m!1166407))

(assert (=> start!106672 d!139273))

(declare-fun d!139277 () Bool)

(declare-fun res!843421 () Bool)

(declare-fun e!721663 () Bool)

(assert (=> d!139277 (=> res!843421 e!721663)))

(assert (=> d!139277 (= res!843421 (and (is-Cons!28510 (toList!9600 lm!209)) (= (_1!10691 (h!29719 (toList!9600 lm!209))) a!499)))))

(assert (=> d!139277 (= (containsKey!665 (toList!9600 lm!209) a!499) e!721663)))

(declare-fun b!1266836 () Bool)

(declare-fun e!721664 () Bool)

(assert (=> b!1266836 (= e!721663 e!721664)))

(declare-fun res!843422 () Bool)

(assert (=> b!1266836 (=> (not res!843422) (not e!721664))))

(assert (=> b!1266836 (= res!843422 (and (or (not (is-Cons!28510 (toList!9600 lm!209))) (bvsle (_1!10691 (h!29719 (toList!9600 lm!209))) a!499)) (is-Cons!28510 (toList!9600 lm!209)) (bvslt (_1!10691 (h!29719 (toList!9600 lm!209))) a!499)))))

(declare-fun b!1266837 () Bool)

(assert (=> b!1266837 (= e!721664 (containsKey!665 (t!42048 (toList!9600 lm!209)) a!499))))

(assert (= (and d!139277 (not res!843421)) b!1266836))

(assert (= (and b!1266836 res!843422) b!1266837))

(declare-fun m!1166451 () Bool)

(assert (=> b!1266837 m!1166451))

(assert (=> b!1266757 d!139277))

(declare-fun b!1266848 () Bool)

(declare-fun e!721671 () Bool)

(declare-fun tp_is_empty!32545 () Bool)

(declare-fun tp!96500 () Bool)

(assert (=> b!1266848 (= e!721671 (and tp_is_empty!32545 tp!96500))))

(assert (=> b!1266758 (= tp!96489 e!721671)))

(assert (= (and b!1266758 (is-Cons!28510 (toList!9600 lm!209))) b!1266848))

(push 1)

