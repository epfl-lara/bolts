; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132848 () Bool)

(assert start!132848)

(declare-fun res!1064468 () Bool)

(declare-fun e!866390 () Bool)

(assert (=> start!132848 (=> (not res!1064468) (not e!866390))))

(declare-datatypes ((B!2316 0))(
  ( (B!2317 (val!19244 Int)) )
))
(declare-datatypes ((tuple2!25004 0))(
  ( (tuple2!25005 (_1!12512 (_ BitVec 64)) (_2!12512 B!2316)) )
))
(declare-datatypes ((List!36424 0))(
  ( (Nil!36421) (Cons!36420 (h!37867 tuple2!25004) (t!51152 List!36424)) )
))
(declare-fun l!1177 () List!36424)

(declare-fun isStrictlySorted!928 (List!36424) Bool)

(assert (=> start!132848 (= res!1064468 (isStrictlySorted!928 l!1177))))

(assert (=> start!132848 e!866390))

(declare-fun e!866391 () Bool)

(assert (=> start!132848 e!866391))

(assert (=> start!132848 true))

(declare-fun tp_is_empty!38327 () Bool)

(assert (=> start!132848 tp_is_empty!38327))

(declare-fun b!1555661 () Bool)

(declare-fun res!1064469 () Bool)

(assert (=> b!1555661 (=> (not res!1064469) (not e!866390))))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun newKey!105 () (_ BitVec 64))

(assert (=> b!1555661 (= res!1064469 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36420 l!1177)) (= (_1!12512 (h!37867 l!1177)) otherKey!50))))))

(declare-fun b!1555662 () Bool)

(assert (=> b!1555662 (= e!866390 false)))

(declare-fun newValue!105 () B!2316)

(declare-fun lt!670265 () Bool)

(declare-fun containsKey!800 (List!36424 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!542 (List!36424 (_ BitVec 64) B!2316) List!36424)

(assert (=> b!1555662 (= lt!670265 (containsKey!800 (insertStrictlySorted!542 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555663 () Bool)

(declare-fun tp!112342 () Bool)

(assert (=> b!1555663 (= e!866391 (and tp_is_empty!38327 tp!112342))))

(assert (= (and start!132848 res!1064468) b!1555661))

(assert (= (and b!1555661 res!1064469) b!1555662))

(assert (= (and start!132848 (is-Cons!36420 l!1177)) b!1555663))

(declare-fun m!1433565 () Bool)

(assert (=> start!132848 m!1433565))

(declare-fun m!1433567 () Bool)

(assert (=> b!1555662 m!1433567))

(assert (=> b!1555662 m!1433567))

(declare-fun m!1433569 () Bool)

(assert (=> b!1555662 m!1433569))

(push 1)

(assert (not start!132848))

(assert (not b!1555662))

(assert (not b!1555663))

(assert tp_is_empty!38327)

(check-sat)

(pop 1)

(push 1)

(check-sat)

