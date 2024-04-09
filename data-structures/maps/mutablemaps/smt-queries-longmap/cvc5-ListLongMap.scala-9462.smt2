; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112416 () Bool)

(assert start!112416)

(declare-fun b_free!30775 () Bool)

(declare-fun b_next!30775 () Bool)

(assert (=> start!112416 (= b_free!30775 (not b_next!30775))))

(declare-fun tp!107962 () Bool)

(declare-fun b_and!49615 () Bool)

(assert (=> start!112416 (= tp!107962 b_and!49615)))

(declare-fun b!1332186 () Bool)

(declare-fun res!884147 () Bool)

(declare-fun e!758987 () Bool)

(assert (=> b!1332186 (=> (not res!884147) (not e!758987))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90219 0))(
  ( (array!90220 (arr!43571 (Array (_ BitVec 32) (_ BitVec 64))) (size!44122 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90219)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332186 (= res!884147 (not (= (select (arr!43571 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1332187 () Bool)

(declare-fun res!884139 () Bool)

(assert (=> b!1332187 (=> (not res!884139) (not e!758987))))

(declare-datatypes ((V!54017 0))(
  ( (V!54018 (val!18417 Int)) )
))
(declare-datatypes ((ValueCell!17444 0))(
  ( (ValueCellFull!17444 (v!21052 V!54017)) (EmptyCell!17444) )
))
(declare-datatypes ((array!90221 0))(
  ( (array!90222 (arr!43572 (Array (_ BitVec 32) ValueCell!17444)) (size!44123 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90221)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54017)

(declare-fun zeroValue!1262 () V!54017)

(declare-datatypes ((tuple2!23882 0))(
  ( (tuple2!23883 (_1!11951 (_ BitVec 64)) (_2!11951 V!54017)) )
))
(declare-datatypes ((List!31061 0))(
  ( (Nil!31058) (Cons!31057 (h!32266 tuple2!23882) (t!45256 List!31061)) )
))
(declare-datatypes ((ListLongMap!21551 0))(
  ( (ListLongMap!21552 (toList!10791 List!31061)) )
))
(declare-fun contains!8891 (ListLongMap!21551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5712 (array!90219 array!90221 (_ BitVec 32) (_ BitVec 32) V!54017 V!54017 (_ BitVec 32) Int) ListLongMap!21551)

(assert (=> b!1332187 (= res!884139 (contains!8891 (getCurrentListMap!5712 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332188 () Bool)

(declare-fun e!758989 () Bool)

(declare-fun e!758985 () Bool)

(declare-fun mapRes!56701 () Bool)

(assert (=> b!1332188 (= e!758989 (and e!758985 mapRes!56701))))

(declare-fun condMapEmpty!56701 () Bool)

(declare-fun mapDefault!56701 () ValueCell!17444)

