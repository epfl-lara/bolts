; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109282 () Bool)

(assert start!109282)

(declare-fun b_free!28735 () Bool)

(declare-fun b_next!28735 () Bool)

(assert (=> start!109282 (= b_free!28735 (not b_next!28735))))

(declare-fun tp!101324 () Bool)

(declare-fun b_and!46835 () Bool)

(assert (=> start!109282 (= tp!101324 b_and!46835)))

(declare-fun b!1292350 () Bool)

(declare-fun res!858779 () Bool)

(declare-fun e!737662 () Bool)

(assert (=> b!1292350 (=> (not res!858779) (not e!737662))))

(declare-datatypes ((array!85743 0))(
  ( (array!85744 (arr!41368 (Array (_ BitVec 32) (_ BitVec 64))) (size!41919 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85743)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292350 (= res!858779 (not (validKeyInArray!0 (select (arr!41368 _keys!1741) from!2144))))))

(declare-fun b!1292351 () Bool)

(declare-fun res!858784 () Bool)

(assert (=> b!1292351 (=> (not res!858784) (not e!737662))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85743 (_ BitVec 32)) Bool)

(assert (=> b!1292351 (= res!858784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292352 () Bool)

(declare-fun res!858786 () Bool)

(assert (=> b!1292352 (=> (not res!858786) (not e!737662))))

(declare-datatypes ((List!29531 0))(
  ( (Nil!29528) (Cons!29527 (h!30736 (_ BitVec 64)) (t!43102 List!29531)) )
))
(declare-fun arrayNoDuplicates!0 (array!85743 (_ BitVec 32) List!29531) Bool)

(assert (=> b!1292352 (= res!858786 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29528))))

(declare-fun b!1292353 () Bool)

(declare-fun e!737663 () Bool)

(declare-fun tp_is_empty!34375 () Bool)

(assert (=> b!1292353 (= e!737663 tp_is_empty!34375)))

(declare-fun b!1292354 () Bool)

(declare-fun res!858785 () Bool)

(assert (=> b!1292354 (=> (not res!858785) (not e!737662))))

(declare-datatypes ((V!50937 0))(
  ( (V!50938 (val!17262 Int)) )
))
(declare-fun minValue!1387 () V!50937)

(declare-fun zeroValue!1387 () V!50937)

(declare-datatypes ((ValueCell!16289 0))(
  ( (ValueCellFull!16289 (v!19863 V!50937)) (EmptyCell!16289) )
))
(declare-datatypes ((array!85745 0))(
  ( (array!85746 (arr!41369 (Array (_ BitVec 32) ValueCell!16289)) (size!41920 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85745)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22344 0))(
  ( (tuple2!22345 (_1!11182 (_ BitVec 64)) (_2!11182 V!50937)) )
))
(declare-datatypes ((List!29532 0))(
  ( (Nil!29529) (Cons!29528 (h!30737 tuple2!22344) (t!43103 List!29532)) )
))
(declare-datatypes ((ListLongMap!20013 0))(
  ( (ListLongMap!20014 (toList!10022 List!29532)) )
))
(declare-fun contains!8078 (ListLongMap!20013 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5014 (array!85743 array!85745 (_ BitVec 32) (_ BitVec 32) V!50937 V!50937 (_ BitVec 32) Int) ListLongMap!20013)

(assert (=> b!1292354 (= res!858785 (contains!8078 (getCurrentListMap!5014 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292355 () Bool)

(declare-fun e!737665 () Bool)

(assert (=> b!1292355 (= e!737665 tp_is_empty!34375)))

(declare-fun b!1292356 () Bool)

(declare-fun res!858782 () Bool)

(assert (=> b!1292356 (=> (not res!858782) (not e!737662))))

(assert (=> b!1292356 (= res!858782 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41919 _keys!1741))))))

(declare-fun b!1292357 () Bool)

(declare-fun res!858780 () Bool)

(assert (=> b!1292357 (=> (not res!858780) (not e!737662))))

(assert (=> b!1292357 (= res!858780 (and (= (size!41920 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41919 _keys!1741) (size!41920 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53123 () Bool)

(declare-fun mapRes!53123 () Bool)

(declare-fun tp!101325 () Bool)

(assert (=> mapNonEmpty!53123 (= mapRes!53123 (and tp!101325 e!737665))))

(declare-fun mapKey!53123 () (_ BitVec 32))

(declare-fun mapValue!53123 () ValueCell!16289)

(declare-fun mapRest!53123 () (Array (_ BitVec 32) ValueCell!16289))

(assert (=> mapNonEmpty!53123 (= (arr!41369 _values!1445) (store mapRest!53123 mapKey!53123 mapValue!53123))))

(declare-fun b!1292358 () Bool)

(assert (=> b!1292358 (= e!737662 (not true))))

(assert (=> b!1292358 (not (contains!8078 (ListLongMap!20014 Nil!29529) k!1205))))

(declare-datatypes ((Unit!42725 0))(
  ( (Unit!42726) )
))
(declare-fun lt!579274 () Unit!42725)

(declare-fun emptyContainsNothing!119 ((_ BitVec 64)) Unit!42725)

(assert (=> b!1292358 (= lt!579274 (emptyContainsNothing!119 k!1205))))

(declare-fun res!858783 () Bool)

(assert (=> start!109282 (=> (not res!858783) (not e!737662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109282 (= res!858783 (validMask!0 mask!2175))))

(assert (=> start!109282 e!737662))

(assert (=> start!109282 tp_is_empty!34375))

(assert (=> start!109282 true))

(declare-fun e!737661 () Bool)

(declare-fun array_inv!31315 (array!85745) Bool)

(assert (=> start!109282 (and (array_inv!31315 _values!1445) e!737661)))

(declare-fun array_inv!31316 (array!85743) Bool)

(assert (=> start!109282 (array_inv!31316 _keys!1741)))

(assert (=> start!109282 tp!101324))

(declare-fun b!1292359 () Bool)

(declare-fun res!858781 () Bool)

(assert (=> b!1292359 (=> (not res!858781) (not e!737662))))

(assert (=> b!1292359 (= res!858781 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41919 _keys!1741))))))

(declare-fun b!1292360 () Bool)

(assert (=> b!1292360 (= e!737661 (and e!737663 mapRes!53123))))

(declare-fun condMapEmpty!53123 () Bool)

(declare-fun mapDefault!53123 () ValueCell!16289)

