; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134488 () Bool)

(assert start!134488)

(declare-fun res!1072731 () Bool)

(declare-fun e!875034 () Bool)

(assert (=> start!134488 (=> (not res!1072731) (not e!875034))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134488 (= res!1072731 (not (= key1!37 key2!21)))))

(assert (=> start!134488 e!875034))

(assert (=> start!134488 true))

(declare-fun e!875033 () Bool)

(assert (=> start!134488 e!875033))

(declare-fun b!1569593 () Bool)

(declare-fun tp_is_empty!39085 () Bool)

(declare-fun tp!114175 () Bool)

(assert (=> b!1569593 (= e!875033 (and tp_is_empty!39085 tp!114175))))

(declare-fun b!1569590 () Bool)

(declare-fun res!1072733 () Bool)

(assert (=> b!1569590 (=> (not res!1072733) (not e!875034))))

(declare-datatypes ((B!2534 0))(
  ( (B!2535 (val!19629 Int)) )
))
(declare-datatypes ((tuple2!25524 0))(
  ( (tuple2!25525 (_1!12772 (_ BitVec 64)) (_2!12772 B!2534)) )
))
(declare-datatypes ((List!36910 0))(
  ( (Nil!36907) (Cons!36906 (h!38354 tuple2!25524) (t!51825 List!36910)) )
))
(declare-fun l!750 () List!36910)

(declare-fun isStrictlySorted!1011 (List!36910) Bool)

(assert (=> b!1569590 (= res!1072733 (isStrictlySorted!1011 l!750))))

(declare-fun b!1569591 () Bool)

(declare-fun res!1072732 () Bool)

(assert (=> b!1569591 (=> (not res!1072732) (not e!875034))))

(assert (=> b!1569591 (= res!1072732 (and (is-Cons!36906 l!750) (bvslt (_1!12772 (h!38354 l!750)) key1!37) (bvslt (_1!12772 (h!38354 l!750)) key2!21)))))

(declare-fun b!1569592 () Bool)

(assert (=> b!1569592 (= e!875034 (not (isStrictlySorted!1011 (t!51825 l!750))))))

(assert (= (and start!134488 res!1072731) b!1569590))

(assert (= (and b!1569590 res!1072733) b!1569591))

(assert (= (and b!1569591 res!1072732) b!1569592))

(assert (= (and start!134488 (is-Cons!36906 l!750)) b!1569593))

(declare-fun m!1443805 () Bool)

(assert (=> b!1569590 m!1443805))

(declare-fun m!1443807 () Bool)

(assert (=> b!1569592 m!1443807))

(push 1)

(assert (not b!1569592))

(assert (not b!1569590))

(assert (not b!1569593))

(assert tp_is_empty!39085)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163857 () Bool)

(declare-fun res!1072764 () Bool)

(declare-fun e!875062 () Bool)

(assert (=> d!163857 (=> res!1072764 e!875062)))

(assert (=> d!163857 (= res!1072764 (or (is-Nil!36907 (t!51825 l!750)) (is-Nil!36907 (t!51825 (t!51825 l!750)))))))

(assert (=> d!163857 (= (isStrictlySorted!1011 (t!51825 l!750)) e!875062)))

(declare-fun b!1569635 () Bool)

(declare-fun e!875063 () Bool)

(assert (=> b!1569635 (= e!875062 e!875063)))

(declare-fun res!1072765 () Bool)

(assert (=> b!1569635 (=> (not res!1072765) (not e!875063))))

(assert (=> b!1569635 (= res!1072765 (bvslt (_1!12772 (h!38354 (t!51825 l!750))) (_1!12772 (h!38354 (t!51825 (t!51825 l!750))))))))

(declare-fun b!1569636 () Bool)

(assert (=> b!1569636 (= e!875063 (isStrictlySorted!1011 (t!51825 (t!51825 l!750))))))

(assert (= (and d!163857 (not res!1072764)) b!1569635))

(assert (= (and b!1569635 res!1072765) b!1569636))

(declare-fun m!1443819 () Bool)

(assert (=> b!1569636 m!1443819))

(assert (=> b!1569592 d!163857))

(declare-fun d!163859 () Bool)

(declare-fun res!1072766 () Bool)

(declare-fun e!875064 () Bool)

(assert (=> d!163859 (=> res!1072766 e!875064)))

(assert (=> d!163859 (= res!1072766 (or (is-Nil!36907 l!750) (is-Nil!36907 (t!51825 l!750))))))

(assert (=> d!163859 (= (isStrictlySorted!1011 l!750) e!875064)))

(declare-fun b!1569637 () Bool)

(declare-fun e!875065 () Bool)

(assert (=> b!1569637 (= e!875064 e!875065)))

(declare-fun res!1072767 () Bool)

(assert (=> b!1569637 (=> (not res!1072767) (not e!875065))))

(assert (=> b!1569637 (= res!1072767 (bvslt (_1!12772 (h!38354 l!750)) (_1!12772 (h!38354 (t!51825 l!750)))))))

(declare-fun b!1569638 () Bool)

(assert (=> b!1569638 (= e!875065 (isStrictlySorted!1011 (t!51825 l!750)))))

(assert (= (and d!163859 (not res!1072766)) b!1569637))

