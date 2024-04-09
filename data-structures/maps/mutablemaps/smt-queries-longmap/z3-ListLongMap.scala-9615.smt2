; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113800 () Bool)

(assert start!113800)

(declare-fun res!895570 () Bool)

(declare-fun e!767953 () Bool)

(assert (=> start!113800 (=> (not res!895570) (not e!767953))))

(declare-datatypes ((V!55243 0))(
  ( (V!55244 (val!18877 Int)) )
))
(declare-fun value!554 () V!55243)

(declare-datatypes ((tuple2!24488 0))(
  ( (tuple2!24489 (_1!12254 (_ BitVec 64)) (_2!12254 V!55243)) )
))
(declare-datatypes ((List!31650 0))(
  ( (Nil!31647) (Cons!31646 (h!32855 tuple2!24488) (t!46315 List!31650)) )
))
(declare-datatypes ((ListLongMap!22157 0))(
  ( (ListLongMap!22158 (toList!11094 List!31650)) )
))
(declare-fun lm!1456 () ListLongMap!22157)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k0!1141 () (_ BitVec 64))

(declare-fun contains!9215 (ListLongMap!22157 (_ BitVec 64)) Bool)

(declare-fun +!4835 (ListLongMap!22157 tuple2!24488) ListLongMap!22157)

(assert (=> start!113800 (= res!895570 (contains!9215 (+!4835 lm!1456 (tuple2!24489 otherKey!123 value!554)) k0!1141))))

(assert (=> start!113800 e!767953))

(declare-fun e!767952 () Bool)

(declare-fun inv!48419 (ListLongMap!22157) Bool)

(assert (=> start!113800 (and (inv!48419 lm!1456) e!767952)))

(assert (=> start!113800 true))

(declare-fun tp_is_empty!37605 () Bool)

(assert (=> start!113800 tp_is_empty!37605))

(declare-fun b!1349916 () Bool)

(declare-fun res!895572 () Bool)

(assert (=> b!1349916 (=> (not res!895572) (not e!767953))))

(assert (=> b!1349916 (= res!895572 (not (contains!9215 lm!1456 k0!1141)))))

(declare-fun b!1349918 () Bool)

(declare-fun tp!110624 () Bool)

(assert (=> b!1349918 (= e!767952 tp!110624)))

(declare-fun b!1349915 () Bool)

(declare-fun res!895571 () Bool)

(assert (=> b!1349915 (=> (not res!895571) (not e!767953))))

(assert (=> b!1349915 (= res!895571 (not (= k0!1141 otherKey!123)))))

(declare-fun b!1349917 () Bool)

(assert (=> b!1349917 (= e!767953 (= otherKey!123 k0!1141))))

(assert (= (and start!113800 res!895570) b!1349915))

(assert (= (and b!1349915 res!895571) b!1349916))

(assert (= (and b!1349916 res!895572) b!1349917))

(assert (= start!113800 b!1349918))

(declare-fun m!1237269 () Bool)

(assert (=> start!113800 m!1237269))

(assert (=> start!113800 m!1237269))

(declare-fun m!1237271 () Bool)

(assert (=> start!113800 m!1237271))

(declare-fun m!1237273 () Bool)

(assert (=> start!113800 m!1237273))

(declare-fun m!1237275 () Bool)

(assert (=> b!1349916 m!1237275))

(check-sat (not b!1349916) (not start!113800) (not b!1349918) tp_is_empty!37605)
(check-sat)
