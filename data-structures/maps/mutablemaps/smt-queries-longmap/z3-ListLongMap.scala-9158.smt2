; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109934 () Bool)

(assert start!109934)

(declare-fun b_free!29223 () Bool)

(declare-fun b_next!29223 () Bool)

(assert (=> start!109934 (= b_free!29223 (not b_next!29223))))

(declare-fun tp!102807 () Bool)

(declare-fun b_and!47365 () Bool)

(assert (=> start!109934 (= tp!102807 b_and!47365)))

(declare-fun b!1301752 () Bool)

(declare-fun call!64003 () Bool)

(assert (=> b!1301752 call!64003))

(declare-datatypes ((Unit!43038 0))(
  ( (Unit!43039) )
))
(declare-fun lt!582205 () Unit!43038)

(declare-fun call!64002 () Unit!43038)

(assert (=> b!1301752 (= lt!582205 call!64002)))

(declare-datatypes ((V!51587 0))(
  ( (V!51588 (val!17506 Int)) )
))
(declare-datatypes ((tuple2!22736 0))(
  ( (tuple2!22737 (_1!11378 (_ BitVec 64)) (_2!11378 V!51587)) )
))
(declare-datatypes ((List!29891 0))(
  ( (Nil!29888) (Cons!29887 (h!31096 tuple2!22736) (t!43482 List!29891)) )
))
(declare-datatypes ((ListLongMap!20405 0))(
  ( (ListLongMap!20406 (toList!10218 List!29891)) )
))
(declare-fun lt!582211 () ListLongMap!20405)

(declare-fun call!64007 () ListLongMap!20405)

(assert (=> b!1301752 (= lt!582211 call!64007)))

(declare-fun e!742532 () Unit!43038)

(assert (=> b!1301752 (= e!742532 lt!582205)))

(declare-fun bm!63999 () Bool)

(declare-fun call!64004 () ListLongMap!20405)

(assert (=> bm!63999 (= call!64007 call!64004)))

(declare-fun bm!64000 () Bool)

(declare-fun call!64006 () Bool)

(assert (=> bm!64000 (= call!64003 call!64006)))

(declare-fun b!1301753 () Bool)

(declare-fun e!742530 () Bool)

(declare-fun e!742524 () Bool)

(declare-fun mapRes!53874 () Bool)

(assert (=> b!1301753 (= e!742530 (and e!742524 mapRes!53874))))

(declare-fun condMapEmpty!53874 () Bool)

