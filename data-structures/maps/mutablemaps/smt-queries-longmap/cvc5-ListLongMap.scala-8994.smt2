; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108760 () Bool)

(assert start!108760)

(declare-fun b_free!28237 () Bool)

(declare-fun b_next!28237 () Bool)

(assert (=> start!108760 (= b_free!28237 (not b_next!28237))))

(declare-fun tp!99827 () Bool)

(declare-fun b_and!46313 () Bool)

(assert (=> start!108760 (= tp!99827 b_and!46313)))

(declare-fun res!852773 () Bool)

(declare-fun e!733314 () Bool)

(assert (=> start!108760 (=> (not res!852773) (not e!733314))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108760 (= res!852773 (validMask!0 mask!2175))))

(assert (=> start!108760 e!733314))

(declare-fun tp_is_empty!33877 () Bool)

(assert (=> start!108760 tp_is_empty!33877))

(assert (=> start!108760 true))

(declare-datatypes ((V!50273 0))(
  ( (V!50274 (val!17013 Int)) )
))
(declare-datatypes ((ValueCell!16040 0))(
  ( (ValueCellFull!16040 (v!19613 V!50273)) (EmptyCell!16040) )
))
(declare-datatypes ((array!84771 0))(
  ( (array!84772 (arr!40883 (Array (_ BitVec 32) ValueCell!16040)) (size!41434 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84771)

(declare-fun e!733315 () Bool)

(declare-fun array_inv!30993 (array!84771) Bool)

(assert (=> start!108760 (and (array_inv!30993 _values!1445) e!733315)))

(declare-datatypes ((array!84773 0))(
  ( (array!84774 (arr!40884 (Array (_ BitVec 32) (_ BitVec 64))) (size!41435 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84773)

(declare-fun array_inv!30994 (array!84773) Bool)

(assert (=> start!108760 (array_inv!30994 _keys!1741)))

(assert (=> start!108760 tp!99827))

(declare-fun b!1283606 () Bool)

(declare-fun res!852771 () Bool)

(assert (=> b!1283606 (=> (not res!852771) (not e!733314))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283606 (= res!852771 (validKeyInArray!0 (select (arr!40884 _keys!1741) from!2144)))))

(declare-fun b!1283607 () Bool)

(declare-fun e!733312 () Bool)

(assert (=> b!1283607 (= e!733312 tp_is_empty!33877)))

(declare-fun b!1283608 () Bool)

(declare-fun e!733311 () Bool)

(assert (=> b!1283608 (= e!733311 tp_is_empty!33877)))

(declare-fun mapIsEmpty!52373 () Bool)

(declare-fun mapRes!52373 () Bool)

(assert (=> mapIsEmpty!52373 mapRes!52373))

(declare-fun b!1283609 () Bool)

(assert (=> b!1283609 (= e!733315 (and e!733312 mapRes!52373))))

(declare-fun condMapEmpty!52373 () Bool)

(declare-fun mapDefault!52373 () ValueCell!16040)

