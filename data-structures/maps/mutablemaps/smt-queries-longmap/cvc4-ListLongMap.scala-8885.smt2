; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107946 () Bool)

(assert start!107946)

(declare-fun res!847663 () Bool)

(declare-fun e!727847 () Bool)

(assert (=> start!107946 (=> (not res!847663) (not e!727847))))

(declare-datatypes ((B!2184 0))(
  ( (B!2185 (val!16688 Int)) )
))
(declare-datatypes ((tuple2!21604 0))(
  ( (tuple2!21605 (_1!10812 (_ BitVec 64)) (_2!10812 B!2184)) )
))
(declare-datatypes ((List!28772 0))(
  ( (Nil!28769) (Cons!28768 (h!29977 tuple2!21604) (t!42315 List!28772)) )
))
(declare-fun l!595 () List!28772)

(declare-fun isStrictlySorted!863 (List!28772) Bool)

(assert (=> start!107946 (= res!847663 (isStrictlySorted!863 l!595))))

(assert (=> start!107946 e!727847))

(declare-fun e!727848 () Bool)

(assert (=> start!107946 e!727848))

(assert (=> start!107946 true))

(declare-fun b!1275087 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1275087 (= e!727847 (and (or (not (is-Cons!28768 l!595)) (not (= (_1!10812 (h!29977 l!595)) key!173))) (or (not (is-Cons!28768 l!595)) (= (_1!10812 (h!29977 l!595)) key!173)) (not (is-Nil!28769 l!595))))))

(declare-fun b!1275088 () Bool)

(declare-fun tp_is_empty!33227 () Bool)

(declare-fun tp!98103 () Bool)

(assert (=> b!1275088 (= e!727848 (and tp_is_empty!33227 tp!98103))))

(assert (= (and start!107946 res!847663) b!1275087))

(assert (= (and start!107946 (is-Cons!28768 l!595)) b!1275088))

(declare-fun m!1171493 () Bool)

(assert (=> start!107946 m!1171493))

(push 1)

(assert (not start!107946))

