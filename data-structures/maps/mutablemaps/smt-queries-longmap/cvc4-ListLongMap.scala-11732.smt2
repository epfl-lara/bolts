; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137600 () Bool)

(assert start!137600)

(declare-fun res!1080842 () Bool)

(declare-fun e!882800 () Bool)

(assert (=> start!137600 (=> (not res!1080842) (not e!882800))))

(declare-datatypes ((B!2736 0))(
  ( (B!2737 (val!19730 Int)) )
))
(declare-datatypes ((tuple2!25792 0))(
  ( (tuple2!25793 (_1!12906 (_ BitVec 64)) (_2!12906 B!2736)) )
))
(declare-datatypes ((List!37011 0))(
  ( (Nil!37008) (Cons!37007 (h!38551 tuple2!25792) (t!51932 List!37011)) )
))
(declare-fun l!1356 () List!37011)

(declare-fun isStrictlySorted!1103 (List!37011) Bool)

(assert (=> start!137600 (= res!1080842 (isStrictlySorted!1103 l!1356))))

(assert (=> start!137600 e!882800))

(declare-fun e!882801 () Bool)

(assert (=> start!137600 e!882801))

(assert (=> start!137600 true))

(declare-fun b!1581924 () Bool)

(declare-fun res!1080841 () Bool)

(assert (=> b!1581924 (=> (not res!1080841) (not e!882800))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!949 (List!37011 (_ BitVec 64)) Bool)

(assert (=> b!1581924 (= res!1080841 (not (containsKey!949 l!1356 key!387)))))

(declare-fun b!1581925 () Bool)

(declare-fun ListPrimitiveSize!201 (List!37011) Int)

(assert (=> b!1581925 (= e!882800 (< (ListPrimitiveSize!201 l!1356) 0))))

(declare-fun b!1581926 () Bool)

(declare-fun tp_is_empty!39281 () Bool)

(declare-fun tp!114667 () Bool)

(assert (=> b!1581926 (= e!882801 (and tp_is_empty!39281 tp!114667))))

(assert (= (and start!137600 res!1080842) b!1581924))

(assert (= (and b!1581924 res!1080841) b!1581925))

(assert (= (and start!137600 (is-Cons!37007 l!1356)) b!1581926))

(declare-fun m!1452635 () Bool)

(assert (=> start!137600 m!1452635))

(declare-fun m!1452637 () Bool)

(assert (=> b!1581924 m!1452637))

(declare-fun m!1452639 () Bool)

(assert (=> b!1581925 m!1452639))

(push 1)

(assert (not b!1581924))

(assert (not start!137600))

(assert (not b!1581926))

(assert tp_is_empty!39281)

(assert (not b!1581925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166835 () Bool)

(declare-fun lt!676963 () Int)

(assert (=> d!166835 (>= lt!676963 0)))

(declare-fun e!882811 () Int)

(assert (=> d!166835 (= lt!676963 e!882811)))

(declare-fun c!146577 () Bool)

(assert (=> d!166835 (= c!146577 (is-Nil!37008 l!1356))))

(assert (=> d!166835 (= (ListPrimitiveSize!201 l!1356) lt!676963)))

(declare-fun b!1581941 () Bool)

(assert (=> b!1581941 (= e!882811 0)))

(declare-fun b!1581942 () Bool)

(assert (=> b!1581942 (= e!882811 (+ 1 (ListPrimitiveSize!201 (t!51932 l!1356))))))

(assert (= (and d!166835 c!146577) b!1581941))

(assert (= (and d!166835 (not c!146577)) b!1581942))

(declare-fun m!1452642 () Bool)

(assert (=> b!1581942 m!1452642))

(assert (=> b!1581925 d!166835))

(declare-fun d!166840 () Bool)

(declare-fun res!1080857 () Bool)

(declare-fun e!882825 () Bool)

(assert (=> d!166840 (=> res!1080857 e!882825)))

(assert (=> d!166840 (= res!1080857 (and (is-Cons!37007 l!1356) (= (_1!12906 (h!38551 l!1356)) key!387)))))

(assert (=> d!166840 (= (containsKey!949 l!1356 key!387) e!882825)))

(declare-fun b!1581959 () Bool)

(declare-fun e!882827 () Bool)

(assert (=> b!1581959 (= e!882825 e!882827)))

(declare-fun res!1080859 () Bool)

(assert (=> b!1581959 (=> (not res!1080859) (not e!882827))))

(assert (=> b!1581959 (= res!1080859 (and (or (not (is-Cons!37007 l!1356)) (bvsle (_1!12906 (h!38551 l!1356)) key!387)) (is-Cons!37007 l!1356) (bvslt (_1!12906 (h!38551 l!1356)) key!387)))))

(declare-fun b!1581960 () Bool)

(assert (=> b!1581960 (= e!882827 (containsKey!949 (t!51932 l!1356) key!387))))

(assert (= (and d!166840 (not res!1080857)) b!1581959))

(assert (= (and b!1581959 res!1080859) b!1581960))

(declare-fun m!1452651 () Bool)

(assert (=> b!1581960 m!1452651))

(assert (=> b!1581924 d!166840))

(declare-fun d!166849 () Bool)

(declare-fun res!1080875 () Bool)

(declare-fun e!882843 () Bool)

(assert (=> d!166849 (=> res!1080875 e!882843)))

(assert (=> d!166849 (= res!1080875 (or (is-Nil!37008 l!1356) (is-Nil!37008 (t!51932 l!1356))))))

(assert (=> d!166849 (= (isStrictlySorted!1103 l!1356) e!882843)))

(declare-fun b!1581977 () Bool)

(declare-fun e!882845 () Bool)

(assert (=> b!1581977 (= e!882843 e!882845)))

(declare-fun res!1080877 () Bool)

(assert (=> b!1581977 (=> (not res!1080877) (not e!882845))))

(assert (=> b!1581977 (= res!1080877 (bvslt (_1!12906 (h!38551 l!1356)) (_1!12906 (h!38551 (t!51932 l!1356)))))))

(declare-fun b!1581979 () Bool)

(assert (=> b!1581979 (= e!882845 (isStrictlySorted!1103 (t!51932 l!1356)))))

(assert (= (and d!166849 (not res!1080875)) b!1581977))

(assert (= (and b!1581977 res!1080877) b!1581979))

(declare-fun m!1452655 () Bool)

(assert (=> b!1581979 m!1452655))

(assert (=> start!137600 d!166849))

(declare-fun b!1581994 () Bool)

(declare-fun e!882854 () Bool)

(declare-fun tp!114675 () Bool)

(assert (=> b!1581994 (= e!882854 (and tp_is_empty!39281 tp!114675))))

(assert (=> b!1581926 (= tp!114667 e!882854)))

(assert (= (and b!1581926 (is-Cons!37007 (t!51932 l!1356))) b!1581994))

(push 1)

