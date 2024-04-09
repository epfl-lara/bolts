; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107876 () Bool)

(assert start!107876)

(declare-fun res!847450 () Bool)

(declare-fun e!727560 () Bool)

(assert (=> start!107876 (=> (not res!847450) (not e!727560))))

(declare-datatypes ((B!2162 0))(
  ( (B!2163 (val!16677 Int)) )
))
(declare-datatypes ((tuple2!21582 0))(
  ( (tuple2!21583 (_1!10801 (_ BitVec 64)) (_2!10801 B!2162)) )
))
(declare-datatypes ((List!28761 0))(
  ( (Nil!28758) (Cons!28757 (h!29966 tuple2!21582) (t!42301 List!28761)) )
))
(declare-fun l!595 () List!28761)

(declare-fun isStrictlySorted!852 (List!28761) Bool)

(assert (=> start!107876 (= res!847450 (isStrictlySorted!852 l!595))))

(assert (=> start!107876 e!727560))

(declare-fun e!727559 () Bool)

(assert (=> start!107876 e!727559))

(assert (=> start!107876 true))

(declare-fun b!1274720 () Bool)

(declare-fun res!847449 () Bool)

(assert (=> b!1274720 (=> (not res!847449) (not e!727560))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274720 (= res!847449 (and (not (= (_1!10801 (h!29966 l!595)) key!173)) (is-Cons!28757 l!595)))))

(declare-fun b!1274721 () Bool)

(declare-fun ListPrimitiveSize!166 (List!28761) Int)

(assert (=> b!1274721 (= e!727560 (>= (ListPrimitiveSize!166 (t!42301 l!595)) (ListPrimitiveSize!166 l!595)))))

(declare-fun b!1274722 () Bool)

(declare-fun tp_is_empty!33205 () Bool)

(declare-fun tp!98040 () Bool)

(assert (=> b!1274722 (= e!727559 (and tp_is_empty!33205 tp!98040))))

(assert (= (and start!107876 res!847450) b!1274720))

(assert (= (and b!1274720 res!847449) b!1274721))

(assert (= (and start!107876 (is-Cons!28757 l!595)) b!1274722))

(declare-fun m!1171309 () Bool)

(assert (=> start!107876 m!1171309))

(declare-fun m!1171311 () Bool)

(assert (=> b!1274721 m!1171311))

(declare-fun m!1171313 () Bool)

(assert (=> b!1274721 m!1171313))

(push 1)

(assert (not b!1274721))

(assert (not start!107876))

(assert (not b!1274722))

(assert tp_is_empty!33205)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140147 () Bool)

(declare-fun lt!575236 () Int)

(assert (=> d!140147 (>= lt!575236 0)))

(declare-fun e!727587 () Int)

(assert (=> d!140147 (= lt!575236 e!727587)))

(declare-fun c!123833 () Bool)

(assert (=> d!140147 (= c!123833 (is-Nil!28758 (t!42301 l!595)))))

(assert (=> d!140147 (= (ListPrimitiveSize!166 (t!42301 l!595)) lt!575236)))

(declare-fun b!1274765 () Bool)

(assert (=> b!1274765 (= e!727587 0)))

(declare-fun b!1274766 () Bool)

(assert (=> b!1274766 (= e!727587 (+ 1 (ListPrimitiveSize!166 (t!42301 (t!42301 l!595)))))))

(assert (= (and d!140147 c!123833) b!1274765))

(assert (= (and d!140147 (not c!123833)) b!1274766))

(declare-fun m!1171331 () Bool)

(assert (=> b!1274766 m!1171331))

(assert (=> b!1274721 d!140147))

(declare-fun d!140157 () Bool)

(declare-fun lt!575237 () Int)

(assert (=> d!140157 (>= lt!575237 0)))

(declare-fun e!727590 () Int)

(assert (=> d!140157 (= lt!575237 e!727590)))

(declare-fun c!123834 () Bool)

(assert (=> d!140157 (= c!123834 (is-Nil!28758 l!595))))

(assert (=> d!140157 (= (ListPrimitiveSize!166 l!595) lt!575237)))

(declare-fun b!1274769 () Bool)

(assert (=> b!1274769 (= e!727590 0)))

(declare-fun b!1274770 () Bool)

(assert (=> b!1274770 (= e!727590 (+ 1 (ListPrimitiveSize!166 (t!42301 l!595))))))

(assert (= (and d!140157 c!123834) b!1274769))

(assert (= (and d!140157 (not c!123834)) b!1274770))

(assert (=> b!1274770 m!1171311))

(assert (=> b!1274721 d!140157))

(declare-fun d!140159 () Bool)

(declare-fun res!847479 () Bool)

(declare-fun e!727604 () Bool)

(assert (=> d!140159 (=> res!847479 e!727604)))

(assert (=> d!140159 (= res!847479 (or (is-Nil!28758 l!595) (is-Nil!28758 (t!42301 l!595))))))

(assert (=> d!140159 (= (isStrictlySorted!852 l!595) e!727604)))

(declare-fun b!1274786 () Bool)

(declare-fun e!727605 () Bool)

(assert (=> b!1274786 (= e!727604 e!727605)))

(declare-fun res!847480 () Bool)

(assert (=> b!1274786 (=> (not res!847480) (not e!727605))))

(assert (=> b!1274786 (= res!847480 (bvslt (_1!10801 (h!29966 l!595)) (_1!10801 (h!29966 (t!42301 l!595)))))))

