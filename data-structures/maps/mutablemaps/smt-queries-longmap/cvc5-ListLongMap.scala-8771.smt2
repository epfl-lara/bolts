; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106648 () Bool)

(assert start!106648)

(declare-fun res!843328 () Bool)

(declare-fun e!721536 () Bool)

(assert (=> start!106648 (=> (not res!843328) (not e!721536))))

(declare-datatypes ((B!2018 0))(
  ( (B!2019 (val!16344 Int)) )
))
(declare-datatypes ((tuple2!21356 0))(
  ( (tuple2!21357 (_1!10688 (_ BitVec 64)) (_2!10688 B!2018)) )
))
(declare-datatypes ((List!28511 0))(
  ( (Nil!28508) (Cons!28507 (h!29716 tuple2!21356) (t!42045 List!28511)) )
))
(declare-datatypes ((ListLongMap!19163 0))(
  ( (ListLongMap!19164 (toList!9597 List!28511)) )
))
(declare-fun lm!209 () ListLongMap!19163)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7669 (ListLongMap!19163 (_ BitVec 64)) Bool)

(assert (=> start!106648 (= res!843328 (not (contains!7669 lm!209 a!499)))))

(assert (=> start!106648 e!721536))

(declare-fun e!721537 () Bool)

(declare-fun inv!44177 (ListLongMap!19163) Bool)

(assert (=> start!106648 (and (inv!44177 lm!209) e!721537)))

(assert (=> start!106648 true))

(declare-fun b!1266676 () Bool)

(declare-fun isStrictlySorted!801 (List!28511) Bool)

(assert (=> b!1266676 (= e!721536 (not (isStrictlySorted!801 (toList!9597 lm!209))))))

(declare-fun b!1266677 () Bool)

(declare-fun tp!96471 () Bool)

(assert (=> b!1266677 (= e!721537 tp!96471)))

(assert (= (and start!106648 res!843328) b!1266676))

(assert (= start!106648 b!1266677))

(declare-fun m!1166355 () Bool)

(assert (=> start!106648 m!1166355))

(declare-fun m!1166357 () Bool)

(assert (=> start!106648 m!1166357))

(declare-fun m!1166359 () Bool)

(assert (=> b!1266676 m!1166359))

(push 1)

(assert (not b!1266676))

(assert (not start!106648))

(assert (not b!1266677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139241 () Bool)

(declare-fun res!843339 () Bool)

(declare-fun e!721554 () Bool)

(assert (=> d!139241 (=> res!843339 e!721554)))

(assert (=> d!139241 (= res!843339 (or (is-Nil!28508 (toList!9597 lm!209)) (is-Nil!28508 (t!42045 (toList!9597 lm!209)))))))

(assert (=> d!139241 (= (isStrictlySorted!801 (toList!9597 lm!209)) e!721554)))

(declare-fun b!1266694 () Bool)

(declare-fun e!721555 () Bool)

(assert (=> b!1266694 (= e!721554 e!721555)))

(declare-fun res!843340 () Bool)

(assert (=> b!1266694 (=> (not res!843340) (not e!721555))))

(assert (=> b!1266694 (= res!843340 (bvslt (_1!10688 (h!29716 (toList!9597 lm!209))) (_1!10688 (h!29716 (t!42045 (toList!9597 lm!209))))))))

(declare-fun b!1266695 () Bool)

(assert (=> b!1266695 (= e!721555 (isStrictlySorted!801 (t!42045 (toList!9597 lm!209))))))

(assert (= (and d!139241 (not res!843339)) b!1266694))

(assert (= (and b!1266694 res!843340) b!1266695))

(declare-fun m!1166373 () Bool)

(assert (=> b!1266695 m!1166373))

(assert (=> b!1266676 d!139241))

(declare-fun d!139245 () Bool)

(declare-fun e!721572 () Bool)

(assert (=> d!139245 e!721572))

(declare-fun res!843349 () Bool)

(assert (=> d!139245 (=> res!843349 e!721572)))

(declare-fun lt!574137 () Bool)

(assert (=> d!139245 (= res!843349 (not lt!574137))))

(declare-fun lt!574138 () Bool)

(assert (=> d!139245 (= lt!574137 lt!574138)))

(declare-datatypes ((Unit!42141 0))(
  ( (Unit!42142) )
))
(declare-fun lt!574136 () Unit!42141)

(declare-fun e!721573 () Unit!42141)

(assert (=> d!139245 (= lt!574136 e!721573)))

(declare-fun c!123460 () Bool)

(assert (=> d!139245 (= c!123460 lt!574138)))

(declare-fun containsKey!664 (List!28511 (_ BitVec 64)) Bool)

(assert (=> d!139245 (= lt!574138 (containsKey!664 (toList!9597 lm!209) a!499))))

(assert (=> d!139245 (= (contains!7669 lm!209 a!499) lt!574137)))

(declare-fun b!1266720 () Bool)

(declare-fun lt!574139 () Unit!42141)

(assert (=> b!1266720 (= e!721573 lt!574139)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!445 (List!28511 (_ BitVec 64)) Unit!42141)

(assert (=> b!1266720 (= lt!574139 (lemmaContainsKeyImpliesGetValueByKeyDefined!445 (toList!9597 lm!209) a!499))))

(declare-datatypes ((Option!733 0))(
  ( (Some!732 (v!19013 B!2018)) (None!731) )
))
(declare-fun isDefined!485 (Option!733) Bool)

(declare-fun getValueByKey!682 (List!28511 (_ BitVec 64)) Option!733)

(assert (=> b!1266720 (isDefined!485 (getValueByKey!682 (toList!9597 lm!209) a!499))))

(declare-fun b!1266721 () Bool)

(declare-fun Unit!42145 () Unit!42141)

(assert (=> b!1266721 (= e!721573 Unit!42145)))

(declare-fun b!1266722 () Bool)

(assert (=> b!1266722 (= e!721572 (isDefined!485 (getValueByKey!682 (toList!9597 lm!209) a!499)))))

(assert (= (and d!139245 c!123460) b!1266720))

(assert (= (and d!139245 (not c!123460)) b!1266721))

(assert (= (and d!139245 (not res!843349)) b!1266722))

(declare-fun m!1166391 () Bool)

(assert (=> d!139245 m!1166391))

(declare-fun m!1166393 () Bool)

(assert (=> b!1266720 m!1166393))

(declare-fun m!1166395 () Bool)

(assert (=> b!1266720 m!1166395))

(assert (=> b!1266720 m!1166395))

(declare-fun m!1166397 () Bool)

(assert (=> b!1266720 m!1166397))

(assert (=> b!1266722 m!1166395))

(assert (=> b!1266722 m!1166395))

(assert (=> b!1266722 m!1166397))

(assert (=> start!106648 d!139245))

(declare-fun d!139255 () Bool)

(assert (=> d!139255 (= (inv!44177 lm!209) (isStrictlySorted!801 (toList!9597 lm!209)))))

(declare-fun bs!35847 () Bool)

(assert (= bs!35847 d!139255))

(assert (=> bs!35847 m!1166359))

(assert (=> start!106648 d!139255))

(declare-fun b!1266741 () Bool)

(declare-fun e!721588 () Bool)

(declare-fun tp_is_empty!32539 () Bool)

(declare-fun tp!96482 () Bool)

(assert (=> b!1266741 (= e!721588 (and tp_is_empty!32539 tp!96482))))

(assert (=> b!1266677 (= tp!96471 e!721588)))

(assert (= (and b!1266677 (is-Cons!28507 (toList!9597 lm!209))) b!1266741))

(push 1)

