; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113794 () Bool)

(assert start!113794)

(declare-fun res!895548 () Bool)

(declare-fun e!767935 () Bool)

(assert (=> start!113794 (=> (not res!895548) (not e!767935))))

(declare-datatypes ((V!55235 0))(
  ( (V!55236 (val!18874 Int)) )
))
(declare-fun value!554 () V!55235)

(declare-datatypes ((tuple2!24482 0))(
  ( (tuple2!24483 (_1!12251 (_ BitVec 64)) (_2!12251 V!55235)) )
))
(declare-datatypes ((List!31647 0))(
  ( (Nil!31644) (Cons!31643 (h!32852 tuple2!24482) (t!46312 List!31647)) )
))
(declare-datatypes ((ListLongMap!22151 0))(
  ( (ListLongMap!22152 (toList!11091 List!31647)) )
))
(declare-fun lm!1456 () ListLongMap!22151)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k0!1141 () (_ BitVec 64))

(declare-fun contains!9212 (ListLongMap!22151 (_ BitVec 64)) Bool)

(declare-fun +!4832 (ListLongMap!22151 tuple2!24482) ListLongMap!22151)

(assert (=> start!113794 (= res!895548 (contains!9212 (+!4832 lm!1456 (tuple2!24483 otherKey!123 value!554)) k0!1141))))

(assert (=> start!113794 e!767935))

(declare-fun e!767934 () Bool)

(declare-fun inv!48411 (ListLongMap!22151) Bool)

(assert (=> start!113794 (and (inv!48411 lm!1456) e!767934)))

(assert (=> start!113794 true))

(declare-fun tp_is_empty!37599 () Bool)

(assert (=> start!113794 tp_is_empty!37599))

(declare-fun b!1349883 () Bool)

(declare-fun res!895547 () Bool)

(assert (=> b!1349883 (=> (not res!895547) (not e!767935))))

(assert (=> b!1349883 (= res!895547 (not (= k0!1141 otherKey!123)))))

(declare-fun b!1349884 () Bool)

(assert (=> b!1349884 (= e!767935 false)))

(declare-fun lt!596810 () Bool)

(assert (=> b!1349884 (= lt!596810 (contains!9212 lm!1456 k0!1141))))

(declare-fun b!1349885 () Bool)

(declare-fun tp!110615 () Bool)

(assert (=> b!1349885 (= e!767934 tp!110615)))

(assert (= (and start!113794 res!895548) b!1349883))

(assert (= (and b!1349883 res!895547) b!1349884))

(assert (= start!113794 b!1349885))

(declare-fun m!1237245 () Bool)

(assert (=> start!113794 m!1237245))

(assert (=> start!113794 m!1237245))

(declare-fun m!1237247 () Bool)

(assert (=> start!113794 m!1237247))

(declare-fun m!1237249 () Bool)

(assert (=> start!113794 m!1237249))

(declare-fun m!1237251 () Bool)

(assert (=> b!1349884 m!1237251))

(check-sat (not start!113794) (not b!1349884) (not b!1349885) tp_is_empty!37599)
(check-sat)
