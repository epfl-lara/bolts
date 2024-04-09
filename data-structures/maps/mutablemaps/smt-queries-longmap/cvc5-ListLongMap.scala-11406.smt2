; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132844 () Bool)

(assert start!132844)

(declare-fun res!1064457 () Bool)

(declare-fun e!866379 () Bool)

(assert (=> start!132844 (=> (not res!1064457) (not e!866379))))

(declare-datatypes ((B!2312 0))(
  ( (B!2313 (val!19242 Int)) )
))
(declare-datatypes ((tuple2!25000 0))(
  ( (tuple2!25001 (_1!12510 (_ BitVec 64)) (_2!12510 B!2312)) )
))
(declare-datatypes ((List!36422 0))(
  ( (Nil!36419) (Cons!36418 (h!37865 tuple2!25000) (t!51150 List!36422)) )
))
(declare-fun l!1177 () List!36422)

(declare-fun isStrictlySorted!926 (List!36422) Bool)

(assert (=> start!132844 (= res!1064457 (isStrictlySorted!926 l!1177))))

(assert (=> start!132844 e!866379))

(declare-fun e!866378 () Bool)

(assert (=> start!132844 e!866378))

(assert (=> start!132844 true))

(declare-fun tp_is_empty!38323 () Bool)

(assert (=> start!132844 tp_is_empty!38323))

(declare-fun b!1555643 () Bool)

(declare-fun res!1064456 () Bool)

(assert (=> b!1555643 (=> (not res!1064456) (not e!866379))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555643 (= res!1064456 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36418 l!1177)) (= (_1!12510 (h!37865 l!1177)) otherKey!50))))))

(declare-fun b!1555644 () Bool)

(assert (=> b!1555644 (= e!866379 false)))

(declare-fun lt!670259 () Bool)

(declare-fun newValue!105 () B!2312)

(declare-fun containsKey!798 (List!36422 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!540 (List!36422 (_ BitVec 64) B!2312) List!36422)

(assert (=> b!1555644 (= lt!670259 (containsKey!798 (insertStrictlySorted!540 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555645 () Bool)

(declare-fun tp!112336 () Bool)

(assert (=> b!1555645 (= e!866378 (and tp_is_empty!38323 tp!112336))))

(assert (= (and start!132844 res!1064457) b!1555643))

(assert (= (and b!1555643 res!1064456) b!1555644))

(assert (= (and start!132844 (is-Cons!36418 l!1177)) b!1555645))

(declare-fun m!1433553 () Bool)

(assert (=> start!132844 m!1433553))

(declare-fun m!1433555 () Bool)

(assert (=> b!1555644 m!1433555))

(assert (=> b!1555644 m!1433555))

(declare-fun m!1433557 () Bool)

(assert (=> b!1555644 m!1433557))

(push 1)

(assert (not b!1555644))

(assert (not start!132844))

(assert (not b!1555645))

(assert tp_is_empty!38323)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

