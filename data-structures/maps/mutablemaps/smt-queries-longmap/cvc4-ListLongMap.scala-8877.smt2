; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107826 () Bool)

(assert start!107826)

(declare-fun res!847347 () Bool)

(declare-fun e!727403 () Bool)

(assert (=> start!107826 (=> (not res!847347) (not e!727403))))

(declare-datatypes ((B!2136 0))(
  ( (B!2137 (val!16664 Int)) )
))
(declare-datatypes ((tuple2!21556 0))(
  ( (tuple2!21557 (_1!10788 (_ BitVec 64)) (_2!10788 B!2136)) )
))
(declare-datatypes ((List!28748 0))(
  ( (Nil!28745) (Cons!28744 (h!29953 tuple2!21556) (t!42288 List!28748)) )
))
(declare-fun l!595 () List!28748)

(declare-fun isStrictlySorted!845 (List!28748) Bool)

(assert (=> start!107826 (= res!847347 (isStrictlySorted!845 l!595))))

(assert (=> start!107826 e!727403))

(declare-fun e!727404 () Bool)

(assert (=> start!107826 e!727404))

(assert (=> start!107826 true))

(declare-fun b!1274531 () Bool)

(declare-fun res!847348 () Bool)

(assert (=> b!1274531 (=> (not res!847348) (not e!727403))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274531 (= res!847348 (and (not (= (_1!10788 (h!29953 l!595)) key!173)) (is-Cons!28744 l!595)))))

(declare-fun b!1274532 () Bool)

(assert (=> b!1274532 (= e!727403 false)))

(declare-fun lt!575216 () Bool)

(declare-fun $colon$colon!665 (List!28748 tuple2!21556) List!28748)

(declare-fun removeStrictlySorted!182 (List!28748 (_ BitVec 64)) List!28748)

(assert (=> b!1274532 (= lt!575216 (isStrictlySorted!845 ($colon$colon!665 (removeStrictlySorted!182 (t!42288 l!595) key!173) (h!29953 l!595))))))

(declare-fun b!1274533 () Bool)

(declare-fun tp_is_empty!33179 () Bool)

(declare-fun tp!97983 () Bool)

(assert (=> b!1274533 (= e!727404 (and tp_is_empty!33179 tp!97983))))

(assert (= (and start!107826 res!847347) b!1274531))

(assert (= (and b!1274531 res!847348) b!1274532))

(assert (= (and start!107826 (is-Cons!28744 l!595)) b!1274533))

(declare-fun m!1171247 () Bool)

(assert (=> start!107826 m!1171247))

(declare-fun m!1171249 () Bool)

(assert (=> b!1274532 m!1171249))

(assert (=> b!1274532 m!1171249))

(declare-fun m!1171251 () Bool)

(assert (=> b!1274532 m!1171251))

(assert (=> b!1274532 m!1171251))

(declare-fun m!1171253 () Bool)

(assert (=> b!1274532 m!1171253))

(push 1)

(assert (not start!107826))

(assert (not b!1274532))

(assert (not b!1274533))

(assert tp_is_empty!33179)

(check-sat)

(pop 1)