(declare-datatypes ((ValueCell!16533 0))(
  ( (ValueCellFull!16533 (v!20115 V!51587)) (EmptyCell!16533) )
))
(declare-datatypes ((array!86697 0))(
  ( (array!86698 (arr!41839 (Array (_ BitVec 32) ValueCell!16533)) (size!42390 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86697)

(declare-fun mapDefault!53874 () ValueCell!16533)

(assert (=> b!1301753 (= condMapEmpty!53874 (= (arr!41839 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16533)) mapDefault!53874)))))

(declare-fun b!1301754 () Bool)

(declare-fun e!742525 () Bool)

(declare-fun tp_is_empty!34863 () Bool)

(assert (=> b!1301754 (= e!742525 tp_is_empty!34863)))

(declare-fun res!864861 () Bool)

(declare-fun e!742529 () Bool)

(assert (=> start!109934 (=> (not res!864861) (not e!742529))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109934 (= res!864861 (validMask!0 mask!2175))))

(assert (=> start!109934 e!742529))

(assert (=> start!109934 tp_is_empty!34863))

(assert (=> start!109934 true))

(declare-fun array_inv!31649 (array!86697) Bool)

(assert (=> start!109934 (and (array_inv!31649 _values!1445) e!742530)))

(declare-datatypes ((array!86699 0))(
  ( (array!86700 (arr!41840 (Array (_ BitVec 32) (_ BitVec 64))) (size!42391 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86699)

(declare-fun array_inv!31650 (array!86699) Bool)

(assert (=> start!109934 (array_inv!31650 _keys!1741)))

(assert (=> start!109934 tp!102807))

(declare-fun b!1301755 () Bool)

(declare-fun e!742526 () Unit!43038)

(assert (=> b!1301755 (= e!742526 e!742532)))

(declare-fun c!124804 () Bool)

(declare-fun lt!582214 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301755 (= c!124804 (and (not lt!582214) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1301756 () Bool)

(declare-fun res!864866 () Bool)

(assert (=> b!1301756 (=> (not res!864866) (not e!742529))))

(assert (=> b!1301756 (= res!864866 (and (= (size!42390 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42391 _keys!1741) (size!42390 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1301757 () Bool)

(declare-fun res!864864 () Bool)

(assert (=> b!1301757 (=> (not res!864864) (not e!742529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86699 (_ BitVec 32)) Bool)

(assert (=> b!1301757 (= res!864864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun minValue!1387 () V!51587)

(declare-fun zeroValue!1387 () V!51587)

(declare-fun call!64005 () Unit!43038)

(declare-fun lt!582204 () ListLongMap!20405)

(declare-fun c!124803 () Bool)

(declare-fun bm!64001 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!582207 () ListLongMap!20405)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!81 ((_ BitVec 64) (_ BitVec 64) V!51587 ListLongMap!20405) Unit!43038)

(assert (=> bm!64001 (= call!64005 (lemmaInListMapAfterAddingDiffThenInBefore!81 k0!1205 (ite (or c!124803 c!124804) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124803 c!124804) zeroValue!1387 minValue!1387) (ite c!124803 lt!582204 (ite c!124804 lt!582211 lt!582207))))))

(declare-fun mapIsEmpty!53874 () Bool)

(assert (=> mapIsEmpty!53874 mapRes!53874))

(declare-fun b!1301758 () Bool)

(declare-fun res!864865 () Bool)

(assert (=> b!1301758 (=> (not res!864865) (not e!742529))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1301758 (= res!864865 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42391 _keys!1741))))))

(declare-fun b!1301759 () Bool)

(declare-fun res!864862 () Bool)

(assert (=> b!1301759 (=> (not res!864862) (not e!742529))))

(assert (=> b!1301759 (= res!864862 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42391 _keys!1741))))))

(declare-fun mapNonEmpty!53874 () Bool)

(declare-fun tp!102808 () Bool)

(assert (=> mapNonEmpty!53874 (= mapRes!53874 (and tp!102808 e!742525))))

(declare-fun mapRest!53874 () (Array (_ BitVec 32) ValueCell!16533))

(declare-fun mapKey!53874 () (_ BitVec 32))

(declare-fun mapValue!53874 () ValueCell!16533)

(assert (=> mapNonEmpty!53874 (= (arr!41839 _values!1445) (store mapRest!53874 mapKey!53874 mapValue!53874))))

(declare-fun b!1301760 () Bool)

(declare-fun c!124805 () Bool)

(assert (=> b!1301760 (= c!124805 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!582214))))

(declare-fun e!742527 () Unit!43038)

(assert (=> b!1301760 (= e!742532 e!742527)))

(declare-fun bm!64002 () Bool)

(declare-fun lt!582212 () ListLongMap!20405)

(declare-fun contains!8281 (ListLongMap!20405 (_ BitVec 64)) Bool)

(assert (=> bm!64002 (= call!64006 (contains!8281 (ite c!124803 lt!582212 (ite c!124804 lt!582211 lt!582207)) k0!1205))))

(declare-fun b!1301761 () Bool)

(declare-fun Unit!43040 () Unit!43038)

(assert (=> b!1301761 (= e!742527 Unit!43040)))

(declare-fun bm!64003 () Bool)

(assert (=> bm!64003 (= call!64002 call!64005)))

(declare-fun b!1301762 () Bool)

(declare-fun e!742528 () Bool)

(assert (=> b!1301762 (= e!742528 true)))

(declare-fun lt!582213 () V!51587)

(declare-fun +!4441 (ListLongMap!20405 tuple2!22736) ListLongMap!20405)

(assert (=> b!1301762 (not (contains!8281 (+!4441 (ListLongMap!20406 Nil!29888) (tuple2!22737 (select (arr!41840 _keys!1741) from!2144) lt!582213)) k0!1205))))

(declare-fun lt!582216 () Unit!43038)

(declare-fun addStillNotContains!467 (ListLongMap!20405 (_ BitVec 64) V!51587 (_ BitVec 64)) Unit!43038)

(assert (=> b!1301762 (= lt!582216 (addStillNotContains!467 (ListLongMap!20406 Nil!29888) (select (arr!41840 _keys!1741) from!2144) lt!582213 k0!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun get!21180 (ValueCell!16533 V!51587) V!51587)

(declare-fun dynLambda!3504 (Int (_ BitVec 64)) V!51587)

(assert (=> b!1301762 (= lt!582213 (get!21180 (select (arr!41839 _values!1445) from!2144) (dynLambda!3504 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301763 () Bool)

(declare-fun res!864868 () Bool)

(assert (=> b!1301763 (=> (not res!864868) (not e!742529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301763 (= res!864868 (validKeyInArray!0 (select (arr!41840 _keys!1741) from!2144)))))

(declare-fun b!1301764 () Bool)

(declare-fun lt!582208 () Unit!43038)

(assert (=> b!1301764 (= e!742526 lt!582208)))

(assert (=> b!1301764 (= lt!582204 call!64004)))

(assert (=> b!1301764 (= lt!582212 (+!4441 lt!582204 (tuple2!22737 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582210 () Unit!43038)

(assert (=> b!1301764 (= lt!582210 (lemmaInListMapAfterAddingDiffThenInBefore!81 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!582212))))

(assert (=> b!1301764 call!64006))

(assert (=> b!1301764 (= lt!582208 call!64005)))

(assert (=> b!1301764 (contains!8281 lt!582204 k0!1205)))

(declare-fun b!1301765 () Bool)

(assert (=> b!1301765 (= e!742524 tp_is_empty!34863)))

(declare-fun b!1301766 () Bool)

(declare-fun lt!582206 () Unit!43038)

(assert (=> b!1301766 (= e!742527 lt!582206)))

(assert (=> b!1301766 (= lt!582207 call!64007)))

(assert (=> b!1301766 (= lt!582206 call!64002)))

(assert (=> b!1301766 call!64003))

(declare-fun b!1301767 () Bool)

(declare-fun res!864869 () Bool)

(assert (=> b!1301767 (=> (not res!864869) (not e!742529))))

(declare-datatypes ((List!29892 0))(
  ( (Nil!29889) (Cons!29888 (h!31097 (_ BitVec 64)) (t!43483 List!29892)) )
))
(declare-fun arrayNoDuplicates!0 (array!86699 (_ BitVec 32) List!29892) Bool)

(assert (=> b!1301767 (= res!864869 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29889))))

(declare-fun bm!64004 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6155 (array!86699 array!86697 (_ BitVec 32) (_ BitVec 32) V!51587 V!51587 (_ BitVec 32) Int) ListLongMap!20405)

(assert (=> bm!64004 (= call!64004 (getCurrentListMapNoExtraKeys!6155 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301768 () Bool)

(assert (=> b!1301768 (= e!742529 (not e!742528))))

(declare-fun res!864867 () Bool)

(assert (=> b!1301768 (=> res!864867 e!742528)))

(assert (=> b!1301768 (= res!864867 (= k0!1205 (select (arr!41840 _keys!1741) from!2144)))))

(assert (=> b!1301768 (not (contains!8281 (ListLongMap!20406 Nil!29888) k0!1205))))

(declare-fun lt!582215 () Unit!43038)

(declare-fun emptyContainsNothing!209 ((_ BitVec 64)) Unit!43038)

(assert (=> b!1301768 (= lt!582215 (emptyContainsNothing!209 k0!1205))))

(declare-fun lt!582209 () Unit!43038)

(assert (=> b!1301768 (= lt!582209 e!742526)))

(assert (=> b!1301768 (= c!124803 (and (not lt!582214) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301768 (= lt!582214 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301769 () Bool)

(declare-fun res!864863 () Bool)

(assert (=> b!1301769 (=> (not res!864863) (not e!742529))))

(declare-fun getCurrentListMap!5186 (array!86699 array!86697 (_ BitVec 32) (_ BitVec 32) V!51587 V!51587 (_ BitVec 32) Int) ListLongMap!20405)

(assert (=> b!1301769 (= res!864863 (contains!8281 (getCurrentListMap!5186 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109934 res!864861) b!1301756))

(assert (= (and b!1301756 res!864866) b!1301757))

(assert (= (and b!1301757 res!864864) b!1301767))

(assert (= (and b!1301767 res!864869) b!1301758))

(assert (= (and b!1301758 res!864865) b!1301769))

(assert (= (and b!1301769 res!864863) b!1301759))

(assert (= (and b!1301759 res!864862) b!1301763))

(assert (= (and b!1301763 res!864868) b!1301768))

(assert (= (and b!1301768 c!124803) b!1301764))

(assert (= (and b!1301768 (not c!124803)) b!1301755))

(assert (= (and b!1301755 c!124804) b!1301752))

(assert (= (and b!1301755 (not c!124804)) b!1301760))

(assert (= (and b!1301760 c!124805) b!1301766))

(assert (= (and b!1301760 (not c!124805)) b!1301761))

(assert (= (or b!1301752 b!1301766) bm!63999))

(assert (= (or b!1301752 b!1301766) bm!64003))

(assert (= (or b!1301752 b!1301766) bm!64000))

(assert (= (or b!1301764 bm!63999) bm!64004))

(assert (= (or b!1301764 bm!64003) bm!64001))

(assert (= (or b!1301764 bm!64000) bm!64002))

(assert (= (and b!1301768 (not res!864867)) b!1301762))

(assert (= (and b!1301753 condMapEmpty!53874) mapIsEmpty!53874))

(assert (= (and b!1301753 (not condMapEmpty!53874)) mapNonEmpty!53874))

(get-info :version)

(assert (= (and mapNonEmpty!53874 ((_ is ValueCellFull!16533) mapValue!53874)) b!1301754))

(assert (= (and b!1301753 ((_ is ValueCellFull!16533) mapDefault!53874)) b!1301765))

(assert (= start!109934 b!1301753))

(declare-fun b_lambda!23225 () Bool)

(assert (=> (not b_lambda!23225) (not b!1301762)))

(declare-fun t!43481 () Bool)

(declare-fun tb!11395 () Bool)

(assert (=> (and start!109934 (= defaultEntry!1448 defaultEntry!1448) t!43481) tb!11395))

(declare-fun result!23795 () Bool)

(assert (=> tb!11395 (= result!23795 tp_is_empty!34863)))

(assert (=> b!1301762 t!43481))

(declare-fun b_and!47367 () Bool)

(assert (= b_and!47365 (and (=> t!43481 result!23795) b_and!47367)))

(declare-fun m!1192647 () Bool)

(assert (=> b!1301762 m!1192647))

(declare-fun m!1192649 () Bool)

(assert (=> b!1301762 m!1192649))

(declare-fun m!1192651 () Bool)

(assert (=> b!1301762 m!1192651))

(declare-fun m!1192653 () Bool)

(assert (=> b!1301762 m!1192653))

(declare-fun m!1192655 () Bool)

(assert (=> b!1301762 m!1192655))

(declare-fun m!1192657 () Bool)

(assert (=> b!1301762 m!1192657))

(assert (=> b!1301762 m!1192653))

(assert (=> b!1301762 m!1192651))

(declare-fun m!1192659 () Bool)

(assert (=> b!1301762 m!1192659))

(assert (=> b!1301762 m!1192655))

(assert (=> b!1301762 m!1192647))

(assert (=> b!1301768 m!1192647))

(declare-fun m!1192661 () Bool)

(assert (=> b!1301768 m!1192661))

(declare-fun m!1192663 () Bool)

(assert (=> b!1301768 m!1192663))

(declare-fun m!1192665 () Bool)

(assert (=> start!109934 m!1192665))

(declare-fun m!1192667 () Bool)

(assert (=> start!109934 m!1192667))

(declare-fun m!1192669 () Bool)

(assert (=> start!109934 m!1192669))

(declare-fun m!1192671 () Bool)

(assert (=> bm!64001 m!1192671))

(declare-fun m!1192673 () Bool)

(assert (=> b!1301757 m!1192673))

(declare-fun m!1192675 () Bool)

(assert (=> b!1301764 m!1192675))

(declare-fun m!1192677 () Bool)

(assert (=> b!1301764 m!1192677))

(declare-fun m!1192679 () Bool)

(assert (=> b!1301764 m!1192679))

(assert (=> b!1301763 m!1192647))

(assert (=> b!1301763 m!1192647))

(declare-fun m!1192681 () Bool)

(assert (=> b!1301763 m!1192681))

(declare-fun m!1192683 () Bool)

(assert (=> b!1301767 m!1192683))

(declare-fun m!1192685 () Bool)

(assert (=> bm!64002 m!1192685))

(declare-fun m!1192687 () Bool)

(assert (=> bm!64004 m!1192687))

(declare-fun m!1192689 () Bool)

(assert (=> b!1301769 m!1192689))

(assert (=> b!1301769 m!1192689))

(declare-fun m!1192691 () Bool)

(assert (=> b!1301769 m!1192691))

(declare-fun m!1192693 () Bool)

(assert (=> mapNonEmpty!53874 m!1192693))

(check-sat (not b_lambda!23225) (not start!109934) (not bm!64002) (not b!1301763) (not b!1301769) (not b!1301768) (not b!1301757) (not mapNonEmpty!53874) b_and!47367 (not b_next!29223) (not bm!64001) (not b!1301762) (not b!1301764) tp_is_empty!34863 (not b!1301767) (not bm!64004))
(check-sat b_and!47367 (not b_next!29223))
