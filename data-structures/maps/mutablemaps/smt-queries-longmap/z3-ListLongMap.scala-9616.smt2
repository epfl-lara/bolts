; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113806 () Bool)

(assert start!113806)

(declare-fun b!1349956 () Bool)

(declare-fun res!895602 () Bool)

(declare-fun e!767971 () Bool)

(assert (=> b!1349956 (=> (not res!895602) (not e!767971))))

(declare-fun k0!1141 () (_ BitVec 64))

(declare-fun otherKey!123 () (_ BitVec 64))

(assert (=> b!1349956 (= res!895602 (not (= k0!1141 otherKey!123)))))

(declare-fun b!1349957 () Bool)

(assert (=> b!1349957 (= e!767971 (not true))))

(assert (=> b!1349957 false))

(declare-datatypes ((V!55251 0))(
  ( (V!55252 (val!18880 Int)) )
))
(declare-fun value!554 () V!55251)

(declare-datatypes ((tuple2!24494 0))(
  ( (tuple2!24495 (_1!12257 (_ BitVec 64)) (_2!12257 V!55251)) )
))
(declare-datatypes ((List!31653 0))(
  ( (Nil!31650) (Cons!31649 (h!32858 tuple2!24494) (t!46318 List!31653)) )
))
(declare-datatypes ((ListLongMap!22163 0))(
  ( (ListLongMap!22164 (toList!11097 List!31653)) )
))
(declare-fun lm!1456 () ListLongMap!22163)

(declare-datatypes ((Unit!44167 0))(
  ( (Unit!44168) )
))
(declare-fun lt!596819 () Unit!44167)

(declare-fun addStillNotContains!516 (ListLongMap!22163 (_ BitVec 64) V!55251 (_ BitVec 64)) Unit!44167)

(assert (=> b!1349957 (= lt!596819 (addStillNotContains!516 lm!1456 otherKey!123 value!554 k0!1141))))

(declare-fun b!1349958 () Bool)

(declare-fun res!895605 () Bool)

(assert (=> b!1349958 (=> (not res!895605) (not e!767971))))

(declare-fun contains!9218 (ListLongMap!22163 (_ BitVec 64)) Bool)

(assert (=> b!1349958 (= res!895605 (not (contains!9218 lm!1456 k0!1141)))))

(declare-fun b!1349959 () Bool)

(declare-fun res!895604 () Bool)

(assert (=> b!1349959 (=> (not res!895604) (not e!767971))))

(assert (=> b!1349959 (= res!895604 (not (= otherKey!123 k0!1141)))))

(declare-fun res!895603 () Bool)

(assert (=> start!113806 (=> (not res!895603) (not e!767971))))

(declare-fun +!4838 (ListLongMap!22163 tuple2!24494) ListLongMap!22163)

(assert (=> start!113806 (= res!895603 (contains!9218 (+!4838 lm!1456 (tuple2!24495 otherKey!123 value!554)) k0!1141))))

(assert (=> start!113806 e!767971))

(declare-fun e!767970 () Bool)

(declare-fun inv!48427 (ListLongMap!22163) Bool)

(assert (=> start!113806 (and (inv!48427 lm!1456) e!767970)))

(assert (=> start!113806 true))

(declare-fun tp_is_empty!37611 () Bool)

(assert (=> start!113806 tp_is_empty!37611))

(declare-fun b!1349960 () Bool)

(declare-fun tp!110633 () Bool)

(assert (=> b!1349960 (= e!767970 tp!110633)))

(assert (= (and start!113806 res!895603) b!1349956))

(assert (= (and b!1349956 res!895602) b!1349958))

(assert (= (and b!1349958 res!895605) b!1349959))

(assert (= (and b!1349959 res!895604) b!1349957))

(assert (= start!113806 b!1349960))

(declare-fun m!1237295 () Bool)

(assert (=> b!1349957 m!1237295))

(declare-fun m!1237297 () Bool)

(assert (=> b!1349958 m!1237297))

(declare-fun m!1237299 () Bool)

(assert (=> start!113806 m!1237299))

(assert (=> start!113806 m!1237299))

(declare-fun m!1237301 () Bool)

(assert (=> start!113806 m!1237301))

(declare-fun m!1237303 () Bool)

(assert (=> start!113806 m!1237303))

(check-sat tp_is_empty!37611 (not b!1349960) (not start!113806) (not b!1349957) (not b!1349958))
(check-sat)
