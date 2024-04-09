; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113798 () Bool)

(assert start!113798)

(declare-fun b!1349903 () Bool)

(declare-fun res!895561 () Bool)

(declare-fun e!767946 () Bool)

(assert (=> b!1349903 (=> (not res!895561) (not e!767946))))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun otherKey!123 () (_ BitVec 64))

(assert (=> b!1349903 (= res!895561 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349904 () Bool)

(declare-fun res!895562 () Bool)

(assert (=> b!1349904 (=> (not res!895562) (not e!767946))))

(declare-datatypes ((V!55241 0))(
  ( (V!55242 (val!18876 Int)) )
))
(declare-datatypes ((tuple2!24486 0))(
  ( (tuple2!24487 (_1!12253 (_ BitVec 64)) (_2!12253 V!55241)) )
))
(declare-datatypes ((List!31649 0))(
  ( (Nil!31646) (Cons!31645 (h!32854 tuple2!24486) (t!46314 List!31649)) )
))
(declare-datatypes ((ListLongMap!22155 0))(
  ( (ListLongMap!22156 (toList!11093 List!31649)) )
))
(declare-fun lm!1456 () ListLongMap!22155)

(declare-fun contains!9214 (ListLongMap!22155 (_ BitVec 64)) Bool)

(assert (=> b!1349904 (= res!895562 (not (contains!9214 lm!1456 k!1141)))))

(declare-fun b!1349906 () Bool)

(declare-fun e!767947 () Bool)

(declare-fun tp!110621 () Bool)

(assert (=> b!1349906 (= e!767947 tp!110621)))

(declare-fun res!895563 () Bool)

(assert (=> start!113798 (=> (not res!895563) (not e!767946))))

(declare-fun value!554 () V!55241)

(declare-fun +!4834 (ListLongMap!22155 tuple2!24486) ListLongMap!22155)

(assert (=> start!113798 (= res!895563 (contains!9214 (+!4834 lm!1456 (tuple2!24487 otherKey!123 value!554)) k!1141))))

(assert (=> start!113798 e!767946))

(declare-fun inv!48418 (ListLongMap!22155) Bool)

(assert (=> start!113798 (and (inv!48418 lm!1456) e!767947)))

(assert (=> start!113798 true))

(declare-fun tp_is_empty!37603 () Bool)

(assert (=> start!113798 tp_is_empty!37603))

(declare-fun b!1349905 () Bool)

(assert (=> b!1349905 (= e!767946 (= otherKey!123 k!1141))))

(assert (= (and start!113798 res!895563) b!1349903))

(assert (= (and b!1349903 res!895561) b!1349904))

(assert (= (and b!1349904 res!895562) b!1349905))

(assert (= start!113798 b!1349906))

(declare-fun m!1237261 () Bool)

(assert (=> b!1349904 m!1237261))

(declare-fun m!1237263 () Bool)

(assert (=> start!113798 m!1237263))

(assert (=> start!113798 m!1237263))

(declare-fun m!1237265 () Bool)

(assert (=> start!113798 m!1237265))

(declare-fun m!1237267 () Bool)

(assert (=> start!113798 m!1237267))

(push 1)

(assert (not b!1349904))

(assert (not start!113798))

(assert (not b!1349906))

(assert tp_is_empty!37603)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

