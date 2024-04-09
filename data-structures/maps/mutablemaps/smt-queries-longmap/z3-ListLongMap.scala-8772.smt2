; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106674 () Bool)

(assert start!106674)

(declare-fun res!843373 () Bool)

(declare-fun e!721606 () Bool)

(assert (=> start!106674 (=> (not res!843373) (not e!721606))))

(declare-datatypes ((B!2026 0))(
  ( (B!2027 (val!16348 Int)) )
))
(declare-datatypes ((tuple2!21364 0))(
  ( (tuple2!21365 (_1!10692 (_ BitVec 64)) (_2!10692 B!2026)) )
))
(declare-datatypes ((List!28515 0))(
  ( (Nil!28512) (Cons!28511 (h!29720 tuple2!21364) (t!42049 List!28515)) )
))
(declare-datatypes ((ListLongMap!19171 0))(
  ( (ListLongMap!19172 (toList!9601 List!28515)) )
))
(declare-fun lm!209 () ListLongMap!19171)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7673 (ListLongMap!19171 (_ BitVec 64)) Bool)

(assert (=> start!106674 (= res!843373 (not (contains!7673 lm!209 a!499)))))

(assert (=> start!106674 e!721606))

(declare-fun e!721605 () Bool)

(declare-fun inv!44186 (ListLongMap!19171) Bool)

(assert (=> start!106674 (and (inv!44186 lm!209) e!721605)))

(assert (=> start!106674 true))

(declare-fun b!1266765 () Bool)

(declare-fun res!843372 () Bool)

(assert (=> b!1266765 (=> (not res!843372) (not e!721606))))

(declare-fun isStrictlySorted!805 (List!28515) Bool)

(assert (=> b!1266765 (= res!843372 (isStrictlySorted!805 (toList!9601 lm!209)))))

(declare-fun b!1266766 () Bool)

(declare-fun containsKey!666 (List!28515 (_ BitVec 64)) Bool)

(assert (=> b!1266766 (= e!721606 (containsKey!666 (toList!9601 lm!209) a!499))))

(declare-fun b!1266767 () Bool)

(declare-fun tp!96492 () Bool)

(assert (=> b!1266767 (= e!721605 tp!96492)))

(assert (= (and start!106674 res!843373) b!1266765))

(assert (= (and b!1266765 res!843372) b!1266766))

(assert (= start!106674 b!1266767))

(declare-fun m!1166411 () Bool)

(assert (=> start!106674 m!1166411))

(declare-fun m!1166413 () Bool)

(assert (=> start!106674 m!1166413))

(declare-fun m!1166415 () Bool)

(assert (=> b!1266765 m!1166415))

(declare-fun m!1166417 () Bool)

(assert (=> b!1266766 m!1166417))

(check-sat (not b!1266765) (not start!106674) (not b!1266766) (not b!1266767))
(check-sat)
(get-model)

(declare-fun d!139261 () Bool)

(declare-fun res!843394 () Bool)

(declare-fun e!721627 () Bool)

(assert (=> d!139261 (=> res!843394 e!721627)))

(get-info :version)

(assert (=> d!139261 (= res!843394 (or ((_ is Nil!28512) (toList!9601 lm!209)) ((_ is Nil!28512) (t!42049 (toList!9601 lm!209)))))))

(assert (=> d!139261 (= (isStrictlySorted!805 (toList!9601 lm!209)) e!721627)))

(declare-fun b!1266791 () Bool)

(declare-fun e!721628 () Bool)

(assert (=> b!1266791 (= e!721627 e!721628)))

(declare-fun res!843395 () Bool)

(assert (=> b!1266791 (=> (not res!843395) (not e!721628))))

(assert (=> b!1266791 (= res!843395 (bvslt (_1!10692 (h!29720 (toList!9601 lm!209))) (_1!10692 (h!29720 (t!42049 (toList!9601 lm!209))))))))

(declare-fun b!1266792 () Bool)

(assert (=> b!1266792 (= e!721628 (isStrictlySorted!805 (t!42049 (toList!9601 lm!209))))))

(assert (= (and d!139261 (not res!843394)) b!1266791))

(assert (= (and b!1266791 res!843395) b!1266792))

(declare-fun m!1166429 () Bool)

(assert (=> b!1266792 m!1166429))

(assert (=> b!1266765 d!139261))

(declare-fun d!139267 () Bool)

(declare-fun e!721648 () Bool)

(assert (=> d!139267 e!721648))

(declare-fun res!843409 () Bool)

(assert (=> d!139267 (=> res!843409 e!721648)))

(declare-fun lt!574160 () Bool)

(assert (=> d!139267 (= res!843409 (not lt!574160))))

(declare-fun lt!574161 () Bool)

(assert (=> d!139267 (= lt!574160 lt!574161)))

(declare-datatypes ((Unit!42146 0))(
  ( (Unit!42147) )
))
(declare-fun lt!574162 () Unit!42146)

