; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106676 () Bool)

(assert start!106676)

(declare-fun res!843379 () Bool)

(declare-fun e!721611 () Bool)

(assert (=> start!106676 (=> (not res!843379) (not e!721611))))

(declare-datatypes ((B!2028 0))(
  ( (B!2029 (val!16349 Int)) )
))
(declare-datatypes ((tuple2!21366 0))(
  ( (tuple2!21367 (_1!10693 (_ BitVec 64)) (_2!10693 B!2028)) )
))
(declare-datatypes ((List!28516 0))(
  ( (Nil!28513) (Cons!28512 (h!29721 tuple2!21366) (t!42050 List!28516)) )
))
(declare-datatypes ((ListLongMap!19173 0))(
  ( (ListLongMap!19174 (toList!9602 List!28516)) )
))
(declare-fun lm!209 () ListLongMap!19173)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7674 (ListLongMap!19173 (_ BitVec 64)) Bool)

(assert (=> start!106676 (= res!843379 (not (contains!7674 lm!209 a!499)))))

(assert (=> start!106676 e!721611))

(declare-fun e!721612 () Bool)

(declare-fun inv!44187 (ListLongMap!19173) Bool)

(assert (=> start!106676 (and (inv!44187 lm!209) e!721612)))

(assert (=> start!106676 true))

(declare-fun b!1266774 () Bool)

(declare-fun res!843378 () Bool)

(assert (=> b!1266774 (=> (not res!843378) (not e!721611))))

(declare-fun isStrictlySorted!806 (List!28516) Bool)

(assert (=> b!1266774 (= res!843378 (isStrictlySorted!806 (toList!9602 lm!209)))))

(declare-fun b!1266775 () Bool)

(declare-fun containsKey!667 (List!28516 (_ BitVec 64)) Bool)

(assert (=> b!1266775 (= e!721611 (containsKey!667 (toList!9602 lm!209) a!499))))

(declare-fun b!1266776 () Bool)

(declare-fun tp!96495 () Bool)

(assert (=> b!1266776 (= e!721612 tp!96495)))

(assert (= (and start!106676 res!843379) b!1266774))

(assert (= (and b!1266774 res!843378) b!1266775))

(assert (= start!106676 b!1266776))

(declare-fun m!1166419 () Bool)

(assert (=> start!106676 m!1166419))

(declare-fun m!1166421 () Bool)

(assert (=> start!106676 m!1166421))

(declare-fun m!1166423 () Bool)

(assert (=> b!1266774 m!1166423))

(declare-fun m!1166425 () Bool)

(assert (=> b!1266775 m!1166425))

(push 1)

(assert (not b!1266774))

(assert (not b!1266775))

(assert (not start!106676))

