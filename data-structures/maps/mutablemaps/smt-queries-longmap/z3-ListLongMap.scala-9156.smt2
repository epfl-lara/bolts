; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109854 () Bool)

(assert start!109854)

(declare-fun b_free!29211 () Bool)

(declare-fun b_next!29211 () Bool)

(assert (=> start!109854 (= b_free!29211 (not b_next!29211))))

(declare-fun tp!102768 () Bool)

(declare-fun b_and!47335 () Bool)

(assert (=> start!109854 (= tp!102768 b_and!47335)))

(declare-fun mapIsEmpty!53852 () Bool)

(declare-fun mapRes!53852 () Bool)

(assert (=> mapIsEmpty!53852 mapRes!53852))

(declare-fun bm!63846 () Bool)

(declare-datatypes ((V!51571 0))(
  ( (V!51572 (val!17500 Int)) )
))
(declare-datatypes ((tuple2!22724 0))(
  ( (tuple2!22725 (_1!11372 (_ BitVec 64)) (_2!11372 V!51571)) )
))
(declare-datatypes ((List!29880 0))(
  ( (Nil!29877) (Cons!29876 (h!31085 tuple2!22724) (t!43461 List!29880)) )
))
(declare-datatypes ((ListLongMap!20393 0))(
  ( (ListLongMap!20394 (toList!10212 List!29880)) )
))
(declare-fun call!63851 () ListLongMap!20393)

(declare-fun call!63854 () ListLongMap!20393)

(assert (=> bm!63846 (= call!63851 call!63854)))

(declare-fun minValue!1387 () V!51571)

