; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106702 () Bool)

(assert start!106702)

(declare-fun b!1266864 () Bool)

(declare-fun res!843433 () Bool)

(declare-fun e!721681 () Bool)

(assert (=> b!1266864 (=> (not res!843433) (not e!721681))))

(declare-datatypes ((B!2030 0))(
  ( (B!2031 (val!16350 Int)) )
))
(declare-datatypes ((tuple2!21368 0))(
  ( (tuple2!21369 (_1!10694 (_ BitVec 64)) (_2!10694 B!2030)) )
))
(declare-datatypes ((List!28517 0))(
  ( (Nil!28514) (Cons!28513 (h!29722 tuple2!21368) (t!42051 List!28517)) )
))
(declare-datatypes ((ListLongMap!19175 0))(
  ( (ListLongMap!19176 (toList!9603 List!28517)) )
))
(declare-fun lm!209 () ListLongMap!19175)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun containsKey!668 (List!28517 (_ BitVec 64)) Bool)

(assert (=> b!1266864 (= res!843433 (not (containsKey!668 (toList!9603 lm!209) a!499)))))

(declare-fun b!1266863 () Bool)

(declare-fun res!843432 () Bool)

(assert (=> b!1266863 (=> (not res!843432) (not e!721681))))

(declare-fun isStrictlySorted!807 (List!28517) Bool)

(assert (=> b!1266863 (= res!843432 (isStrictlySorted!807 (toList!9603 lm!209)))))

(declare-fun b!1266866 () Bool)

(declare-fun e!721680 () Bool)

(declare-fun tp!96507 () Bool)

(assert (=> b!1266866 (= e!721680 tp!96507)))

(declare-fun b!1266865 () Bool)

(declare-fun -!2157 (ListLongMap!19175 (_ BitVec 64)) ListLongMap!19175)

(assert (=> b!1266865 (= e!721681 (not (= (-!2157 lm!209 a!499) lm!209)))))

(declare-fun removeStrictlySorted!162 (List!28517 (_ BitVec 64)) List!28517)

(assert (=> b!1266865 (= (removeStrictlySorted!162 (toList!9603 lm!209) a!499) (toList!9603 lm!209))))

(declare-datatypes ((Unit!42155 0))(
  ( (Unit!42156) )
))
(declare-fun lt!574178 () Unit!42155)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!1 (List!28517 (_ BitVec 64)) Unit!42155)

(assert (=> b!1266865 (= lt!574178 (lemmaRemoveStrictlySortedNotPresentPreserves!1 (toList!9603 lm!209) a!499))))

(declare-fun res!843431 () Bool)

(assert (=> start!106702 (=> (not res!843431) (not e!721681))))

(declare-fun contains!7675 (ListLongMap!19175 (_ BitVec 64)) Bool)

(assert (=> start!106702 (= res!843431 (not (contains!7675 lm!209 a!499)))))

(assert (=> start!106702 e!721681))

(declare-fun inv!44193 (ListLongMap!19175) Bool)

(assert (=> start!106702 (and (inv!44193 lm!209) e!721680)))

(assert (=> start!106702 true))

(assert (= (and start!106702 res!843431) b!1266863))

(assert (= (and b!1266863 res!843432) b!1266864))

(assert (= (and b!1266864 res!843433) b!1266865))

(assert (= start!106702 b!1266866))

(declare-fun m!1166457 () Bool)

(assert (=> b!1266864 m!1166457))

(declare-fun m!1166459 () Bool)

(assert (=> b!1266863 m!1166459))

(declare-fun m!1166461 () Bool)

(assert (=> b!1266865 m!1166461))

(declare-fun m!1166463 () Bool)

(assert (=> b!1266865 m!1166463))

(declare-fun m!1166465 () Bool)

(assert (=> b!1266865 m!1166465))

(declare-fun m!1166467 () Bool)

(assert (=> start!106702 m!1166467))

