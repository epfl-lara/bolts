; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107862 () Bool)

(assert start!107862)

(declare-fun res!847402 () Bool)

(declare-fun e!727502 () Bool)

(assert (=> start!107862 (=> (not res!847402) (not e!727502))))

(declare-datatypes ((B!2160 0))(
  ( (B!2161 (val!16676 Int)) )
))
(declare-datatypes ((tuple2!21580 0))(
  ( (tuple2!21581 (_1!10800 (_ BitVec 64)) (_2!10800 B!2160)) )
))
(declare-datatypes ((List!28760 0))(
  ( (Nil!28757) (Cons!28756 (h!29965 tuple2!21580) (t!42300 List!28760)) )
))
(declare-fun l!595 () List!28760)

(declare-fun isStrictlySorted!851 (List!28760) Bool)

(assert (=> start!107862 (= res!847402 (isStrictlySorted!851 l!595))))

(assert (=> start!107862 e!727502))

(declare-fun e!727501 () Bool)

(assert (=> start!107862 e!727501))

(assert (=> start!107862 true))

(declare-fun b!1274656 () Bool)

(declare-fun tp_is_empty!33203 () Bool)

(declare-fun tp!98028 () Bool)

(assert (=> b!1274656 (= e!727501 (and tp_is_empty!33203 tp!98028))))

(declare-fun b!1274653 () Bool)

(declare-fun res!847400 () Bool)

(assert (=> b!1274653 (=> (not res!847400) (not e!727502))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274653 (= res!847400 (and (is-Cons!28756 l!595) (= (_1!10800 (h!29965 l!595)) key!173)))))

(declare-fun b!1274654 () Bool)

(declare-fun e!727503 () Bool)

(assert (=> b!1274654 (= e!727502 e!727503)))

(declare-fun res!847401 () Bool)

(assert (=> b!1274654 (=> res!847401 e!727503)))

(assert (=> b!1274654 (= res!847401 (not (isStrictlySorted!851 (t!42300 l!595))))))

(declare-fun b!1274655 () Bool)

(declare-fun containsKey!700 (List!28760 (_ BitVec 64)) Bool)

(assert (=> b!1274655 (= e!727503 (containsKey!700 (t!42300 l!595) key!173))))

(assert (= (and start!107862 res!847402) b!1274653))

(assert (= (and b!1274653 res!847400) b!1274654))

(assert (= (and b!1274654 (not res!847401)) b!1274655))

(assert (= (and start!107862 (is-Cons!28756 l!595)) b!1274656))

(declare-fun m!1171291 () Bool)

(assert (=> start!107862 m!1171291))

(declare-fun m!1171293 () Bool)

(assert (=> b!1274654 m!1171293))

(declare-fun m!1171295 () Bool)

(assert (=> b!1274655 m!1171295))

(push 1)

(assert (not b!1274656))

(assert (not b!1274655))

(assert tp_is_empty!33203)

(assert (not start!107862))

(assert (not b!1274654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140125 () Bool)

(declare-fun res!847421 () Bool)

(declare-fun e!727522 () Bool)

(assert (=> d!140125 (=> res!847421 e!727522)))

(assert (=> d!140125 (= res!847421 (and (is-Cons!28756 (t!42300 l!595)) (= (_1!10800 (h!29965 (t!42300 l!595))) key!173)))))

(assert (=> d!140125 (= (containsKey!700 (t!42300 l!595) key!173) e!727522)))

(declare-fun b!1274675 () Bool)

(declare-fun e!727523 () Bool)

(assert (=> b!1274675 (= e!727522 e!727523)))

(declare-fun res!847422 () Bool)

(assert (=> b!1274675 (=> (not res!847422) (not e!727523))))

(assert (=> b!1274675 (= res!847422 (and (or (not (is-Cons!28756 (t!42300 l!595))) (bvsle (_1!10800 (h!29965 (t!42300 l!595))) key!173)) (is-Cons!28756 (t!42300 l!595)) (bvslt (_1!10800 (h!29965 (t!42300 l!595))) key!173)))))

(declare-fun b!1274676 () Bool)

(assert (=> b!1274676 (= e!727523 (containsKey!700 (t!42300 (t!42300 l!595)) key!173))))

(assert (= (and d!140125 (not res!847421)) b!1274675))

(assert (= (and b!1274675 res!847422) b!1274676))

(declare-fun m!1171299 () Bool)

(assert (=> b!1274676 m!1171299))

(assert (=> b!1274655 d!140125))

(declare-fun d!140135 () Bool)

(declare-fun res!847441 () Bool)

(declare-fun e!727548 () Bool)

(assert (=> d!140135 (=> res!847441 e!727548)))

(assert (=> d!140135 (= res!847441 (or (is-Nil!28757 l!595) (is-Nil!28757 (t!42300 l!595))))))

(assert (=> d!140135 (= (isStrictlySorted!851 l!595) e!727548)))

(declare-fun b!1274705 () Bool)

(declare-fun e!727549 () Bool)

(assert (=> b!1274705 (= e!727548 e!727549)))

(declare-fun res!847442 () Bool)

(assert (=> b!1274705 (=> (not res!847442) (not e!727549))))

(assert (=> b!1274705 (= res!847442 (bvslt (_1!10800 (h!29965 l!595)) (_1!10800 (h!29965 (t!42300 l!595)))))))

(declare-fun b!1274706 () Bool)

(assert (=> b!1274706 (= e!727549 (isStrictlySorted!851 (t!42300 l!595)))))

(assert (= (and d!140135 (not res!847441)) b!1274705))

(assert (= (and b!1274705 res!847442) b!1274706))

(assert (=> b!1274706 m!1171293))

(assert (=> start!107862 d!140135))

(declare-fun d!140139 () Bool)

(declare-fun res!847443 () Bool)

(declare-fun e!727550 () Bool)

(assert (=> d!140139 (=> res!847443 e!727550)))

(assert (=> d!140139 (= res!847443 (or (is-Nil!28757 (t!42300 l!595)) (is-Nil!28757 (t!42300 (t!42300 l!595)))))))

(assert (=> d!140139 (= (isStrictlySorted!851 (t!42300 l!595)) e!727550)))

(declare-fun b!1274707 () Bool)

(declare-fun e!727551 () Bool)

(assert (=> b!1274707 (= e!727550 e!727551)))

(declare-fun res!847444 () Bool)

(assert (=> b!1274707 (=> (not res!847444) (not e!727551))))

(assert (=> b!1274707 (= res!847444 (bvslt (_1!10800 (h!29965 (t!42300 l!595))) (_1!10800 (h!29965 (t!42300 (t!42300 l!595))))))))

(declare-fun b!1274708 () Bool)

(assert (=> b!1274708 (= e!727551 (isStrictlySorted!851 (t!42300 (t!42300 l!595))))))

(assert (= (and d!140139 (not res!847443)) b!1274707))

(assert (= (and b!1274707 res!847444) b!1274708))

(declare-fun m!1171307 () Bool)

(assert (=> b!1274708 m!1171307))

(assert (=> b!1274654 d!140139))

(declare-fun b!1274713 () Bool)

(declare-fun e!727554 () Bool)

(declare-fun tp!98037 () Bool)

(assert (=> b!1274713 (= e!727554 (and tp_is_empty!33203 tp!98037))))

(assert (=> b!1274656 (= tp!98028 e!727554)))

(assert (= (and b!1274656 (is-Cons!28756 (t!42300 l!595))) b!1274713))

(push 1)

