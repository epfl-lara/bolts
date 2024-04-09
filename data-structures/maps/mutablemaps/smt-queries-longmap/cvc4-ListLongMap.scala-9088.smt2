; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109352 () Bool)

(assert start!109352)

(declare-fun b_free!28805 () Bool)

(declare-fun b_next!28805 () Bool)

(assert (=> start!109352 (= b_free!28805 (not b_next!28805))))

(declare-fun tp!101534 () Bool)

(declare-fun b_and!46905 () Bool)

(assert (=> start!109352 (= tp!101534 b_and!46905)))

(declare-fun b!1293594 () Bool)

(declare-fun res!859711 () Bool)

(declare-fun e!738277 () Bool)

(assert (=> b!1293594 (=> (not res!859711) (not e!738277))))

(declare-datatypes ((array!85877 0))(
  ( (array!85878 (arr!41435 (Array (_ BitVec 32) (_ BitVec 64))) (size!41986 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85877)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293594 (= res!859711 (not (validKeyInArray!0 (select (arr!41435 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53228 () Bool)

(declare-fun mapRes!53228 () Bool)

(assert (=> mapIsEmpty!53228 mapRes!53228))

(declare-fun b!1293595 () Bool)

(declare-fun res!859710 () Bool)

(assert (=> b!1293595 (=> (not res!859710) (not e!738277))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51029 0))(
  ( (V!51030 (val!17297 Int)) )
))
(declare-datatypes ((ValueCell!16324 0))(
  ( (ValueCellFull!16324 (v!19898 V!51029)) (EmptyCell!16324) )
))
(declare-datatypes ((array!85879 0))(
  ( (array!85880 (arr!41436 (Array (_ BitVec 32) ValueCell!16324)) (size!41987 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85879)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293595 (= res!859710 (and (= (size!41987 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41986 _keys!1741) (size!41987 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293596 () Bool)

(declare-fun res!859708 () Bool)

(assert (=> b!1293596 (=> (not res!859708) (not e!738277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85877 (_ BitVec 32)) Bool)

(assert (=> b!1293596 (= res!859708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53228 () Bool)

(declare-fun tp!101535 () Bool)

(declare-fun e!738280 () Bool)

(assert (=> mapNonEmpty!53228 (= mapRes!53228 (and tp!101535 e!738280))))

(declare-fun mapRest!53228 () (Array (_ BitVec 32) ValueCell!16324))

(declare-fun mapValue!53228 () ValueCell!16324)

(declare-fun mapKey!53228 () (_ BitVec 32))

(assert (=> mapNonEmpty!53228 (= (arr!41436 _values!1445) (store mapRest!53228 mapKey!53228 mapValue!53228))))

(declare-fun b!1293598 () Bool)

(declare-fun res!859713 () Bool)

(assert (=> b!1293598 (=> (not res!859713) (not e!738277))))

(declare-datatypes ((List!29586 0))(
  ( (Nil!29583) (Cons!29582 (h!30791 (_ BitVec 64)) (t!43157 List!29586)) )
))
(declare-fun arrayNoDuplicates!0 (array!85877 (_ BitVec 32) List!29586) Bool)

(assert (=> b!1293598 (= res!859713 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29583))))

(declare-fun b!1293599 () Bool)

(declare-fun res!859714 () Bool)

(assert (=> b!1293599 (=> (not res!859714) (not e!738277))))

(declare-fun minValue!1387 () V!51029)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun zeroValue!1387 () V!51029)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22404 0))(
  ( (tuple2!22405 (_1!11212 (_ BitVec 64)) (_2!11212 V!51029)) )
))
(declare-datatypes ((List!29587 0))(
  ( (Nil!29584) (Cons!29583 (h!30792 tuple2!22404) (t!43158 List!29587)) )
))
(declare-datatypes ((ListLongMap!20073 0))(
  ( (ListLongMap!20074 (toList!10052 List!29587)) )
))
(declare-fun contains!8108 (ListLongMap!20073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5038 (array!85877 array!85879 (_ BitVec 32) (_ BitVec 32) V!51029 V!51029 (_ BitVec 32) Int) ListLongMap!20073)

(assert (=> b!1293599 (= res!859714 (contains!8108 (getCurrentListMap!5038 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293600 () Bool)

(declare-fun e!738278 () Bool)

(assert (=> b!1293600 (= e!738277 (not e!738278))))

(declare-fun res!859715 () Bool)

(assert (=> b!1293600 (=> res!859715 e!738278)))

(assert (=> b!1293600 (= res!859715 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293600 (not (contains!8108 (ListLongMap!20074 Nil!29584) k!1205))))

(declare-datatypes ((Unit!42781 0))(
  ( (Unit!42782) )
))
(declare-fun lt!579549 () Unit!42781)

(declare-fun emptyContainsNothing!147 ((_ BitVec 64)) Unit!42781)

(assert (=> b!1293600 (= lt!579549 (emptyContainsNothing!147 k!1205))))

(declare-fun b!1293601 () Bool)

(declare-fun e!738275 () Bool)

(declare-fun tp_is_empty!34445 () Bool)

(assert (=> b!1293601 (= e!738275 tp_is_empty!34445)))

(declare-fun b!1293602 () Bool)

(declare-fun res!859716 () Bool)

(assert (=> b!1293602 (=> (not res!859716) (not e!738277))))

(assert (=> b!1293602 (= res!859716 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41986 _keys!1741))))))

(declare-fun b!1293603 () Bool)

(assert (=> b!1293603 (= e!738280 tp_is_empty!34445)))

(declare-fun res!859709 () Bool)

(assert (=> start!109352 (=> (not res!859709) (not e!738277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109352 (= res!859709 (validMask!0 mask!2175))))

(assert (=> start!109352 e!738277))

(assert (=> start!109352 tp_is_empty!34445))

(assert (=> start!109352 true))

(declare-fun e!738276 () Bool)

(declare-fun array_inv!31365 (array!85879) Bool)

(assert (=> start!109352 (and (array_inv!31365 _values!1445) e!738276)))

(declare-fun array_inv!31366 (array!85877) Bool)

(assert (=> start!109352 (array_inv!31366 _keys!1741)))

(assert (=> start!109352 tp!101534))

(declare-fun b!1293597 () Bool)

(assert (=> b!1293597 (= e!738278 (bvsle from!2144 (size!41986 _keys!1741)))))

(declare-fun lt!579548 () ListLongMap!20073)

(declare-fun +!4382 (ListLongMap!20073 tuple2!22404) ListLongMap!20073)

(assert (=> b!1293597 (not (contains!8108 (+!4382 lt!579548 (tuple2!22405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!579550 () Unit!42781)

(declare-fun addStillNotContains!427 (ListLongMap!20073 (_ BitVec 64) V!51029 (_ BitVec 64)) Unit!42781)

(assert (=> b!1293597 (= lt!579550 (addStillNotContains!427 lt!579548 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6095 (array!85877 array!85879 (_ BitVec 32) (_ BitVec 32) V!51029 V!51029 (_ BitVec 32) Int) ListLongMap!20073)

(assert (=> b!1293597 (= lt!579548 (getCurrentListMapNoExtraKeys!6095 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293604 () Bool)

(assert (=> b!1293604 (= e!738276 (and e!738275 mapRes!53228))))

(declare-fun condMapEmpty!53228 () Bool)

(declare-fun mapDefault!53228 () ValueCell!16324)

