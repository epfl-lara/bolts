; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109268 () Bool)

(assert start!109268)

(declare-fun b_free!28721 () Bool)

(declare-fun b_next!28721 () Bool)

(assert (=> start!109268 (= b_free!28721 (not b_next!28721))))

(declare-fun tp!101282 () Bool)

(declare-fun b_and!46821 () Bool)

(assert (=> start!109268 (= tp!101282 b_and!46821)))

(declare-fun b!1292119 () Bool)

(declare-fun e!737559 () Bool)

(declare-fun tp_is_empty!34361 () Bool)

(assert (=> b!1292119 (= e!737559 tp_is_empty!34361)))

(declare-fun b!1292120 () Bool)

(declare-fun res!858613 () Bool)

(declare-fun e!737558 () Bool)

(assert (=> b!1292120 (=> (not res!858613) (not e!737558))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85715 0))(
  ( (array!85716 (arr!41354 (Array (_ BitVec 32) (_ BitVec 64))) (size!41905 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85715)

(assert (=> b!1292120 (= res!858613 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41905 _keys!1741))))))

(declare-fun b!1292121 () Bool)

(declare-fun res!858614 () Bool)

(assert (=> b!1292121 (=> (not res!858614) (not e!737558))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((V!50917 0))(
  ( (V!50918 (val!17255 Int)) )
))
(declare-datatypes ((ValueCell!16282 0))(
  ( (ValueCellFull!16282 (v!19856 V!50917)) (EmptyCell!16282) )
))
(declare-datatypes ((array!85717 0))(
  ( (array!85718 (arr!41355 (Array (_ BitVec 32) ValueCell!16282)) (size!41906 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85717)

(assert (=> b!1292121 (= res!858614 (and (= (size!41906 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41905 _keys!1741) (size!41906 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292122 () Bool)

(declare-fun res!858611 () Bool)

(assert (=> b!1292122 (=> (not res!858611) (not e!737558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292122 (= res!858611 (not (validKeyInArray!0 (select (arr!41354 _keys!1741) from!2144))))))

(declare-fun b!1292123 () Bool)

(assert (=> b!1292123 (= e!737558 (not true))))

(declare-datatypes ((tuple2!22330 0))(
  ( (tuple2!22331 (_1!11175 (_ BitVec 64)) (_2!11175 V!50917)) )
))
(declare-datatypes ((List!29519 0))(
  ( (Nil!29516) (Cons!29515 (h!30724 tuple2!22330) (t!43090 List!29519)) )
))
(declare-datatypes ((ListLongMap!19999 0))(
  ( (ListLongMap!20000 (toList!10015 List!29519)) )
))
(declare-fun contains!8071 (ListLongMap!19999 (_ BitVec 64)) Bool)

(assert (=> b!1292123 (not (contains!8071 (ListLongMap!20000 Nil!29516) k!1205))))

(declare-datatypes ((Unit!42713 0))(
  ( (Unit!42714) )
))
(declare-fun lt!579253 () Unit!42713)

(declare-fun emptyContainsNothing!113 ((_ BitVec 64)) Unit!42713)

(assert (=> b!1292123 (= lt!579253 (emptyContainsNothing!113 k!1205))))

(declare-fun b!1292124 () Bool)

(declare-fun e!737557 () Bool)

(declare-fun mapRes!53102 () Bool)

(assert (=> b!1292124 (= e!737557 (and e!737559 mapRes!53102))))

(declare-fun condMapEmpty!53102 () Bool)

(declare-fun mapDefault!53102 () ValueCell!16282)

