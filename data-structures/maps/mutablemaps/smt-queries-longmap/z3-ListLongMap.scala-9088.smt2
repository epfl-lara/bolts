; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109350 () Bool)

(assert start!109350)

(declare-fun b_free!28803 () Bool)

(declare-fun b_next!28803 () Bool)

(assert (=> start!109350 (= b_free!28803 (not b_next!28803))))

(declare-fun tp!101528 () Bool)

(declare-fun b_and!46903 () Bool)

(assert (=> start!109350 (= tp!101528 b_and!46903)))

(declare-fun b!1293558 () Bool)

(declare-fun e!738261 () Bool)

(declare-fun e!738257 () Bool)

(assert (=> b!1293558 (= e!738261 (not e!738257))))

(declare-fun res!859689 () Bool)

(assert (=> b!1293558 (=> res!859689 e!738257)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293558 (= res!859689 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51027 0))(
  ( (V!51028 (val!17296 Int)) )
))
(declare-datatypes ((tuple2!22402 0))(
  ( (tuple2!22403 (_1!11211 (_ BitVec 64)) (_2!11211 V!51027)) )
))
(declare-datatypes ((List!29584 0))(
  ( (Nil!29581) (Cons!29580 (h!30789 tuple2!22402) (t!43155 List!29584)) )
))
(declare-datatypes ((ListLongMap!20071 0))(
  ( (ListLongMap!20072 (toList!10051 List!29584)) )
))
(declare-fun contains!8107 (ListLongMap!20071 (_ BitVec 64)) Bool)

(assert (=> b!1293558 (not (contains!8107 (ListLongMap!20072 Nil!29581) k0!1205))))

(declare-datatypes ((Unit!42779 0))(
  ( (Unit!42780) )
))
(declare-fun lt!579541 () Unit!42779)

(declare-fun emptyContainsNothing!146 ((_ BitVec 64)) Unit!42779)

(assert (=> b!1293558 (= lt!579541 (emptyContainsNothing!146 k0!1205))))

(declare-fun b!1293559 () Bool)

(declare-fun e!738258 () Bool)

(declare-fun tp_is_empty!34443 () Bool)

(assert (=> b!1293559 (= e!738258 tp_is_empty!34443)))

(declare-fun b!1293560 () Bool)

(declare-fun res!859688 () Bool)

(assert (=> b!1293560 (=> (not res!859688) (not e!738261))))

(declare-fun minValue!1387 () V!51027)

