; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107942 () Bool)

(assert start!107942)

(declare-fun res!847657 () Bool)

(declare-fun e!727835 () Bool)

(assert (=> start!107942 (=> (not res!847657) (not e!727835))))

(declare-datatypes ((B!2180 0))(
  ( (B!2181 (val!16686 Int)) )
))
(declare-datatypes ((tuple2!21600 0))(
  ( (tuple2!21601 (_1!10810 (_ BitVec 64)) (_2!10810 B!2180)) )
))
(declare-datatypes ((List!28770 0))(
  ( (Nil!28767) (Cons!28766 (h!29975 tuple2!21600) (t!42313 List!28770)) )
))
(declare-fun l!595 () List!28770)

(declare-fun isStrictlySorted!861 (List!28770) Bool)

(assert (=> start!107942 (= res!847657 (isStrictlySorted!861 l!595))))

(assert (=> start!107942 e!727835))

(declare-fun e!727836 () Bool)

(assert (=> start!107942 e!727836))

(assert (=> start!107942 true))

(declare-fun b!1275075 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1275075 (= e!727835 (and (or (not (is-Cons!28766 l!595)) (not (= (_1!10810 (h!29975 l!595)) key!173))) (or (not (is-Cons!28766 l!595)) (= (_1!10810 (h!29975 l!595)) key!173)) (not (is-Nil!28767 l!595))))))

(declare-fun b!1275076 () Bool)

(declare-fun tp_is_empty!33223 () Bool)

(declare-fun tp!98097 () Bool)

(assert (=> b!1275076 (= e!727836 (and tp_is_empty!33223 tp!98097))))

(assert (= (and start!107942 res!847657) b!1275075))

(assert (= (and start!107942 (is-Cons!28766 l!595)) b!1275076))

(declare-fun m!1171489 () Bool)

(assert (=> start!107942 m!1171489))

(push 1)

(assert (not start!107942))

(assert (not b!1275076))

(assert tp_is_empty!33223)

(check-sat)

(pop 1)

(push 1)

(check-sat)

