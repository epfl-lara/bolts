; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109106 () Bool)

(assert start!109106)

(declare-fun b_free!28559 () Bool)

(declare-fun b_next!28559 () Bool)

(assert (=> start!109106 (= b_free!28559 (not b_next!28559))))

(declare-fun tp!100796 () Bool)

(declare-fun b_and!46659 () Bool)

(assert (=> start!109106 (= tp!100796 b_and!46659)))

(declare-fun b!1289247 () Bool)

(declare-fun res!856469 () Bool)

(declare-fun e!736143 () Bool)

(assert (=> b!1289247 (=> (not res!856469) (not e!736143))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85397 0))(
  ( (array!85398 (arr!41195 (Array (_ BitVec 32) (_ BitVec 64))) (size!41746 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85397)

(assert (=> b!1289247 (= res!856469 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41746 _keys!1741))))))

(declare-fun b!1289248 () Bool)

(declare-fun e!736146 () Bool)

(declare-fun tp_is_empty!34199 () Bool)

(assert (=> b!1289248 (= e!736146 tp_is_empty!34199)))

(declare-fun b!1289249 () Bool)

(declare-fun res!856468 () Bool)

(assert (=> b!1289249 (=> (not res!856468) (not e!736143))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50701 0))(
  ( (V!50702 (val!17174 Int)) )
))
(declare-datatypes ((ValueCell!16201 0))(
  ( (ValueCellFull!16201 (v!19775 V!50701)) (EmptyCell!16201) )
))
(declare-datatypes ((array!85399 0))(
  ( (array!85400 (arr!41196 (Array (_ BitVec 32) ValueCell!16201)) (size!41747 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85399)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289249 (= res!856468 (and (= (size!41747 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41746 _keys!1741) (size!41747 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289250 () Bool)

(declare-fun res!856470 () Bool)

(assert (=> b!1289250 (=> (not res!856470) (not e!736143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289250 (= res!856470 (not (validKeyInArray!0 (select (arr!41195 _keys!1741) from!2144))))))

(declare-fun b!1289251 () Bool)

(declare-fun res!856471 () Bool)

(assert (=> b!1289251 (=> (not res!856471) (not e!736143))))

(declare-datatypes ((List!29388 0))(
  ( (Nil!29385) (Cons!29384 (h!30593 (_ BitVec 64)) (t!42959 List!29388)) )
))
(declare-fun arrayNoDuplicates!0 (array!85397 (_ BitVec 32) List!29388) Bool)

(assert (=> b!1289251 (= res!856471 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29385))))

(declare-fun b!1289252 () Bool)

(declare-fun e!736147 () Bool)

(assert (=> b!1289252 (= e!736147 tp_is_empty!34199)))

(declare-fun res!856472 () Bool)

(assert (=> start!109106 (=> (not res!856472) (not e!736143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109106 (= res!856472 (validMask!0 mask!2175))))

(assert (=> start!109106 e!736143))

(assert (=> start!109106 tp_is_empty!34199))

(assert (=> start!109106 true))

(declare-fun e!736145 () Bool)

(declare-fun array_inv!31203 (array!85399) Bool)

(assert (=> start!109106 (and (array_inv!31203 _values!1445) e!736145)))

(declare-fun array_inv!31204 (array!85397) Bool)

(assert (=> start!109106 (array_inv!31204 _keys!1741)))

(assert (=> start!109106 tp!100796))

(declare-fun b!1289253 () Bool)

(declare-fun e!736142 () Bool)

(assert (=> b!1289253 (= e!736143 (not e!736142))))

(declare-fun res!856474 () Bool)

(assert (=> b!1289253 (=> res!856474 e!736142)))

(assert (=> b!1289253 (= res!856474 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22188 0))(
  ( (tuple2!22189 (_1!11104 (_ BitVec 64)) (_2!11104 V!50701)) )
))
(declare-datatypes ((List!29389 0))(
  ( (Nil!29386) (Cons!29385 (h!30594 tuple2!22188) (t!42960 List!29389)) )
))
(declare-datatypes ((ListLongMap!19857 0))(
  ( (ListLongMap!19858 (toList!9944 List!29389)) )
))
(declare-fun contains!8000 (ListLongMap!19857 (_ BitVec 64)) Bool)

(assert (=> b!1289253 (not (contains!8000 (ListLongMap!19858 Nil!29386) k!1205))))

(declare-datatypes ((Unit!42583 0))(
  ( (Unit!42584) )
))
(declare-fun lt!578164 () Unit!42583)

(declare-fun emptyContainsNothing!56 ((_ BitVec 64)) Unit!42583)

(assert (=> b!1289253 (= lt!578164 (emptyContainsNothing!56 k!1205))))

(declare-fun b!1289254 () Bool)

(declare-fun res!856473 () Bool)

(assert (=> b!1289254 (=> (not res!856473) (not e!736143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85397 (_ BitVec 32)) Bool)

(assert (=> b!1289254 (= res!856473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289255 () Bool)

(assert (=> b!1289255 (= e!736142 true)))

(declare-fun lt!578162 () Bool)

(declare-fun lt!578163 () ListLongMap!19857)

(assert (=> b!1289255 (= lt!578162 (contains!8000 lt!578163 k!1205))))

(declare-fun zeroValue!1387 () V!50701)

(declare-fun +!4317 (ListLongMap!19857 tuple2!22188) ListLongMap!19857)

(assert (=> b!1289255 (not (contains!8000 (+!4317 lt!578163 (tuple2!22189 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578161 () Unit!42583)

(declare-fun addStillNotContains!362 (ListLongMap!19857 (_ BitVec 64) V!50701 (_ BitVec 64)) Unit!42583)

(assert (=> b!1289255 (= lt!578161 (addStillNotContains!362 lt!578163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50701)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6029 (array!85397 array!85399 (_ BitVec 32) (_ BitVec 32) V!50701 V!50701 (_ BitVec 32) Int) ListLongMap!19857)

(assert (=> b!1289255 (= lt!578163 (getCurrentListMapNoExtraKeys!6029 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289256 () Bool)

(declare-fun res!856476 () Bool)

(assert (=> b!1289256 (=> (not res!856476) (not e!736143))))

(assert (=> b!1289256 (= res!856476 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41746 _keys!1741))))))

(declare-fun mapNonEmpty!52859 () Bool)

(declare-fun mapRes!52859 () Bool)

(declare-fun tp!100797 () Bool)

(assert (=> mapNonEmpty!52859 (= mapRes!52859 (and tp!100797 e!736146))))

(declare-fun mapValue!52859 () ValueCell!16201)

(declare-fun mapKey!52859 () (_ BitVec 32))

(declare-fun mapRest!52859 () (Array (_ BitVec 32) ValueCell!16201))

(assert (=> mapNonEmpty!52859 (= (arr!41196 _values!1445) (store mapRest!52859 mapKey!52859 mapValue!52859))))

(declare-fun mapIsEmpty!52859 () Bool)

(assert (=> mapIsEmpty!52859 mapRes!52859))

(declare-fun b!1289257 () Bool)

(declare-fun res!856475 () Bool)

(assert (=> b!1289257 (=> (not res!856475) (not e!736143))))

(declare-fun getCurrentListMap!4947 (array!85397 array!85399 (_ BitVec 32) (_ BitVec 32) V!50701 V!50701 (_ BitVec 32) Int) ListLongMap!19857)

(assert (=> b!1289257 (= res!856475 (contains!8000 (getCurrentListMap!4947 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289258 () Bool)

(assert (=> b!1289258 (= e!736145 (and e!736147 mapRes!52859))))

(declare-fun condMapEmpty!52859 () Bool)

(declare-fun mapDefault!52859 () ValueCell!16201)

