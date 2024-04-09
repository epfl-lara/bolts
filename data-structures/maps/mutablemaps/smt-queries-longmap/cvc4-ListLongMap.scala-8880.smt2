; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107844 () Bool)

(assert start!107844)

(declare-fun res!847357 () Bool)

(declare-fun e!727439 () Bool)

(assert (=> start!107844 (=> (not res!847357) (not e!727439))))

(declare-datatypes ((B!2154 0))(
  ( (B!2155 (val!16673 Int)) )
))
(declare-datatypes ((tuple2!21574 0))(
  ( (tuple2!21575 (_1!10797 (_ BitVec 64)) (_2!10797 B!2154)) )
))
(declare-datatypes ((List!28757 0))(
  ( (Nil!28754) (Cons!28753 (h!29962 tuple2!21574) (t!42297 List!28757)) )
))
(declare-fun l!595 () List!28757)

(declare-fun isStrictlySorted!848 (List!28757) Bool)

(assert (=> start!107844 (= res!847357 (isStrictlySorted!848 l!595))))

(assert (=> start!107844 e!727439))

(declare-fun e!727440 () Bool)

(assert (=> start!107844 e!727440))

(declare-fun b!1274568 () Bool)

(declare-fun ListPrimitiveSize!165 (List!28757) Int)

(assert (=> b!1274568 (= e!727439 (< (ListPrimitiveSize!165 l!595) 0))))

(declare-fun b!1274569 () Bool)

(declare-fun tp_is_empty!33197 () Bool)

(declare-fun tp!98010 () Bool)

(assert (=> b!1274569 (= e!727440 (and tp_is_empty!33197 tp!98010))))

(assert (= (and start!107844 res!847357) b!1274568))

(assert (= (and start!107844 (is-Cons!28753 l!595)) b!1274569))

(declare-fun m!1171263 () Bool)

(assert (=> start!107844 m!1171263))

(declare-fun m!1171265 () Bool)

(assert (=> b!1274568 m!1171265))

(push 1)

(assert (not start!107844))

(assert (not b!1274568))

(assert (not b!1274569))

(assert tp_is_empty!33197)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140113 () Bool)

(declare-fun res!847368 () Bool)

(declare-fun e!727456 () Bool)

(assert (=> d!140113 (=> res!847368 e!727456)))

(assert (=> d!140113 (= res!847368 (or (is-Nil!28754 l!595) (is-Nil!28754 (t!42297 l!595))))))

(assert (=> d!140113 (= (isStrictlySorted!848 l!595) e!727456)))

(declare-fun b!1274590 () Bool)

(declare-fun e!727457 () Bool)

(assert (=> b!1274590 (= e!727456 e!727457)))

(declare-fun res!847369 () Bool)

(assert (=> b!1274590 (=> (not res!847369) (not e!727457))))

(assert (=> b!1274590 (= res!847369 (bvslt (_1!10797 (h!29962 l!595)) (_1!10797 (h!29962 (t!42297 l!595)))))))

(declare-fun b!1274591 () Bool)

(assert (=> b!1274591 (= e!727457 (isStrictlySorted!848 (t!42297 l!595)))))

(assert (= (and d!140113 (not res!847368)) b!1274590))

(assert (= (and b!1274590 res!847369) b!1274591))

(declare-fun m!1171271 () Bool)

(assert (=> b!1274591 m!1171271))

(assert (=> start!107844 d!140113))

(declare-fun d!140119 () Bool)

(declare-fun lt!575225 () Int)

(assert (=> d!140119 (>= lt!575225 0)))

(declare-fun e!727472 () Int)

(assert (=> d!140119 (= lt!575225 e!727472)))

(declare-fun c!123822 () Bool)

(assert (=> d!140119 (= c!123822 (is-Nil!28754 l!595))))

(assert (=> d!140119 (= (ListPrimitiveSize!165 l!595) lt!575225)))

(declare-fun b!1274613 () Bool)

(assert (=> b!1274613 (= e!727472 0)))

(declare-fun b!1274614 () Bool)

(assert (=> b!1274614 (= e!727472 (+ 1 (ListPrimitiveSize!165 (t!42297 l!595))))))

