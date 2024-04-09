; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107924 () Bool)

(assert start!107924)

(declare-fun b!1274992 () Bool)

(declare-fun res!847599 () Bool)

(declare-fun e!727766 () Bool)

(assert (=> b!1274992 (=> (not res!847599) (not e!727766))))

(declare-datatypes ((B!2174 0))(
  ( (B!2175 (val!16683 Int)) )
))
(declare-datatypes ((tuple2!21594 0))(
  ( (tuple2!21595 (_1!10807 (_ BitVec 64)) (_2!10807 B!2174)) )
))
(declare-datatypes ((List!28767 0))(
  ( (Nil!28764) (Cons!28763 (h!29972 tuple2!21594) (t!42310 List!28767)) )
))
(declare-fun l!595 () List!28767)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274992 (= res!847599 (and (or (not (is-Cons!28763 l!595)) (not (= (_1!10807 (h!29972 l!595)) key!173))) (or (not (is-Cons!28763 l!595)) (= (_1!10807 (h!29972 l!595)) key!173)) (is-Nil!28764 l!595)))))

(declare-fun res!847598 () Bool)

(assert (=> start!107924 (=> (not res!847598) (not e!727766))))

(declare-fun isStrictlySorted!858 (List!28767) Bool)

(assert (=> start!107924 (= res!847598 (isStrictlySorted!858 l!595))))

(assert (=> start!107924 e!727766))

(declare-fun e!727765 () Bool)

(assert (=> start!107924 e!727765))

(assert (=> start!107924 true))

(declare-fun b!1274994 () Bool)

(declare-fun e!727767 () Bool)

(declare-fun containsKey!704 (List!28767 (_ BitVec 64)) Bool)

(assert (=> b!1274994 (= e!727767 (containsKey!704 Nil!28764 key!173))))

(declare-fun b!1274993 () Bool)

(assert (=> b!1274993 (= e!727766 e!727767)))

(declare-fun res!847600 () Bool)

(assert (=> b!1274993 (=> res!847600 e!727767)))

(assert (=> b!1274993 (= res!847600 false)))

(declare-fun b!1274995 () Bool)

(declare-fun tp_is_empty!33217 () Bool)

(declare-fun tp!98079 () Bool)

(assert (=> b!1274995 (= e!727765 (and tp_is_empty!33217 tp!98079))))

(assert (= (and start!107924 res!847598) b!1274992))

(assert (= (and b!1274992 res!847599) b!1274993))

(assert (= (and b!1274993 (not res!847600)) b!1274994))

(assert (= (and start!107924 (is-Cons!28763 l!595)) b!1274995))

(declare-fun m!1171465 () Bool)

(assert (=> start!107924 m!1171465))

(declare-fun m!1171467 () Bool)

(assert (=> b!1274994 m!1171467))

(push 1)

(assert (not start!107924))

(assert (not b!1274994))

(assert (not b!1274995))

(assert tp_is_empty!33217)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140241 () Bool)

(declare-fun res!847635 () Bool)

(declare-fun e!727802 () Bool)

(assert (=> d!140241 (=> res!847635 e!727802)))

(assert (=> d!140241 (= res!847635 (or (is-Nil!28764 l!595) (is-Nil!28764 (t!42310 l!595))))))

(assert (=> d!140241 (= (isStrictlySorted!858 l!595) e!727802)))

(declare-fun b!1275036 () Bool)

(declare-fun e!727803 () Bool)

(assert (=> b!1275036 (= e!727802 e!727803)))

(declare-fun res!847636 () Bool)

(assert (=> b!1275036 (=> (not res!847636) (not e!727803))))

(assert (=> b!1275036 (= res!847636 (bvslt (_1!10807 (h!29972 l!595)) (_1!10807 (h!29972 (t!42310 l!595)))))))

(declare-fun b!1275037 () Bool)

(assert (=> b!1275037 (= e!727803 (isStrictlySorted!858 (t!42310 l!595)))))

(assert (= (and d!140241 (not res!847635)) b!1275036))

(assert (= (and b!1275036 res!847636) b!1275037))

(declare-fun m!1171481 () Bool)

(assert (=> b!1275037 m!1171481))

(assert (=> start!107924 d!140241))

(declare-fun d!140247 () Bool)

(declare-fun res!847653 () Bool)

(declare-fun e!727826 () Bool)

(assert (=> d!140247 (=> res!847653 e!727826)))

(assert (=> d!140247 (= res!847653 (and (is-Cons!28763 Nil!28764) (= (_1!10807 (h!29972 Nil!28764)) key!173)))))

(assert (=> d!140247 (= (containsKey!704 Nil!28764 key!173) e!727826)))

(declare-fun b!1275064 () Bool)

(declare-fun e!727827 () Bool)

(assert (=> b!1275064 (= e!727826 e!727827)))

(declare-fun res!847654 () Bool)

(assert (=> b!1275064 (=> (not res!847654) (not e!727827))))

(assert (=> b!1275064 (= res!847654 (and (or (not (is-Cons!28763 Nil!28764)) (bvsle (_1!10807 (h!29972 Nil!28764)) key!173)) (is-Cons!28763 Nil!28764) (bvslt (_1!10807 (h!29972 Nil!28764)) key!173)))))

(declare-fun b!1275065 () Bool)

(assert (=> b!1275065 (= e!727827 (containsKey!704 (t!42310 Nil!28764) key!173))))

(assert (= (and d!140247 (not res!847653)) b!1275064))

(assert (= (and b!1275064 res!847654) b!1275065))

(declare-fun m!1171487 () Bool)