(declare-fun m!1166469 () Bool)

(assert (=> start!106702 m!1166469))

(push 1)

(assert (not b!1266866))

(assert (not b!1266863))

(assert (not start!106702))

(assert (not b!1266865))

(assert (not b!1266864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139289 () Bool)

(declare-fun res!843460 () Bool)

(declare-fun e!721702 () Bool)

(assert (=> d!139289 (=> res!843460 e!721702)))

(assert (=> d!139289 (= res!843460 (or (is-Nil!28514 (toList!9603 lm!209)) (is-Nil!28514 (t!42051 (toList!9603 lm!209)))))))

(assert (=> d!139289 (= (isStrictlySorted!807 (toList!9603 lm!209)) e!721702)))

(declare-fun b!1266899 () Bool)

(declare-fun e!721703 () Bool)

(assert (=> b!1266899 (= e!721702 e!721703)))

(declare-fun res!843461 () Bool)

(assert (=> b!1266899 (=> (not res!843461) (not e!721703))))

(assert (=> b!1266899 (= res!843461 (bvslt (_1!10694 (h!29722 (toList!9603 lm!209))) (_1!10694 (h!29722 (t!42051 (toList!9603 lm!209))))))))

(declare-fun b!1266900 () Bool)

(assert (=> b!1266900 (= e!721703 (isStrictlySorted!807 (t!42051 (toList!9603 lm!209))))))

(assert (= (and d!139289 (not res!843460)) b!1266899))

(assert (= (and b!1266899 res!843461) b!1266900))

(declare-fun m!1166499 () Bool)

(assert (=> b!1266900 m!1166499))

(assert (=> b!1266863 d!139289))

(declare-fun d!139291 () Bool)

(declare-fun res!843474 () Bool)

(declare-fun e!721718 () Bool)

(assert (=> d!139291 (=> res!843474 e!721718)))

(assert (=> d!139291 (= res!843474 (and (is-Cons!28513 (toList!9603 lm!209)) (= (_1!10694 (h!29722 (toList!9603 lm!209))) a!499)))))

(assert (=> d!139291 (= (containsKey!668 (toList!9603 lm!209) a!499) e!721718)))

(declare-fun b!1266917 () Bool)

(declare-fun e!721719 () Bool)

(assert (=> b!1266917 (= e!721718 e!721719)))

(declare-fun res!843475 () Bool)

(assert (=> b!1266917 (=> (not res!843475) (not e!721719))))

(assert (=> b!1266917 (= res!843475 (and (or (not (is-Cons!28513 (toList!9603 lm!209))) (bvsle (_1!10694 (h!29722 (toList!9603 lm!209))) a!499)) (is-Cons!28513 (toList!9603 lm!209)) (bvslt (_1!10694 (h!29722 (toList!9603 lm!209))) a!499)))))

(declare-fun b!1266918 () Bool)

(assert (=> b!1266918 (= e!721719 (containsKey!668 (t!42051 (toList!9603 lm!209)) a!499))))

(assert (= (and d!139291 (not res!843474)) b!1266917))

(assert (= (and b!1266917 res!843475) b!1266918))

(declare-fun m!1166503 () Bool)

(assert (=> b!1266918 m!1166503))

(assert (=> b!1266864 d!139291))

(declare-fun d!139295 () Bool)

(declare-fun e!721732 () Bool)

(assert (=> d!139295 e!721732))

(declare-fun res!843483 () Bool)

(assert (=> d!139295 (=> res!843483 e!721732)))

(declare-fun lt!574217 () Bool)

(assert (=> d!139295 (= res!843483 (not lt!574217))))

(declare-fun lt!574218 () Bool)

(assert (=> d!139295 (= lt!574217 lt!574218)))

(declare-fun lt!574216 () Unit!42155)

(declare-fun e!721733 () Unit!42155)

(assert (=> d!139295 (= lt!574216 e!721733)))

(declare-fun c!123477 () Bool)

(assert (=> d!139295 (= c!123477 lt!574218)))

(assert (=> d!139295 (= lt!574218 (containsKey!668 (toList!9603 lm!209) a!499))))

(assert (=> d!139295 (= (contains!7675 lm!209 a!499) lt!574217)))

(declare-fun b!1266936 () Bool)

(declare-fun lt!574219 () Unit!42155)

(assert (=> b!1266936 (= e!721733 lt!574219)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!450 (List!28517 (_ BitVec 64)) Unit!42155)

(assert (=> b!1266936 (= lt!574219 (lemmaContainsKeyImpliesGetValueByKeyDefined!450 (toList!9603 lm!209) a!499))))

(declare-datatypes ((Option!738 0))(
  ( (Some!737 (v!19018 B!2030)) (None!736) )
))
(declare-fun isDefined!490 (Option!738) Bool)

(declare-fun getValueByKey!687 (List!28517 (_ BitVec 64)) Option!738)

(assert (=> b!1266936 (isDefined!490 (getValueByKey!687 (toList!9603 lm!209) a!499))))

(declare-fun b!1266937 () Bool)

(declare-fun Unit!42162 () Unit!42155)

(assert (=> b!1266937 (= e!721733 Unit!42162)))

(declare-fun b!1266938 () Bool)

(assert (=> b!1266938 (= e!721732 (isDefined!490 (getValueByKey!687 (toList!9603 lm!209) a!499)))))

(assert (= (and d!139295 c!123477) b!1266936))

(assert (= (and d!139295 (not c!123477)) b!1266937))

(assert (= (and d!139295 (not res!843483)) b!1266938))

(assert (=> d!139295 m!1166457))

(declare-fun m!1166515 () Bool)

(assert (=> b!1266936 m!1166515))

(declare-fun m!1166517 () Bool)

(assert (=> b!1266936 m!1166517))

(assert (=> b!1266936 m!1166517))

(declare-fun m!1166523 () Bool)

(assert (=> b!1266936 m!1166523))

(assert (=> b!1266938 m!1166517))

(assert (=> b!1266938 m!1166517))

(assert (=> b!1266938 m!1166523))

(assert (=> start!106702 d!139295))

(declare-fun d!139305 () Bool)

(assert (=> d!139305 (= (inv!44193 lm!209) (isStrictlySorted!807 (toList!9603 lm!209)))))

(declare-fun bs!35859 () Bool)

(assert (= bs!35859 d!139305))

(assert (=> bs!35859 m!1166459))

(assert (=> start!106702 d!139305))

(declare-fun d!139309 () Bool)

(declare-fun lt!574230 () ListLongMap!19175)

(assert (=> d!139309 (not (contains!7675 lt!574230 a!499))))

(assert (=> d!139309 (= lt!574230 (ListLongMap!19176 (removeStrictlySorted!162 (toList!9603 lm!209) a!499)))))

(assert (=> d!139309 (= (-!2157 lm!209 a!499) lt!574230)))

(declare-fun bs!35861 () Bool)

(assert (= bs!35861 d!139309))

(declare-fun m!1166527 () Bool)

(assert (=> bs!35861 m!1166527))

(assert (=> bs!35861 m!1166463))

(assert (=> b!1266865 d!139309))

(declare-fun d!139313 () Bool)

(declare-fun e!721762 () Bool)

(assert (=> d!139313 e!721762))

(declare-fun res!843496 () Bool)

(assert (=> d!139313 (=> (not res!843496) (not e!721762))))

(declare-fun lt!574240 () List!28517)

(assert (=> d!139313 (= res!843496 (isStrictlySorted!807 lt!574240))))

(declare-fun e!721761 () List!28517)

(assert (=> d!139313 (= lt!574240 e!721761)))

(declare-fun c!123493 () Bool)

(assert (=> d!139313 (= c!123493 (and (is-Cons!28513 (toList!9603 lm!209)) (= (_1!10694 (h!29722 (toList!9603 lm!209))) a!499)))))

(assert (=> d!139313 (isStrictlySorted!807 (toList!9603 lm!209))))

(assert (=> d!139313 (= (removeStrictlySorted!162 (toList!9603 lm!209) a!499) lt!574240)))

(declare-fun b!1266981 () Bool)

(declare-fun e!721763 () List!28517)

(assert (=> b!1266981 (= e!721763 Nil!28514)))

(declare-fun b!1266982 () Bool)

(assert (=> b!1266982 (= e!721761 e!721763)))

(declare-fun c!123494 () Bool)

(assert (=> b!1266982 (= c!123494 (and (is-Cons!28513 (toList!9603 lm!209)) (not (= (_1!10694 (h!29722 (toList!9603 lm!209))) a!499))))))

(declare-fun b!1266983 () Bool)

(assert (=> b!1266983 (= e!721761 (t!42051 (toList!9603 lm!209)))))

(declare-fun b!1266984 () Bool)

(assert (=> b!1266984 (= e!721762 (not (containsKey!668 lt!574240 a!499)))))

(declare-fun b!1266985 () Bool)

(declare-fun $colon$colon!650 (List!28517 tuple2!21368) List!28517)

(assert (=> b!1266985 (= e!721763 ($colon$colon!650 (removeStrictlySorted!162 (t!42051 (toList!9603 lm!209)) a!499) (h!29722 (toList!9603 lm!209))))))

(assert (= (and d!139313 c!123493) b!1266983))

(assert (= (and d!139313 (not c!123493)) b!1266982))

(assert (= (and b!1266982 c!123494) b!1266985))

(assert (= (and b!1266982 (not c!123494)) b!1266981))

(assert (= (and d!139313 res!843496) b!1266984))

(declare-fun m!1166543 () Bool)

(assert (=> d!139313 m!1166543))

(assert (=> d!139313 m!1166459))

(declare-fun m!1166545 () Bool)

(assert (=> b!1266984 m!1166545))

(declare-fun m!1166549 () Bool)

(assert (=> b!1266985 m!1166549))

(assert (=> b!1266985 m!1166549))

(declare-fun m!1166553 () Bool)

(assert (=> b!1266985 m!1166553))

(assert (=> b!1266865 d!139313))

(declare-fun d!139323 () Bool)

(assert (=> d!139323 (= (removeStrictlySorted!162 (toList!9603 lm!209) a!499) (toList!9603 lm!209))))

(declare-fun lt!574246 () Unit!42155)

(declare-fun choose!1899 (List!28517 (_ BitVec 64)) Unit!42155)

(assert (=> d!139323 (= lt!574246 (choose!1899 (toList!9603 lm!209) a!499))))

(assert (=> d!139323 (isStrictlySorted!807 (toList!9603 lm!209))))

(assert (=> d!139323 (= (lemmaRemoveStrictlySortedNotPresentPreserves!1 (toList!9603 lm!209) a!499) lt!574246)))

(declare-fun bs!35864 () Bool)

(assert (= bs!35864 d!139323))

(assert (=> bs!35864 m!1166463))

(declare-fun m!1166561 () Bool)

(assert (=> bs!35864 m!1166561))

(assert (=> bs!35864 m!1166459))

(assert (=> b!1266865 d!139323))

(declare-fun b!1267012 () Bool)

(declare-fun e!721782 () Bool)

(declare-fun tp_is_empty!32553 () Bool)

(declare-fun tp!96521 () Bool)

(assert (=> b!1267012 (= e!721782 (and tp_is_empty!32553 tp!96521))))

(assert (=> b!1266866 (= tp!96507 e!721782)))

(assert (= (and b!1266866 (is-Cons!28513 (toList!9603 lm!209))) b!1267012))

(push 1)

