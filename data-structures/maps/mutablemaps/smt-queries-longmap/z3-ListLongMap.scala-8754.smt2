; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106278 () Bool)

(assert start!106278)

(declare-fun res!842179 () Bool)

(declare-fun e!720099 () Bool)

(assert (=> start!106278 (=> (not res!842179) (not e!720099))))

(declare-datatypes ((B!1918 0))(
  ( (B!1919 (val!16294 Int)) )
))
(declare-datatypes ((tuple2!21256 0))(
  ( (tuple2!21257 (_1!10638 (_ BitVec 64)) (_2!10638 B!1918)) )
))
(declare-datatypes ((List!28461 0))(
  ( (Nil!28458) (Cons!28457 (h!29666 tuple2!21256) (t!41989 List!28461)) )
))
(declare-datatypes ((ListLongMap!19141 0))(
  ( (ListLongMap!19142 (toList!9586 List!28461)) )
))
(declare-fun lm!212 () ListLongMap!19141)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7644 (ListLongMap!19141 (_ BitVec 64)) Bool)

(assert (=> start!106278 (= res!842179 (not (contains!7644 lm!212 a1!67)))))

(assert (=> start!106278 e!720099))

(declare-fun e!720100 () Bool)

(declare-fun inv!44081 (ListLongMap!19141) Bool)

(assert (=> start!106278 (and (inv!44081 lm!212) e!720100)))

(assert (=> start!106278 true))

(declare-fun b!1264494 () Bool)

(declare-fun res!842178 () Bool)

(assert (=> b!1264494 (=> (not res!842178) (not e!720099))))

(declare-fun isStrictlySorted!769 (List!28461) Bool)

(assert (=> b!1264494 (= res!842178 (isStrictlySorted!769 (toList!9586 lm!212)))))

(declare-fun b!1264495 () Bool)

(declare-fun containsKey!630 (List!28461 (_ BitVec 64)) Bool)

(assert (=> b!1264495 (= e!720099 (containsKey!630 (toList!9586 lm!212) a1!67))))

(declare-fun b!1264496 () Bool)

(declare-fun tp!96225 () Bool)

(assert (=> b!1264496 (= e!720100 tp!96225)))

(assert (= (and start!106278 res!842179) b!1264494))

(assert (= (and b!1264494 res!842178) b!1264495))

(assert (= start!106278 b!1264496))

(declare-fun m!1165073 () Bool)

(assert (=> start!106278 m!1165073))

(declare-fun m!1165075 () Bool)

(assert (=> start!106278 m!1165075))

(declare-fun m!1165077 () Bool)

(assert (=> b!1264494 m!1165077))

(declare-fun m!1165079 () Bool)

(assert (=> b!1264495 m!1165079))

(check-sat (not b!1264494) (not start!106278) (not b!1264495) (not b!1264496))
(check-sat)
(get-model)

(declare-fun d!138673 () Bool)

(declare-fun res!842196 () Bool)

(declare-fun e!720117 () Bool)

(assert (=> d!138673 (=> res!842196 e!720117)))

(get-info :version)

(assert (=> d!138673 (= res!842196 (or ((_ is Nil!28458) (toList!9586 lm!212)) ((_ is Nil!28458) (t!41989 (toList!9586 lm!212)))))))

(assert (=> d!138673 (= (isStrictlySorted!769 (toList!9586 lm!212)) e!720117)))

(declare-fun b!1264516 () Bool)

(declare-fun e!720118 () Bool)

(assert (=> b!1264516 (= e!720117 e!720118)))

(declare-fun res!842197 () Bool)

(assert (=> b!1264516 (=> (not res!842197) (not e!720118))))

(assert (=> b!1264516 (= res!842197 (bvslt (_1!10638 (h!29666 (toList!9586 lm!212))) (_1!10638 (h!29666 (t!41989 (toList!9586 lm!212))))))))

(declare-fun b!1264517 () Bool)

(assert (=> b!1264517 (= e!720118 (isStrictlySorted!769 (t!41989 (toList!9586 lm!212))))))

(assert (= (and d!138673 (not res!842196)) b!1264516))

(assert (= (and b!1264516 res!842197) b!1264517))

(declare-fun m!1165091 () Bool)

(assert (=> b!1264517 m!1165091))

(assert (=> b!1264494 d!138673))

(declare-fun d!138679 () Bool)

(declare-fun e!720151 () Bool)

(assert (=> d!138679 e!720151))

(declare-fun res!842221 () Bool)

(assert (=> d!138679 (=> res!842221 e!720151)))

(declare-fun lt!573799 () Bool)

(assert (=> d!138679 (= res!842221 (not lt!573799))))

(declare-fun lt!573798 () Bool)

(assert (=> d!138679 (= lt!573799 lt!573798)))

(declare-datatypes ((Unit!42108 0))(
  ( (Unit!42109) )
))
(declare-fun lt!573800 () Unit!42108)

(declare-fun e!720150 () Unit!42108)

(assert (=> d!138679 (= lt!573800 e!720150)))

(declare-fun c!123094 () Bool)

(assert (=> d!138679 (= c!123094 lt!573798)))

(assert (=> d!138679 (= lt!573798 (containsKey!630 (toList!9586 lm!212) a1!67))))

(assert (=> d!138679 (= (contains!7644 lm!212 a1!67) lt!573799)))

(declare-fun b!1264556 () Bool)

(declare-fun lt!573797 () Unit!42108)

(assert (=> b!1264556 (= e!720150 lt!573797)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!440 (List!28461 (_ BitVec 64)) Unit!42108)

(assert (=> b!1264556 (= lt!573797 (lemmaContainsKeyImpliesGetValueByKeyDefined!440 (toList!9586 lm!212) a1!67))))

(declare-datatypes ((Option!727 0))(
  ( (Some!726 (v!19001 B!1918)) (None!725) )
))
(declare-fun isDefined!480 (Option!727) Bool)

(declare-fun getValueByKey!676 (List!28461 (_ BitVec 64)) Option!727)

(assert (=> b!1264556 (isDefined!480 (getValueByKey!676 (toList!9586 lm!212) a1!67))))

(declare-fun b!1264557 () Bool)

(declare-fun Unit!42110 () Unit!42108)

(assert (=> b!1264557 (= e!720150 Unit!42110)))

(declare-fun b!1264558 () Bool)

(assert (=> b!1264558 (= e!720151 (isDefined!480 (getValueByKey!676 (toList!9586 lm!212) a1!67)))))

(assert (= (and d!138679 c!123094) b!1264556))

(assert (= (and d!138679 (not c!123094)) b!1264557))

(assert (= (and d!138679 (not res!842221)) b!1264558))

(assert (=> d!138679 m!1165079))

(declare-fun m!1165105 () Bool)

(assert (=> b!1264556 m!1165105))

(declare-fun m!1165107 () Bool)

(assert (=> b!1264556 m!1165107))

(assert (=> b!1264556 m!1165107))

(declare-fun m!1165109 () Bool)

(assert (=> b!1264556 m!1165109))

(assert (=> b!1264558 m!1165107))

(assert (=> b!1264558 m!1165107))

(assert (=> b!1264558 m!1165109))

(assert (=> start!106278 d!138679))

(declare-fun d!138689 () Bool)

(assert (=> d!138689 (= (inv!44081 lm!212) (isStrictlySorted!769 (toList!9586 lm!212)))))

(declare-fun bs!35774 () Bool)

(assert (= bs!35774 d!138689))

(assert (=> bs!35774 m!1165077))

(assert (=> start!106278 d!138689))

(declare-fun d!138691 () Bool)

(declare-fun res!842228 () Bool)

