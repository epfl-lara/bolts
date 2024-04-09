; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107948 () Bool)

(assert start!107948)

(declare-fun b!1275099 () Bool)

(declare-fun res!847670 () Bool)

(declare-fun e!727858 () Bool)

(assert (=> b!1275099 (=> (not res!847670) (not e!727858))))

(declare-datatypes ((B!2186 0))(
  ( (B!2187 (val!16689 Int)) )
))
(declare-datatypes ((tuple2!21606 0))(
  ( (tuple2!21607 (_1!10813 (_ BitVec 64)) (_2!10813 B!2186)) )
))
(declare-datatypes ((List!28773 0))(
  ( (Nil!28770) (Cons!28769 (h!29978 tuple2!21606) (t!42316 List!28773)) )
))
(declare-fun l!595 () List!28773)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1275099 (= res!847670 (and (or (not (is-Cons!28769 l!595)) (not (= (_1!10813 (h!29978 l!595)) key!173))) (or (not (is-Cons!28769 l!595)) (= (_1!10813 (h!29978 l!595)) key!173)) (not (is-Nil!28770 l!595))))))

(declare-fun b!1275100 () Bool)

(declare-fun e!727860 () Bool)

(declare-fun tp_is_empty!33229 () Bool)

(declare-fun tp!98108 () Bool)

(assert (=> b!1275100 (= e!727860 (and tp_is_empty!33229 tp!98108))))

(declare-fun res!847672 () Bool)

(assert (=> start!107948 (=> (not res!847672) (not e!727858))))

(declare-fun isStrictlySorted!864 (List!28773) Bool)

(assert (=> start!107948 (= res!847672 (isStrictlySorted!864 l!595))))

(assert (=> start!107948 e!727858))

(assert (=> start!107948 e!727860))

(assert (=> start!107948 true))

(declare-fun b!1275101 () Bool)

(declare-fun e!727857 () Bool)

(declare-fun lt!575261 () List!28773)

(declare-fun containsKey!707 (List!28773 (_ BitVec 64)) Bool)

(assert (=> b!1275101 (= e!727857 (containsKey!707 lt!575261 key!173))))

(declare-fun b!1275102 () Bool)

(assert (=> b!1275102 (= e!727858 e!727857)))

(declare-fun res!847671 () Bool)

(assert (=> b!1275102 (=> res!847671 e!727857)))

(assert (=> b!1275102 (= res!847671 (not (isStrictlySorted!864 lt!575261)))))

(declare-fun err!126 () List!28773)

(assert (=> b!1275102 (= lt!575261 err!126)))

(assert (=> b!1275102 true))

(declare-fun e!727859 () Bool)

(assert (=> b!1275102 e!727859))

(declare-fun b!1275103 () Bool)

(declare-fun tp!98109 () Bool)

(assert (=> b!1275103 (= e!727859 (and tp_is_empty!33229 tp!98109))))

(assert (= (and start!107948 res!847672) b!1275099))

(assert (= (and b!1275099 res!847670) b!1275102))

(assert (= (and b!1275102 (is-Cons!28769 err!126)) b!1275103))

(assert (= (and b!1275102 (not res!847671)) b!1275101))

(assert (= (and start!107948 (is-Cons!28769 l!595)) b!1275100))

(declare-fun m!1171495 () Bool)

(assert (=> start!107948 m!1171495))

(declare-fun m!1171497 () Bool)

(assert (=> b!1275101 m!1171497))

(declare-fun m!1171499 () Bool)

(assert (=> b!1275102 m!1171499))

(push 1)

