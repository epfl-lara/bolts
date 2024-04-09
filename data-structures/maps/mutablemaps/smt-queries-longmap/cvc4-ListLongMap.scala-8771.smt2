; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106652 () Bool)

(assert start!106652)

(declare-fun res!843334 () Bool)

(declare-fun e!721548 () Bool)

(assert (=> start!106652 (=> (not res!843334) (not e!721548))))

(declare-datatypes ((B!2022 0))(
  ( (B!2023 (val!16346 Int)) )
))
(declare-datatypes ((tuple2!21360 0))(
  ( (tuple2!21361 (_1!10690 (_ BitVec 64)) (_2!10690 B!2022)) )
))
(declare-datatypes ((List!28513 0))(
  ( (Nil!28510) (Cons!28509 (h!29718 tuple2!21360) (t!42047 List!28513)) )
))
(declare-datatypes ((ListLongMap!19167 0))(
  ( (ListLongMap!19168 (toList!9599 List!28513)) )
))
(declare-fun lm!209 () ListLongMap!19167)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun contains!7671 (ListLongMap!19167 (_ BitVec 64)) Bool)

(assert (=> start!106652 (= res!843334 (not (contains!7671 lm!209 a!499)))))

(assert (=> start!106652 e!721548))

(declare-fun e!721549 () Bool)

(declare-fun inv!44179 (ListLongMap!19167) Bool)

(assert (=> start!106652 (and (inv!44179 lm!209) e!721549)))

(assert (=> start!106652 true))

(declare-fun b!1266688 () Bool)

(declare-fun isStrictlySorted!803 (List!28513) Bool)

(assert (=> b!1266688 (= e!721548 (not (isStrictlySorted!803 (toList!9599 lm!209))))))

(declare-fun b!1266689 () Bool)

(declare-fun tp!96477 () Bool)

(assert (=> b!1266689 (= e!721549 tp!96477)))

(assert (= (and start!106652 res!843334) b!1266688))

(assert (= start!106652 b!1266689))

(declare-fun m!1166367 () Bool)

(assert (=> start!106652 m!1166367))

(declare-fun m!1166369 () Bool)

(assert (=> start!106652 m!1166369))

(declare-fun m!1166371 () Bool)

(assert (=> b!1266688 m!1166371))

(push 1)

(assert (not start!106652))

(assert (not b!1266688))

(assert (not b!1266689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139243 () Bool)

(declare-fun e!721569 () Bool)

(assert (=> d!139243 e!721569))

(declare-fun res!843346 () Bool)

(assert (=> d!139243 (=> res!843346 e!721569)))

(declare-fun lt!574135 () Bool)

(assert (=> d!139243 (= res!843346 (not lt!574135))))

(declare-fun lt!574133 () Bool)

(assert (=> d!139243 (= lt!574135 lt!574133)))

(declare-datatypes ((Unit!42139 0))(
  ( (Unit!42140) )
))
(declare-fun lt!574134 () Unit!42139)

(declare-fun e!721568 () Unit!42139)

(assert (=> d!139243 (= lt!574134 e!721568)))

(declare-fun c!123459 () Bool)

(assert (=> d!139243 (= c!123459 lt!574133)))

(declare-fun containsKey!663 (List!28513 (_ BitVec 64)) Bool)

(assert (=> d!139243 (= lt!574133 (containsKey!663 (toList!9599 lm!209) a!499))))

(assert (=> d!139243 (= (contains!7671 lm!209 a!499) lt!574135)))

(declare-fun b!1266715 () Bool)

(declare-fun lt!574132 () Unit!42139)

(assert (=> b!1266715 (= e!721568 lt!574132)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!444 (List!28513 (_ BitVec 64)) Unit!42139)

(assert (=> b!1266715 (= lt!574132 (lemmaContainsKeyImpliesGetValueByKeyDefined!444 (toList!9599 lm!209) a!499))))

(declare-datatypes ((Option!732 0))(
  ( (Some!731 (v!19012 B!2022)) (None!730) )
))
(declare-fun isDefined!484 (Option!732) Bool)

(declare-fun getValueByKey!681 (List!28513 (_ BitVec 64)) Option!732)

(assert (=> b!1266715 (isDefined!484 (getValueByKey!681 (toList!9599 lm!209) a!499))))

(declare-fun b!1266716 () Bool)

(declare-fun Unit!42144 () Unit!42139)

(assert (=> b!1266716 (= e!721568 Unit!42144)))

(declare-fun b!1266717 () Bool)

(assert (=> b!1266717 (= e!721569 (isDefined!484 (getValueByKey!681 (toList!9599 lm!209) a!499)))))

(assert (= (and d!139243 c!123459) b!1266715))

(assert (= (and d!139243 (not c!123459)) b!1266716))

(assert (= (and d!139243 (not res!843346)) b!1266717))

(declare-fun m!1166383 () Bool)

(assert (=> d!139243 m!1166383))

(declare-fun m!1166385 () Bool)

(assert (=> b!1266715 m!1166385))

(declare-fun m!1166387 () Bool)

(assert (=> b!1266715 m!1166387))

(assert (=> b!1266715 m!1166387))

(declare-fun m!1166389 () Bool)

(assert (=> b!1266715 m!1166389))

(assert (=> b!1266717 m!1166387))

(assert (=> b!1266717 m!1166387))

(assert (=> b!1266717 m!1166389))

(assert (=> start!106652 d!139243))

(declare-fun d!139251 () Bool)

(assert (=> d!139251 (= (inv!44179 lm!209) (isStrictlySorted!803 (toList!9599 lm!209)))))

(declare-fun bs!35846 () Bool)

(assert (= bs!35846 d!139251))

(assert (=> bs!35846 m!1166371))

(assert (=> start!106652 d!139251))

(declare-fun d!139253 () Bool)

(declare-fun res!843360 () Bool)

(declare-fun e!721590 () Bool)

(assert (=> d!139253 (=> res!843360 e!721590)))

(assert (=> d!139253 (= res!843360 (or (is-Nil!28510 (toList!9599 lm!209)) (is-Nil!28510 (t!42047 (toList!9599 lm!209)))))))

(assert (=> d!139253 (= (isStrictlySorted!803 (toList!9599 lm!209)) e!721590)))

