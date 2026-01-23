; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417494 () Bool)

(assert start!417494)

(declare-fun b!4331737 () Bool)

(declare-fun e!2695582 () Bool)

(declare-fun tp!1328518 () Bool)

(assert (=> b!4331737 (= e!2695582 tp!1328518)))

(declare-fun res!1775749 () Bool)

(declare-fun e!2695581 () Bool)

(assert (=> start!417494 (=> (not res!1775749) (not e!2695581))))

(declare-datatypes ((V!10146 0))(
  ( (V!10147 (val!16191 Int)) )
))
(declare-datatypes ((K!9900 0))(
  ( (K!9901 (val!16192 Int)) )
))
(declare-datatypes ((tuple2!47702 0))(
  ( (tuple2!47703 (_1!27145 K!9900) (_2!27145 V!10146)) )
))
(declare-datatypes ((List!48679 0))(
  ( (Nil!48555) (Cons!48555 (h!54038 tuple2!47702) (t!355595 List!48679)) )
))
(declare-datatypes ((tuple2!47704 0))(
  ( (tuple2!47705 (_1!27146 (_ BitVec 64)) (_2!27146 List!48679)) )
))
(declare-datatypes ((List!48680 0))(
  ( (Nil!48556) (Cons!48556 (h!54039 tuple2!47704) (t!355596 List!48680)) )
))
(declare-datatypes ((ListLongMap!1299 0))(
  ( (ListLongMap!1300 (toList!2650 List!48680)) )
))
(declare-fun lm!1707 () ListLongMap!1299)

(declare-fun lambda!134652 () Int)

(declare-fun forall!8884 (List!48680 Int) Bool)

(assert (=> start!417494 (= res!1775749 (forall!8884 (toList!2650 lm!1707) lambda!134652))))

(assert (=> start!417494 e!2695581))

(declare-fun e!2695583 () Bool)

(assert (=> start!417494 e!2695583))

(assert (=> start!417494 true))

(declare-fun inv!64086 (ListLongMap!1299) Bool)

(assert (=> start!417494 (and (inv!64086 lm!1707) e!2695582)))

(declare-fun tp_is_empty!24569 () Bool)

(assert (=> start!417494 tp_is_empty!24569))

(declare-fun b!4331738 () Bool)

(declare-fun res!1775751 () Bool)

(assert (=> b!4331738 (=> (not res!1775751) (not e!2695581))))

(declare-datatypes ((Hashable!4725 0))(
  ( (HashableExt!4724 (__x!30428 Int)) )
))
(declare-fun hashF!1247 () Hashable!4725)

(declare-fun allKeysSameHashInMap!437 (ListLongMap!1299 Hashable!4725) Bool)

(assert (=> b!4331738 (= res!1775751 (allKeysSameHashInMap!437 lm!1707 hashF!1247))))

(declare-fun tp_is_empty!24571 () Bool)

(declare-fun b!4331739 () Bool)

(declare-fun tp!1328517 () Bool)

(assert (=> b!4331739 (= e!2695583 (and tp_is_empty!24569 tp_is_empty!24571 tp!1328517))))

(declare-fun b!4331740 () Bool)

(declare-fun res!1775748 () Bool)

(assert (=> b!4331740 (=> (not res!1775748) (not e!2695581))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun newBucket!200 () List!48679)

(declare-fun allKeysSameHash!291 (List!48679 (_ BitVec 64) Hashable!4725) Bool)

(assert (=> b!4331740 (= res!1775748 (allKeysSameHash!291 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4331741 () Bool)

(assert (=> b!4331741 (= e!2695581 (not (forall!8884 (toList!2650 lm!1707) lambda!134652)))))

(declare-fun b!4331742 () Bool)

(declare-fun res!1775750 () Bool)

(assert (=> b!4331742 (=> (not res!1775750) (not e!2695581))))

(declare-fun key!3918 () K!9900)

(declare-fun hash!1266 (Hashable!4725 K!9900) (_ BitVec 64))

(assert (=> b!4331742 (= res!1775750 (= (hash!1266 hashF!1247 key!3918) hash!377))))

(assert (= (and start!417494 res!1775749) b!4331738))

(assert (= (and b!4331738 res!1775751) b!4331742))

(assert (= (and b!4331742 res!1775750) b!4331740))

(assert (= (and b!4331740 res!1775748) b!4331741))

(get-info :version)

(assert (= (and start!417494 ((_ is Cons!48555) newBucket!200)) b!4331739))

(assert (= start!417494 b!4331737))

(declare-fun m!4926081 () Bool)

(assert (=> b!4331741 m!4926081))

(declare-fun m!4926083 () Bool)

(assert (=> b!4331742 m!4926083))

(declare-fun m!4926085 () Bool)

(assert (=> b!4331740 m!4926085))

(declare-fun m!4926087 () Bool)

(assert (=> b!4331738 m!4926087))

(assert (=> start!417494 m!4926081))

(declare-fun m!4926089 () Bool)

(assert (=> start!417494 m!4926089))

(check-sat (not b!4331740) (not b!4331741) (not b!4331742) (not b!4331738) (not b!4331737) (not start!417494) tp_is_empty!24569 (not b!4331739) tp_is_empty!24571)
(check-sat)