(declare-fun zeroValue!1387 () V!51571)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16527 0))(
  ( (ValueCellFull!16527 (v!20106 V!51571)) (EmptyCell!16527) )
))
(declare-datatypes ((array!86671 0))(
  ( (array!86672 (arr!41827 (Array (_ BitVec 32) ValueCell!16527)) (size!42378 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86671)

(declare-fun bm!63847 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86673 0))(
  ( (array!86674 (arr!41828 (Array (_ BitVec 32) (_ BitVec 64))) (size!42379 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86673)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6150 (array!86673 array!86671 (_ BitVec 32) (_ BitVec 32) V!51571 V!51571 (_ BitVec 32) Int) ListLongMap!20393)

(assert (=> bm!63847 (= call!63854 (getCurrentListMapNoExtraKeys!6150 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301015 () Bool)

(declare-fun call!63850 () Bool)

(assert (=> b!1301015 call!63850))

(declare-datatypes ((Unit!43004 0))(
  ( (Unit!43005) )
))
(declare-fun lt!581700 () Unit!43004)

(declare-fun call!63853 () Unit!43004)

(assert (=> b!1301015 (= lt!581700 call!63853)))

(declare-fun lt!581701 () ListLongMap!20393)

(assert (=> b!1301015 (= lt!581701 call!63851)))

(declare-fun e!742110 () Unit!43004)

(assert (=> b!1301015 (= e!742110 lt!581700)))

(declare-fun b!1301016 () Bool)

(declare-fun e!742105 () Unit!43004)

(declare-fun Unit!43006 () Unit!43004)

(assert (=> b!1301016 (= e!742105 Unit!43006)))

(declare-fun b!1301017 () Bool)

(declare-fun res!864535 () Bool)

(declare-fun e!742106 () Bool)

(assert (=> b!1301017 (=> (not res!864535) (not e!742106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86673 (_ BitVec 32)) Bool)

(assert (=> b!1301017 (= res!864535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301018 () Bool)

(declare-fun e!742104 () Unit!43004)

(declare-fun lt!581691 () Unit!43004)

(assert (=> b!1301018 (= e!742104 lt!581691)))

(declare-fun lt!581692 () ListLongMap!20393)

(assert (=> b!1301018 (= lt!581692 call!63854)))

(declare-fun lt!581694 () ListLongMap!20393)

(declare-fun +!4437 (ListLongMap!20393 tuple2!22724) ListLongMap!20393)

(assert (=> b!1301018 (= lt!581694 (+!4437 lt!581692 (tuple2!22725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581695 () Unit!43004)

(declare-fun call!63852 () Unit!43004)

(assert (=> b!1301018 (= lt!581695 call!63852)))

(declare-fun call!63849 () Bool)

(assert (=> b!1301018 call!63849))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!75 ((_ BitVec 64) (_ BitVec 64) V!51571 ListLongMap!20393) Unit!43004)

(assert (=> b!1301018 (= lt!581691 (lemmaInListMapAfterAddingDiffThenInBefore!75 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581692))))

(declare-fun contains!8273 (ListLongMap!20393 (_ BitVec 64)) Bool)

(assert (=> b!1301018 (contains!8273 lt!581692 k0!1205)))

(declare-fun b!1301019 () Bool)

(declare-fun e!742107 () Bool)

(declare-fun e!742108 () Bool)

(assert (=> b!1301019 (= e!742107 (and e!742108 mapRes!53852))))

(declare-fun condMapEmpty!53852 () Bool)

(declare-fun mapDefault!53852 () ValueCell!16527)

(assert (=> b!1301019 (= condMapEmpty!53852 (= (arr!41827 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16527)) mapDefault!53852)))))

(declare-fun b!1301020 () Bool)

(assert (=> b!1301020 (= e!742104 e!742110)))

(declare-fun c!124639 () Bool)

(declare-fun lt!581698 () Bool)

(assert (=> b!1301020 (= c!124639 (and (not lt!581698) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!124638 () Bool)

(declare-fun lt!581697 () ListLongMap!20393)

(declare-fun bm!63848 () Bool)

(assert (=> bm!63848 (= call!63849 (contains!8273 (ite c!124638 lt!581694 (ite c!124639 lt!581701 lt!581697)) k0!1205))))

(declare-fun b!1301021 () Bool)

(declare-fun lt!581699 () Unit!43004)

(assert (=> b!1301021 (= e!742105 lt!581699)))

(assert (=> b!1301021 (= lt!581697 call!63851)))

(assert (=> b!1301021 (= lt!581699 call!63853)))

(assert (=> b!1301021 call!63850))

(declare-fun b!1301022 () Bool)

(declare-fun res!864534 () Bool)

(assert (=> b!1301022 (=> (not res!864534) (not e!742106))))

(assert (=> b!1301022 (= res!864534 (and (= (size!42378 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42379 _keys!1741) (size!42378 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1301023 () Bool)

(declare-fun res!864536 () Bool)

(assert (=> b!1301023 (=> (not res!864536) (not e!742106))))

(assert (=> b!1301023 (= res!864536 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42379 _keys!1741))))))

(declare-fun b!1301024 () Bool)

(declare-fun res!864530 () Bool)

(assert (=> b!1301024 (=> (not res!864530) (not e!742106))))

(assert (=> b!1301024 (= res!864530 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42379 _keys!1741))))))

(declare-fun res!864529 () Bool)

(assert (=> start!109854 (=> (not res!864529) (not e!742106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109854 (= res!864529 (validMask!0 mask!2175))))

(assert (=> start!109854 e!742106))

(declare-fun tp_is_empty!34851 () Bool)

(assert (=> start!109854 tp_is_empty!34851))

(assert (=> start!109854 true))

(declare-fun array_inv!31643 (array!86671) Bool)

(assert (=> start!109854 (and (array_inv!31643 _values!1445) e!742107)))

(declare-fun array_inv!31644 (array!86673) Bool)

(assert (=> start!109854 (array_inv!31644 _keys!1741)))

(assert (=> start!109854 tp!102768))

(declare-fun b!1301014 () Bool)

(declare-fun res!864532 () Bool)

(assert (=> b!1301014 (=> (not res!864532) (not e!742106))))

(declare-datatypes ((List!29881 0))(
  ( (Nil!29878) (Cons!29877 (h!31086 (_ BitVec 64)) (t!43462 List!29881)) )
))
(declare-fun arrayNoDuplicates!0 (array!86673 (_ BitVec 32) List!29881) Bool)

(assert (=> b!1301014 (= res!864532 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29878))))

(declare-fun b!1301025 () Bool)

(declare-fun e!742111 () Bool)

(assert (=> b!1301025 (= e!742111 tp_is_empty!34851)))

(declare-fun bm!63849 () Bool)

(assert (=> bm!63849 (= call!63853 call!63852)))

(declare-fun b!1301026 () Bool)

(declare-fun res!864531 () Bool)

(assert (=> b!1301026 (=> (not res!864531) (not e!742106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301026 (= res!864531 (validKeyInArray!0 (select (arr!41828 _keys!1741) from!2144)))))

(declare-fun b!1301027 () Bool)

(declare-fun res!864533 () Bool)

(assert (=> b!1301027 (=> (not res!864533) (not e!742106))))

(declare-fun getCurrentListMap!5182 (array!86673 array!86671 (_ BitVec 32) (_ BitVec 32) V!51571 V!51571 (_ BitVec 32) Int) ListLongMap!20393)

(assert (=> b!1301027 (= res!864533 (contains!8273 (getCurrentListMap!5182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1301028 () Bool)

(declare-fun c!124640 () Bool)

(assert (=> b!1301028 (= c!124640 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581698))))

(assert (=> b!1301028 (= e!742110 e!742105)))

(declare-fun mapNonEmpty!53852 () Bool)

(declare-fun tp!102767 () Bool)

(assert (=> mapNonEmpty!53852 (= mapRes!53852 (and tp!102767 e!742111))))

(declare-fun mapValue!53852 () ValueCell!16527)

(declare-fun mapKey!53852 () (_ BitVec 32))

(declare-fun mapRest!53852 () (Array (_ BitVec 32) ValueCell!16527))

(assert (=> mapNonEmpty!53852 (= (arr!41827 _values!1445) (store mapRest!53852 mapKey!53852 mapValue!53852))))

(declare-fun b!1301029 () Bool)

(assert (=> b!1301029 (= e!742108 tp_is_empty!34851)))

(declare-fun bm!63850 () Bool)

(assert (=> bm!63850 (= call!63850 call!63849)))

(declare-fun bm!63851 () Bool)

(assert (=> bm!63851 (= call!63852 (lemmaInListMapAfterAddingDiffThenInBefore!75 k0!1205 (ite c!124638 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124639 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124638 minValue!1387 (ite c!124639 zeroValue!1387 minValue!1387)) (ite c!124638 lt!581694 (ite c!124639 lt!581701 lt!581697))))))

(declare-fun b!1301030 () Bool)

(assert (=> b!1301030 (= e!742106 (not (or (= k0!1205 (select (arr!41828 _keys!1741) from!2144)) (not (= (select (arr!41828 _keys!1741) from!2144) k0!1205)))))))

(assert (=> b!1301030 (not (contains!8273 (ListLongMap!20394 Nil!29877) k0!1205))))

(declare-fun lt!581693 () Unit!43004)

(declare-fun emptyContainsNothing!204 ((_ BitVec 64)) Unit!43004)

(assert (=> b!1301030 (= lt!581693 (emptyContainsNothing!204 k0!1205))))

(declare-fun lt!581696 () Unit!43004)

(assert (=> b!1301030 (= lt!581696 e!742104)))

(assert (=> b!1301030 (= c!124638 (and (not lt!581698) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301030 (= lt!581698 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!109854 res!864529) b!1301022))

(assert (= (and b!1301022 res!864534) b!1301017))

(assert (= (and b!1301017 res!864535) b!1301014))

(assert (= (and b!1301014 res!864532) b!1301024))

(assert (= (and b!1301024 res!864530) b!1301027))

(assert (= (and b!1301027 res!864533) b!1301023))

(assert (= (and b!1301023 res!864536) b!1301026))

(assert (= (and b!1301026 res!864531) b!1301030))

(assert (= (and b!1301030 c!124638) b!1301018))

(assert (= (and b!1301030 (not c!124638)) b!1301020))

(assert (= (and b!1301020 c!124639) b!1301015))

(assert (= (and b!1301020 (not c!124639)) b!1301028))

(assert (= (and b!1301028 c!124640) b!1301021))

(assert (= (and b!1301028 (not c!124640)) b!1301016))

(assert (= (or b!1301015 b!1301021) bm!63846))

(assert (= (or b!1301015 b!1301021) bm!63849))

(assert (= (or b!1301015 b!1301021) bm!63850))

(assert (= (or b!1301018 bm!63846) bm!63847))

(assert (= (or b!1301018 bm!63849) bm!63851))

(assert (= (or b!1301018 bm!63850) bm!63848))

(assert (= (and b!1301019 condMapEmpty!53852) mapIsEmpty!53852))

(assert (= (and b!1301019 (not condMapEmpty!53852)) mapNonEmpty!53852))

(get-info :version)

(assert (= (and mapNonEmpty!53852 ((_ is ValueCellFull!16527) mapValue!53852)) b!1301025))

(assert (= (and b!1301019 ((_ is ValueCellFull!16527) mapDefault!53852)) b!1301029))

(assert (= start!109854 b!1301019))

(declare-fun m!1191787 () Bool)

(assert (=> b!1301017 m!1191787))

(declare-fun m!1191789 () Bool)

(assert (=> bm!63848 m!1191789))

(declare-fun m!1191791 () Bool)

(assert (=> mapNonEmpty!53852 m!1191791))

(declare-fun m!1191793 () Bool)

(assert (=> b!1301018 m!1191793))

(declare-fun m!1191795 () Bool)

(assert (=> b!1301018 m!1191795))

(declare-fun m!1191797 () Bool)

(assert (=> b!1301018 m!1191797))

(declare-fun m!1191799 () Bool)

(assert (=> bm!63851 m!1191799))

(declare-fun m!1191801 () Bool)

(assert (=> bm!63847 m!1191801))

(declare-fun m!1191803 () Bool)

(assert (=> b!1301014 m!1191803))

(declare-fun m!1191805 () Bool)

(assert (=> b!1301030 m!1191805))

(declare-fun m!1191807 () Bool)

(assert (=> b!1301030 m!1191807))

(declare-fun m!1191809 () Bool)

(assert (=> b!1301030 m!1191809))

(assert (=> b!1301026 m!1191805))

(assert (=> b!1301026 m!1191805))

(declare-fun m!1191811 () Bool)

(assert (=> b!1301026 m!1191811))

(declare-fun m!1191813 () Bool)

(assert (=> b!1301027 m!1191813))

(assert (=> b!1301027 m!1191813))

(declare-fun m!1191815 () Bool)

(assert (=> b!1301027 m!1191815))

(declare-fun m!1191817 () Bool)

(assert (=> start!109854 m!1191817))

(declare-fun m!1191819 () Bool)

(assert (=> start!109854 m!1191819))

(declare-fun m!1191821 () Bool)

(assert (=> start!109854 m!1191821))

(check-sat tp_is_empty!34851 b_and!47335 (not bm!63848) (not start!109854) (not b!1301030) (not b!1301027) (not bm!63847) (not b!1301017) (not b_next!29211) (not bm!63851) (not mapNonEmpty!53852) (not b!1301026) (not b!1301018) (not b!1301014))
(check-sat b_and!47335 (not b_next!29211))
