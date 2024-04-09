; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106254 () Bool)

(assert start!106254)

(declare-fun res!842137 () Bool)

(declare-fun e!720036 () Bool)

(assert (=> start!106254 (=> (not res!842137) (not e!720036))))

(declare-datatypes ((B!1912 0))(
  ( (B!1913 (val!16291 Int)) )
))
(declare-datatypes ((tuple2!21250 0))(
  ( (tuple2!21251 (_1!10635 (_ BitVec 64)) (_2!10635 B!1912)) )
))
(declare-datatypes ((List!28458 0))(
  ( (Nil!28455) (Cons!28454 (h!29663 tuple2!21250) (t!41986 List!28458)) )
))
(declare-datatypes ((ListLongMap!19135 0))(
  ( (ListLongMap!19136 (toList!9583 List!28458)) )
))
(declare-fun lm!212 () ListLongMap!19135)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7641 (ListLongMap!19135 (_ BitVec 64)) Bool)

(assert (=> start!106254 (= res!842137 (not (contains!7641 lm!212 a1!67)))))

(assert (=> start!106254 e!720036))

(declare-fun e!720037 () Bool)

(declare-fun inv!44073 (ListLongMap!19135) Bool)

(assert (=> start!106254 (and (inv!44073 lm!212) e!720037)))

(assert (=> start!106254 true))

(declare-fun b!1264411 () Bool)

(declare-fun isStrictlySorted!766 (List!28458) Bool)

(assert (=> b!1264411 (= e!720036 (not (isStrictlySorted!766 (toList!9583 lm!212))))))

(declare-fun b!1264412 () Bool)

(declare-fun tp!96207 () Bool)

(assert (=> b!1264412 (= e!720037 tp!96207)))

(assert (= (and start!106254 res!842137) b!1264411))

(assert (= start!106254 b!1264412))

(declare-fun m!1165023 () Bool)

(assert (=> start!106254 m!1165023))

(declare-fun m!1165025 () Bool)

(assert (=> start!106254 m!1165025))

(declare-fun m!1165027 () Bool)

(assert (=> b!1264411 m!1165027))

(check-sat (not start!106254) (not b!1264411) (not b!1264412))
(check-sat)
(get-model)

(declare-fun d!138653 () Bool)

(declare-fun e!720070 () Bool)

(assert (=> d!138653 e!720070))

(declare-fun res!842158 () Bool)

(assert (=> d!138653 (=> res!842158 e!720070)))

(declare-fun lt!573764 () Bool)

(assert (=> d!138653 (= res!842158 (not lt!573764))))

(declare-fun lt!573761 () Bool)

(assert (=> d!138653 (= lt!573764 lt!573761)))

(declare-datatypes ((Unit!42102 0))(
  ( (Unit!42103) )
))
(declare-fun lt!573763 () Unit!42102)

(declare-fun e!720069 () Unit!42102)

(assert (=> d!138653 (= lt!573763 e!720069)))

(declare-fun c!123085 () Bool)

(assert (=> d!138653 (= c!123085 lt!573761)))

(declare-fun containsKey!628 (List!28458 (_ BitVec 64)) Bool)

(assert (=> d!138653 (= lt!573761 (containsKey!628 (toList!9583 lm!212) a1!67))))

(assert (=> d!138653 (= (contains!7641 lm!212 a1!67) lt!573764)))

(declare-fun b!1264451 () Bool)

(declare-fun lt!573762 () Unit!42102)

(assert (=> b!1264451 (= e!720069 lt!573762)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!438 (List!28458 (_ BitVec 64)) Unit!42102)

(assert (=> b!1264451 (= lt!573762 (lemmaContainsKeyImpliesGetValueByKeyDefined!438 (toList!9583 lm!212) a1!67))))

(declare-datatypes ((Option!725 0))(
  ( (Some!724 (v!18999 B!1912)) (None!723) )
))
(declare-fun isDefined!478 (Option!725) Bool)

(declare-fun getValueByKey!674 (List!28458 (_ BitVec 64)) Option!725)

(assert (=> b!1264451 (isDefined!478 (getValueByKey!674 (toList!9583 lm!212) a1!67))))

(declare-fun b!1264452 () Bool)

(declare-fun Unit!42104 () Unit!42102)

(assert (=> b!1264452 (= e!720069 Unit!42104)))

(declare-fun b!1264453 () Bool)

(assert (=> b!1264453 (= e!720070 (isDefined!478 (getValueByKey!674 (toList!9583 lm!212) a1!67)))))

(assert (= (and d!138653 c!123085) b!1264451))

(assert (= (and d!138653 (not c!123085)) b!1264452))

(assert (= (and d!138653 (not res!842158)) b!1264453))

(declare-fun m!1165047 () Bool)

(assert (=> d!138653 m!1165047))

(declare-fun m!1165049 () Bool)

(assert (=> b!1264451 m!1165049))

(declare-fun m!1165051 () Bool)

(assert (=> b!1264451 m!1165051))

(assert (=> b!1264451 m!1165051))

(declare-fun m!1165053 () Bool)

(assert (=> b!1264451 m!1165053))

(assert (=> b!1264453 m!1165051))

(assert (=> b!1264453 m!1165051))

(assert (=> b!1264453 m!1165053))

(assert (=> start!106254 d!138653))

(declare-fun d!138663 () Bool)

(assert (=> d!138663 (= (inv!44073 lm!212) (isStrictlySorted!766 (toList!9583 lm!212)))))

(declare-fun bs!35768 () Bool)

(assert (= bs!35768 d!138663))

(assert (=> bs!35768 m!1165027))

(assert (=> start!106254 d!138663))

(declare-fun d!138665 () Bool)

(declare-fun res!842166 () Bool)

(declare-fun e!720081 () Bool)

(assert (=> d!138665 (=> res!842166 e!720081)))

