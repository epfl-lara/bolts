; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113820 () Bool)

(assert start!113820)

(declare-fun k!387 () (_ BitVec 64))

(declare-datatypes ((B!2196 0))(
  ( (B!2197 (val!18887 Int)) )
))
(declare-datatypes ((tuple2!24508 0))(
  ( (tuple2!24509 (_1!12264 (_ BitVec 64)) (_2!12264 B!2196)) )
))
(declare-datatypes ((List!31660 0))(
  ( (Nil!31657) (Cons!31656 (h!32865 tuple2!24508) (t!46325 List!31660)) )
))
(declare-datatypes ((ListLongMap!22177 0))(
  ( (ListLongMap!22178 (toList!11104 List!31660)) )
))
(declare-fun contains!9225 (ListLongMap!22177 (_ BitVec 64)) Bool)

(assert (=> start!113820 (contains!9225 (ListLongMap!22178 Nil!31657) k!387)))

(assert (=> start!113820 true))

(declare-fun bs!38719 () Bool)

(assert (= bs!38719 start!113820))

(declare-fun m!1237343 () Bool)

(assert (=> bs!38719 m!1237343))

(push 1)

(assert (not start!113820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144773 () Bool)

(declare-fun e!768013 () Bool)

(assert (=> d!144773 e!768013))

(declare-fun res!895644 () Bool)

(assert (=> d!144773 (=> res!895644 e!768013)))

(declare-fun lt!596865 () Bool)

(assert (=> d!144773 (= res!895644 (not lt!596865))))

(declare-fun lt!596867 () Bool)

(assert (=> d!144773 (= lt!596865 lt!596867)))

(declare-datatypes ((Unit!44175 0))(
  ( (Unit!44176) )
))
(declare-fun lt!596864 () Unit!44175)

(declare-fun e!768012 () Unit!44175)

(assert (=> d!144773 (= lt!596864 e!768012)))

(declare-fun c!126634 () Bool)

(assert (=> d!144773 (= c!126634 lt!596867)))

(declare-fun containsKey!747 (List!31660 (_ BitVec 64)) Bool)

(assert (=> d!144773 (= lt!596867 (containsKey!747 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387))))

(assert (=> d!144773 (= (contains!9225 (ListLongMap!22178 Nil!31657) k!387) lt!596865)))

(declare-fun b!1350027 () Bool)

(declare-fun lt!596866 () Unit!44175)

(assert (=> b!1350027 (= e!768012 lt!596866)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!492 (List!31660 (_ BitVec 64)) Unit!44175)

(assert (=> b!1350027 (= lt!596866 (lemmaContainsKeyImpliesGetValueByKeyDefined!492 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387))))

(declare-datatypes ((Option!780 0))(
  ( (Some!779 (v!21531 B!2196)) (None!778) )
))
(declare-fun isDefined!532 (Option!780) Bool)

(declare-fun getValueByKey!729 (List!31660 (_ BitVec 64)) Option!780)

(assert (=> b!1350027 (isDefined!532 (getValueByKey!729 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387))))

(declare-fun b!1350028 () Bool)

(declare-fun Unit!44179 () Unit!44175)

(assert (=> b!1350028 (= e!768012 Unit!44179)))

(declare-fun b!1350029 () Bool)

(assert (=> b!1350029 (= e!768013 (isDefined!532 (getValueByKey!729 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387)))))

(assert (= (and d!144773 c!126634) b!1350027))

(assert (= (and d!144773 (not c!126634)) b!1350028))

(assert (= (and d!144773 (not res!895644)) b!1350029))

(declare-fun m!1237361 () Bool)

(assert (=> d!144773 m!1237361))

(declare-fun m!1237363 () Bool)

(assert (=> b!1350027 m!1237363))

(declare-fun m!1237365 () Bool)

(assert (=> b!1350027 m!1237365))

(assert (=> b!1350027 m!1237365))

(declare-fun m!1237367 () Bool)

(assert (=> b!1350027 m!1237367))

(assert (=> b!1350029 m!1237365))

(assert (=> b!1350029 m!1237365))

(assert (=> b!1350029 m!1237367))

(assert (=> start!113820 d!144773))

(push 1)

(assert (not b!1350027))

(assert (not d!144773))

(assert (not b!1350029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!144789 () Bool)

(assert (=> d!144789 (isDefined!532 (getValueByKey!729 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387))))

(declare-fun lt!596873 () Unit!44175)

(declare-fun choose!1997 (List!31660 (_ BitVec 64)) Unit!44175)

(assert (=> d!144789 (= lt!596873 (choose!1997 (toList!11104 (ListLongMap!22178 Nil!31657)) k!387))))

(declare-fun e!768043 () Bool)

(assert (=> d!144789 e!768043))

(declare-fun res!895662 () Bool)

(assert (=> d!144789 (=> (not res!895662) (not e!768043))))

(declare-fun isStrictlySorted!882 (List!31660) Bool)

