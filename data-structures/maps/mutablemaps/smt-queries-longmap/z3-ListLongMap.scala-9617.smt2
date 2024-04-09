; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113812 () Bool)

(assert start!113812)

(declare-fun res!895628 () Bool)

(declare-fun e!767989 () Bool)

(assert (=> start!113812 (=> (not res!895628) (not e!767989))))

(declare-datatypes ((V!55259 0))(
  ( (V!55260 (val!18883 Int)) )
))
(declare-fun value!554 () V!55259)

(declare-datatypes ((tuple2!24500 0))(
  ( (tuple2!24501 (_1!12260 (_ BitVec 64)) (_2!12260 V!55259)) )
))
(declare-datatypes ((List!31656 0))(
  ( (Nil!31653) (Cons!31652 (h!32861 tuple2!24500) (t!46321 List!31656)) )
))
(declare-datatypes ((ListLongMap!22169 0))(
  ( (ListLongMap!22170 (toList!11100 List!31656)) )
))
(declare-fun lm!1456 () ListLongMap!22169)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k0!1141 () (_ BitVec 64))

(declare-fun contains!9221 (ListLongMap!22169 (_ BitVec 64)) Bool)

(declare-fun +!4841 (ListLongMap!22169 tuple2!24500) ListLongMap!22169)

(assert (=> start!113812 (= res!895628 (contains!9221 (+!4841 lm!1456 (tuple2!24501 otherKey!123 value!554)) k0!1141))))

(assert (=> start!113812 e!767989))

(declare-fun e!767988 () Bool)

(declare-fun inv!48435 (ListLongMap!22169) Bool)

(assert (=> start!113812 (and (inv!48435 lm!1456) e!767988)))

(assert (=> start!113812 true))

(declare-fun tp_is_empty!37617 () Bool)

(assert (=> start!113812 tp_is_empty!37617))

(declare-fun b!1349991 () Bool)

(declare-fun res!895629 () Bool)

(assert (=> b!1349991 (=> (not res!895629) (not e!767989))))

(assert (=> b!1349991 (= res!895629 (not (= k0!1141 otherKey!123)))))

(declare-fun b!1349992 () Bool)

(assert (=> b!1349992 (= e!767989 false)))

(declare-fun lt!596828 () Bool)

(assert (=> b!1349992 (= lt!596828 (contains!9221 lm!1456 k0!1141))))

(declare-fun b!1349993 () Bool)

(declare-fun tp!110642 () Bool)

(assert (=> b!1349993 (= e!767988 tp!110642)))

(assert (= (and start!113812 res!895628) b!1349991))

(assert (= (and b!1349991 res!895629) b!1349992))

(assert (= start!113812 b!1349993))

(declare-fun m!1237323 () Bool)

(assert (=> start!113812 m!1237323))

(assert (=> start!113812 m!1237323))

(declare-fun m!1237325 () Bool)

(assert (=> start!113812 m!1237325))

(declare-fun m!1237327 () Bool)

(assert (=> start!113812 m!1237327))

(declare-fun m!1237329 () Bool)

(assert (=> b!1349992 m!1237329))

(check-sat (not start!113812) (not b!1349992) (not b!1349993) tp_is_empty!37617)
(check-sat)
