; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7472 () Bool)

(assert start!7472)

(declare-fun res!27864 () Bool)

(declare-fun e!30780 () Bool)

(assert (=> start!7472 (=> (not res!27864) (not e!30780))))

(declare-datatypes ((B!918 0))(
  ( (B!919 (val!1079 Int)) )
))
(declare-datatypes ((tuple2!1744 0))(
  ( (tuple2!1745 (_1!882 (_ BitVec 64)) (_2!882 B!918)) )
))
(declare-datatypes ((List!1295 0))(
  ( (Nil!1292) (Cons!1291 (h!1871 tuple2!1744) (t!4331 List!1295)) )
))
(declare-datatypes ((ListLongMap!1241 0))(
  ( (ListLongMap!1242 (toList!636 List!1295)) )
))
(declare-fun lm!267 () ListLongMap!1241)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!598 (ListLongMap!1241 (_ BitVec 64)) Bool)

(assert (=> start!7472 (= res!27864 (not (contains!598 lm!267 key!657)))))

(assert (=> start!7472 e!30780))

(declare-fun e!30781 () Bool)

(declare-fun inv!2222 (ListLongMap!1241) Bool)

(assert (=> start!7472 (and (inv!2222 lm!267) e!30781)))

(assert (=> start!7472 true))

(declare-fun b!47981 () Bool)

(declare-fun isStrictlySorted!245 (List!1295) Bool)

(assert (=> b!47981 (= e!30780 (not (isStrictlySorted!245 (toList!636 lm!267))))))

(declare-fun b!47982 () Bool)

(declare-fun tp!6317 () Bool)

(assert (=> b!47982 (= e!30781 tp!6317)))

(assert (= (and start!7472 res!27864) b!47981))

(assert (= start!7472 b!47982))

(declare-fun m!42015 () Bool)

(assert (=> start!7472 m!42015))

(declare-fun m!42017 () Bool)

(assert (=> start!7472 m!42017))

(declare-fun m!42019 () Bool)

(assert (=> b!47981 m!42019))

(push 1)

(assert (not start!7472))

(assert (not b!47981))

(assert (not b!47982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9535 () Bool)

(declare-fun e!30799 () Bool)

(assert (=> d!9535 e!30799))

(declare-fun res!27876 () Bool)

(assert (=> d!9535 (=> res!27876 e!30799)))

(declare-fun lt!20509 () Bool)

(assert (=> d!9535 (= res!27876 (not lt!20509))))

(declare-fun lt!20511 () Bool)

(assert (=> d!9535 (= lt!20509 lt!20511)))

(declare-datatypes ((Unit!1339 0))(
  ( (Unit!1340) )
))
(declare-fun lt!20508 () Unit!1339)

(declare-fun e!30798 () Unit!1339)

(assert (=> d!9535 (= lt!20508 e!30798)))

(declare-fun c!6465 () Bool)

(assert (=> d!9535 (= c!6465 lt!20511)))

(declare-fun containsKey!96 (List!1295 (_ BitVec 64)) Bool)

(assert (=> d!9535 (= lt!20511 (containsKey!96 (toList!636 lm!267) key!657))))

(assert (=> d!9535 (= (contains!598 lm!267 key!657) lt!20509)))

(declare-fun b!48004 () Bool)

(declare-fun lt!20510 () Unit!1339)

(assert (=> b!48004 (= e!30798 lt!20510)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!66 (List!1295 (_ BitVec 64)) Unit!1339)

(assert (=> b!48004 (= lt!20510 (lemmaContainsKeyImpliesGetValueByKeyDefined!66 (toList!636 lm!267) key!657))))

(declare-datatypes ((Option!116 0))(
  ( (Some!115 (v!2132 B!918)) (None!114) )
))
(declare-fun isDefined!67 (Option!116) Bool)

(declare-fun getValueByKey!110 (List!1295 (_ BitVec 64)) Option!116)

(assert (=> b!48004 (isDefined!67 (getValueByKey!110 (toList!636 lm!267) key!657))))

(declare-fun b!48005 () Bool)

(declare-fun Unit!1344 () Unit!1339)

(assert (=> b!48005 (= e!30798 Unit!1344)))

(declare-fun b!48006 () Bool)

(assert (=> b!48006 (= e!30799 (isDefined!67 (getValueByKey!110 (toList!636 lm!267) key!657)))))

(assert (= (and d!9535 c!6465) b!48004))

(assert (= (and d!9535 (not c!6465)) b!48005))

(assert (= (and d!9535 (not res!27876)) b!48006))

(declare-fun m!42029 () Bool)

(assert (=> d!9535 m!42029))

(declare-fun m!42033 () Bool)

(assert (=> b!48004 m!42033))

(declare-fun m!42035 () Bool)

(assert (=> b!48004 m!42035))

(assert (=> b!48004 m!42035))

(declare-fun m!42037 () Bool)

(assert (=> b!48004 m!42037))

(assert (=> b!48006 m!42035))

(assert (=> b!48006 m!42035))

(assert (=> b!48006 m!42037))

(assert (=> start!7472 d!9535))

(declare-fun d!9541 () Bool)

(assert (=> d!9541 (= (inv!2222 lm!267) (isStrictlySorted!245 (toList!636 lm!267)))))

(declare-fun bs!2235 () Bool)

(assert (= bs!2235 d!9541))

(assert (=> bs!2235 m!42019))

(assert (=> start!7472 d!9541))

(declare-fun d!9545 () Bool)

(declare-fun res!27890 () Bool)

(declare-fun e!30816 () Bool)

(assert (=> d!9545 (=> res!27890 e!30816)))

(assert (=> d!9545 (= res!27890 (or (is-Nil!1292 (toList!636 lm!267)) (is-Nil!1292 (t!4331 (toList!636 lm!267)))))))

(assert (=> d!9545 (= (isStrictlySorted!245 (toList!636 lm!267)) e!30816)))

(declare-fun b!48026 () Bool)

(declare-fun e!30817 () Bool)

(assert (=> b!48026 (= e!30816 e!30817)))

(declare-fun res!27891 () Bool)

(assert (=> b!48026 (=> (not res!27891) (not e!30817))))

