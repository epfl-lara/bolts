; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113816 () Bool)

(assert start!113816)

(declare-fun k!387 () (_ BitVec 64))

(declare-datatypes ((B!2192 0))(
  ( (B!2193 (val!18885 Int)) )
))
(declare-datatypes ((tuple2!24504 0))(
  ( (tuple2!24505 (_1!12262 (_ BitVec 64)) (_2!12262 B!2192)) )
))
(declare-datatypes ((List!31658 0))(
  ( (Nil!31655) (Cons!31654 (h!32863 tuple2!24504) (t!46323 List!31658)) )
))
(declare-datatypes ((ListLongMap!22173 0))(
  ( (ListLongMap!22174 (toList!11102 List!31658)) )
))
(declare-fun contains!9223 (ListLongMap!22173 (_ BitVec 64)) Bool)

(assert (=> start!113816 (contains!9223 (ListLongMap!22174 Nil!31655) k!387)))

(assert (=> start!113816 true))

(declare-fun bs!38717 () Bool)

(assert (= bs!38717 start!113816))

(declare-fun m!1237339 () Bool)

(assert (=> bs!38717 m!1237339))

(push 1)

(assert (not start!113816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144769 () Bool)

(declare-fun e!768008 () Bool)

(assert (=> d!144769 e!768008))

(declare-fun res!895642 () Bool)

(assert (=> d!144769 (=> res!895642 e!768008)))

(declare-fun lt!596859 () Bool)

(assert (=> d!144769 (= res!895642 (not lt!596859))))

(declare-fun lt!596858 () Bool)

(assert (=> d!144769 (= lt!596859 lt!596858)))

(declare-datatypes ((Unit!44173 0))(
  ( (Unit!44174) )
))
(declare-fun lt!596857 () Unit!44173)

(declare-fun e!768009 () Unit!44173)

(assert (=> d!144769 (= lt!596857 e!768009)))

(declare-fun c!126632 () Bool)

(assert (=> d!144769 (= c!126632 lt!596858)))

(declare-fun containsKey!746 (List!31658 (_ BitVec 64)) Bool)

(assert (=> d!144769 (= lt!596858 (containsKey!746 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387))))

(assert (=> d!144769 (= (contains!9223 (ListLongMap!22174 Nil!31655) k!387) lt!596859)))

(declare-fun b!1350021 () Bool)

(declare-fun lt!596856 () Unit!44173)

(assert (=> b!1350021 (= e!768009 lt!596856)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!491 (List!31658 (_ BitVec 64)) Unit!44173)

(assert (=> b!1350021 (= lt!596856 (lemmaContainsKeyImpliesGetValueByKeyDefined!491 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387))))

(declare-datatypes ((Option!779 0))(
  ( (Some!778 (v!21530 B!2192)) (None!777) )
))
(declare-fun isDefined!531 (Option!779) Bool)

(declare-fun getValueByKey!728 (List!31658 (_ BitVec 64)) Option!779)

(assert (=> b!1350021 (isDefined!531 (getValueByKey!728 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387))))

(declare-fun b!1350022 () Bool)

(declare-fun Unit!44178 () Unit!44173)

(assert (=> b!1350022 (= e!768009 Unit!44178)))

(declare-fun b!1350023 () Bool)

(assert (=> b!1350023 (= e!768008 (isDefined!531 (getValueByKey!728 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387)))))

(assert (= (and d!144769 c!126632) b!1350021))

(assert (= (and d!144769 (not c!126632)) b!1350022))

(assert (= (and d!144769 (not res!895642)) b!1350023))

(declare-fun m!1237345 () Bool)

(assert (=> d!144769 m!1237345))

(declare-fun m!1237347 () Bool)

(assert (=> b!1350021 m!1237347))

(declare-fun m!1237351 () Bool)

(assert (=> b!1350021 m!1237351))

(assert (=> b!1350021 m!1237351))

(declare-fun m!1237355 () Bool)

(assert (=> b!1350021 m!1237355))

(assert (=> b!1350023 m!1237351))

(assert (=> b!1350023 m!1237351))

(assert (=> b!1350023 m!1237355))

(assert (=> start!113816 d!144769))

(push 1)

(assert (not d!144769))

(assert (not b!1350023))

(assert (not b!1350021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144779 () Bool)

(declare-fun res!895653 () Bool)

(declare-fun e!768028 () Bool)

(assert (=> d!144779 (=> res!895653 e!768028)))

(assert (=> d!144779 (= res!895653 (and (is-Cons!31654 (toList!11102 (ListLongMap!22174 Nil!31655))) (= (_1!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655)))) k!387)))))

(assert (=> d!144779 (= (containsKey!746 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387) e!768028)))

(declare-fun b!1350050 () Bool)

(declare-fun e!768029 () Bool)

(assert (=> b!1350050 (= e!768028 e!768029)))

(declare-fun res!895654 () Bool)

(assert (=> b!1350050 (=> (not res!895654) (not e!768029))))

(assert (=> b!1350050 (= res!895654 (and (or (not (is-Cons!31654 (toList!11102 (ListLongMap!22174 Nil!31655)))) (bvsle (_1!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655)))) k!387)) (is-Cons!31654 (toList!11102 (ListLongMap!22174 Nil!31655))) (bvslt (_1!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655)))) k!387)))))

(declare-fun b!1350051 () Bool)

(assert (=> b!1350051 (= e!768029 (containsKey!746 (t!46323 (toList!11102 (ListLongMap!22174 Nil!31655))) k!387))))

(assert (= (and d!144779 (not res!895653)) b!1350050))

(assert (= (and b!1350050 res!895654) b!1350051))

(declare-fun m!1237373 () Bool)

(assert (=> b!1350051 m!1237373))

(assert (=> d!144769 d!144779))

(declare-fun d!144783 () Bool)

(declare-fun isEmpty!1105 (Option!779) Bool)

(assert (=> d!144783 (= (isDefined!531 (getValueByKey!728 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387)) (not (isEmpty!1105 (getValueByKey!728 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387))))))

(declare-fun bs!38721 () Bool)

(assert (= bs!38721 d!144783))

(assert (=> bs!38721 m!1237351))

(declare-fun m!1237377 () Bool)

(assert (=> bs!38721 m!1237377))

(assert (=> b!1350023 d!144783))

(declare-fun d!144787 () Bool)

(declare-fun c!126645 () Bool)

(assert (=> d!144787 (= c!126645 (and (is-Cons!31654 (toList!11102 (ListLongMap!22174 Nil!31655))) (= (_1!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655)))) k!387)))))

(declare-fun e!768041 () Option!779)

(assert (=> d!144787 (= (getValueByKey!728 (toList!11102 (ListLongMap!22174 Nil!31655)) k!387) e!768041)))

(declare-fun b!1350067 () Bool)

(assert (=> b!1350067 (= e!768041 (Some!778 (_2!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655))))))))

(declare-fun b!1350068 () Bool)

(declare-fun e!768042 () Option!779)

(assert (=> b!1350068 (= e!768041 e!768042)))

(declare-fun c!126646 () Bool)

(assert (=> b!1350068 (= c!126646 (and (is-Cons!31654 (toList!11102 (ListLongMap!22174 Nil!31655))) (not (= (_1!12262 (h!32863 (toList!11102 (ListLongMap!22174 Nil!31655)))) k!387))))))