(declare-fun zeroValue!1387 () V!51027)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16323 0))(
  ( (ValueCellFull!16323 (v!19897 V!51027)) (EmptyCell!16323) )
))
(declare-datatypes ((array!85873 0))(
  ( (array!85874 (arr!41433 (Array (_ BitVec 32) ValueCell!16323)) (size!41984 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85873)

(declare-datatypes ((array!85875 0))(
  ( (array!85876 (arr!41434 (Array (_ BitVec 32) (_ BitVec 64))) (size!41985 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85875)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5037 (array!85875 array!85873 (_ BitVec 32) (_ BitVec 32) V!51027 V!51027 (_ BitVec 32) Int) ListLongMap!20071)

(assert (=> b!1293560 (= res!859688 (contains!8107 (getCurrentListMap!5037 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293561 () Bool)

(declare-fun res!859686 () Bool)

(assert (=> b!1293561 (=> (not res!859686) (not e!738261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293561 (= res!859686 (not (validKeyInArray!0 (select (arr!41434 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53225 () Bool)

(declare-fun mapRes!53225 () Bool)

(assert (=> mapIsEmpty!53225 mapRes!53225))

(declare-fun b!1293562 () Bool)

(declare-fun res!859687 () Bool)

(assert (=> b!1293562 (=> (not res!859687) (not e!738261))))

(assert (=> b!1293562 (= res!859687 (and (= (size!41984 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41985 _keys!1741) (size!41984 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!859682 () Bool)

(assert (=> start!109350 (=> (not res!859682) (not e!738261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109350 (= res!859682 (validMask!0 mask!2175))))

(assert (=> start!109350 e!738261))

(assert (=> start!109350 tp_is_empty!34443))

(assert (=> start!109350 true))

(declare-fun e!738260 () Bool)

(declare-fun array_inv!31363 (array!85873) Bool)

(assert (=> start!109350 (and (array_inv!31363 _values!1445) e!738260)))

(declare-fun array_inv!31364 (array!85875) Bool)

(assert (=> start!109350 (array_inv!31364 _keys!1741)))

(assert (=> start!109350 tp!101528))

(declare-fun b!1293563 () Bool)

(declare-fun res!859681 () Bool)

(assert (=> b!1293563 (=> (not res!859681) (not e!738261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85875 (_ BitVec 32)) Bool)

(assert (=> b!1293563 (= res!859681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53225 () Bool)

(declare-fun tp!101529 () Bool)

(declare-fun e!738262 () Bool)

(assert (=> mapNonEmpty!53225 (= mapRes!53225 (and tp!101529 e!738262))))

(declare-fun mapValue!53225 () ValueCell!16323)

(declare-fun mapKey!53225 () (_ BitVec 32))

(declare-fun mapRest!53225 () (Array (_ BitVec 32) ValueCell!16323))

(assert (=> mapNonEmpty!53225 (= (arr!41433 _values!1445) (store mapRest!53225 mapKey!53225 mapValue!53225))))

(declare-fun b!1293564 () Bool)

(assert (=> b!1293564 (= e!738257 (bvsle from!2144 (size!41985 _keys!1741)))))

(declare-fun lt!579540 () ListLongMap!20071)

(declare-fun +!4381 (ListLongMap!20071 tuple2!22402) ListLongMap!20071)

(assert (=> b!1293564 (not (contains!8107 (+!4381 lt!579540 (tuple2!22403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!579539 () Unit!42779)

(declare-fun addStillNotContains!426 (ListLongMap!20071 (_ BitVec 64) V!51027 (_ BitVec 64)) Unit!42779)

(assert (=> b!1293564 (= lt!579539 (addStillNotContains!426 lt!579540 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6094 (array!85875 array!85873 (_ BitVec 32) (_ BitVec 32) V!51027 V!51027 (_ BitVec 32) Int) ListLongMap!20071)

(assert (=> b!1293564 (= lt!579540 (getCurrentListMapNoExtraKeys!6094 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293565 () Bool)

(assert (=> b!1293565 (= e!738262 tp_is_empty!34443)))

(declare-fun b!1293566 () Bool)

(declare-fun res!859683 () Bool)

(assert (=> b!1293566 (=> (not res!859683) (not e!738261))))

(assert (=> b!1293566 (= res!859683 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41985 _keys!1741))))))

(declare-fun b!1293567 () Bool)

(assert (=> b!1293567 (= e!738260 (and e!738258 mapRes!53225))))

(declare-fun condMapEmpty!53225 () Bool)

(declare-fun mapDefault!53225 () ValueCell!16323)

(assert (=> b!1293567 (= condMapEmpty!53225 (= (arr!41433 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16323)) mapDefault!53225)))))

(declare-fun b!1293568 () Bool)

(declare-fun res!859684 () Bool)

(assert (=> b!1293568 (=> (not res!859684) (not e!738261))))

(declare-datatypes ((List!29585 0))(
  ( (Nil!29582) (Cons!29581 (h!30790 (_ BitVec 64)) (t!43156 List!29585)) )
))
(declare-fun arrayNoDuplicates!0 (array!85875 (_ BitVec 32) List!29585) Bool)

(assert (=> b!1293568 (= res!859684 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29582))))

(declare-fun b!1293569 () Bool)

(declare-fun res!859685 () Bool)

(assert (=> b!1293569 (=> (not res!859685) (not e!738261))))

(assert (=> b!1293569 (= res!859685 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41985 _keys!1741))))))

(assert (= (and start!109350 res!859682) b!1293562))

(assert (= (and b!1293562 res!859687) b!1293563))

(assert (= (and b!1293563 res!859681) b!1293568))

(assert (= (and b!1293568 res!859684) b!1293566))

(assert (= (and b!1293566 res!859683) b!1293560))

(assert (= (and b!1293560 res!859688) b!1293569))

(assert (= (and b!1293569 res!859685) b!1293561))

(assert (= (and b!1293561 res!859686) b!1293558))

(assert (= (and b!1293558 (not res!859689)) b!1293564))

(assert (= (and b!1293567 condMapEmpty!53225) mapIsEmpty!53225))

(assert (= (and b!1293567 (not condMapEmpty!53225)) mapNonEmpty!53225))

(get-info :version)

(assert (= (and mapNonEmpty!53225 ((_ is ValueCellFull!16323) mapValue!53225)) b!1293565))

(assert (= (and b!1293567 ((_ is ValueCellFull!16323) mapDefault!53225)) b!1293559))

(assert (= start!109350 b!1293567))

(declare-fun m!1185973 () Bool)

(assert (=> b!1293563 m!1185973))

(declare-fun m!1185975 () Bool)

(assert (=> start!109350 m!1185975))

(declare-fun m!1185977 () Bool)

(assert (=> start!109350 m!1185977))

(declare-fun m!1185979 () Bool)

(assert (=> start!109350 m!1185979))

(declare-fun m!1185981 () Bool)

(assert (=> b!1293560 m!1185981))

(assert (=> b!1293560 m!1185981))

(declare-fun m!1185983 () Bool)

(assert (=> b!1293560 m!1185983))

(declare-fun m!1185985 () Bool)

(assert (=> mapNonEmpty!53225 m!1185985))

(declare-fun m!1185987 () Bool)

(assert (=> b!1293561 m!1185987))

(assert (=> b!1293561 m!1185987))

(declare-fun m!1185989 () Bool)

(assert (=> b!1293561 m!1185989))

(declare-fun m!1185991 () Bool)

(assert (=> b!1293564 m!1185991))

(assert (=> b!1293564 m!1185991))

(declare-fun m!1185993 () Bool)

(assert (=> b!1293564 m!1185993))

(declare-fun m!1185995 () Bool)

(assert (=> b!1293564 m!1185995))

(declare-fun m!1185997 () Bool)

(assert (=> b!1293564 m!1185997))

(declare-fun m!1185999 () Bool)

(assert (=> b!1293568 m!1185999))

(declare-fun m!1186001 () Bool)

(assert (=> b!1293558 m!1186001))

(declare-fun m!1186003 () Bool)

(assert (=> b!1293558 m!1186003))

(check-sat (not b!1293564) (not b!1293568) tp_is_empty!34443 (not b!1293561) (not b!1293558) (not start!109350) (not b!1293560) (not mapNonEmpty!53225) (not b!1293563) b_and!46903 (not b_next!28803))
(check-sat b_and!46903 (not b_next!28803))
