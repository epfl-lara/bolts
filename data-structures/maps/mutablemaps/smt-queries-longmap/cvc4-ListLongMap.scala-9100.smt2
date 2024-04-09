; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109424 () Bool)

(assert start!109424)

(declare-fun b_free!28877 () Bool)

(declare-fun b_next!28877 () Bool)

(assert (=> start!109424 (= b_free!28877 (not b_next!28877))))

(declare-fun tp!101750 () Bool)

(declare-fun b_and!46977 () Bool)

(assert (=> start!109424 (= tp!101750 b_and!46977)))

(declare-fun b!1294809 () Bool)

(declare-fun res!860600 () Bool)

(declare-fun e!738843 () Bool)

(assert (=> b!1294809 (=> (not res!860600) (not e!738843))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86019 0))(
  ( (array!86020 (arr!41506 (Array (_ BitVec 32) (_ BitVec 64))) (size!42057 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86019)

(assert (=> b!1294809 (= res!860600 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42057 _keys!1741))))))

(declare-fun mapIsEmpty!53336 () Bool)

(declare-fun mapRes!53336 () Bool)

(assert (=> mapIsEmpty!53336 mapRes!53336))

(declare-fun b!1294810 () Bool)

(declare-fun e!738847 () Bool)

(assert (=> b!1294810 (= e!738843 (not e!738847))))

(declare-fun res!860601 () Bool)

(assert (=> b!1294810 (=> res!860601 e!738847)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294810 (= res!860601 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51125 0))(
  ( (V!51126 (val!17333 Int)) )
))
(declare-datatypes ((tuple2!22462 0))(
  ( (tuple2!22463 (_1!11241 (_ BitVec 64)) (_2!11241 V!51125)) )
))
(declare-datatypes ((List!29633 0))(
  ( (Nil!29630) (Cons!29629 (h!30838 tuple2!22462) (t!43204 List!29633)) )
))
(declare-datatypes ((ListLongMap!20131 0))(
  ( (ListLongMap!20132 (toList!10081 List!29633)) )
))
(declare-fun contains!8137 (ListLongMap!20131 (_ BitVec 64)) Bool)

(assert (=> b!1294810 (not (contains!8137 (ListLongMap!20132 Nil!29630) k!1205))))

(declare-datatypes ((Unit!42829 0))(
  ( (Unit!42830) )
))
(declare-fun lt!579703 () Unit!42829)

(declare-fun emptyContainsNothing!171 ((_ BitVec 64)) Unit!42829)

(assert (=> b!1294810 (= lt!579703 (emptyContainsNothing!171 k!1205))))

(declare-fun b!1294811 () Bool)

(assert (=> b!1294811 (= e!738847 true)))

(declare-fun minValue!1387 () V!51125)

(declare-fun zeroValue!1387 () V!51125)

(declare-datatypes ((ValueCell!16360 0))(
  ( (ValueCellFull!16360 (v!19934 V!51125)) (EmptyCell!16360) )
))
(declare-datatypes ((array!86021 0))(
  ( (array!86022 (arr!41507 (Array (_ BitVec 32) ValueCell!16360)) (size!42058 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86021)

(declare-fun lt!579702 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6101 (array!86019 array!86021 (_ BitVec 32) (_ BitVec 32) V!51125 V!51125 (_ BitVec 32) Int) ListLongMap!20131)

(assert (=> b!1294811 (= lt!579702 (contains!8137 (getCurrentListMapNoExtraKeys!6101 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294812 () Bool)

(declare-fun e!738845 () Bool)

(declare-fun tp_is_empty!34517 () Bool)

(assert (=> b!1294812 (= e!738845 tp_is_empty!34517)))

(declare-fun b!1294813 () Bool)

(declare-fun res!860599 () Bool)

(assert (=> b!1294813 (=> (not res!860599) (not e!738843))))

(assert (=> b!1294813 (= res!860599 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42057 _keys!1741))))))

(declare-fun b!1294814 () Bool)

(declare-fun res!860603 () Bool)

(assert (=> b!1294814 (=> (not res!860603) (not e!738843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294814 (= res!860603 (not (validKeyInArray!0 (select (arr!41506 _keys!1741) from!2144))))))

(declare-fun b!1294815 () Bool)

(declare-fun e!738846 () Bool)

(assert (=> b!1294815 (= e!738846 (and e!738845 mapRes!53336))))

(declare-fun condMapEmpty!53336 () Bool)

(declare-fun mapDefault!53336 () ValueCell!16360)