(declare-fun e!721647 () Unit!42146)

(assert (=> d!139267 (= lt!574162 e!721647)))

(declare-fun c!123466 () Bool)

(assert (=> d!139267 (= c!123466 lt!574161)))

(assert (=> d!139267 (= lt!574161 (containsKey!666 (toList!9601 lm!209) a!499))))

(assert (=> d!139267 (= (contains!7673 lm!209 a!499) lt!574160)))

(declare-fun b!1266816 () Bool)

(declare-fun lt!574163 () Unit!42146)

(assert (=> b!1266816 (= e!721647 lt!574163)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!446 (List!28515 (_ BitVec 64)) Unit!42146)

(assert (=> b!1266816 (= lt!574163 (lemmaContainsKeyImpliesGetValueByKeyDefined!446 (toList!9601 lm!209) a!499))))

(declare-datatypes ((Option!734 0))(
  ( (Some!733 (v!19014 B!2026)) (None!732) )
))
(declare-fun isDefined!486 (Option!734) Bool)

(declare-fun getValueByKey!683 (List!28515 (_ BitVec 64)) Option!734)

(assert (=> b!1266816 (isDefined!486 (getValueByKey!683 (toList!9601 lm!209) a!499))))

(declare-fun b!1266817 () Bool)

(declare-fun Unit!42150 () Unit!42146)

(assert (=> b!1266817 (= e!721647 Unit!42150)))

(declare-fun b!1266818 () Bool)

(assert (=> b!1266818 (= e!721648 (isDefined!486 (getValueByKey!683 (toList!9601 lm!209) a!499)))))

(assert (= (and d!139267 c!123466) b!1266816))

(assert (= (and d!139267 (not c!123466)) b!1266817))

(assert (= (and d!139267 (not res!843409)) b!1266818))

(assert (=> d!139267 m!1166417))

(declare-fun m!1166441 () Bool)

(assert (=> b!1266816 m!1166441))

(declare-fun m!1166443 () Bool)

(assert (=> b!1266816 m!1166443))

(assert (=> b!1266816 m!1166443))

(declare-fun m!1166445 () Bool)

(assert (=> b!1266816 m!1166445))

(assert (=> b!1266818 m!1166443))

(assert (=> b!1266818 m!1166443))

(assert (=> b!1266818 m!1166445))

(assert (=> start!106674 d!139267))

(declare-fun d!139275 () Bool)

(assert (=> d!139275 (= (inv!44186 lm!209) (isStrictlySorted!805 (toList!9601 lm!209)))))

(declare-fun bs!35852 () Bool)

(assert (= bs!35852 d!139275))

(assert (=> bs!35852 m!1166415))

(assert (=> start!106674 d!139275))

(declare-fun d!139279 () Bool)

(declare-fun res!843423 () Bool)

(declare-fun e!721665 () Bool)

(assert (=> d!139279 (=> res!843423 e!721665)))

(assert (=> d!139279 (= res!843423 (and ((_ is Cons!28511) (toList!9601 lm!209)) (= (_1!10692 (h!29720 (toList!9601 lm!209))) a!499)))))

(assert (=> d!139279 (= (containsKey!666 (toList!9601 lm!209) a!499) e!721665)))

(declare-fun b!1266840 () Bool)

(declare-fun e!721666 () Bool)

(assert (=> b!1266840 (= e!721665 e!721666)))

(declare-fun res!843424 () Bool)

(assert (=> b!1266840 (=> (not res!843424) (not e!721666))))

(assert (=> b!1266840 (= res!843424 (and (or (not ((_ is Cons!28511) (toList!9601 lm!209))) (bvsle (_1!10692 (h!29720 (toList!9601 lm!209))) a!499)) ((_ is Cons!28511) (toList!9601 lm!209)) (bvslt (_1!10692 (h!29720 (toList!9601 lm!209))) a!499)))))

(declare-fun b!1266841 () Bool)

(assert (=> b!1266841 (= e!721666 (containsKey!666 (t!42049 (toList!9601 lm!209)) a!499))))

(assert (= (and d!139279 (not res!843423)) b!1266840))

(assert (= (and b!1266840 res!843424) b!1266841))

(declare-fun m!1166455 () Bool)

(assert (=> b!1266841 m!1166455))

(assert (=> b!1266766 d!139279))

(declare-fun b!1266851 () Bool)

(declare-fun e!721672 () Bool)

(declare-fun tp_is_empty!32547 () Bool)

(declare-fun tp!96501 () Bool)

(assert (=> b!1266851 (= e!721672 (and tp_is_empty!32547 tp!96501))))

(assert (=> b!1266767 (= tp!96492 e!721672)))

(assert (= (and b!1266767 ((_ is Cons!28511) (toList!9601 lm!209))) b!1266851))

(check-sat (not d!139267) tp_is_empty!32547 (not b!1266816) (not b!1266841) (not d!139275) (not b!1266818) (not b!1266851) (not b!1266792))
(check-sat)
