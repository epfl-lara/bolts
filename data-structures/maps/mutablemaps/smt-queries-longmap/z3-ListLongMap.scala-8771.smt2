; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106650 () Bool)

(assert start!106650)

(declare-fun res!843331 () Bool)

(declare-fun e!721542 () Bool)

(assert (=> start!106650 (=> (not res!843331) (not e!721542))))

(declare-datatypes ((B!2020 0))(
  ( (B!2021 (val!16345 Int)) )
))
(declare-datatypes ((tuple2!21358 0))(
  ( (tuple2!21359 (_1!10689 (_ BitVec 64)) (_2!10689 B!2020)) )
))
(declare-datatypes ((List!28512 0))(
  ( (Nil!28509) (Cons!28508 (h!29717 tuple2!21358) (t!42046 List!28512)) )
))
(declare-datatypes ((ListLongMap!19165 0))(
  ( (ListLongMap!19166 (toList!9598 List!28512)) )
))
(declare-fun lm!209 () ListLongMap!19165)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7670 (ListLongMap!19165 (_ BitVec 64)) Bool)

(assert (=> start!106650 (= res!843331 (not (contains!7670 lm!209 a!499)))))

(assert (=> start!106650 e!721542))

(declare-fun e!721543 () Bool)

(declare-fun inv!44178 (ListLongMap!19165) Bool)

(assert (=> start!106650 (and (inv!44178 lm!209) e!721543)))

(assert (=> start!106650 true))

(declare-fun b!1266682 () Bool)

(declare-fun isStrictlySorted!802 (List!28512) Bool)

(assert (=> b!1266682 (= e!721542 (not (isStrictlySorted!802 (toList!9598 lm!209))))))

(declare-fun b!1266683 () Bool)

(declare-fun tp!96474 () Bool)

(assert (=> b!1266683 (= e!721543 tp!96474)))

(assert (= (and start!106650 res!843331) b!1266682))

(assert (= start!106650 b!1266683))

(declare-fun m!1166361 () Bool)

(assert (=> start!106650 m!1166361))

(declare-fun m!1166363 () Bool)

(assert (=> start!106650 m!1166363))

(declare-fun m!1166365 () Bool)

(assert (=> b!1266682 m!1166365))

(check-sat (not start!106650) (not b!1266682) (not b!1266683))
(check-sat)
(get-model)

(declare-fun d!139240 () Bool)

(declare-fun e!721565 () Bool)

(assert (=> d!139240 e!721565))

(declare-fun res!843345 () Bool)

(assert (=> d!139240 (=> res!843345 e!721565)))

(declare-fun lt!574123 () Bool)

(assert (=> d!139240 (= res!843345 (not lt!574123))))

(declare-fun lt!574122 () Bool)

(assert (=> d!139240 (= lt!574123 lt!574122)))

(declare-datatypes ((Unit!42137 0))(
  ( (Unit!42138) )
))
(declare-fun lt!574120 () Unit!42137)

(declare-fun e!721564 () Unit!42137)

(assert (=> d!139240 (= lt!574120 e!721564)))

(declare-fun c!123456 () Bool)

(assert (=> d!139240 (= c!123456 lt!574122)))

(declare-fun containsKey!662 (List!28512 (_ BitVec 64)) Bool)

(assert (=> d!139240 (= lt!574122 (containsKey!662 (toList!9598 lm!209) a!499))))

(assert (=> d!139240 (= (contains!7670 lm!209 a!499) lt!574123)))

(declare-fun b!1266708 () Bool)

(declare-fun lt!574121 () Unit!42137)

