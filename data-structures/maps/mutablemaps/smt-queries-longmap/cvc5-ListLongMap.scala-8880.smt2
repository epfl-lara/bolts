; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107840 () Bool)

(assert start!107840)

(declare-fun res!847351 () Bool)

(declare-fun e!727427 () Bool)

(assert (=> start!107840 (=> (not res!847351) (not e!727427))))

(declare-datatypes ((B!2150 0))(
  ( (B!2151 (val!16671 Int)) )
))
(declare-datatypes ((tuple2!21570 0))(
  ( (tuple2!21571 (_1!10795 (_ BitVec 64)) (_2!10795 B!2150)) )
))
(declare-datatypes ((List!28755 0))(
  ( (Nil!28752) (Cons!28751 (h!29960 tuple2!21570) (t!42295 List!28755)) )
))
(declare-fun l!595 () List!28755)

(declare-fun isStrictlySorted!846 (List!28755) Bool)

(assert (=> start!107840 (= res!847351 (isStrictlySorted!846 l!595))))

(assert (=> start!107840 e!727427))

(declare-fun e!727428 () Bool)

(assert (=> start!107840 e!727428))

(declare-fun b!1274556 () Bool)

(declare-fun ListPrimitiveSize!163 (List!28755) Int)

(assert (=> b!1274556 (= e!727427 (< (ListPrimitiveSize!163 l!595) 0))))

(declare-fun b!1274557 () Bool)

(declare-fun tp_is_empty!33193 () Bool)

(declare-fun tp!98004 () Bool)

(assert (=> b!1274557 (= e!727428 (and tp_is_empty!33193 tp!98004))))

(assert (= (and start!107840 res!847351) b!1274556))

(assert (= (and start!107840 (is-Cons!28751 l!595)) b!1274557))

(declare-fun m!1171255 () Bool)

(assert (=> start!107840 m!1171255))

(declare-fun m!1171257 () Bool)

(assert (=> b!1274556 m!1171257))

(push 1)

(assert (not start!107840))

(assert (not b!1274556))

(assert (not b!1274557))

(assert tp_is_empty!33193)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140111 () Bool)

(declare-fun res!847362 () Bool)

(declare-fun e!727447 () Bool)

(assert (=> d!140111 (=> res!847362 e!727447)))

(assert (=> d!140111 (= res!847362 (or (is-Nil!28752 l!595) (is-Nil!28752 (t!42295 l!595))))))

(assert (=> d!140111 (= (isStrictlySorted!846 l!595) e!727447)))

(declare-fun b!1274578 () Bool)

(declare-fun e!727448 () Bool)

(assert (=> b!1274578 (= e!727447 e!727448)))

(declare-fun res!847363 () Bool)

(assert (=> b!1274578 (=> (not res!847363) (not e!727448))))

(assert (=> b!1274578 (= res!847363 (bvslt (_1!10795 (h!29960 l!595)) (_1!10795 (h!29960 (t!42295 l!595)))))))

(declare-fun b!1274579 () Bool)

(assert (=> b!1274579 (= e!727448 (isStrictlySorted!846 (t!42295 l!595)))))

(assert (= (and d!140111 (not res!847362)) b!1274578))

(assert (= (and b!1274578 res!847363) b!1274579))

(declare-fun m!1171267 () Bool)

(assert (=> b!1274579 m!1171267))

(assert (=> start!107840 d!140111))

(declare-fun d!140115 () Bool)

(declare-fun lt!575222 () Int)

(assert (=> d!140115 (>= lt!575222 0)))

(declare-fun e!727458 () Int)

(assert (=> d!140115 (= lt!575222 e!727458)))

(declare-fun c!123819 () Bool)

(assert (=> d!140115 (= c!123819 (is-Nil!28752 l!595))))

(assert (=> d!140115 (= (ListPrimitiveSize!163 l!595) lt!575222)))

(declare-fun b!1274592 () Bool)

(assert (=> b!1274592 (= e!727458 0)))

(declare-fun b!1274593 () Bool)

(assert (=> b!1274593 (= e!727458 (+ 1 (ListPrimitiveSize!163 (t!42295 l!595))))))

(assert (= (and d!140115 c!123819) b!1274592))

(assert (= (and d!140115 (not c!123819)) b!1274593))

(declare-fun m!1171273 () Bool)

(assert (=> b!1274593 m!1171273))

(assert (=> b!1274556 d!140115))

(declare-fun b!1274600 () Bool)

(declare-fun e!727463 () Bool)

(declare-fun tp!98013 () Bool)

(assert (=> b!1274600 (= e!727463 (and tp_is_empty!33193 tp!98013))))

(assert (=> b!1274557 (= tp!98004 e!727463)))

(assert (= (and b!1274557 (is-Cons!28751 (t!42295 l!595))) b!1274600))

(push 1)

(assert (not b!1274593))

(assert (not b!1274579))

(assert (not b!1274600))

(assert tp_is_empty!33193)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

