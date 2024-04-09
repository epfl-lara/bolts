; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134422 () Bool)

(assert start!134422)

(declare-datatypes ((B!2504 0))(
  ( (B!2505 (val!19614 Int)) )
))
(declare-fun v1!32 () B!2504)

(declare-fun b!1569166 () Bool)

(declare-fun e!874770 () Bool)

(declare-datatypes ((tuple2!25494 0))(
  ( (tuple2!25495 (_1!12757 (_ BitVec 64)) (_2!12757 B!2504)) )
))
(declare-datatypes ((List!36895 0))(
  ( (Nil!36892) (Cons!36891 (h!38339 tuple2!25494) (t!51810 List!36895)) )
))
(declare-fun l!750 () List!36895)

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun isStrictlySorted!1002 (List!36895) Bool)

(declare-fun insertStrictlySorted!589 (List!36895 (_ BitVec 64) B!2504) List!36895)

(assert (=> b!1569166 (= e!874770 (not (isStrictlySorted!1002 (insertStrictlySorted!589 l!750 key1!37 v1!32))))))

(declare-fun b!1569164 () Bool)

(declare-fun res!1072559 () Bool)

(assert (=> b!1569164 (=> (not res!1072559) (not e!874770))))

(assert (=> b!1569164 (= res!1072559 (isStrictlySorted!1002 l!750))))

(declare-fun res!1072558 () Bool)

(assert (=> start!134422 (=> (not res!1072558) (not e!874770))))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134422 (= res!1072558 (not (= key1!37 key2!21)))))

(assert (=> start!134422 e!874770))

(assert (=> start!134422 true))

(declare-fun e!874769 () Bool)

(assert (=> start!134422 e!874769))

(declare-fun tp_is_empty!39055 () Bool)

(assert (=> start!134422 tp_is_empty!39055))

(declare-fun b!1569165 () Bool)

(declare-fun res!1072557 () Bool)

(assert (=> b!1569165 (=> (not res!1072557) (not e!874770))))

(assert (=> b!1569165 (= res!1072557 (or (not (is-Cons!36891 l!750)) (bvsge (_1!12757 (h!38339 l!750)) key1!37) (bvsge (_1!12757 (h!38339 l!750)) key2!21)))))

(declare-fun b!1569167 () Bool)

(declare-fun tp!114103 () Bool)

(assert (=> b!1569167 (= e!874769 (and tp_is_empty!39055 tp!114103))))

(assert (= (and start!134422 res!1072558) b!1569164))

(assert (= (and b!1569164 res!1072559) b!1569165))

(assert (= (and b!1569165 res!1072557) b!1569166))

(assert (= (and start!134422 (is-Cons!36891 l!750)) b!1569167))

(declare-fun m!1443661 () Bool)

(assert (=> b!1569166 m!1443661))

(assert (=> b!1569166 m!1443661))

(declare-fun m!1443663 () Bool)

(assert (=> b!1569166 m!1443663))

(declare-fun m!1443665 () Bool)

(assert (=> b!1569164 m!1443665))

(push 1)

(assert (not b!1569166))

(assert (not b!1569164))

(assert (not b!1569167))

(assert tp_is_empty!39055)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163799 () Bool)

(declare-fun res!1072594 () Bool)

(declare-fun e!874799 () Bool)

(assert (=> d!163799 (=> res!1072594 e!874799)))

(assert (=> d!163799 (= res!1072594 (or (is-Nil!36892 (insertStrictlySorted!589 l!750 key1!37 v1!32)) (is-Nil!36892 (t!51810 (insertStrictlySorted!589 l!750 key1!37 v1!32)))))))

(assert (=> d!163799 (= (isStrictlySorted!1002 (insertStrictlySorted!589 l!750 key1!37 v1!32)) e!874799)))

(declare-fun b!1569208 () Bool)

(declare-fun e!874800 () Bool)

(assert (=> b!1569208 (= e!874799 e!874800)))

(declare-fun res!1072595 () Bool)

(assert (=> b!1569208 (=> (not res!1072595) (not e!874800))))

(assert (=> b!1569208 (= res!1072595 (bvslt (_1!12757 (h!38339 (insertStrictlySorted!589 l!750 key1!37 v1!32))) (_1!12757 (h!38339 (t!51810 (insertStrictlySorted!589 l!750 key1!37 v1!32))))))))

(declare-fun b!1569209 () Bool)

(assert (=> b!1569209 (= e!874800 (isStrictlySorted!1002 (t!51810 (insertStrictlySorted!589 l!750 key1!37 v1!32))))))

(assert (= (and d!163799 (not res!1072594)) b!1569208))

(assert (= (and b!1569208 res!1072595) b!1569209))

(declare-fun m!1443683 () Bool)

(assert (=> b!1569209 m!1443683))

(assert (=> b!1569166 d!163799))

(declare-fun b!1569299 () Bool)

(declare-fun e!874851 () List!36895)

(declare-fun call!72088 () List!36895)

(assert (=> b!1569299 (= e!874851 call!72088)))

(declare-fun b!1569300 () Bool)

(declare-fun res!1072617 () Bool)

(declare-fun e!874852 () Bool)

(assert (=> b!1569300 (=> (not res!1072617) (not e!874852))))

(declare-fun lt!673228 () List!36895)

(declare-fun containsKey!863 (List!36895 (_ BitVec 64)) Bool)

(assert (=> b!1569300 (= res!1072617 (containsKey!863 lt!673228 key1!37))))

(declare-fun bm!72084 () Bool)

(declare-fun call!72089 () List!36895)

(assert (=> bm!72084 (= call!72088 call!72089)))

(declare-fun b!1569301 () Bool)

(assert (=> b!1569301 (= e!874851 call!72088)))

(declare-fun e!874849 () List!36895)

(declare-fun c!144671 () Bool)

(declare-fun c!144672 () Bool)

(declare-fun b!1569303 () Bool)

(assert (=> b!1569303 (= e!874849 (ite c!144671 (t!51810 l!750) (ite c!144672 (Cons!36891 (h!38339 l!750) (t!51810 l!750)) Nil!36892)))))

(declare-fun bm!72085 () Bool)

(declare-fun call!72087 () List!36895)

(assert (=> bm!72085 (= call!72089 call!72087)))

(declare-fun b!1569304 () Bool)

(declare-fun e!874848 () List!36895)

(declare-fun e!874850 () List!36895)

(assert (=> b!1569304 (= e!874848 e!874850)))

