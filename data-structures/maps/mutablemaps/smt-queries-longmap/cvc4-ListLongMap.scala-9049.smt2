; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109118 () Bool)

(assert start!109118)

(declare-fun b_free!28571 () Bool)

(declare-fun b_next!28571 () Bool)

(assert (=> start!109118 (= b_free!28571 (not b_next!28571))))

(declare-fun tp!100832 () Bool)

(declare-fun b_and!46671 () Bool)

(assert (=> start!109118 (= tp!100832 b_and!46671)))

(declare-fun b!1289463 () Bool)

(declare-fun res!856636 () Bool)

(declare-fun e!736255 () Bool)

(assert (=> b!1289463 (=> (not res!856636) (not e!736255))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85421 0))(
  ( (array!85422 (arr!41207 (Array (_ BitVec 32) (_ BitVec 64))) (size!41758 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85421)

(assert (=> b!1289463 (= res!856636 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41758 _keys!1741))))))

(declare-fun b!1289464 () Bool)

(declare-fun res!856637 () Bool)

(assert (=> b!1289464 (=> (not res!856637) (not e!736255))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1289464 (= res!856637 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41758 _keys!1741))))))

(declare-fun b!1289465 () Bool)

(declare-fun e!736251 () Bool)

(assert (=> b!1289465 (= e!736251 true)))

(declare-datatypes ((V!50717 0))(
  ( (V!50718 (val!17180 Int)) )
))
(declare-datatypes ((tuple2!22200 0))(
  ( (tuple2!22201 (_1!11110 (_ BitVec 64)) (_2!11110 V!50717)) )
))
(declare-datatypes ((List!29400 0))(
  ( (Nil!29397) (Cons!29396 (h!30605 tuple2!22200) (t!42971 List!29400)) )
))
(declare-datatypes ((ListLongMap!19869 0))(
  ( (ListLongMap!19870 (toList!9950 List!29400)) )
))
(declare-fun lt!578233 () ListLongMap!19869)

(declare-fun minValue!1387 () V!50717)

(declare-fun contains!8006 (ListLongMap!19869 (_ BitVec 64)) Bool)

(declare-fun +!4322 (ListLongMap!19869 tuple2!22200) ListLongMap!19869)

(assert (=> b!1289465 (not (contains!8006 (+!4322 lt!578233 (tuple2!22201 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42595 0))(
  ( (Unit!42596) )
))
(declare-fun lt!578236 () Unit!42595)

(declare-fun addStillNotContains!367 (ListLongMap!19869 (_ BitVec 64) V!50717 (_ BitVec 64)) Unit!42595)

(assert (=> b!1289465 (= lt!578236 (addStillNotContains!367 lt!578233 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50717)

(assert (=> b!1289465 (not (contains!8006 (+!4322 lt!578233 (tuple2!22201 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578234 () Unit!42595)

(assert (=> b!1289465 (= lt!578234 (addStillNotContains!367 lt!578233 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-datatypes ((ValueCell!16207 0))(
  ( (ValueCellFull!16207 (v!19781 V!50717)) (EmptyCell!16207) )
))
(declare-datatypes ((array!85423 0))(
  ( (array!85424 (arr!41208 (Array (_ BitVec 32) ValueCell!16207)) (size!41759 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85423)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6034 (array!85421 array!85423 (_ BitVec 32) (_ BitVec 32) V!50717 V!50717 (_ BitVec 32) Int) ListLongMap!19869)

(assert (=> b!1289465 (= lt!578233 (getCurrentListMapNoExtraKeys!6034 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289466 () Bool)

(declare-fun res!856635 () Bool)

(assert (=> b!1289466 (=> (not res!856635) (not e!736255))))

(declare-datatypes ((List!29401 0))(
  ( (Nil!29398) (Cons!29397 (h!30606 (_ BitVec 64)) (t!42972 List!29401)) )
))
(declare-fun arrayNoDuplicates!0 (array!85421 (_ BitVec 32) List!29401) Bool)

(assert (=> b!1289466 (= res!856635 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29398))))

(declare-fun mapNonEmpty!52877 () Bool)

(declare-fun mapRes!52877 () Bool)

(declare-fun tp!100833 () Bool)

(declare-fun e!736250 () Bool)

(assert (=> mapNonEmpty!52877 (= mapRes!52877 (and tp!100833 e!736250))))

(declare-fun mapRest!52877 () (Array (_ BitVec 32) ValueCell!16207))

(declare-fun mapValue!52877 () ValueCell!16207)

(declare-fun mapKey!52877 () (_ BitVec 32))

(assert (=> mapNonEmpty!52877 (= (arr!41208 _values!1445) (store mapRest!52877 mapKey!52877 mapValue!52877))))

(declare-fun b!1289467 () Bool)

(declare-fun e!736254 () Bool)

(declare-fun e!736252 () Bool)

(assert (=> b!1289467 (= e!736254 (and e!736252 mapRes!52877))))

(declare-fun condMapEmpty!52877 () Bool)

(declare-fun mapDefault!52877 () ValueCell!16207)

