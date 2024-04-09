; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137926 () Bool)

(assert start!137926)

(declare-fun res!1081642 () Bool)

(declare-fun e!883758 () Bool)

(assert (=> start!137926 (=> (not res!1081642) (not e!883758))))

(declare-datatypes ((B!2846 0))(
  ( (B!2847 (val!19785 Int)) )
))
(declare-datatypes ((tuple2!25902 0))(
  ( (tuple2!25903 (_1!12961 (_ BitVec 64)) (_2!12961 B!2846)) )
))
(declare-datatypes ((List!37066 0))(
  ( (Nil!37063) (Cons!37062 (h!38606 tuple2!25902) (t!51987 List!37066)) )
))
(declare-fun l!548 () List!37066)

(declare-fun isStrictlySorted!1137 (List!37066) Bool)

(assert (=> start!137926 (= res!1081642 (isStrictlySorted!1137 l!548))))

(assert (=> start!137926 e!883758))

(declare-fun e!883757 () Bool)

(assert (=> start!137926 e!883757))

(assert (=> start!137926 true))

(declare-fun b!1583256 () Bool)

(declare-fun res!1081643 () Bool)

(assert (=> b!1583256 (=> (not res!1081643) (not e!883758))))

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583256 (= res!1081643 (and (not (= (_1!12961 (h!38606 l!548)) key!159)) (is-Cons!37062 l!548)))))

(declare-fun b!1583257 () Bool)

(assert (=> b!1583257 (= e!883758 (not (isStrictlySorted!1137 (t!51987 l!548))))))

(declare-fun b!1583258 () Bool)

(declare-fun tp_is_empty!39379 () Bool)

(declare-fun tp!114934 () Bool)

(assert (=> b!1583258 (= e!883757 (and tp_is_empty!39379 tp!114934))))

(assert (= (and start!137926 res!1081642) b!1583256))

(assert (= (and b!1583256 res!1081643) b!1583257))

(assert (= (and start!137926 (is-Cons!37062 l!548)) b!1583258))

(declare-fun m!1453217 () Bool)

(assert (=> start!137926 m!1453217))

(declare-fun m!1453219 () Bool)

(assert (=> b!1583257 m!1453219))

(push 1)

(assert (not b!1583257))

(assert (not start!137926))

(assert (not b!1583258))

(assert tp_is_empty!39379)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167169 () Bool)

(declare-fun res!1081674 () Bool)

(declare-fun e!883791 () Bool)

(assert (=> d!167169 (=> res!1081674 e!883791)))

(assert (=> d!167169 (= res!1081674 (or (is-Nil!37063 (t!51987 l!548)) (is-Nil!37063 (t!51987 (t!51987 l!548)))))))

(assert (=> d!167169 (= (isStrictlySorted!1137 (t!51987 l!548)) e!883791)))

(declare-fun b!1583299 () Bool)

(declare-fun e!883792 () Bool)

(assert (=> b!1583299 (= e!883791 e!883792)))

(declare-fun res!1081675 () Bool)

(assert (=> b!1583299 (=> (not res!1081675) (not e!883792))))

(assert (=> b!1583299 (= res!1081675 (bvslt (_1!12961 (h!38606 (t!51987 l!548))) (_1!12961 (h!38606 (t!51987 (t!51987 l!548))))))))

(declare-fun b!1583300 () Bool)

(assert (=> b!1583300 (= e!883792 (isStrictlySorted!1137 (t!51987 (t!51987 l!548))))))

(assert (= (and d!167169 (not res!1081674)) b!1583299))

(assert (= (and b!1583299 res!1081675) b!1583300))

(declare-fun m!1453233 () Bool)

(assert (=> b!1583300 m!1453233))

(assert (=> b!1583257 d!167169))

(declare-fun d!167175 () Bool)

(declare-fun res!1081678 () Bool)

(declare-fun e!883796 () Bool)

(assert (=> d!167175 (=> res!1081678 e!883796)))

(assert (=> d!167175 (= res!1081678 (or (is-Nil!37063 l!548) (is-Nil!37063 (t!51987 l!548))))))

(assert (=> d!167175 (= (isStrictlySorted!1137 l!548) e!883796)))

(declare-fun b!1583304 () Bool)

(declare-fun e!883797 () Bool)

(assert (=> b!1583304 (= e!883796 e!883797)))

(declare-fun res!1081679 () Bool)

(assert (=> b!1583304 (=> (not res!1081679) (not e!883797))))

(assert (=> b!1583304 (= res!1081679 (bvslt (_1!12961 (h!38606 l!548)) (_1!12961 (h!38606 (t!51987 l!548)))))))

(declare-fun b!1583305 () Bool)

(assert (=> b!1583305 (= e!883797 (isStrictlySorted!1137 (t!51987 l!548)))))

(assert (= (and d!167175 (not res!1081678)) b!1583304))

(assert (= (and b!1583304 res!1081679) b!1583305))

(assert (=> b!1583305 m!1453219))

(assert (=> start!137926 d!167175))

(declare-fun b!1583315 () Bool)

(declare-fun e!883803 () Bool)

(declare-fun tp!114949 () Bool)

(assert (=> b!1583315 (= e!883803 (and tp_is_empty!39379 tp!114949))))

(assert (=> b!1583258 (= tp!114934 e!883803)))

(assert (= (and b!1583258 (is-Cons!37062 (t!51987 l!548))) b!1583315))

(push 1)

(assert (not b!1583300))

(assert (not b!1583305))

(assert (not b!1583315))

(assert tp_is_empty!39379)

(check-sat)

(pop 1)

