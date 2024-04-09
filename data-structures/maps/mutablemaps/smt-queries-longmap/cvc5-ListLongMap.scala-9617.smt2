; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113810 () Bool)

(assert start!113810)

(declare-fun res!895623 () Bool)

(declare-fun e!767982 () Bool)

(assert (=> start!113810 (=> (not res!895623) (not e!767982))))

(declare-datatypes ((V!55257 0))(
  ( (V!55258 (val!18882 Int)) )
))
(declare-fun value!554 () V!55257)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-datatypes ((tuple2!24498 0))(
  ( (tuple2!24499 (_1!12259 (_ BitVec 64)) (_2!12259 V!55257)) )
))
(declare-datatypes ((List!31655 0))(
  ( (Nil!31652) (Cons!31651 (h!32860 tuple2!24498) (t!46320 List!31655)) )
))
(declare-datatypes ((ListLongMap!22167 0))(
  ( (ListLongMap!22168 (toList!11099 List!31655)) )
))
(declare-fun lm!1456 () ListLongMap!22167)

(declare-fun contains!9220 (ListLongMap!22167 (_ BitVec 64)) Bool)

(declare-fun +!4840 (ListLongMap!22167 tuple2!24498) ListLongMap!22167)

(assert (=> start!113810 (= res!895623 (contains!9220 (+!4840 lm!1456 (tuple2!24499 otherKey!123 value!554)) k!1141))))

(assert (=> start!113810 e!767982))

(declare-fun e!767983 () Bool)

(declare-fun inv!48434 (ListLongMap!22167) Bool)

(assert (=> start!113810 (and (inv!48434 lm!1456) e!767983)))

(assert (=> start!113810 true))

(declare-fun tp_is_empty!37615 () Bool)

(assert (=> start!113810 tp_is_empty!37615))

(declare-fun b!1349982 () Bool)

(declare-fun res!895622 () Bool)

(assert (=> b!1349982 (=> (not res!895622) (not e!767982))))

(assert (=> b!1349982 (= res!895622 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349983 () Bool)

(assert (=> b!1349983 (= e!767982 false)))

(declare-fun lt!596825 () Bool)

(assert (=> b!1349983 (= lt!596825 (contains!9220 lm!1456 k!1141))))

(declare-fun b!1349984 () Bool)

(declare-fun tp!110639 () Bool)

(assert (=> b!1349984 (= e!767983 tp!110639)))

(assert (= (and start!113810 res!895623) b!1349982))

(assert (= (and b!1349982 res!895622) b!1349983))

(assert (= start!113810 b!1349984))

(declare-fun m!1237315 () Bool)

(assert (=> start!113810 m!1237315))

(assert (=> start!113810 m!1237315))

(declare-fun m!1237317 () Bool)

(assert (=> start!113810 m!1237317))

(declare-fun m!1237319 () Bool)

(assert (=> start!113810 m!1237319))

(declare-fun m!1237321 () Bool)

(assert (=> b!1349983 m!1237321))

(push 1)

(assert (not b!1349983))

(assert (not start!113810))

(assert (not b!1349984))

(assert tp_is_empty!37615)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