(assert (not b!1266776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139263 () Bool)

(declare-fun res!843396 () Bool)

(declare-fun e!721629 () Bool)

(assert (=> d!139263 (=> res!843396 e!721629)))

(assert (=> d!139263 (= res!843396 (or (is-Nil!28513 (toList!9602 lm!209)) (is-Nil!28513 (t!42050 (toList!9602 lm!209)))))))

(assert (=> d!139263 (= (isStrictlySorted!806 (toList!9602 lm!209)) e!721629)))

(declare-fun b!1266793 () Bool)

(declare-fun e!721630 () Bool)

(assert (=> b!1266793 (= e!721629 e!721630)))

(declare-fun res!843397 () Bool)

(assert (=> b!1266793 (=> (not res!843397) (not e!721630))))

(assert (=> b!1266793 (= res!843397 (bvslt (_1!10693 (h!29721 (toList!9602 lm!209))) (_1!10693 (h!29721 (t!42050 (toList!9602 lm!209))))))))

(declare-fun b!1266794 () Bool)

(assert (=> b!1266794 (= e!721630 (isStrictlySorted!806 (t!42050 (toList!9602 lm!209))))))

(assert (= (and d!139263 (not res!843396)) b!1266793))

(assert (= (and b!1266793 res!843397) b!1266794))

(declare-fun m!1166431 () Bool)

(assert (=> b!1266794 m!1166431))

(assert (=> b!1266774 d!139263))

(declare-fun d!139269 () Bool)

(declare-fun res!843402 () Bool)

(declare-fun e!721635 () Bool)

(assert (=> d!139269 (=> res!843402 e!721635)))

(assert (=> d!139269 (= res!843402 (and (is-Cons!28512 (toList!9602 lm!209)) (= (_1!10693 (h!29721 (toList!9602 lm!209))) a!499)))))

(assert (=> d!139269 (= (containsKey!667 (toList!9602 lm!209) a!499) e!721635)))

(declare-fun b!1266799 () Bool)

(declare-fun e!721636 () Bool)

(assert (=> b!1266799 (= e!721635 e!721636)))

(declare-fun res!843403 () Bool)

(assert (=> b!1266799 (=> (not res!843403) (not e!721636))))

(assert (=> b!1266799 (= res!843403 (and (or (not (is-Cons!28512 (toList!9602 lm!209))) (bvsle (_1!10693 (h!29721 (toList!9602 lm!209))) a!499)) (is-Cons!28512 (toList!9602 lm!209)) (bvslt (_1!10693 (h!29721 (toList!9602 lm!209))) a!499)))))

(declare-fun b!1266800 () Bool)

(assert (=> b!1266800 (= e!721636 (containsKey!667 (t!42050 (toList!9602 lm!209)) a!499))))

(assert (= (and d!139269 (not res!843402)) b!1266799))

(assert (= (and b!1266799 res!843403) b!1266800))

(declare-fun m!1166433 () Bool)

(assert (=> b!1266800 m!1166433))

(assert (=> b!1266775 d!139269))

(declare-fun d!139271 () Bool)

(declare-fun e!721662 () Bool)

(assert (=> d!139271 e!721662))

(declare-fun res!843420 () Bool)

(assert (=> d!139271 (=> res!843420 e!721662)))

(declare-fun lt!574175 () Bool)

(assert (=> d!139271 (= res!843420 (not lt!574175))))

(declare-fun lt!574173 () Bool)

(assert (=> d!139271 (= lt!574175 lt!574173)))

(declare-datatypes ((Unit!42152 0))(
  ( (Unit!42153) )
))
(declare-fun lt!574172 () Unit!42152)

(declare-fun e!721661 () Unit!42152)

(assert (=> d!139271 (= lt!574172 e!721661)))

(declare-fun c!123469 () Bool)

(assert (=> d!139271 (= c!123469 lt!574173)))

(assert (=> d!139271 (= lt!574173 (containsKey!667 (toList!9602 lm!209) a!499))))

(assert (=> d!139271 (= (contains!7674 lm!209 a!499) lt!574175)))

(declare-fun b!1266833 () Bool)

(declare-fun lt!574174 () Unit!42152)

(assert (=> b!1266833 (= e!721661 lt!574174)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!448 (List!28516 (_ BitVec 64)) Unit!42152)

(assert (=> b!1266833 (= lt!574174 (lemmaContainsKeyImpliesGetValueByKeyDefined!448 (toList!9602 lm!209) a!499))))

(declare-datatypes ((Option!736 0))(
  ( (Some!735 (v!19016 B!2028)) (None!734) )
))
(declare-fun isDefined!488 (Option!736) Bool)

(declare-fun getValueByKey!685 (List!28516 (_ BitVec 64)) Option!736)

(assert (=> b!1266833 (isDefined!488 (getValueByKey!685 (toList!9602 lm!209) a!499))))

(declare-fun b!1266834 () Bool)

(declare-fun Unit!42154 () Unit!42152)

(assert (=> b!1266834 (= e!721661 Unit!42154)))

(declare-fun b!1266835 () Bool)

(assert (=> b!1266835 (= e!721662 (isDefined!488 (getValueByKey!685 (toList!9602 lm!209) a!499)))))

(assert (= (and d!139271 c!123469) b!1266833))

(assert (= (and d!139271 (not c!123469)) b!1266834))

(assert (= (and d!139271 (not res!843420)) b!1266835))

(assert (=> d!139271 m!1166425))

(declare-fun m!1166447 () Bool)

(assert (=> b!1266833 m!1166447))

(declare-fun m!1166450 () Bool)

(assert (=> b!1266833 m!1166450))

(assert (=> b!1266833 m!1166450))

(declare-fun m!1166453 () Bool)

(assert (=> b!1266833 m!1166453))

(assert (=> b!1266835 m!1166450))

(assert (=> b!1266835 m!1166450))

(assert (=> b!1266835 m!1166453))

(assert (=> start!106676 d!139271))

(declare-fun d!139281 () Bool)

(assert (=> d!139281 (= (inv!44187 lm!209) (isStrictlySorted!806 (toList!9602 lm!209)))))

(declare-fun bs!35853 () Bool)

(assert (= bs!35853 d!139281))

(assert (=> bs!35853 m!1166423))

(assert (=> start!106676 d!139281))

(declare-fun b!1266854 () Bool)

(declare-fun e!721675 () Bool)

(declare-fun tp_is_empty!32549 () Bool)

(declare-fun tp!96504 () Bool)

(assert (=> b!1266854 (= e!721675 (and tp_is_empty!32549 tp!96504))))

(assert (=> b!1266776 (= tp!96495 e!721675)))

(assert (= (and b!1266776 (is-Cons!28512 (toList!9602 lm!209))) b!1266854))

(push 1)