(assert (=> b!1266708 (= e!721564 lt!574121)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!443 (List!28512 (_ BitVec 64)) Unit!42137)

(assert (=> b!1266708 (= lt!574121 (lemmaContainsKeyImpliesGetValueByKeyDefined!443 (toList!9598 lm!209) a!499))))

(declare-datatypes ((Option!731 0))(
  ( (Some!730 (v!19011 B!2020)) (None!729) )
))
(declare-fun isDefined!483 (Option!731) Bool)

(declare-fun getValueByKey!680 (List!28512 (_ BitVec 64)) Option!731)

(assert (=> b!1266708 (isDefined!483 (getValueByKey!680 (toList!9598 lm!209) a!499))))

(declare-fun b!1266709 () Bool)

(declare-fun Unit!42143 () Unit!42137)

(assert (=> b!1266709 (= e!721564 Unit!42143)))

(declare-fun b!1266710 () Bool)

(assert (=> b!1266710 (= e!721565 (isDefined!483 (getValueByKey!680 (toList!9598 lm!209) a!499)))))

(assert (= (and d!139240 c!123456) b!1266708))

(assert (= (and d!139240 (not c!123456)) b!1266709))

(assert (= (and d!139240 (not res!843345)) b!1266710))

(declare-fun m!1166375 () Bool)

(assert (=> d!139240 m!1166375))

(declare-fun m!1166377 () Bool)

(assert (=> b!1266708 m!1166377))

(declare-fun m!1166379 () Bool)

(assert (=> b!1266708 m!1166379))

(assert (=> b!1266708 m!1166379))

(declare-fun m!1166381 () Bool)

(assert (=> b!1266708 m!1166381))

(assert (=> b!1266710 m!1166379))

(assert (=> b!1266710 m!1166379))

(assert (=> b!1266710 m!1166381))

(assert (=> start!106650 d!139240))

(declare-fun d!139247 () Bool)

(assert (=> d!139247 (= (inv!44178 lm!209) (isStrictlySorted!802 (toList!9598 lm!209)))))

(declare-fun bs!35845 () Bool)

(assert (= bs!35845 d!139247))

(assert (=> bs!35845 m!1166365))

(assert (=> start!106650 d!139247))

(declare-fun d!139249 () Bool)

(declare-fun res!843358 () Bool)

(declare-fun e!721582 () Bool)

(assert (=> d!139249 (=> res!843358 e!721582)))

(get-info :version)

(assert (=> d!139249 (= res!843358 (or ((_ is Nil!28509) (toList!9598 lm!209)) ((_ is Nil!28509) (t!42046 (toList!9598 lm!209)))))))

(assert (=> d!139249 (= (isStrictlySorted!802 (toList!9598 lm!209)) e!721582)))

(declare-fun b!1266731 () Bool)

(declare-fun e!721583 () Bool)

(assert (=> b!1266731 (= e!721582 e!721583)))

(declare-fun res!843359 () Bool)

(assert (=> b!1266731 (=> (not res!843359) (not e!721583))))

(assert (=> b!1266731 (= res!843359 (bvslt (_1!10689 (h!29717 (toList!9598 lm!209))) (_1!10689 (h!29717 (t!42046 (toList!9598 lm!209))))))))

(declare-fun b!1266732 () Bool)

(assert (=> b!1266732 (= e!721583 (isStrictlySorted!802 (t!42046 (toList!9598 lm!209))))))

(assert (= (and d!139249 (not res!843358)) b!1266731))

(assert (= (and b!1266731 res!843359) b!1266732))

(declare-fun m!1166399 () Bool)

(assert (=> b!1266732 m!1166399))

(assert (=> b!1266682 d!139249))

(declare-fun b!1266742 () Bool)

(declare-fun e!721589 () Bool)

(declare-fun tp_is_empty!32541 () Bool)

(declare-fun tp!96483 () Bool)

(assert (=> b!1266742 (= e!721589 (and tp_is_empty!32541 tp!96483))))

(assert (=> b!1266683 (= tp!96474 e!721589)))

(assert (= (and b!1266683 ((_ is Cons!28508) (toList!9598 lm!209))) b!1266742))

(check-sat (not b!1266742) (not b!1266708) tp_is_empty!32541 (not d!139247) (not b!1266710) (not d!139240) (not b!1266732))
(check-sat)
