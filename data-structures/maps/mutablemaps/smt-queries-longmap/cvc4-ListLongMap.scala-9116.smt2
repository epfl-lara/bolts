; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109520 () Bool)

(assert start!109520)

(declare-fun b_free!28973 () Bool)

(declare-fun b_next!28973 () Bool)

(assert (=> start!109520 (= b_free!28973 (not b_next!28973))))

(declare-fun tp!102039 () Bool)

(declare-fun b_and!47073 () Bool)

(assert (=> start!109520 (= tp!102039 b_and!47073)))

(declare-fun res!861800 () Bool)

(declare-fun e!739743 () Bool)

(assert (=> start!109520 (=> (not res!861800) (not e!739743))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109520 (= res!861800 (validMask!0 mask!2175))))

(assert (=> start!109520 e!739743))

(declare-fun tp_is_empty!34613 () Bool)

(assert (=> start!109520 tp_is_empty!34613))

(assert (=> start!109520 true))

(declare-datatypes ((V!51253 0))(
  ( (V!51254 (val!17381 Int)) )
))
(declare-datatypes ((ValueCell!16408 0))(
  ( (ValueCellFull!16408 (v!19982 V!51253)) (EmptyCell!16408) )
))
(declare-datatypes ((array!86205 0))(
  ( (array!86206 (arr!41599 (Array (_ BitVec 32) ValueCell!16408)) (size!42150 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86205)

(declare-fun e!739744 () Bool)

(declare-fun array_inv!31485 (array!86205) Bool)

(assert (=> start!109520 (and (array_inv!31485 _values!1445) e!739744)))

(declare-datatypes ((array!86207 0))(
  ( (array!86208 (arr!41600 (Array (_ BitVec 32) (_ BitVec 64))) (size!42151 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86207)

(declare-fun array_inv!31486 (array!86207) Bool)

(assert (=> start!109520 (array_inv!31486 _keys!1741)))

(assert (=> start!109520 tp!102039))

(declare-fun mapNonEmpty!53480 () Bool)

(declare-fun mapRes!53480 () Bool)

(declare-fun tp!102038 () Bool)

(declare-fun e!739747 () Bool)

(assert (=> mapNonEmpty!53480 (= mapRes!53480 (and tp!102038 e!739747))))

(declare-fun mapValue!53480 () ValueCell!16408)

(declare-fun mapKey!53480 () (_ BitVec 32))

(declare-fun mapRest!53480 () (Array (_ BitVec 32) ValueCell!16408))

(assert (=> mapNonEmpty!53480 (= (arr!41599 _values!1445) (store mapRest!53480 mapKey!53480 mapValue!53480))))

(declare-fun b!1296604 () Bool)

(declare-fun res!861804 () Bool)

(assert (=> b!1296604 (=> (not res!861804) (not e!739743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86207 (_ BitVec 32)) Bool)

(assert (=> b!1296604 (= res!861804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296605 () Bool)

(declare-fun res!861802 () Bool)

(assert (=> b!1296605 (=> (not res!861802) (not e!739743))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1296605 (= res!861802 (and (= (size!42150 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42151 _keys!1741) (size!42150 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296606 () Bool)

(assert (=> b!1296606 (= e!739747 tp_is_empty!34613)))

(declare-fun b!1296607 () Bool)

(declare-fun res!861801 () Bool)

(assert (=> b!1296607 (=> (not res!861801) (not e!739743))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296607 (= res!861801 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42151 _keys!1741))))))

(declare-fun b!1296608 () Bool)

(assert (=> b!1296608 (= e!739743 false)))

(declare-fun minValue!1387 () V!51253)

(declare-fun zeroValue!1387 () V!51253)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580450 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22544 0))(
  ( (tuple2!22545 (_1!11282 (_ BitVec 64)) (_2!11282 V!51253)) )
))
(declare-datatypes ((List!29709 0))(
  ( (Nil!29706) (Cons!29705 (h!30914 tuple2!22544) (t!43280 List!29709)) )
))
(declare-datatypes ((ListLongMap!20213 0))(
  ( (ListLongMap!20214 (toList!10122 List!29709)) )
))
(declare-fun contains!8176 (ListLongMap!20213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5096 (array!86207 array!86205 (_ BitVec 32) (_ BitVec 32) V!51253 V!51253 (_ BitVec 32) Int) ListLongMap!20213)

(assert (=> b!1296608 (= lt!580450 (contains!8176 (getCurrentListMap!5096 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53480 () Bool)

(assert (=> mapIsEmpty!53480 mapRes!53480))

(declare-fun b!1296609 () Bool)

(declare-fun res!861803 () Bool)

(assert (=> b!1296609 (=> (not res!861803) (not e!739743))))

(declare-datatypes ((List!29710 0))(
  ( (Nil!29707) (Cons!29706 (h!30915 (_ BitVec 64)) (t!43281 List!29710)) )
))
(declare-fun arrayNoDuplicates!0 (array!86207 (_ BitVec 32) List!29710) Bool)

(assert (=> b!1296609 (= res!861803 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29707))))

(declare-fun b!1296610 () Bool)

(declare-fun e!739745 () Bool)

(assert (=> b!1296610 (= e!739745 tp_is_empty!34613)))

(declare-fun b!1296611 () Bool)

(assert (=> b!1296611 (= e!739744 (and e!739745 mapRes!53480))))

(declare-fun condMapEmpty!53480 () Bool)

(declare-fun mapDefault!53480 () ValueCell!16408)

