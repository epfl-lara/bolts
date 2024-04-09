; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109346 () Bool)

(assert start!109346)

(declare-fun b_free!28799 () Bool)

(declare-fun b_next!28799 () Bool)

(assert (=> start!109346 (= b_free!28799 (not b_next!28799))))

(declare-fun tp!101516 () Bool)

(declare-fun b_and!46899 () Bool)

(assert (=> start!109346 (= tp!101516 b_and!46899)))

(declare-fun b!1293486 () Bool)

(declare-fun e!738222 () Bool)

(declare-fun tp_is_empty!34439 () Bool)

(assert (=> b!1293486 (= e!738222 tp_is_empty!34439)))

(declare-fun mapNonEmpty!53219 () Bool)

(declare-fun mapRes!53219 () Bool)

(declare-fun tp!101517 () Bool)

(declare-fun e!738226 () Bool)

(assert (=> mapNonEmpty!53219 (= mapRes!53219 (and tp!101517 e!738226))))

(declare-datatypes ((V!51021 0))(
  ( (V!51022 (val!17294 Int)) )
))
(declare-datatypes ((ValueCell!16321 0))(
  ( (ValueCellFull!16321 (v!19895 V!51021)) (EmptyCell!16321) )
))
(declare-fun mapValue!53219 () ValueCell!16321)

(declare-datatypes ((array!85865 0))(
  ( (array!85866 (arr!41429 (Array (_ BitVec 32) ValueCell!16321)) (size!41980 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85865)

(declare-fun mapRest!53219 () (Array (_ BitVec 32) ValueCell!16321))

(declare-fun mapKey!53219 () (_ BitVec 32))

(assert (=> mapNonEmpty!53219 (= (arr!41429 _values!1445) (store mapRest!53219 mapKey!53219 mapValue!53219))))

(declare-fun b!1293487 () Bool)

(declare-fun res!859635 () Bool)

(declare-fun e!738224 () Bool)

(assert (=> b!1293487 (=> (not res!859635) (not e!738224))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85867 0))(
  ( (array!85868 (arr!41430 (Array (_ BitVec 32) (_ BitVec 64))) (size!41981 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85867)

(assert (=> b!1293487 (= res!859635 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41981 _keys!1741))))))

(declare-fun b!1293488 () Bool)

(declare-fun res!859634 () Bool)

(assert (=> b!1293488 (=> (not res!859634) (not e!738224))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85867 (_ BitVec 32)) Bool)

(assert (=> b!1293488 (= res!859634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293489 () Bool)

(declare-fun res!859632 () Bool)

(assert (=> b!1293489 (=> (not res!859632) (not e!738224))))

(declare-datatypes ((List!29580 0))(
  ( (Nil!29577) (Cons!29576 (h!30785 (_ BitVec 64)) (t!43151 List!29580)) )
))
(declare-fun arrayNoDuplicates!0 (array!85867 (_ BitVec 32) List!29580) Bool)

(assert (=> b!1293489 (= res!859632 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29577))))

(declare-fun b!1293490 () Bool)

(declare-fun res!859633 () Bool)

(assert (=> b!1293490 (=> (not res!859633) (not e!738224))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293490 (= res!859633 (and (= (size!41980 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41981 _keys!1741) (size!41980 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293491 () Bool)

(declare-fun res!859628 () Bool)

(assert (=> b!1293491 (=> (not res!859628) (not e!738224))))

(declare-fun minValue!1387 () V!51021)

(declare-fun zeroValue!1387 () V!51021)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22398 0))(
  ( (tuple2!22399 (_1!11209 (_ BitVec 64)) (_2!11209 V!51021)) )
))
(declare-datatypes ((List!29581 0))(
  ( (Nil!29578) (Cons!29577 (h!30786 tuple2!22398) (t!43152 List!29581)) )
))
(declare-datatypes ((ListLongMap!20067 0))(
  ( (ListLongMap!20068 (toList!10049 List!29581)) )
))
(declare-fun contains!8105 (ListLongMap!20067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5035 (array!85867 array!85865 (_ BitVec 32) (_ BitVec 32) V!51021 V!51021 (_ BitVec 32) Int) ListLongMap!20067)

(assert (=> b!1293491 (= res!859628 (contains!8105 (getCurrentListMap!5035 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!859631 () Bool)

(assert (=> start!109346 (=> (not res!859631) (not e!738224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109346 (= res!859631 (validMask!0 mask!2175))))

(assert (=> start!109346 e!738224))

(assert (=> start!109346 tp_is_empty!34439))

(assert (=> start!109346 true))

(declare-fun e!738225 () Bool)

(declare-fun array_inv!31361 (array!85865) Bool)

(assert (=> start!109346 (and (array_inv!31361 _values!1445) e!738225)))

(declare-fun array_inv!31362 (array!85867) Bool)

(assert (=> start!109346 (array_inv!31362 _keys!1741)))

(assert (=> start!109346 tp!101516))

(declare-fun b!1293492 () Bool)

(declare-fun e!738223 () Bool)

(assert (=> b!1293492 (= e!738224 (not e!738223))))

(declare-fun res!859629 () Bool)

(assert (=> b!1293492 (=> res!859629 e!738223)))

(assert (=> b!1293492 (= res!859629 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293492 (not (contains!8105 (ListLongMap!20068 Nil!29578) k!1205))))

(declare-datatypes ((Unit!42775 0))(
  ( (Unit!42776) )
))
(declare-fun lt!579522 () Unit!42775)

(declare-fun emptyContainsNothing!144 ((_ BitVec 64)) Unit!42775)

(assert (=> b!1293492 (= lt!579522 (emptyContainsNothing!144 k!1205))))

(declare-fun b!1293493 () Bool)

(assert (=> b!1293493 (= e!738225 (and e!738222 mapRes!53219))))

(declare-fun condMapEmpty!53219 () Bool)

(declare-fun mapDefault!53219 () ValueCell!16321)

