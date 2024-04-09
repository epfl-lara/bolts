; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109348 () Bool)

(assert start!109348)

(declare-fun b_free!28801 () Bool)

(declare-fun b_next!28801 () Bool)

(assert (=> start!109348 (= b_free!28801 (not b_next!28801))))

(declare-fun tp!101522 () Bool)

(declare-fun b_and!46901 () Bool)

(assert (=> start!109348 (= tp!101522 b_and!46901)))

(declare-fun b!1293522 () Bool)

(declare-fun res!859658 () Bool)

(declare-fun e!738243 () Bool)

(assert (=> b!1293522 (=> (not res!859658) (not e!738243))))

(declare-datatypes ((array!85869 0))(
  ( (array!85870 (arr!41431 (Array (_ BitVec 32) (_ BitVec 64))) (size!41982 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85869)

(declare-datatypes ((List!29582 0))(
  ( (Nil!29579) (Cons!29578 (h!30787 (_ BitVec 64)) (t!43153 List!29582)) )
))
(declare-fun arrayNoDuplicates!0 (array!85869 (_ BitVec 32) List!29582) Bool)

(assert (=> b!1293522 (= res!859658 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29579))))

(declare-fun b!1293523 () Bool)

(declare-fun res!859660 () Bool)

(assert (=> b!1293523 (=> (not res!859660) (not e!738243))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293523 (= res!859660 (not (validKeyInArray!0 (select (arr!41431 _keys!1741) from!2144))))))

(declare-fun b!1293524 () Bool)

(declare-fun e!738242 () Bool)

(assert (=> b!1293524 (= e!738243 (not e!738242))))

(declare-fun res!859661 () Bool)

(assert (=> b!1293524 (=> res!859661 e!738242)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293524 (= res!859661 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51025 0))(
  ( (V!51026 (val!17295 Int)) )
))
(declare-datatypes ((tuple2!22400 0))(
  ( (tuple2!22401 (_1!11210 (_ BitVec 64)) (_2!11210 V!51025)) )
))
(declare-datatypes ((List!29583 0))(
  ( (Nil!29580) (Cons!29579 (h!30788 tuple2!22400) (t!43154 List!29583)) )
))
(declare-datatypes ((ListLongMap!20069 0))(
  ( (ListLongMap!20070 (toList!10050 List!29583)) )
))
(declare-fun contains!8106 (ListLongMap!20069 (_ BitVec 64)) Bool)

(assert (=> b!1293524 (not (contains!8106 (ListLongMap!20070 Nil!29580) k!1205))))

(declare-datatypes ((Unit!42777 0))(
  ( (Unit!42778) )
))
(declare-fun lt!579530 () Unit!42777)

(declare-fun emptyContainsNothing!145 ((_ BitVec 64)) Unit!42777)

(assert (=> b!1293524 (= lt!579530 (emptyContainsNothing!145 k!1205))))

(declare-fun mapNonEmpty!53222 () Bool)

(declare-fun mapRes!53222 () Bool)

(declare-fun tp!101523 () Bool)

(declare-fun e!738244 () Bool)

(assert (=> mapNonEmpty!53222 (= mapRes!53222 (and tp!101523 e!738244))))

(declare-fun mapKey!53222 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16322 0))(
  ( (ValueCellFull!16322 (v!19896 V!51025)) (EmptyCell!16322) )
))
(declare-fun mapValue!53222 () ValueCell!16322)

(declare-datatypes ((array!85871 0))(
  ( (array!85872 (arr!41432 (Array (_ BitVec 32) ValueCell!16322)) (size!41983 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85871)

(declare-fun mapRest!53222 () (Array (_ BitVec 32) ValueCell!16322))

(assert (=> mapNonEmpty!53222 (= (arr!41432 _values!1445) (store mapRest!53222 mapKey!53222 mapValue!53222))))

(declare-fun b!1293525 () Bool)

(declare-fun res!859655 () Bool)

(assert (=> b!1293525 (=> (not res!859655) (not e!738243))))

(assert (=> b!1293525 (= res!859655 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41982 _keys!1741))))))

(declare-fun b!1293526 () Bool)

(assert (=> b!1293526 (= e!738242 (bvsle from!2144 (size!41982 _keys!1741)))))

(declare-fun lt!579531 () ListLongMap!20069)

(declare-fun zeroValue!1387 () V!51025)

(declare-fun +!4380 (ListLongMap!20069 tuple2!22400) ListLongMap!20069)

(assert (=> b!1293526 (not (contains!8106 (+!4380 lt!579531 (tuple2!22401 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!579532 () Unit!42777)

(declare-fun addStillNotContains!425 (ListLongMap!20069 (_ BitVec 64) V!51025 (_ BitVec 64)) Unit!42777)

(assert (=> b!1293526 (= lt!579532 (addStillNotContains!425 lt!579531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!51025)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6093 (array!85869 array!85871 (_ BitVec 32) (_ BitVec 32) V!51025 V!51025 (_ BitVec 32) Int) ListLongMap!20069)

(assert (=> b!1293526 (= lt!579531 (getCurrentListMapNoExtraKeys!6093 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53222 () Bool)

(assert (=> mapIsEmpty!53222 mapRes!53222))

(declare-fun b!1293527 () Bool)

(declare-fun e!738240 () Bool)

(declare-fun tp_is_empty!34441 () Bool)

(assert (=> b!1293527 (= e!738240 tp_is_empty!34441)))

(declare-fun b!1293528 () Bool)

(declare-fun res!859662 () Bool)

(assert (=> b!1293528 (=> (not res!859662) (not e!738243))))

(declare-fun getCurrentListMap!5036 (array!85869 array!85871 (_ BitVec 32) (_ BitVec 32) V!51025 V!51025 (_ BitVec 32) Int) ListLongMap!20069)

(assert (=> b!1293528 (= res!859662 (contains!8106 (getCurrentListMap!5036 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293529 () Bool)

(declare-fun e!738241 () Bool)

(assert (=> b!1293529 (= e!738241 (and e!738240 mapRes!53222))))

(declare-fun condMapEmpty!53222 () Bool)

(declare-fun mapDefault!53222 () ValueCell!16322)

