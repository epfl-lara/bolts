; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109860 () Bool)

(assert start!109860)

(declare-fun b_free!29217 () Bool)

(declare-fun b_next!29217 () Bool)

(assert (=> start!109860 (= b_free!29217 (not b_next!29217))))

(declare-fun tp!102786 () Bool)

(declare-fun b_and!47343 () Bool)

(assert (=> start!109860 (= tp!102786 b_and!47343)))

(declare-fun b!1301174 () Bool)

(declare-datatypes ((Unit!43012 0))(
  ( (Unit!43013) )
))
(declare-fun e!742181 () Unit!43012)

(declare-fun e!742186 () Unit!43012)

(assert (=> b!1301174 (= e!742181 e!742186)))

(declare-fun c!124666 () Bool)

(declare-fun lt!581800 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301174 (= c!124666 (and (not lt!581800) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!51579 0))(
  ( (V!51580 (val!17503 Int)) )
))
(declare-fun minValue!1387 () V!51579)

(declare-fun zeroValue!1387 () V!51579)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!63900 () Bool)

(declare-datatypes ((ValueCell!16530 0))(
  ( (ValueCellFull!16530 (v!20109 V!51579)) (EmptyCell!16530) )
))
(declare-datatypes ((array!86683 0))(
  ( (array!86684 (arr!41833 (Array (_ BitVec 32) ValueCell!16530)) (size!42384 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86683)

(declare-datatypes ((array!86685 0))(
  ( (array!86686 (arr!41834 (Array (_ BitVec 32) (_ BitVec 64))) (size!42385 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86685)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22730 0))(
  ( (tuple2!22731 (_1!11375 (_ BitVec 64)) (_2!11375 V!51579)) )
))
(declare-datatypes ((List!29886 0))(
  ( (Nil!29883) (Cons!29882 (h!31091 tuple2!22730) (t!43471 List!29886)) )
))
(declare-datatypes ((ListLongMap!20399 0))(
  ( (ListLongMap!20400 (toList!10215 List!29886)) )
))
(declare-fun call!63905 () ListLongMap!20399)

(declare-fun getCurrentListMapNoExtraKeys!6152 (array!86685 array!86683 (_ BitVec 32) (_ BitVec 32) V!51579 V!51579 (_ BitVec 32) Int) ListLongMap!20399)

(assert (=> bm!63900 (= call!63905 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301175 () Bool)

(declare-fun lt!581805 () Unit!43012)

(assert (=> b!1301175 (= e!742181 lt!581805)))

(declare-fun lt!581801 () ListLongMap!20399)

(assert (=> b!1301175 (= lt!581801 call!63905)))

(declare-fun lt!581812 () ListLongMap!20399)

(declare-fun +!4439 (ListLongMap!20399 tuple2!22730) ListLongMap!20399)

(assert (=> b!1301175 (= lt!581812 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581811 () Unit!43012)

(declare-fun call!63904 () Unit!43012)

(assert (=> b!1301175 (= lt!581811 call!63904)))

(declare-fun call!63908 () Bool)

(assert (=> b!1301175 call!63908))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!78 ((_ BitVec 64) (_ BitVec 64) V!51579 ListLongMap!20399) Unit!43012)

(assert (=> b!1301175 (= lt!581805 (lemmaInListMapAfterAddingDiffThenInBefore!78 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581801))))

(declare-fun contains!8276 (ListLongMap!20399 (_ BitVec 64)) Bool)

(assert (=> b!1301175 (contains!8276 lt!581801 k0!1205)))

(declare-fun b!1301176 () Bool)

(declare-fun e!742184 () Bool)

(assert (=> b!1301176 (= e!742184 false)))

(declare-fun lt!581807 () V!51579)

(assert (=> b!1301176 (not (contains!8276 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) k0!1205))))

(declare-fun lt!581810 () Unit!43012)

(declare-fun addStillNotContains!465 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> b!1301176 (= lt!581810 (addStillNotContains!465 (ListLongMap!20400 Nil!29883) (select (arr!41834 _keys!1741) from!2144) lt!581807 k0!1205))))

(declare-fun get!21173 (ValueCell!16530 V!51579) V!51579)

(declare-fun dynLambda!3502 (Int (_ BitVec 64)) V!51579)

(assert (=> b!1301176 (= lt!581807 (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301178 () Bool)

(declare-fun e!742187 () Bool)

(assert (=> b!1301178 (= e!742187 (not e!742184))))

(declare-fun res!864611 () Bool)

(assert (=> b!1301178 (=> res!864611 e!742184)))

(assert (=> b!1301178 (= res!864611 (= k0!1205 (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301178 (not (contains!8276 (ListLongMap!20400 Nil!29883) k0!1205))))

(declare-fun lt!581803 () Unit!43012)

(declare-fun emptyContainsNothing!206 ((_ BitVec 64)) Unit!43012)

(assert (=> b!1301178 (= lt!581803 (emptyContainsNothing!206 k0!1205))))

(declare-fun lt!581802 () Unit!43012)

(assert (=> b!1301178 (= lt!581802 e!742181)))

(declare-fun c!124667 () Bool)

(assert (=> b!1301178 (= c!124667 (and (not lt!581800) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301178 (= lt!581800 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301179 () Bool)

(declare-fun e!742185 () Bool)

(declare-fun tp_is_empty!34857 () Bool)

(assert (=> b!1301179 (= e!742185 tp_is_empty!34857)))

(declare-fun b!1301180 () Bool)

(declare-fun res!864612 () Bool)

(assert (=> b!1301180 (=> (not res!864612) (not e!742187))))

(assert (=> b!1301180 (= res!864612 (and (= (size!42384 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42385 _keys!1741) (size!42384 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53861 () Bool)

(declare-fun mapRes!53861 () Bool)

(assert (=> mapIsEmpty!53861 mapRes!53861))

(declare-fun b!1301177 () Bool)

(declare-fun c!124665 () Bool)

(assert (=> b!1301177 (= c!124665 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581800))))

(declare-fun e!742188 () Unit!43012)

(assert (=> b!1301177 (= e!742186 e!742188)))

(declare-fun res!864613 () Bool)

(assert (=> start!109860 (=> (not res!864613) (not e!742187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109860 (= res!864613 (validMask!0 mask!2175))))

(assert (=> start!109860 e!742187))

(assert (=> start!109860 tp_is_empty!34857))

(assert (=> start!109860 true))

(declare-fun e!742189 () Bool)

(declare-fun array_inv!31645 (array!86683) Bool)

(assert (=> start!109860 (and (array_inv!31645 _values!1445) e!742189)))

(declare-fun array_inv!31646 (array!86685) Bool)

(assert (=> start!109860 (array_inv!31646 _keys!1741)))

(assert (=> start!109860 tp!102786))

(declare-fun lt!581804 () ListLongMap!20399)

(declare-fun lt!581806 () ListLongMap!20399)

(declare-fun bm!63901 () Bool)

(assert (=> bm!63901 (= call!63908 (contains!8276 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) k0!1205))))

(declare-fun b!1301181 () Bool)

(declare-fun call!63906 () Bool)

(assert (=> b!1301181 call!63906))

(declare-fun lt!581809 () Unit!43012)

(declare-fun call!63907 () Unit!43012)

(assert (=> b!1301181 (= lt!581809 call!63907)))

(declare-fun call!63903 () ListLongMap!20399)

(assert (=> b!1301181 (= lt!581804 call!63903)))

(assert (=> b!1301181 (= e!742186 lt!581809)))

(declare-fun mapNonEmpty!53861 () Bool)

(declare-fun tp!102785 () Bool)

(declare-fun e!742182 () Bool)

(assert (=> mapNonEmpty!53861 (= mapRes!53861 (and tp!102785 e!742182))))

(declare-fun mapRest!53861 () (Array (_ BitVec 32) ValueCell!16530))

(declare-fun mapValue!53861 () ValueCell!16530)

(declare-fun mapKey!53861 () (_ BitVec 32))

(assert (=> mapNonEmpty!53861 (= (arr!41833 _values!1445) (store mapRest!53861 mapKey!53861 mapValue!53861))))

(declare-fun b!1301182 () Bool)

(declare-fun res!864606 () Bool)

(assert (=> b!1301182 (=> (not res!864606) (not e!742187))))

(assert (=> b!1301182 (= res!864606 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741))))))

(declare-fun b!1301183 () Bool)

(declare-fun res!864610 () Bool)

(assert (=> b!1301183 (=> (not res!864610) (not e!742187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301183 (= res!864610 (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun bm!63902 () Bool)

(assert (=> bm!63902 (= call!63904 (lemmaInListMapAfterAddingDiffThenInBefore!78 k0!1205 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)) (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))))

(declare-fun b!1301184 () Bool)

(assert (=> b!1301184 (= e!742189 (and e!742185 mapRes!53861))))

(declare-fun condMapEmpty!53861 () Bool)

(declare-fun mapDefault!53861 () ValueCell!16530)

(assert (=> b!1301184 (= condMapEmpty!53861 (= (arr!41833 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16530)) mapDefault!53861)))))

(declare-fun bm!63903 () Bool)

(assert (=> bm!63903 (= call!63903 call!63905)))

(declare-fun b!1301185 () Bool)

(declare-fun Unit!43014 () Unit!43012)

(assert (=> b!1301185 (= e!742188 Unit!43014)))

(declare-fun bm!63904 () Bool)

(assert (=> bm!63904 (= call!63907 call!63904)))

(declare-fun b!1301186 () Bool)

(declare-fun lt!581808 () Unit!43012)

(assert (=> b!1301186 (= e!742188 lt!581808)))

(assert (=> b!1301186 (= lt!581806 call!63903)))

(assert (=> b!1301186 (= lt!581808 call!63907)))

(assert (=> b!1301186 call!63906))

(declare-fun bm!63905 () Bool)

(assert (=> bm!63905 (= call!63906 call!63908)))

(declare-fun b!1301187 () Bool)

(assert (=> b!1301187 (= e!742182 tp_is_empty!34857)))

(declare-fun b!1301188 () Bool)

(declare-fun res!864608 () Bool)

(assert (=> b!1301188 (=> (not res!864608) (not e!742187))))

(declare-datatypes ((List!29887 0))(
  ( (Nil!29884) (Cons!29883 (h!31092 (_ BitVec 64)) (t!43472 List!29887)) )
))
(declare-fun arrayNoDuplicates!0 (array!86685 (_ BitVec 32) List!29887) Bool)

(assert (=> b!1301188 (= res!864608 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29884))))

(declare-fun b!1301189 () Bool)

(declare-fun res!864607 () Bool)

(assert (=> b!1301189 (=> (not res!864607) (not e!742187))))

(declare-fun getCurrentListMap!5184 (array!86685 array!86683 (_ BitVec 32) (_ BitVec 32) V!51579 V!51579 (_ BitVec 32) Int) ListLongMap!20399)

(assert (=> b!1301189 (= res!864607 (contains!8276 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1301190 () Bool)

(declare-fun res!864609 () Bool)

(assert (=> b!1301190 (=> (not res!864609) (not e!742187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86685 (_ BitVec 32)) Bool)

(assert (=> b!1301190 (= res!864609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301191 () Bool)

(declare-fun res!864614 () Bool)

(assert (=> b!1301191 (=> (not res!864614) (not e!742187))))

(assert (=> b!1301191 (= res!864614 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42385 _keys!1741))))))

(assert (= (and start!109860 res!864613) b!1301180))

(assert (= (and b!1301180 res!864612) b!1301190))

(assert (= (and b!1301190 res!864609) b!1301188))

(assert (= (and b!1301188 res!864608) b!1301182))

(assert (= (and b!1301182 res!864606) b!1301189))

(assert (= (and b!1301189 res!864607) b!1301191))

(assert (= (and b!1301191 res!864614) b!1301183))

(assert (= (and b!1301183 res!864610) b!1301178))

(assert (= (and b!1301178 c!124667) b!1301175))

(assert (= (and b!1301178 (not c!124667)) b!1301174))

(assert (= (and b!1301174 c!124666) b!1301181))

(assert (= (and b!1301174 (not c!124666)) b!1301177))

(assert (= (and b!1301177 c!124665) b!1301186))

(assert (= (and b!1301177 (not c!124665)) b!1301185))

(assert (= (or b!1301181 b!1301186) bm!63903))

(assert (= (or b!1301181 b!1301186) bm!63904))

(assert (= (or b!1301181 b!1301186) bm!63905))

(assert (= (or b!1301175 bm!63903) bm!63900))

(assert (= (or b!1301175 bm!63904) bm!63902))

(assert (= (or b!1301175 bm!63905) bm!63901))

(assert (= (and b!1301178 (not res!864611)) b!1301176))

(assert (= (and b!1301184 condMapEmpty!53861) mapIsEmpty!53861))

(assert (= (and b!1301184 (not condMapEmpty!53861)) mapNonEmpty!53861))

(get-info :version)

(assert (= (and mapNonEmpty!53861 ((_ is ValueCellFull!16530) mapValue!53861)) b!1301187))

(assert (= (and b!1301184 ((_ is ValueCellFull!16530) mapDefault!53861)) b!1301179))

(assert (= start!109860 b!1301184))

(declare-fun b_lambda!23197 () Bool)

(assert (=> (not b_lambda!23197) (not b!1301176)))

(declare-fun t!43470 () Bool)

(declare-fun tb!11389 () Bool)

(assert (=> (and start!109860 (= defaultEntry!1448 defaultEntry!1448) t!43470) tb!11389))

(declare-fun result!23781 () Bool)

(assert (=> tb!11389 (= result!23781 tp_is_empty!34857)))

(assert (=> b!1301176 t!43470))

(declare-fun b_and!47345 () Bool)

(assert (= b_and!47343 (and (=> t!43470 result!23781) b_and!47345)))

(declare-fun m!1191907 () Bool)

(assert (=> b!1301183 m!1191907))

(assert (=> b!1301183 m!1191907))

(declare-fun m!1191909 () Bool)

(assert (=> b!1301183 m!1191909))

(declare-fun m!1191911 () Bool)

(assert (=> bm!63900 m!1191911))

(declare-fun m!1191913 () Bool)

(assert (=> bm!63901 m!1191913))

(declare-fun m!1191915 () Bool)

(assert (=> b!1301175 m!1191915))

(declare-fun m!1191917 () Bool)

(assert (=> b!1301175 m!1191917))

(declare-fun m!1191919 () Bool)

(assert (=> b!1301175 m!1191919))

(declare-fun m!1191921 () Bool)

(assert (=> bm!63902 m!1191921))

(declare-fun m!1191923 () Bool)

(assert (=> b!1301188 m!1191923))

(declare-fun m!1191925 () Bool)

(assert (=> mapNonEmpty!53861 m!1191925))

(assert (=> b!1301178 m!1191907))

(declare-fun m!1191927 () Bool)

(assert (=> b!1301178 m!1191927))

(declare-fun m!1191929 () Bool)

(assert (=> b!1301178 m!1191929))

(declare-fun m!1191931 () Bool)

(assert (=> b!1301176 m!1191931))

(declare-fun m!1191933 () Bool)

(assert (=> b!1301176 m!1191933))

(declare-fun m!1191935 () Bool)

(assert (=> b!1301176 m!1191935))

(assert (=> b!1301176 m!1191931))

(declare-fun m!1191937 () Bool)

(assert (=> b!1301176 m!1191937))

(assert (=> b!1301176 m!1191907))

(assert (=> b!1301176 m!1191935))

(assert (=> b!1301176 m!1191933))

(declare-fun m!1191939 () Bool)

(assert (=> b!1301176 m!1191939))

(assert (=> b!1301176 m!1191907))

(declare-fun m!1191941 () Bool)

(assert (=> b!1301176 m!1191941))

(declare-fun m!1191943 () Bool)

(assert (=> start!109860 m!1191943))

(declare-fun m!1191945 () Bool)

(assert (=> start!109860 m!1191945))

(declare-fun m!1191947 () Bool)

(assert (=> start!109860 m!1191947))

(declare-fun m!1191949 () Bool)

(assert (=> b!1301190 m!1191949))

(declare-fun m!1191951 () Bool)

(assert (=> b!1301189 m!1191951))

(assert (=> b!1301189 m!1191951))

(declare-fun m!1191953 () Bool)

(assert (=> b!1301189 m!1191953))

(check-sat (not b!1301176) (not bm!63901) (not bm!63900) (not b!1301175) (not b_lambda!23197) b_and!47345 (not b!1301188) (not b!1301190) tp_is_empty!34857 (not start!109860) (not b!1301183) (not b_next!29217) (not b!1301189) (not b!1301178) (not mapNonEmpty!53861) (not bm!63902))
(check-sat b_and!47345 (not b_next!29217))
(get-model)

(declare-fun b_lambda!23201 () Bool)

(assert (= b_lambda!23197 (or (and start!109860 b_free!29217) b_lambda!23201)))

(check-sat (not b!1301176) (not bm!63901) (not bm!63900) (not b!1301175) b_and!47345 (not b!1301188) (not b!1301190) tp_is_empty!34857 (not start!109860) (not b!1301183) (not b!1301189) (not b!1301178) (not mapNonEmpty!53861) (not bm!63902) (not b_next!29217) (not b_lambda!23201))
(check-sat b_and!47345 (not b_next!29217))
(get-model)

(declare-fun d!141109 () Bool)

(assert (=> d!141109 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109860 d!141109))

(declare-fun d!141111 () Bool)

(assert (=> d!141111 (= (array_inv!31645 _values!1445) (bvsge (size!42384 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109860 d!141111))

(declare-fun d!141113 () Bool)

(assert (=> d!141113 (= (array_inv!31646 _keys!1741) (bvsge (size!42385 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109860 d!141113))

(declare-fun b!1301260 () Bool)

(declare-fun e!742225 () Bool)

(declare-fun e!742228 () Bool)

(assert (=> b!1301260 (= e!742225 e!742228)))

(declare-fun c!124679 () Bool)

(assert (=> b!1301260 (= c!124679 (validKeyInArray!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1301261 () Bool)

(declare-fun call!63929 () Bool)

(assert (=> b!1301261 (= e!742228 call!63929)))

(declare-fun bm!63926 () Bool)

(assert (=> bm!63926 (= call!63929 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124679 (Cons!29883 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) Nil!29884) Nil!29884)))))

(declare-fun d!141115 () Bool)

(declare-fun res!864648 () Bool)

(declare-fun e!742226 () Bool)

(assert (=> d!141115 (=> res!864648 e!742226)))

(assert (=> d!141115 (= res!864648 (bvsge #b00000000000000000000000000000000 (size!42385 _keys!1741)))))

(assert (=> d!141115 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29884) e!742226)))

(declare-fun b!1301262 () Bool)

(assert (=> b!1301262 (= e!742226 e!742225)))

(declare-fun res!864649 () Bool)

(assert (=> b!1301262 (=> (not res!864649) (not e!742225))))

(declare-fun e!742227 () Bool)

(assert (=> b!1301262 (= res!864649 (not e!742227))))

(declare-fun res!864650 () Bool)

(assert (=> b!1301262 (=> (not res!864650) (not e!742227))))

(assert (=> b!1301262 (= res!864650 (validKeyInArray!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1301263 () Bool)

(assert (=> b!1301263 (= e!742228 call!63929)))

(declare-fun b!1301264 () Bool)

(declare-fun contains!8278 (List!29887 (_ BitVec 64)) Bool)

(assert (=> b!1301264 (= e!742227 (contains!8278 Nil!29884 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141115 (not res!864648)) b!1301262))

(assert (= (and b!1301262 res!864650) b!1301264))

(assert (= (and b!1301262 res!864649) b!1301260))

(assert (= (and b!1301260 c!124679) b!1301263))

(assert (= (and b!1301260 (not c!124679)) b!1301261))

(assert (= (or b!1301263 b!1301261) bm!63926))

(declare-fun m!1192003 () Bool)

(assert (=> b!1301260 m!1192003))

(assert (=> b!1301260 m!1192003))

(declare-fun m!1192005 () Bool)

(assert (=> b!1301260 m!1192005))

(assert (=> bm!63926 m!1192003))

(declare-fun m!1192007 () Bool)

(assert (=> bm!63926 m!1192007))

(assert (=> b!1301262 m!1192003))

(assert (=> b!1301262 m!1192003))

(assert (=> b!1301262 m!1192005))

(assert (=> b!1301264 m!1192003))

(assert (=> b!1301264 m!1192003))

(declare-fun m!1192009 () Bool)

(assert (=> b!1301264 m!1192009))

(assert (=> b!1301188 d!141115))

(declare-fun b!1301289 () Bool)

(declare-fun res!864660 () Bool)

(declare-fun e!742248 () Bool)

(assert (=> b!1301289 (=> (not res!864660) (not e!742248))))

(declare-fun lt!581872 () ListLongMap!20399)

(assert (=> b!1301289 (= res!864660 (not (contains!8276 lt!581872 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301290 () Bool)

(declare-fun e!742249 () ListLongMap!20399)

(declare-fun e!742246 () ListLongMap!20399)

(assert (=> b!1301290 (= e!742249 e!742246)))

(declare-fun c!124690 () Bool)

(assert (=> b!1301290 (= c!124690 (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun e!742244 () Bool)

(declare-fun b!1301291 () Bool)

(assert (=> b!1301291 (= e!742244 (= lt!581872 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun call!63932 () ListLongMap!20399)

(declare-fun bm!63929 () Bool)

(assert (=> bm!63929 (= call!63932 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1301292 () Bool)

(declare-fun e!742247 () Bool)

(assert (=> b!1301292 (= e!742247 e!742244)))

(declare-fun c!124691 () Bool)

(assert (=> b!1301292 (= c!124691 (bvslt from!2144 (size!42385 _keys!1741)))))

(declare-fun d!141117 () Bool)

(assert (=> d!141117 e!742248))

(declare-fun res!864661 () Bool)

(assert (=> d!141117 (=> (not res!864661) (not e!742248))))

(assert (=> d!141117 (= res!864661 (not (contains!8276 lt!581872 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141117 (= lt!581872 e!742249)))

(declare-fun c!124688 () Bool)

(assert (=> d!141117 (= c!124688 (bvsge from!2144 (size!42385 _keys!1741)))))

(assert (=> d!141117 (validMask!0 mask!2175)))

(assert (=> d!141117 (= (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581872)))

(declare-fun b!1301293 () Bool)

(assert (=> b!1301293 (= e!742246 call!63932)))

(declare-fun b!1301294 () Bool)

(declare-fun lt!581869 () Unit!43012)

(declare-fun lt!581867 () Unit!43012)

(assert (=> b!1301294 (= lt!581869 lt!581867)))

(declare-fun lt!581868 () ListLongMap!20399)

(declare-fun lt!581866 () (_ BitVec 64))

(declare-fun lt!581870 () V!51579)

(declare-fun lt!581871 () (_ BitVec 64))

(assert (=> b!1301294 (not (contains!8276 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870)) lt!581866))))

(assert (=> b!1301294 (= lt!581867 (addStillNotContains!465 lt!581868 lt!581871 lt!581870 lt!581866))))

(assert (=> b!1301294 (= lt!581866 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1301294 (= lt!581870 (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1301294 (= lt!581871 (select (arr!41834 _keys!1741) from!2144))))

(assert (=> b!1301294 (= lt!581868 call!63932)))

(assert (=> b!1301294 (= e!742246 (+!4439 call!63932 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1301295 () Bool)

(assert (=> b!1301295 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741)))))

(assert (=> b!1301295 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42384 _values!1445)))))

(declare-fun e!742245 () Bool)

(declare-fun apply!1052 (ListLongMap!20399 (_ BitVec 64)) V!51579)

(assert (=> b!1301295 (= e!742245 (= (apply!1052 lt!581872 (select (arr!41834 _keys!1741) from!2144)) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1301296 () Bool)

(declare-fun isEmpty!1056 (ListLongMap!20399) Bool)

(assert (=> b!1301296 (= e!742244 (isEmpty!1056 lt!581872))))

(declare-fun b!1301297 () Bool)

(assert (=> b!1301297 (= e!742249 (ListLongMap!20400 Nil!29883))))

(declare-fun b!1301298 () Bool)

(declare-fun e!742243 () Bool)

(assert (=> b!1301298 (= e!742243 (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301298 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1301299 () Bool)

(assert (=> b!1301299 (= e!742247 e!742245)))

(assert (=> b!1301299 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741)))))

(declare-fun res!864662 () Bool)

(assert (=> b!1301299 (= res!864662 (contains!8276 lt!581872 (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301299 (=> (not res!864662) (not e!742245))))

(declare-fun b!1301300 () Bool)

(assert (=> b!1301300 (= e!742248 e!742247)))

(declare-fun c!124689 () Bool)

(assert (=> b!1301300 (= c!124689 e!742243)))

(declare-fun res!864659 () Bool)

(assert (=> b!1301300 (=> (not res!864659) (not e!742243))))

(assert (=> b!1301300 (= res!864659 (bvslt from!2144 (size!42385 _keys!1741)))))

(assert (= (and d!141117 c!124688) b!1301297))

(assert (= (and d!141117 (not c!124688)) b!1301290))

(assert (= (and b!1301290 c!124690) b!1301294))

(assert (= (and b!1301290 (not c!124690)) b!1301293))

(assert (= (or b!1301294 b!1301293) bm!63929))

(assert (= (and d!141117 res!864661) b!1301289))

(assert (= (and b!1301289 res!864660) b!1301300))

(assert (= (and b!1301300 res!864659) b!1301298))

(assert (= (and b!1301300 c!124689) b!1301299))

(assert (= (and b!1301300 (not c!124689)) b!1301292))

(assert (= (and b!1301299 res!864662) b!1301295))

(assert (= (and b!1301292 c!124691) b!1301291))

(assert (= (and b!1301292 (not c!124691)) b!1301296))

(declare-fun b_lambda!23203 () Bool)

(assert (=> (not b_lambda!23203) (not b!1301294)))

(assert (=> b!1301294 t!43470))

(declare-fun b_and!47351 () Bool)

(assert (= b_and!47345 (and (=> t!43470 result!23781) b_and!47351)))

(declare-fun b_lambda!23205 () Bool)

(assert (=> (not b_lambda!23205) (not b!1301295)))

(assert (=> b!1301295 t!43470))

(declare-fun b_and!47353 () Bool)

(assert (= b_and!47351 (and (=> t!43470 result!23781) b_and!47353)))

(declare-fun m!1192011 () Bool)

(assert (=> d!141117 m!1192011))

(assert (=> d!141117 m!1191943))

(assert (=> b!1301299 m!1191907))

(assert (=> b!1301299 m!1191907))

(declare-fun m!1192013 () Bool)

(assert (=> b!1301299 m!1192013))

(assert (=> b!1301295 m!1191907))

(declare-fun m!1192015 () Bool)

(assert (=> b!1301295 m!1192015))

(assert (=> b!1301295 m!1191907))

(assert (=> b!1301295 m!1191935))

(assert (=> b!1301295 m!1191933))

(assert (=> b!1301295 m!1191939))

(assert (=> b!1301295 m!1191933))

(assert (=> b!1301295 m!1191935))

(declare-fun m!1192017 () Bool)

(assert (=> b!1301291 m!1192017))

(assert (=> b!1301298 m!1191907))

(assert (=> b!1301298 m!1191907))

(assert (=> b!1301298 m!1191909))

(assert (=> b!1301290 m!1191907))

(assert (=> b!1301290 m!1191907))

(assert (=> b!1301290 m!1191909))

(assert (=> bm!63929 m!1192017))

(assert (=> b!1301294 m!1191907))

(declare-fun m!1192019 () Bool)

(assert (=> b!1301294 m!1192019))

(declare-fun m!1192021 () Bool)

(assert (=> b!1301294 m!1192021))

(assert (=> b!1301294 m!1191935))

(assert (=> b!1301294 m!1191933))

(assert (=> b!1301294 m!1191939))

(declare-fun m!1192023 () Bool)

(assert (=> b!1301294 m!1192023))

(assert (=> b!1301294 m!1191933))

(assert (=> b!1301294 m!1192023))

(declare-fun m!1192025 () Bool)

(assert (=> b!1301294 m!1192025))

(assert (=> b!1301294 m!1191935))

(declare-fun m!1192027 () Bool)

(assert (=> b!1301289 m!1192027))

(declare-fun m!1192029 () Bool)

(assert (=> b!1301296 m!1192029))

(assert (=> bm!63900 d!141117))

(declare-fun d!141119 () Bool)

(declare-fun e!742255 () Bool)

(assert (=> d!141119 e!742255))

(declare-fun res!864665 () Bool)

(assert (=> d!141119 (=> res!864665 e!742255)))

(declare-fun lt!581884 () Bool)

(assert (=> d!141119 (= res!864665 (not lt!581884))))

(declare-fun lt!581881 () Bool)

(assert (=> d!141119 (= lt!581884 lt!581881)))

(declare-fun lt!581882 () Unit!43012)

(declare-fun e!742254 () Unit!43012)

(assert (=> d!141119 (= lt!581882 e!742254)))

(declare-fun c!124694 () Bool)

(assert (=> d!141119 (= c!124694 lt!581881)))

(declare-fun containsKey!720 (List!29886 (_ BitVec 64)) Bool)

(assert (=> d!141119 (= lt!581881 (containsKey!720 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(assert (=> d!141119 (= (contains!8276 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) k0!1205) lt!581884)))

(declare-fun b!1301307 () Bool)

(declare-fun lt!581883 () Unit!43012)

(assert (=> b!1301307 (= e!742254 lt!581883)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!465 (List!29886 (_ BitVec 64)) Unit!43012)

(assert (=> b!1301307 (= lt!581883 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(declare-datatypes ((Option!753 0))(
  ( (Some!752 (v!20111 V!51579)) (None!751) )
))
(declare-fun isDefined!505 (Option!753) Bool)

(declare-fun getValueByKey!702 (List!29886 (_ BitVec 64)) Option!753)

(assert (=> b!1301307 (isDefined!505 (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(declare-fun b!1301308 () Bool)

(declare-fun Unit!43018 () Unit!43012)

(assert (=> b!1301308 (= e!742254 Unit!43018)))

(declare-fun b!1301309 () Bool)

(assert (=> b!1301309 (= e!742255 (isDefined!505 (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205)))))

(assert (= (and d!141119 c!124694) b!1301307))

(assert (= (and d!141119 (not c!124694)) b!1301308))

(assert (= (and d!141119 (not res!864665)) b!1301309))

(declare-fun m!1192031 () Bool)

(assert (=> d!141119 m!1192031))

(declare-fun m!1192033 () Bool)

(assert (=> b!1301307 m!1192033))

(declare-fun m!1192035 () Bool)

(assert (=> b!1301307 m!1192035))

(assert (=> b!1301307 m!1192035))

(declare-fun m!1192037 () Bool)

(assert (=> b!1301307 m!1192037))

(assert (=> b!1301309 m!1192035))

(assert (=> b!1301309 m!1192035))

(assert (=> b!1301309 m!1192037))

(assert (=> bm!63901 d!141119))

(declare-fun d!141121 () Bool)

(declare-fun e!742257 () Bool)

(assert (=> d!141121 e!742257))

(declare-fun res!864666 () Bool)

(assert (=> d!141121 (=> res!864666 e!742257)))

(declare-fun lt!581888 () Bool)

(assert (=> d!141121 (= res!864666 (not lt!581888))))

(declare-fun lt!581885 () Bool)

(assert (=> d!141121 (= lt!581888 lt!581885)))

(declare-fun lt!581886 () Unit!43012)

(declare-fun e!742256 () Unit!43012)

(assert (=> d!141121 (= lt!581886 e!742256)))

(declare-fun c!124695 () Bool)

(assert (=> d!141121 (= c!124695 lt!581885)))

(assert (=> d!141121 (= lt!581885 (containsKey!720 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(assert (=> d!141121 (= (contains!8276 (ListLongMap!20400 Nil!29883) k0!1205) lt!581888)))

(declare-fun b!1301310 () Bool)

(declare-fun lt!581887 () Unit!43012)

(assert (=> b!1301310 (= e!742256 lt!581887)))

(assert (=> b!1301310 (= lt!581887 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(assert (=> b!1301310 (isDefined!505 (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(declare-fun b!1301311 () Bool)

(declare-fun Unit!43019 () Unit!43012)

(assert (=> b!1301311 (= e!742256 Unit!43019)))

(declare-fun b!1301312 () Bool)

(assert (=> b!1301312 (= e!742257 (isDefined!505 (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205)))))

(assert (= (and d!141121 c!124695) b!1301310))

(assert (= (and d!141121 (not c!124695)) b!1301311))

(assert (= (and d!141121 (not res!864666)) b!1301312))

(declare-fun m!1192039 () Bool)

(assert (=> d!141121 m!1192039))

(declare-fun m!1192041 () Bool)

(assert (=> b!1301310 m!1192041))

(declare-fun m!1192043 () Bool)

(assert (=> b!1301310 m!1192043))

(assert (=> b!1301310 m!1192043))

(declare-fun m!1192045 () Bool)

(assert (=> b!1301310 m!1192045))

(assert (=> b!1301312 m!1192043))

(assert (=> b!1301312 m!1192043))

(assert (=> b!1301312 m!1192045))

(assert (=> b!1301178 d!141121))

(declare-fun d!141123 () Bool)

(assert (=> d!141123 (not (contains!8276 (ListLongMap!20400 Nil!29883) k0!1205))))

(declare-fun lt!581891 () Unit!43012)

(declare-fun choose!1912 ((_ BitVec 64)) Unit!43012)

(assert (=> d!141123 (= lt!581891 (choose!1912 k0!1205))))

(assert (=> d!141123 (= (emptyContainsNothing!206 k0!1205) lt!581891)))

(declare-fun bs!37042 () Bool)

(assert (= bs!37042 d!141123))

(assert (=> bs!37042 m!1191927))

(declare-fun m!1192047 () Bool)

(assert (=> bs!37042 m!1192047))

(assert (=> b!1301178 d!141123))

(declare-fun b!1301322 () Bool)

(declare-fun e!742266 () Bool)

(declare-fun call!63935 () Bool)

(assert (=> b!1301322 (= e!742266 call!63935)))

(declare-fun bm!63932 () Bool)

(assert (=> bm!63932 (= call!63935 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1301323 () Bool)

(declare-fun e!742264 () Bool)

(assert (=> b!1301323 (= e!742264 call!63935)))

(declare-fun b!1301324 () Bool)

(declare-fun e!742265 () Bool)

(assert (=> b!1301324 (= e!742265 e!742264)))

(declare-fun c!124698 () Bool)

(assert (=> b!1301324 (= c!124698 (validKeyInArray!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1301321 () Bool)

(assert (=> b!1301321 (= e!742264 e!742266)))

(declare-fun lt!581900 () (_ BitVec 64))

(assert (=> b!1301321 (= lt!581900 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!581898 () Unit!43012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86685 (_ BitVec 64) (_ BitVec 32)) Unit!43012)

(assert (=> b!1301321 (= lt!581898 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!581900 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1301321 (arrayContainsKey!0 _keys!1741 lt!581900 #b00000000000000000000000000000000)))

(declare-fun lt!581899 () Unit!43012)

(assert (=> b!1301321 (= lt!581899 lt!581898)))

(declare-fun res!864672 () Bool)

(declare-datatypes ((SeekEntryResult!10017 0))(
  ( (MissingZero!10017 (index!42438 (_ BitVec 32))) (Found!10017 (index!42439 (_ BitVec 32))) (Intermediate!10017 (undefined!10829 Bool) (index!42440 (_ BitVec 32)) (x!115585 (_ BitVec 32))) (Undefined!10017) (MissingVacant!10017 (index!42441 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86685 (_ BitVec 32)) SeekEntryResult!10017)

(assert (=> b!1301321 (= res!864672 (= (seekEntryOrOpen!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10017 #b00000000000000000000000000000000)))))

(assert (=> b!1301321 (=> (not res!864672) (not e!742266))))

(declare-fun d!141125 () Bool)

(declare-fun res!864671 () Bool)

(assert (=> d!141125 (=> res!864671 e!742265)))

(assert (=> d!141125 (= res!864671 (bvsge #b00000000000000000000000000000000 (size!42385 _keys!1741)))))

(assert (=> d!141125 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!742265)))

(assert (= (and d!141125 (not res!864671)) b!1301324))

(assert (= (and b!1301324 c!124698) b!1301321))

(assert (= (and b!1301324 (not c!124698)) b!1301323))

(assert (= (and b!1301321 res!864672) b!1301322))

(assert (= (or b!1301322 b!1301323) bm!63932))

(declare-fun m!1192049 () Bool)

(assert (=> bm!63932 m!1192049))

(assert (=> b!1301324 m!1192003))

(assert (=> b!1301324 m!1192003))

(assert (=> b!1301324 m!1192005))

(assert (=> b!1301321 m!1192003))

(declare-fun m!1192051 () Bool)

(assert (=> b!1301321 m!1192051))

(declare-fun m!1192053 () Bool)

(assert (=> b!1301321 m!1192053))

(assert (=> b!1301321 m!1192003))

(declare-fun m!1192055 () Bool)

(assert (=> b!1301321 m!1192055))

(assert (=> b!1301190 d!141125))

(declare-fun d!141127 () Bool)

(declare-fun e!742268 () Bool)

(assert (=> d!141127 e!742268))

(declare-fun res!864673 () Bool)

(assert (=> d!141127 (=> res!864673 e!742268)))

(declare-fun lt!581904 () Bool)

(assert (=> d!141127 (= res!864673 (not lt!581904))))

(declare-fun lt!581901 () Bool)

(assert (=> d!141127 (= lt!581904 lt!581901)))

(declare-fun lt!581902 () Unit!43012)

(declare-fun e!742267 () Unit!43012)

(assert (=> d!141127 (= lt!581902 e!742267)))

(declare-fun c!124699 () Bool)

(assert (=> d!141127 (= c!124699 lt!581901)))

(assert (=> d!141127 (= lt!581901 (containsKey!720 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(assert (=> d!141127 (= (contains!8276 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) k0!1205) lt!581904)))

(declare-fun b!1301325 () Bool)

(declare-fun lt!581903 () Unit!43012)

(assert (=> b!1301325 (= e!742267 lt!581903)))

(assert (=> b!1301325 (= lt!581903 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(assert (=> b!1301325 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(declare-fun b!1301326 () Bool)

(declare-fun Unit!43020 () Unit!43012)

(assert (=> b!1301326 (= e!742267 Unit!43020)))

(declare-fun b!1301327 () Bool)

(assert (=> b!1301327 (= e!742268 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205)))))

(assert (= (and d!141127 c!124699) b!1301325))

(assert (= (and d!141127 (not c!124699)) b!1301326))

(assert (= (and d!141127 (not res!864673)) b!1301327))

(declare-fun m!1192057 () Bool)

(assert (=> d!141127 m!1192057))

(declare-fun m!1192059 () Bool)

(assert (=> b!1301325 m!1192059))

(declare-fun m!1192061 () Bool)

(assert (=> b!1301325 m!1192061))

(assert (=> b!1301325 m!1192061))

(declare-fun m!1192063 () Bool)

(assert (=> b!1301325 m!1192063))

(assert (=> b!1301327 m!1192061))

(assert (=> b!1301327 m!1192061))

(assert (=> b!1301327 m!1192063))

(assert (=> b!1301176 d!141127))

(declare-fun d!141129 () Bool)

(declare-fun e!742271 () Bool)

(assert (=> d!141129 e!742271))

(declare-fun res!864679 () Bool)

(assert (=> d!141129 (=> (not res!864679) (not e!742271))))

(declare-fun lt!581914 () ListLongMap!20399)

(assert (=> d!141129 (= res!864679 (contains!8276 lt!581914 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun lt!581915 () List!29886)

(assert (=> d!141129 (= lt!581914 (ListLongMap!20400 lt!581915))))

(declare-fun lt!581913 () Unit!43012)

(declare-fun lt!581916 () Unit!43012)

(assert (=> d!141129 (= lt!581913 lt!581916)))

(assert (=> d!141129 (= (getValueByKey!702 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) (Some!752 (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun lemmaContainsTupThenGetReturnValue!346 (List!29886 (_ BitVec 64) V!51579) Unit!43012)

(assert (=> d!141129 (= lt!581916 (lemmaContainsTupThenGetReturnValue!346 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun insertStrictlySorted!475 (List!29886 (_ BitVec 64) V!51579) List!29886)

(assert (=> d!141129 (= lt!581915 (insertStrictlySorted!475 (toList!10215 (ListLongMap!20400 Nil!29883)) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(assert (=> d!141129 (= (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) lt!581914)))

(declare-fun b!1301332 () Bool)

(declare-fun res!864678 () Bool)

(assert (=> b!1301332 (=> (not res!864678) (not e!742271))))

(assert (=> b!1301332 (= res!864678 (= (getValueByKey!702 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) (Some!752 (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(declare-fun b!1301333 () Bool)

(declare-fun contains!8279 (List!29886 tuple2!22730) Bool)

(assert (=> b!1301333 (= e!742271 (contains!8279 (toList!10215 lt!581914) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))

(assert (= (and d!141129 res!864679) b!1301332))

(assert (= (and b!1301332 res!864678) b!1301333))

(declare-fun m!1192065 () Bool)

(assert (=> d!141129 m!1192065))

(declare-fun m!1192067 () Bool)

(assert (=> d!141129 m!1192067))

(declare-fun m!1192069 () Bool)

(assert (=> d!141129 m!1192069))

(declare-fun m!1192071 () Bool)

(assert (=> d!141129 m!1192071))

(declare-fun m!1192073 () Bool)

(assert (=> b!1301332 m!1192073))

(declare-fun m!1192075 () Bool)

(assert (=> b!1301333 m!1192075))

(assert (=> b!1301176 d!141129))

(declare-fun d!141131 () Bool)

(assert (=> d!141131 (not (contains!8276 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) k0!1205))))

(declare-fun lt!581919 () Unit!43012)

(declare-fun choose!1913 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> d!141131 (= lt!581919 (choose!1913 (ListLongMap!20400 Nil!29883) (select (arr!41834 _keys!1741) from!2144) lt!581807 k0!1205))))

(declare-fun e!742274 () Bool)

(assert (=> d!141131 e!742274))

(declare-fun res!864682 () Bool)

(assert (=> d!141131 (=> (not res!864682) (not e!742274))))

(assert (=> d!141131 (= res!864682 (not (contains!8276 (ListLongMap!20400 Nil!29883) k0!1205)))))

(assert (=> d!141131 (= (addStillNotContains!465 (ListLongMap!20400 Nil!29883) (select (arr!41834 _keys!1741) from!2144) lt!581807 k0!1205) lt!581919)))

(declare-fun b!1301337 () Bool)

(assert (=> b!1301337 (= e!742274 (not (= (select (arr!41834 _keys!1741) from!2144) k0!1205)))))

(assert (= (and d!141131 res!864682) b!1301337))

(assert (=> d!141131 m!1191931))

(assert (=> d!141131 m!1191931))

(assert (=> d!141131 m!1191937))

(assert (=> d!141131 m!1191907))

(declare-fun m!1192077 () Bool)

(assert (=> d!141131 m!1192077))

(assert (=> d!141131 m!1191927))

(assert (=> b!1301176 d!141131))

(declare-fun d!141133 () Bool)

(declare-fun c!124702 () Bool)

(assert (=> d!141133 (= c!124702 ((_ is ValueCellFull!16530) (select (arr!41833 _values!1445) from!2144)))))

(declare-fun e!742277 () V!51579)

(assert (=> d!141133 (= (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) e!742277)))

(declare-fun b!1301342 () Bool)

(declare-fun get!21174 (ValueCell!16530 V!51579) V!51579)

(assert (=> b!1301342 (= e!742277 (get!21174 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301343 () Bool)

(declare-fun get!21175 (ValueCell!16530 V!51579) V!51579)

(assert (=> b!1301343 (= e!742277 (get!21175 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141133 c!124702) b!1301342))

(assert (= (and d!141133 (not c!124702)) b!1301343))

(assert (=> b!1301342 m!1191935))

(assert (=> b!1301342 m!1191933))

(declare-fun m!1192079 () Bool)

(assert (=> b!1301342 m!1192079))

(assert (=> b!1301343 m!1191935))

(assert (=> b!1301343 m!1191933))

(declare-fun m!1192081 () Bool)

(assert (=> b!1301343 m!1192081))

(assert (=> b!1301176 d!141133))

(declare-fun d!141135 () Bool)

(assert (=> d!141135 (contains!8276 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) k0!1205)))

(declare-fun lt!581922 () Unit!43012)

(declare-fun choose!1914 ((_ BitVec 64) (_ BitVec 64) V!51579 ListLongMap!20399) Unit!43012)

(assert (=> d!141135 (= lt!581922 (choose!1914 k0!1205 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)) (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))))

(assert (=> d!141135 (contains!8276 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))) k0!1205)))

(assert (=> d!141135 (= (lemmaInListMapAfterAddingDiffThenInBefore!78 k0!1205 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)) (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) lt!581922)))

(declare-fun bs!37043 () Bool)

(assert (= bs!37043 d!141135))

(assert (=> bs!37043 m!1191913))

(declare-fun m!1192083 () Bool)

(assert (=> bs!37043 m!1192083))

(declare-fun m!1192085 () Bool)

(assert (=> bs!37043 m!1192085))

(assert (=> bs!37043 m!1192085))

(declare-fun m!1192087 () Bool)

(assert (=> bs!37043 m!1192087))

(assert (=> bm!63902 d!141135))

(declare-fun d!141137 () Bool)

(declare-fun e!742279 () Bool)

(assert (=> d!141137 e!742279))

(declare-fun res!864683 () Bool)

(assert (=> d!141137 (=> res!864683 e!742279)))

(declare-fun lt!581926 () Bool)

(assert (=> d!141137 (= res!864683 (not lt!581926))))

(declare-fun lt!581923 () Bool)

(assert (=> d!141137 (= lt!581926 lt!581923)))

(declare-fun lt!581924 () Unit!43012)

(declare-fun e!742278 () Unit!43012)

(assert (=> d!141137 (= lt!581924 e!742278)))

(declare-fun c!124703 () Bool)

(assert (=> d!141137 (= c!124703 lt!581923)))

(assert (=> d!141137 (= lt!581923 (containsKey!720 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141137 (= (contains!8276 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!581926)))

(declare-fun b!1301344 () Bool)

(declare-fun lt!581925 () Unit!43012)

(assert (=> b!1301344 (= e!742278 lt!581925)))

(assert (=> b!1301344 (= lt!581925 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1301344 (isDefined!505 (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1301345 () Bool)

(declare-fun Unit!43021 () Unit!43012)

(assert (=> b!1301345 (= e!742278 Unit!43021)))

(declare-fun b!1301346 () Bool)

(assert (=> b!1301346 (= e!742279 (isDefined!505 (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141137 c!124703) b!1301344))

(assert (= (and d!141137 (not c!124703)) b!1301345))

(assert (= (and d!141137 (not res!864683)) b!1301346))

(declare-fun m!1192089 () Bool)

(assert (=> d!141137 m!1192089))

(declare-fun m!1192091 () Bool)

(assert (=> b!1301344 m!1192091))

(declare-fun m!1192093 () Bool)

(assert (=> b!1301344 m!1192093))

(assert (=> b!1301344 m!1192093))

(declare-fun m!1192095 () Bool)

(assert (=> b!1301344 m!1192095))

(assert (=> b!1301346 m!1192093))

(assert (=> b!1301346 m!1192093))

(assert (=> b!1301346 m!1192095))

(assert (=> b!1301189 d!141137))

(declare-fun bm!63947 () Bool)

(declare-fun call!63952 () Bool)

(declare-fun lt!581980 () ListLongMap!20399)

(assert (=> bm!63947 (= call!63952 (contains!8276 lt!581980 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301389 () Bool)

(declare-fun res!864704 () Bool)

(declare-fun e!742315 () Bool)

(assert (=> b!1301389 (=> (not res!864704) (not e!742315))))

(declare-fun e!742309 () Bool)

(assert (=> b!1301389 (= res!864704 e!742309)))

(declare-fun c!124721 () Bool)

(assert (=> b!1301389 (= c!124721 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1301390 () Bool)

(declare-fun e!742311 () ListLongMap!20399)

(declare-fun call!63956 () ListLongMap!20399)

(assert (=> b!1301390 (= e!742311 call!63956)))

(declare-fun b!1301391 () Bool)

(declare-fun e!742312 () ListLongMap!20399)

(declare-fun call!63954 () ListLongMap!20399)

(assert (=> b!1301391 (= e!742312 (+!4439 call!63954 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1301392 () Bool)

(declare-fun e!742306 () Bool)

(assert (=> b!1301392 (= e!742306 (= (apply!1052 lt!581980 (select (arr!41834 _keys!1741) from!2144)) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1301392 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42384 _values!1445)))))

(assert (=> b!1301392 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741)))))

(declare-fun bm!63948 () Bool)

(declare-fun call!63950 () Bool)

(assert (=> bm!63948 (= call!63950 (contains!8276 lt!581980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301393 () Bool)

(declare-fun e!742313 () Bool)

(declare-fun e!742310 () Bool)

(assert (=> b!1301393 (= e!742313 e!742310)))

(declare-fun res!864706 () Bool)

(assert (=> b!1301393 (= res!864706 call!63952)))

(assert (=> b!1301393 (=> (not res!864706) (not e!742310))))

(declare-fun b!1301394 () Bool)

(declare-fun e!742316 () Bool)

(assert (=> b!1301394 (= e!742316 (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun b!1301395 () Bool)

(assert (=> b!1301395 (= e!742310 (= (apply!1052 lt!581980 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1301396 () Bool)

(declare-fun call!63953 () ListLongMap!20399)

(assert (=> b!1301396 (= e!742311 call!63953)))

(declare-fun b!1301397 () Bool)

(declare-fun e!742307 () Bool)

(assert (=> b!1301397 (= e!742307 e!742306)))

(declare-fun res!864710 () Bool)

(assert (=> b!1301397 (=> (not res!864710) (not e!742306))))

(assert (=> b!1301397 (= res!864710 (contains!8276 lt!581980 (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301397 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741)))))

(declare-fun c!124720 () Bool)

(declare-fun call!63951 () ListLongMap!20399)

(declare-fun call!63955 () ListLongMap!20399)

(declare-fun c!124718 () Bool)

(declare-fun bm!63949 () Bool)

(assert (=> bm!63949 (= call!63954 (+!4439 (ite c!124718 call!63951 (ite c!124720 call!63955 call!63953)) (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun bm!63950 () Bool)

(assert (=> bm!63950 (= call!63953 call!63955)))

(declare-fun bm!63951 () Bool)

(assert (=> bm!63951 (= call!63955 call!63951)))

(declare-fun b!1301399 () Bool)

(declare-fun e!742314 () Unit!43012)

(declare-fun Unit!43022 () Unit!43012)

(assert (=> b!1301399 (= e!742314 Unit!43022)))

(declare-fun b!1301400 () Bool)

(declare-fun c!124717 () Bool)

(assert (=> b!1301400 (= c!124717 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!742318 () ListLongMap!20399)

(assert (=> b!1301400 (= e!742318 e!742311)))

(declare-fun b!1301401 () Bool)

(declare-fun e!742308 () Bool)

(assert (=> b!1301401 (= e!742308 (= (apply!1052 lt!581980 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun bm!63952 () Bool)

(assert (=> bm!63952 (= call!63956 call!63954)))

(declare-fun b!1301402 () Bool)

(assert (=> b!1301402 (= e!742315 e!742313)))

(declare-fun c!124716 () Bool)

(assert (=> b!1301402 (= c!124716 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1301403 () Bool)

(declare-fun lt!581976 () Unit!43012)

(assert (=> b!1301403 (= e!742314 lt!581976)))

(declare-fun lt!581974 () ListLongMap!20399)

(assert (=> b!1301403 (= lt!581974 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581991 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581991 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581979 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581979 (select (arr!41834 _keys!1741) from!2144))))

(declare-fun lt!581992 () Unit!43012)

(declare-fun addStillContains!1121 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> b!1301403 (= lt!581992 (addStillContains!1121 lt!581974 lt!581991 zeroValue!1387 lt!581979))))

(assert (=> b!1301403 (contains!8276 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387)) lt!581979)))

(declare-fun lt!581986 () Unit!43012)

(assert (=> b!1301403 (= lt!581986 lt!581992)))

(declare-fun lt!581985 () ListLongMap!20399)

(assert (=> b!1301403 (= lt!581985 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581988 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581988 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581982 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581982 (select (arr!41834 _keys!1741) from!2144))))

(declare-fun lt!581989 () Unit!43012)

(declare-fun addApplyDifferent!555 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> b!1301403 (= lt!581989 (addApplyDifferent!555 lt!581985 lt!581988 minValue!1387 lt!581982))))

(assert (=> b!1301403 (= (apply!1052 (+!4439 lt!581985 (tuple2!22731 lt!581988 minValue!1387)) lt!581982) (apply!1052 lt!581985 lt!581982))))

(declare-fun lt!581973 () Unit!43012)

(assert (=> b!1301403 (= lt!581973 lt!581989)))

(declare-fun lt!581984 () ListLongMap!20399)

(assert (=> b!1301403 (= lt!581984 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581987 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581987 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581978 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581978 (select (arr!41834 _keys!1741) from!2144))))

(declare-fun lt!581972 () Unit!43012)

(assert (=> b!1301403 (= lt!581972 (addApplyDifferent!555 lt!581984 lt!581987 zeroValue!1387 lt!581978))))

(assert (=> b!1301403 (= (apply!1052 (+!4439 lt!581984 (tuple2!22731 lt!581987 zeroValue!1387)) lt!581978) (apply!1052 lt!581984 lt!581978))))

(declare-fun lt!581981 () Unit!43012)

(assert (=> b!1301403 (= lt!581981 lt!581972)))

(declare-fun lt!581977 () ListLongMap!20399)

(assert (=> b!1301403 (= lt!581977 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581971 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581971 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581983 () (_ BitVec 64))

(assert (=> b!1301403 (= lt!581983 (select (arr!41834 _keys!1741) from!2144))))

(assert (=> b!1301403 (= lt!581976 (addApplyDifferent!555 lt!581977 lt!581971 minValue!1387 lt!581983))))

(assert (=> b!1301403 (= (apply!1052 (+!4439 lt!581977 (tuple2!22731 lt!581971 minValue!1387)) lt!581983) (apply!1052 lt!581977 lt!581983))))

(declare-fun b!1301404 () Bool)

(assert (=> b!1301404 (= e!742313 (not call!63952))))

(declare-fun b!1301405 () Bool)

(declare-fun e!742317 () Bool)

(assert (=> b!1301405 (= e!742317 (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun b!1301406 () Bool)

(declare-fun res!864705 () Bool)

(assert (=> b!1301406 (=> (not res!864705) (not e!742315))))

(assert (=> b!1301406 (= res!864705 e!742307)))

(declare-fun res!864707 () Bool)

(assert (=> b!1301406 (=> res!864707 e!742307)))

(assert (=> b!1301406 (= res!864707 (not e!742317))))

(declare-fun res!864702 () Bool)

(assert (=> b!1301406 (=> (not res!864702) (not e!742317))))

(assert (=> b!1301406 (= res!864702 (bvslt from!2144 (size!42385 _keys!1741)))))

(declare-fun bm!63953 () Bool)

(assert (=> bm!63953 (= call!63951 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301407 () Bool)

(assert (=> b!1301407 (= e!742312 e!742318)))

(assert (=> b!1301407 (= c!124720 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1301408 () Bool)

(assert (=> b!1301408 (= e!742309 e!742308)))

(declare-fun res!864709 () Bool)

(assert (=> b!1301408 (= res!864709 call!63950)))

(assert (=> b!1301408 (=> (not res!864709) (not e!742308))))

(declare-fun b!1301409 () Bool)

(assert (=> b!1301409 (= e!742318 call!63956)))

(declare-fun d!141139 () Bool)

(assert (=> d!141139 e!742315))

(declare-fun res!864708 () Bool)

(assert (=> d!141139 (=> (not res!864708) (not e!742315))))

(assert (=> d!141139 (= res!864708 (or (bvsge from!2144 (size!42385 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42385 _keys!1741)))))))

(declare-fun lt!581975 () ListLongMap!20399)

(assert (=> d!141139 (= lt!581980 lt!581975)))

(declare-fun lt!581990 () Unit!43012)

(assert (=> d!141139 (= lt!581990 e!742314)))

(declare-fun c!124719 () Bool)

(assert (=> d!141139 (= c!124719 e!742316)))

(declare-fun res!864703 () Bool)

(assert (=> d!141139 (=> (not res!864703) (not e!742316))))

(assert (=> d!141139 (= res!864703 (bvslt from!2144 (size!42385 _keys!1741)))))

(assert (=> d!141139 (= lt!581975 e!742312)))

(assert (=> d!141139 (= c!124718 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141139 (validMask!0 mask!2175)))

(assert (=> d!141139 (= (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581980)))

(declare-fun b!1301398 () Bool)

(assert (=> b!1301398 (= e!742309 (not call!63950))))

(assert (= (and d!141139 c!124718) b!1301391))

(assert (= (and d!141139 (not c!124718)) b!1301407))

(assert (= (and b!1301407 c!124720) b!1301409))

(assert (= (and b!1301407 (not c!124720)) b!1301400))

(assert (= (and b!1301400 c!124717) b!1301390))

(assert (= (and b!1301400 (not c!124717)) b!1301396))

(assert (= (or b!1301390 b!1301396) bm!63950))

(assert (= (or b!1301409 bm!63950) bm!63951))

(assert (= (or b!1301409 b!1301390) bm!63952))

(assert (= (or b!1301391 bm!63951) bm!63953))

(assert (= (or b!1301391 bm!63952) bm!63949))

(assert (= (and d!141139 res!864703) b!1301394))

(assert (= (and d!141139 c!124719) b!1301403))

(assert (= (and d!141139 (not c!124719)) b!1301399))

(assert (= (and d!141139 res!864708) b!1301406))

(assert (= (and b!1301406 res!864702) b!1301405))

(assert (= (and b!1301406 (not res!864707)) b!1301397))

(assert (= (and b!1301397 res!864710) b!1301392))

(assert (= (and b!1301406 res!864705) b!1301389))

(assert (= (and b!1301389 c!124721) b!1301408))

(assert (= (and b!1301389 (not c!124721)) b!1301398))

(assert (= (and b!1301408 res!864709) b!1301401))

(assert (= (or b!1301408 b!1301398) bm!63948))

(assert (= (and b!1301389 res!864704) b!1301402))

(assert (= (and b!1301402 c!124716) b!1301393))

(assert (= (and b!1301402 (not c!124716)) b!1301404))

(assert (= (and b!1301393 res!864706) b!1301395))

(assert (= (or b!1301393 b!1301404) bm!63947))

(declare-fun b_lambda!23207 () Bool)

(assert (=> (not b_lambda!23207) (not b!1301392)))

(assert (=> b!1301392 t!43470))

(declare-fun b_and!47355 () Bool)

(assert (= b_and!47353 (and (=> t!43470 result!23781) b_and!47355)))

(assert (=> b!1301405 m!1191907))

(assert (=> b!1301405 m!1191907))

(assert (=> b!1301405 m!1191909))

(declare-fun m!1192097 () Bool)

(assert (=> b!1301395 m!1192097))

(declare-fun m!1192099 () Bool)

(assert (=> b!1301391 m!1192099))

(declare-fun m!1192101 () Bool)

(assert (=> b!1301403 m!1192101))

(declare-fun m!1192103 () Bool)

(assert (=> b!1301403 m!1192103))

(assert (=> b!1301403 m!1191911))

(declare-fun m!1192105 () Bool)

(assert (=> b!1301403 m!1192105))

(declare-fun m!1192107 () Bool)

(assert (=> b!1301403 m!1192107))

(declare-fun m!1192109 () Bool)

(assert (=> b!1301403 m!1192109))

(declare-fun m!1192111 () Bool)

(assert (=> b!1301403 m!1192111))

(declare-fun m!1192113 () Bool)

(assert (=> b!1301403 m!1192113))

(declare-fun m!1192115 () Bool)

(assert (=> b!1301403 m!1192115))

(declare-fun m!1192117 () Bool)

(assert (=> b!1301403 m!1192117))

(assert (=> b!1301403 m!1192105))

(assert (=> b!1301403 m!1192111))

(assert (=> b!1301403 m!1191907))

(assert (=> b!1301403 m!1192115))

(declare-fun m!1192119 () Bool)

(assert (=> b!1301403 m!1192119))

(declare-fun m!1192121 () Bool)

(assert (=> b!1301403 m!1192121))

(declare-fun m!1192123 () Bool)

(assert (=> b!1301403 m!1192123))

(assert (=> b!1301403 m!1192103))

(declare-fun m!1192125 () Bool)

(assert (=> b!1301403 m!1192125))

(declare-fun m!1192127 () Bool)

(assert (=> b!1301403 m!1192127))

(declare-fun m!1192129 () Bool)

(assert (=> b!1301403 m!1192129))

(declare-fun m!1192131 () Bool)

(assert (=> bm!63947 m!1192131))

(assert (=> b!1301394 m!1191907))

(assert (=> b!1301394 m!1191907))

(assert (=> b!1301394 m!1191909))

(declare-fun m!1192133 () Bool)

(assert (=> bm!63949 m!1192133))

(assert (=> d!141139 m!1191943))

(declare-fun m!1192135 () Bool)

(assert (=> bm!63948 m!1192135))

(declare-fun m!1192137 () Bool)

(assert (=> b!1301401 m!1192137))

(assert (=> b!1301397 m!1191907))

(assert (=> b!1301397 m!1191907))

(declare-fun m!1192139 () Bool)

(assert (=> b!1301397 m!1192139))

(assert (=> b!1301392 m!1191935))

(assert (=> b!1301392 m!1191933))

(assert (=> b!1301392 m!1191939))

(assert (=> b!1301392 m!1191907))

(assert (=> b!1301392 m!1191935))

(assert (=> b!1301392 m!1191907))

(declare-fun m!1192141 () Bool)

(assert (=> b!1301392 m!1192141))

(assert (=> b!1301392 m!1191933))

(assert (=> bm!63953 m!1191911))

(assert (=> b!1301189 d!141139))

(declare-fun d!141141 () Bool)

(declare-fun e!742319 () Bool)

(assert (=> d!141141 e!742319))

(declare-fun res!864712 () Bool)

(assert (=> d!141141 (=> (not res!864712) (not e!742319))))

(declare-fun lt!581994 () ListLongMap!20399)

(assert (=> d!141141 (= res!864712 (contains!8276 lt!581994 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!581995 () List!29886)

(assert (=> d!141141 (= lt!581994 (ListLongMap!20400 lt!581995))))

(declare-fun lt!581993 () Unit!43012)

(declare-fun lt!581996 () Unit!43012)

(assert (=> d!141141 (= lt!581993 lt!581996)))

(assert (=> d!141141 (= (getValueByKey!702 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141141 (= lt!581996 (lemmaContainsTupThenGetReturnValue!346 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141141 (= lt!581995 (insertStrictlySorted!475 (toList!10215 lt!581801) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141141 (= (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!581994)))

(declare-fun b!1301410 () Bool)

(declare-fun res!864711 () Bool)

(assert (=> b!1301410 (=> (not res!864711) (not e!742319))))

(assert (=> b!1301410 (= res!864711 (= (getValueByKey!702 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1301411 () Bool)

(assert (=> b!1301411 (= e!742319 (contains!8279 (toList!10215 lt!581994) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141141 res!864712) b!1301410))

(assert (= (and b!1301410 res!864711) b!1301411))

(declare-fun m!1192143 () Bool)

(assert (=> d!141141 m!1192143))

(declare-fun m!1192145 () Bool)

(assert (=> d!141141 m!1192145))

(declare-fun m!1192147 () Bool)

(assert (=> d!141141 m!1192147))

(declare-fun m!1192149 () Bool)

(assert (=> d!141141 m!1192149))

(declare-fun m!1192151 () Bool)

(assert (=> b!1301410 m!1192151))

(declare-fun m!1192153 () Bool)

(assert (=> b!1301411 m!1192153))

(assert (=> b!1301175 d!141141))

(declare-fun d!141143 () Bool)

(assert (=> d!141143 (contains!8276 lt!581801 k0!1205)))

(declare-fun lt!581997 () Unit!43012)

(assert (=> d!141143 (= lt!581997 (choose!1914 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581801))))

(assert (=> d!141143 (contains!8276 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205)))

(assert (=> d!141143 (= (lemmaInListMapAfterAddingDiffThenInBefore!78 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581801) lt!581997)))

(declare-fun bs!37044 () Bool)

(assert (= bs!37044 d!141143))

(assert (=> bs!37044 m!1191919))

(declare-fun m!1192155 () Bool)

(assert (=> bs!37044 m!1192155))

(assert (=> bs!37044 m!1191915))

(assert (=> bs!37044 m!1191915))

(declare-fun m!1192157 () Bool)

(assert (=> bs!37044 m!1192157))

(assert (=> b!1301175 d!141143))

(declare-fun d!141145 () Bool)

(declare-fun e!742321 () Bool)

(assert (=> d!141145 e!742321))

(declare-fun res!864713 () Bool)

(assert (=> d!141145 (=> res!864713 e!742321)))

(declare-fun lt!582001 () Bool)

(assert (=> d!141145 (= res!864713 (not lt!582001))))

(declare-fun lt!581998 () Bool)

(assert (=> d!141145 (= lt!582001 lt!581998)))

(declare-fun lt!581999 () Unit!43012)

(declare-fun e!742320 () Unit!43012)

(assert (=> d!141145 (= lt!581999 e!742320)))

(declare-fun c!124722 () Bool)

(assert (=> d!141145 (= c!124722 lt!581998)))

(assert (=> d!141145 (= lt!581998 (containsKey!720 (toList!10215 lt!581801) k0!1205))))

(assert (=> d!141145 (= (contains!8276 lt!581801 k0!1205) lt!582001)))

(declare-fun b!1301412 () Bool)

(declare-fun lt!582000 () Unit!43012)

(assert (=> b!1301412 (= e!742320 lt!582000)))

(assert (=> b!1301412 (= lt!582000 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581801) k0!1205))))

(assert (=> b!1301412 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581801) k0!1205))))

(declare-fun b!1301413 () Bool)

(declare-fun Unit!43023 () Unit!43012)

(assert (=> b!1301413 (= e!742320 Unit!43023)))

(declare-fun b!1301414 () Bool)

(assert (=> b!1301414 (= e!742321 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581801) k0!1205)))))

(assert (= (and d!141145 c!124722) b!1301412))

(assert (= (and d!141145 (not c!124722)) b!1301413))

(assert (= (and d!141145 (not res!864713)) b!1301414))

(declare-fun m!1192159 () Bool)

(assert (=> d!141145 m!1192159))

(declare-fun m!1192161 () Bool)

(assert (=> b!1301412 m!1192161))

(declare-fun m!1192163 () Bool)

(assert (=> b!1301412 m!1192163))

(assert (=> b!1301412 m!1192163))

(declare-fun m!1192165 () Bool)

(assert (=> b!1301412 m!1192165))

(assert (=> b!1301414 m!1192163))

(assert (=> b!1301414 m!1192163))

(assert (=> b!1301414 m!1192165))

(assert (=> b!1301175 d!141145))

(declare-fun d!141147 () Bool)

(assert (=> d!141147 (= (validKeyInArray!0 (select (arr!41834 _keys!1741) from!2144)) (and (not (= (select (arr!41834 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41834 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1301183 d!141147))

(declare-fun mapNonEmpty!53867 () Bool)

(declare-fun mapRes!53867 () Bool)

(declare-fun tp!102795 () Bool)

(declare-fun e!742327 () Bool)

(assert (=> mapNonEmpty!53867 (= mapRes!53867 (and tp!102795 e!742327))))

(declare-fun mapRest!53867 () (Array (_ BitVec 32) ValueCell!16530))

(declare-fun mapKey!53867 () (_ BitVec 32))

(declare-fun mapValue!53867 () ValueCell!16530)

(assert (=> mapNonEmpty!53867 (= mapRest!53861 (store mapRest!53867 mapKey!53867 mapValue!53867))))

(declare-fun b!1301422 () Bool)

(declare-fun e!742326 () Bool)

(assert (=> b!1301422 (= e!742326 tp_is_empty!34857)))

(declare-fun b!1301421 () Bool)

(assert (=> b!1301421 (= e!742327 tp_is_empty!34857)))

(declare-fun condMapEmpty!53867 () Bool)

(declare-fun mapDefault!53867 () ValueCell!16530)

(assert (=> mapNonEmpty!53861 (= condMapEmpty!53867 (= mapRest!53861 ((as const (Array (_ BitVec 32) ValueCell!16530)) mapDefault!53867)))))

(assert (=> mapNonEmpty!53861 (= tp!102785 (and e!742326 mapRes!53867))))

(declare-fun mapIsEmpty!53867 () Bool)

(assert (=> mapIsEmpty!53867 mapRes!53867))

(assert (= (and mapNonEmpty!53861 condMapEmpty!53867) mapIsEmpty!53867))

(assert (= (and mapNonEmpty!53861 (not condMapEmpty!53867)) mapNonEmpty!53867))

(assert (= (and mapNonEmpty!53867 ((_ is ValueCellFull!16530) mapValue!53867)) b!1301421))

(assert (= (and mapNonEmpty!53861 ((_ is ValueCellFull!16530) mapDefault!53867)) b!1301422))

(declare-fun m!1192167 () Bool)

(assert (=> mapNonEmpty!53867 m!1192167))

(declare-fun b_lambda!23209 () Bool)

(assert (= b_lambda!23203 (or (and start!109860 b_free!29217) b_lambda!23209)))

(declare-fun b_lambda!23211 () Bool)

(assert (= b_lambda!23205 (or (and start!109860 b_free!29217) b_lambda!23211)))

(declare-fun b_lambda!23213 () Bool)

(assert (= b_lambda!23207 (or (and start!109860 b_free!29217) b_lambda!23213)))

(check-sat (not b!1301291) (not b!1301333) (not b!1301411) (not b_lambda!23213) (not d!141135) (not d!141137) (not b!1301414) (not b!1301332) (not d!141119) (not bm!63926) (not d!141145) (not bm!63949) (not b!1301307) (not b!1301299) (not d!141143) (not bm!63947) (not b!1301312) (not b!1301403) (not b_lambda!23209) (not d!141127) (not b!1301290) (not b!1301410) (not d!141123) (not b!1301260) (not b!1301325) (not b!1301343) (not b!1301392) (not b!1301395) (not b!1301296) (not b!1301309) (not bm!63953) (not b!1301321) (not b!1301394) (not d!141129) (not b!1301262) b_and!47355 (not b!1301324) (not b!1301401) (not bm!63932) (not b!1301310) (not b!1301397) (not b!1301342) (not b_lambda!23211) (not b!1301289) tp_is_empty!34857 (not b!1301391) (not bm!63948) (not b!1301294) (not d!141131) (not bm!63929) (not d!141121) (not b!1301346) (not b!1301264) (not d!141141) (not b!1301344) (not b!1301295) (not b!1301327) (not b_next!29217) (not b_lambda!23201) (not d!141117) (not d!141139) (not b!1301298) (not mapNonEmpty!53867) (not b!1301405) (not b!1301412))
(check-sat b_and!47355 (not b_next!29217))
(get-model)

(assert (=> d!141123 d!141121))

(declare-fun d!141149 () Bool)

(assert (=> d!141149 (not (contains!8276 (ListLongMap!20400 Nil!29883) k0!1205))))

(assert (=> d!141149 true))

(declare-fun _$29!192 () Unit!43012)

(assert (=> d!141149 (= (choose!1912 k0!1205) _$29!192)))

(declare-fun bs!37045 () Bool)

(assert (= bs!37045 d!141149))

(assert (=> bs!37045 m!1191927))

(assert (=> d!141123 d!141149))

(declare-fun d!141151 () Bool)

(declare-fun e!742329 () Bool)

(assert (=> d!141151 e!742329))

(declare-fun res!864714 () Bool)

(assert (=> d!141151 (=> res!864714 e!742329)))

(declare-fun lt!582005 () Bool)

(assert (=> d!141151 (= res!864714 (not lt!582005))))

(declare-fun lt!582002 () Bool)

(assert (=> d!141151 (= lt!582005 lt!582002)))

(declare-fun lt!582003 () Unit!43012)

(declare-fun e!742328 () Unit!43012)

(assert (=> d!141151 (= lt!582003 e!742328)))

(declare-fun c!124723 () Bool)

(assert (=> d!141151 (= c!124723 lt!582002)))

(assert (=> d!141151 (= lt!582002 (containsKey!720 (toList!10215 lt!581980) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141151 (= (contains!8276 lt!581980 #b0000000000000000000000000000000000000000000000000000000000000000) lt!582005)))

(declare-fun b!1301423 () Bool)

(declare-fun lt!582004 () Unit!43012)

(assert (=> b!1301423 (= e!742328 lt!582004)))

(assert (=> b!1301423 (= lt!582004 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581980) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301423 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301424 () Bool)

(declare-fun Unit!43024 () Unit!43012)

(assert (=> b!1301424 (= e!742328 Unit!43024)))

(declare-fun b!1301425 () Bool)

(assert (=> b!1301425 (= e!742329 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141151 c!124723) b!1301423))

(assert (= (and d!141151 (not c!124723)) b!1301424))

(assert (= (and d!141151 (not res!864714)) b!1301425))

(declare-fun m!1192169 () Bool)

(assert (=> d!141151 m!1192169))

(declare-fun m!1192171 () Bool)

(assert (=> b!1301423 m!1192171))

(declare-fun m!1192173 () Bool)

(assert (=> b!1301423 m!1192173))

(assert (=> b!1301423 m!1192173))

(declare-fun m!1192175 () Bool)

(assert (=> b!1301423 m!1192175))

(assert (=> b!1301425 m!1192173))

(assert (=> b!1301425 m!1192173))

(assert (=> b!1301425 m!1192175))

(assert (=> bm!63948 d!141151))

(assert (=> b!1301394 d!141147))

(declare-fun b!1301426 () Bool)

(declare-fun res!864716 () Bool)

(declare-fun e!742335 () Bool)

(assert (=> b!1301426 (=> (not res!864716) (not e!742335))))

(declare-fun lt!582012 () ListLongMap!20399)

(assert (=> b!1301426 (= res!864716 (not (contains!8276 lt!582012 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301427 () Bool)

(declare-fun e!742336 () ListLongMap!20399)

(declare-fun e!742333 () ListLongMap!20399)

(assert (=> b!1301427 (= e!742336 e!742333)))

(declare-fun c!124726 () Bool)

(assert (=> b!1301427 (= c!124726 (validKeyInArray!0 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(declare-fun e!742331 () Bool)

(declare-fun b!1301428 () Bool)

(assert (=> b!1301428 (= e!742331 (= lt!582012 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun bm!63954 () Bool)

(declare-fun call!63957 () ListLongMap!20399)

(assert (=> bm!63954 (= call!63957 (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1301429 () Bool)

(declare-fun e!742334 () Bool)

(assert (=> b!1301429 (= e!742334 e!742331)))

(declare-fun c!124727 () Bool)

(assert (=> b!1301429 (= c!124727 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(declare-fun d!141153 () Bool)

(assert (=> d!141153 e!742335))

(declare-fun res!864717 () Bool)

(assert (=> d!141153 (=> (not res!864717) (not e!742335))))

(assert (=> d!141153 (= res!864717 (not (contains!8276 lt!582012 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141153 (= lt!582012 e!742336)))

(declare-fun c!124724 () Bool)

(assert (=> d!141153 (= c!124724 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(assert (=> d!141153 (validMask!0 mask!2175)))

(assert (=> d!141153 (= (getCurrentListMapNoExtraKeys!6152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) lt!582012)))

(declare-fun b!1301430 () Bool)

(assert (=> b!1301430 (= e!742333 call!63957)))

(declare-fun b!1301431 () Bool)

(declare-fun lt!582009 () Unit!43012)

(declare-fun lt!582007 () Unit!43012)

(assert (=> b!1301431 (= lt!582009 lt!582007)))

(declare-fun lt!582010 () V!51579)

(declare-fun lt!582011 () (_ BitVec 64))

(declare-fun lt!582008 () ListLongMap!20399)

(declare-fun lt!582006 () (_ BitVec 64))

(assert (=> b!1301431 (not (contains!8276 (+!4439 lt!582008 (tuple2!22731 lt!582011 lt!582010)) lt!582006))))

(assert (=> b!1301431 (= lt!582007 (addStillNotContains!465 lt!582008 lt!582011 lt!582010 lt!582006))))

(assert (=> b!1301431 (= lt!582006 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1301431 (= lt!582010 (get!21173 (select (arr!41833 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1301431 (= lt!582011 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (=> b!1301431 (= lt!582008 call!63957)))

(assert (=> b!1301431 (= e!742333 (+!4439 call!63957 (tuple2!22731 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)) (get!21173 (select (arr!41833 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1301432 () Bool)

(assert (=> b!1301432 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(assert (=> b!1301432 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42384 _values!1445)))))

(declare-fun e!742332 () Bool)

(assert (=> b!1301432 (= e!742332 (= (apply!1052 lt!582012 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))) (get!21173 (select (arr!41833 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1301433 () Bool)

(assert (=> b!1301433 (= e!742331 (isEmpty!1056 lt!582012))))

(declare-fun b!1301434 () Bool)

(assert (=> b!1301434 (= e!742336 (ListLongMap!20400 Nil!29883))))

(declare-fun b!1301435 () Bool)

(declare-fun e!742330 () Bool)

(assert (=> b!1301435 (= e!742330 (validKeyInArray!0 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1301435 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1301436 () Bool)

(assert (=> b!1301436 (= e!742334 e!742332)))

(assert (=> b!1301436 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(declare-fun res!864718 () Bool)

(assert (=> b!1301436 (= res!864718 (contains!8276 lt!582012 (select (arr!41834 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1301436 (=> (not res!864718) (not e!742332))))

(declare-fun b!1301437 () Bool)

(assert (=> b!1301437 (= e!742335 e!742334)))

(declare-fun c!124725 () Bool)

(assert (=> b!1301437 (= c!124725 e!742330)))

(declare-fun res!864715 () Bool)

(assert (=> b!1301437 (=> (not res!864715) (not e!742330))))

(assert (=> b!1301437 (= res!864715 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(assert (= (and d!141153 c!124724) b!1301434))

(assert (= (and d!141153 (not c!124724)) b!1301427))

(assert (= (and b!1301427 c!124726) b!1301431))

(assert (= (and b!1301427 (not c!124726)) b!1301430))

(assert (= (or b!1301431 b!1301430) bm!63954))

(assert (= (and d!141153 res!864717) b!1301426))

(assert (= (and b!1301426 res!864716) b!1301437))

(assert (= (and b!1301437 res!864715) b!1301435))

(assert (= (and b!1301437 c!124725) b!1301436))

(assert (= (and b!1301437 (not c!124725)) b!1301429))

(assert (= (and b!1301436 res!864718) b!1301432))

(assert (= (and b!1301429 c!124727) b!1301428))

(assert (= (and b!1301429 (not c!124727)) b!1301433))

(declare-fun b_lambda!23215 () Bool)

(assert (=> (not b_lambda!23215) (not b!1301431)))

(assert (=> b!1301431 t!43470))

(declare-fun b_and!47357 () Bool)

(assert (= b_and!47355 (and (=> t!43470 result!23781) b_and!47357)))

(declare-fun b_lambda!23217 () Bool)

(assert (=> (not b_lambda!23217) (not b!1301432)))

(assert (=> b!1301432 t!43470))

(declare-fun b_and!47359 () Bool)

(assert (= b_and!47357 (and (=> t!43470 result!23781) b_and!47359)))

(declare-fun m!1192177 () Bool)

(assert (=> d!141153 m!1192177))

(assert (=> d!141153 m!1191943))

(declare-fun m!1192179 () Bool)

(assert (=> b!1301436 m!1192179))

(assert (=> b!1301436 m!1192179))

(declare-fun m!1192181 () Bool)

(assert (=> b!1301436 m!1192181))

(assert (=> b!1301432 m!1192179))

(declare-fun m!1192183 () Bool)

(assert (=> b!1301432 m!1192183))

(assert (=> b!1301432 m!1192179))

(declare-fun m!1192185 () Bool)

(assert (=> b!1301432 m!1192185))

(assert (=> b!1301432 m!1191933))

(declare-fun m!1192187 () Bool)

(assert (=> b!1301432 m!1192187))

(assert (=> b!1301432 m!1191933))

(assert (=> b!1301432 m!1192185))

(declare-fun m!1192189 () Bool)

(assert (=> b!1301428 m!1192189))

(assert (=> b!1301435 m!1192179))

(assert (=> b!1301435 m!1192179))

(declare-fun m!1192191 () Bool)

(assert (=> b!1301435 m!1192191))

(assert (=> b!1301427 m!1192179))

(assert (=> b!1301427 m!1192179))

(assert (=> b!1301427 m!1192191))

(assert (=> bm!63954 m!1192189))

(assert (=> b!1301431 m!1192179))

(declare-fun m!1192193 () Bool)

(assert (=> b!1301431 m!1192193))

(declare-fun m!1192195 () Bool)

(assert (=> b!1301431 m!1192195))

(assert (=> b!1301431 m!1192185))

(assert (=> b!1301431 m!1191933))

(assert (=> b!1301431 m!1192187))

(declare-fun m!1192197 () Bool)

(assert (=> b!1301431 m!1192197))

(assert (=> b!1301431 m!1191933))

(assert (=> b!1301431 m!1192197))

(declare-fun m!1192199 () Bool)

(assert (=> b!1301431 m!1192199))

(assert (=> b!1301431 m!1192185))

(declare-fun m!1192201 () Bool)

(assert (=> b!1301426 m!1192201))

(declare-fun m!1192203 () Bool)

(assert (=> b!1301433 m!1192203))

(assert (=> b!1301291 d!141153))

(assert (=> b!1301298 d!141147))

(declare-fun b!1301438 () Bool)

(declare-fun e!742337 () Bool)

(declare-fun e!742340 () Bool)

(assert (=> b!1301438 (= e!742337 e!742340)))

(declare-fun c!124728 () Bool)

(assert (=> b!1301438 (= c!124728 (validKeyInArray!0 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1301439 () Bool)

(declare-fun call!63958 () Bool)

(assert (=> b!1301439 (= e!742340 call!63958)))

(declare-fun bm!63955 () Bool)

(assert (=> bm!63955 (= call!63958 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!124728 (Cons!29883 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!124679 (Cons!29883 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) Nil!29884) Nil!29884)) (ite c!124679 (Cons!29883 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) Nil!29884) Nil!29884))))))

(declare-fun d!141155 () Bool)

(declare-fun res!864719 () Bool)

(declare-fun e!742338 () Bool)

(assert (=> d!141155 (=> res!864719 e!742338)))

(assert (=> d!141155 (= res!864719 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(assert (=> d!141155 (= (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124679 (Cons!29883 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) Nil!29884) Nil!29884)) e!742338)))

(declare-fun b!1301440 () Bool)

(assert (=> b!1301440 (= e!742338 e!742337)))

(declare-fun res!864720 () Bool)

(assert (=> b!1301440 (=> (not res!864720) (not e!742337))))

(declare-fun e!742339 () Bool)

(assert (=> b!1301440 (= res!864720 (not e!742339))))

(declare-fun res!864721 () Bool)

(assert (=> b!1301440 (=> (not res!864721) (not e!742339))))

(assert (=> b!1301440 (= res!864721 (validKeyInArray!0 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1301441 () Bool)

(assert (=> b!1301441 (= e!742340 call!63958)))

(declare-fun b!1301442 () Bool)

(assert (=> b!1301442 (= e!742339 (contains!8278 (ite c!124679 (Cons!29883 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) Nil!29884) Nil!29884) (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!141155 (not res!864719)) b!1301440))

(assert (= (and b!1301440 res!864721) b!1301442))

(assert (= (and b!1301440 res!864720) b!1301438))

(assert (= (and b!1301438 c!124728) b!1301441))

(assert (= (and b!1301438 (not c!124728)) b!1301439))

(assert (= (or b!1301441 b!1301439) bm!63955))

(declare-fun m!1192205 () Bool)

(assert (=> b!1301438 m!1192205))

(assert (=> b!1301438 m!1192205))

(declare-fun m!1192207 () Bool)

(assert (=> b!1301438 m!1192207))

(assert (=> bm!63955 m!1192205))

(declare-fun m!1192209 () Bool)

(assert (=> bm!63955 m!1192209))

(assert (=> b!1301440 m!1192205))

(assert (=> b!1301440 m!1192205))

(assert (=> b!1301440 m!1192207))

(assert (=> b!1301442 m!1192205))

(assert (=> b!1301442 m!1192205))

(declare-fun m!1192211 () Bool)

(assert (=> b!1301442 m!1192211))

(assert (=> bm!63926 d!141155))

(declare-fun d!141157 () Bool)

(declare-fun e!742341 () Bool)

(assert (=> d!141157 e!742341))

(declare-fun res!864723 () Bool)

(assert (=> d!141157 (=> (not res!864723) (not e!742341))))

(declare-fun lt!582014 () ListLongMap!20399)

(assert (=> d!141157 (= res!864723 (contains!8276 lt!582014 (_1!11375 (tuple2!22731 lt!581871 lt!581870))))))

(declare-fun lt!582015 () List!29886)

(assert (=> d!141157 (= lt!582014 (ListLongMap!20400 lt!582015))))

(declare-fun lt!582013 () Unit!43012)

(declare-fun lt!582016 () Unit!43012)

(assert (=> d!141157 (= lt!582013 lt!582016)))

(assert (=> d!141157 (= (getValueByKey!702 lt!582015 (_1!11375 (tuple2!22731 lt!581871 lt!581870))) (Some!752 (_2!11375 (tuple2!22731 lt!581871 lt!581870))))))

(assert (=> d!141157 (= lt!582016 (lemmaContainsTupThenGetReturnValue!346 lt!582015 (_1!11375 (tuple2!22731 lt!581871 lt!581870)) (_2!11375 (tuple2!22731 lt!581871 lt!581870))))))

(assert (=> d!141157 (= lt!582015 (insertStrictlySorted!475 (toList!10215 lt!581868) (_1!11375 (tuple2!22731 lt!581871 lt!581870)) (_2!11375 (tuple2!22731 lt!581871 lt!581870))))))

(assert (=> d!141157 (= (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870)) lt!582014)))

(declare-fun b!1301443 () Bool)

(declare-fun res!864722 () Bool)

(assert (=> b!1301443 (=> (not res!864722) (not e!742341))))

(assert (=> b!1301443 (= res!864722 (= (getValueByKey!702 (toList!10215 lt!582014) (_1!11375 (tuple2!22731 lt!581871 lt!581870))) (Some!752 (_2!11375 (tuple2!22731 lt!581871 lt!581870)))))))

(declare-fun b!1301444 () Bool)

(assert (=> b!1301444 (= e!742341 (contains!8279 (toList!10215 lt!582014) (tuple2!22731 lt!581871 lt!581870)))))

(assert (= (and d!141157 res!864723) b!1301443))

(assert (= (and b!1301443 res!864722) b!1301444))

(declare-fun m!1192213 () Bool)

(assert (=> d!141157 m!1192213))

(declare-fun m!1192215 () Bool)

(assert (=> d!141157 m!1192215))

(declare-fun m!1192217 () Bool)

(assert (=> d!141157 m!1192217))

(declare-fun m!1192219 () Bool)

(assert (=> d!141157 m!1192219))

(declare-fun m!1192221 () Bool)

(assert (=> b!1301443 m!1192221))

(declare-fun m!1192223 () Bool)

(assert (=> b!1301444 m!1192223))

(assert (=> b!1301294 d!141157))

(declare-fun d!141159 () Bool)

(assert (=> d!141159 (not (contains!8276 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870)) lt!581866))))

(declare-fun lt!582017 () Unit!43012)

(assert (=> d!141159 (= lt!582017 (choose!1913 lt!581868 lt!581871 lt!581870 lt!581866))))

(declare-fun e!742342 () Bool)

(assert (=> d!141159 e!742342))

(declare-fun res!864724 () Bool)

(assert (=> d!141159 (=> (not res!864724) (not e!742342))))

(assert (=> d!141159 (= res!864724 (not (contains!8276 lt!581868 lt!581866)))))

(assert (=> d!141159 (= (addStillNotContains!465 lt!581868 lt!581871 lt!581870 lt!581866) lt!582017)))

(declare-fun b!1301445 () Bool)

(assert (=> b!1301445 (= e!742342 (not (= lt!581871 lt!581866)))))

(assert (= (and d!141159 res!864724) b!1301445))

(assert (=> d!141159 m!1192023))

(assert (=> d!141159 m!1192023))

(assert (=> d!141159 m!1192025))

(declare-fun m!1192225 () Bool)

(assert (=> d!141159 m!1192225))

(declare-fun m!1192227 () Bool)

(assert (=> d!141159 m!1192227))

(assert (=> b!1301294 d!141159))

(declare-fun d!141161 () Bool)

(declare-fun e!742344 () Bool)

(assert (=> d!141161 e!742344))

(declare-fun res!864725 () Bool)

(assert (=> d!141161 (=> res!864725 e!742344)))

(declare-fun lt!582021 () Bool)

(assert (=> d!141161 (= res!864725 (not lt!582021))))

(declare-fun lt!582018 () Bool)

(assert (=> d!141161 (= lt!582021 lt!582018)))

(declare-fun lt!582019 () Unit!43012)

(declare-fun e!742343 () Unit!43012)

(assert (=> d!141161 (= lt!582019 e!742343)))

(declare-fun c!124729 () Bool)

(assert (=> d!141161 (= c!124729 lt!582018)))

(assert (=> d!141161 (= lt!582018 (containsKey!720 (toList!10215 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870))) lt!581866))))

(assert (=> d!141161 (= (contains!8276 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870)) lt!581866) lt!582021)))

(declare-fun b!1301446 () Bool)

(declare-fun lt!582020 () Unit!43012)

(assert (=> b!1301446 (= e!742343 lt!582020)))

(assert (=> b!1301446 (= lt!582020 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870))) lt!581866))))

(assert (=> b!1301446 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870))) lt!581866))))

(declare-fun b!1301447 () Bool)

(declare-fun Unit!43025 () Unit!43012)

(assert (=> b!1301447 (= e!742343 Unit!43025)))

(declare-fun b!1301448 () Bool)

(assert (=> b!1301448 (= e!742344 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581868 (tuple2!22731 lt!581871 lt!581870))) lt!581866)))))

(assert (= (and d!141161 c!124729) b!1301446))

(assert (= (and d!141161 (not c!124729)) b!1301447))

(assert (= (and d!141161 (not res!864725)) b!1301448))

(declare-fun m!1192229 () Bool)

(assert (=> d!141161 m!1192229))

(declare-fun m!1192231 () Bool)

(assert (=> b!1301446 m!1192231))

(declare-fun m!1192233 () Bool)

(assert (=> b!1301446 m!1192233))

(assert (=> b!1301446 m!1192233))

(declare-fun m!1192235 () Bool)

(assert (=> b!1301446 m!1192235))

(assert (=> b!1301448 m!1192233))

(assert (=> b!1301448 m!1192233))

(assert (=> b!1301448 m!1192235))

(assert (=> b!1301294 d!141161))

(declare-fun d!141163 () Bool)

(declare-fun e!742345 () Bool)

(assert (=> d!141163 e!742345))

(declare-fun res!864727 () Bool)

(assert (=> d!141163 (=> (not res!864727) (not e!742345))))

(declare-fun lt!582023 () ListLongMap!20399)

(assert (=> d!141163 (= res!864727 (contains!8276 lt!582023 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!582024 () List!29886)

(assert (=> d!141163 (= lt!582023 (ListLongMap!20400 lt!582024))))

(declare-fun lt!582022 () Unit!43012)

(declare-fun lt!582025 () Unit!43012)

(assert (=> d!141163 (= lt!582022 lt!582025)))

(assert (=> d!141163 (= (getValueByKey!702 lt!582024 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!752 (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141163 (= lt!582025 (lemmaContainsTupThenGetReturnValue!346 lt!582024 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141163 (= lt!582024 (insertStrictlySorted!475 (toList!10215 call!63932) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141163 (= (+!4439 call!63932 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!582023)))

(declare-fun b!1301449 () Bool)

(declare-fun res!864726 () Bool)

(assert (=> b!1301449 (=> (not res!864726) (not e!742345))))

(assert (=> b!1301449 (= res!864726 (= (getValueByKey!702 (toList!10215 lt!582023) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!752 (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1301450 () Bool)

(assert (=> b!1301450 (= e!742345 (contains!8279 (toList!10215 lt!582023) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) (get!21173 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!141163 res!864727) b!1301449))

(assert (= (and b!1301449 res!864726) b!1301450))

(declare-fun m!1192237 () Bool)

(assert (=> d!141163 m!1192237))

(declare-fun m!1192239 () Bool)

(assert (=> d!141163 m!1192239))

(declare-fun m!1192241 () Bool)

(assert (=> d!141163 m!1192241))

(declare-fun m!1192243 () Bool)

(assert (=> d!141163 m!1192243))

(declare-fun m!1192245 () Bool)

(assert (=> b!1301449 m!1192245))

(declare-fun m!1192247 () Bool)

(assert (=> b!1301450 m!1192247))

(assert (=> b!1301294 d!141163))

(assert (=> b!1301294 d!141133))

(declare-fun d!141165 () Bool)

(assert (=> d!141165 (= (validKeyInArray!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)) (and (not (= (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1301260 d!141165))

(declare-fun d!141167 () Bool)

(declare-fun isEmpty!1057 (List!29886) Bool)

(assert (=> d!141167 (= (isEmpty!1056 lt!581872) (isEmpty!1057 (toList!10215 lt!581872)))))

(declare-fun bs!37046 () Bool)

(assert (= bs!37046 d!141167))

(declare-fun m!1192249 () Bool)

(assert (=> bs!37046 m!1192249))

(assert (=> b!1301296 d!141167))

(declare-fun d!141169 () Bool)

(declare-fun isEmpty!1058 (Option!753) Bool)

(assert (=> d!141169 (= (isDefined!505 (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205)) (not (isEmpty!1058 (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))))

(declare-fun bs!37047 () Bool)

(assert (= bs!37047 d!141169))

(assert (=> bs!37047 m!1192035))

(declare-fun m!1192251 () Bool)

(assert (=> bs!37047 m!1192251))

(assert (=> b!1301309 d!141169))

(declare-fun d!141171 () Bool)

(declare-fun c!124734 () Bool)

(assert (=> d!141171 (= c!124734 (and ((_ is Cons!29882) (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) (= (_1!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) k0!1205)))))

(declare-fun e!742350 () Option!753)

(assert (=> d!141171 (= (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205) e!742350)))

(declare-fun e!742351 () Option!753)

(declare-fun b!1301461 () Bool)

(assert (=> b!1301461 (= e!742351 (getValueByKey!702 (t!43471 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) k0!1205))))

(declare-fun b!1301460 () Bool)

(assert (=> b!1301460 (= e!742350 e!742351)))

(declare-fun c!124735 () Bool)

(assert (=> b!1301460 (= c!124735 (and ((_ is Cons!29882) (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) (not (= (_1!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) k0!1205))))))

(declare-fun b!1301462 () Bool)

(assert (=> b!1301462 (= e!742351 None!751)))

(declare-fun b!1301459 () Bool)

(assert (=> b!1301459 (= e!742350 (Some!752 (_2!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))))))))

(assert (= (and d!141171 c!124734) b!1301459))

(assert (= (and d!141171 (not c!124734)) b!1301460))

(assert (= (and b!1301460 c!124735) b!1301461))

(assert (= (and b!1301460 (not c!124735)) b!1301462))

(declare-fun m!1192253 () Bool)

(assert (=> b!1301461 m!1192253))

(assert (=> b!1301309 d!141171))

(declare-fun d!141173 () Bool)

(assert (=> d!141173 (= (get!21175 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301343 d!141173))

(declare-fun d!141175 () Bool)

(assert (=> d!141175 (isDefined!505 (getValueByKey!702 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(declare-fun lt!582028 () Unit!43012)

(declare-fun choose!1915 (List!29886 (_ BitVec 64)) Unit!43012)

(assert (=> d!141175 (= lt!582028 (choose!1915 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(declare-fun e!742354 () Bool)

(assert (=> d!141175 e!742354))

(declare-fun res!864730 () Bool)

(assert (=> d!141175 (=> (not res!864730) (not e!742354))))

(declare-fun isStrictlySorted!867 (List!29886) Bool)

(assert (=> d!141175 (= res!864730 (isStrictlySorted!867 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))))))

(assert (=> d!141175 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205) lt!582028)))

(declare-fun b!1301465 () Bool)

(assert (=> b!1301465 (= e!742354 (containsKey!720 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205))))

(assert (= (and d!141175 res!864730) b!1301465))

(assert (=> d!141175 m!1192035))

(assert (=> d!141175 m!1192035))

(assert (=> d!141175 m!1192037))

(declare-fun m!1192255 () Bool)

(assert (=> d!141175 m!1192255))

(declare-fun m!1192257 () Bool)

(assert (=> d!141175 m!1192257))

(assert (=> b!1301465 m!1192031))

(assert (=> b!1301307 d!141175))

(assert (=> b!1301307 d!141169))

(assert (=> b!1301307 d!141171))

(declare-fun d!141177 () Bool)

(declare-fun get!21176 (Option!753) V!51579)

(assert (=> d!141177 (= (apply!1052 lt!581980 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21176 (getValueByKey!702 (toList!10215 lt!581980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37048 () Bool)

(assert (= bs!37048 d!141177))

(assert (=> bs!37048 m!1192173))

(assert (=> bs!37048 m!1192173))

(declare-fun m!1192259 () Bool)

(assert (=> bs!37048 m!1192259))

(assert (=> b!1301401 d!141177))

(declare-fun d!141179 () Bool)

(declare-fun lt!582031 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!650 (List!29886) (InoxSet tuple2!22730))

(assert (=> d!141179 (= lt!582031 (select (content!650 (toList!10215 lt!581994)) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun e!742359 () Bool)

(assert (=> d!141179 (= lt!582031 e!742359)))

(declare-fun res!864736 () Bool)

(assert (=> d!141179 (=> (not res!864736) (not e!742359))))

(assert (=> d!141179 (= res!864736 ((_ is Cons!29882) (toList!10215 lt!581994)))))

(assert (=> d!141179 (= (contains!8279 (toList!10215 lt!581994) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!582031)))

(declare-fun b!1301470 () Bool)

(declare-fun e!742360 () Bool)

(assert (=> b!1301470 (= e!742359 e!742360)))

(declare-fun res!864735 () Bool)

(assert (=> b!1301470 (=> res!864735 e!742360)))

(assert (=> b!1301470 (= res!864735 (= (h!31091 (toList!10215 lt!581994)) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1301471 () Bool)

(assert (=> b!1301471 (= e!742360 (contains!8279 (t!43471 (toList!10215 lt!581994)) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141179 res!864736) b!1301470))

(assert (= (and b!1301470 (not res!864735)) b!1301471))

(declare-fun m!1192261 () Bool)

(assert (=> d!141179 m!1192261))

(declare-fun m!1192263 () Bool)

(assert (=> d!141179 m!1192263))

(declare-fun m!1192265 () Bool)

(assert (=> b!1301471 m!1192265))

(assert (=> b!1301411 d!141179))

(declare-fun d!141181 () Bool)

(assert (=> d!141181 (arrayContainsKey!0 _keys!1741 lt!581900 #b00000000000000000000000000000000)))

(declare-fun lt!582034 () Unit!43012)

(declare-fun choose!13 (array!86685 (_ BitVec 64) (_ BitVec 32)) Unit!43012)

(assert (=> d!141181 (= lt!582034 (choose!13 _keys!1741 lt!581900 #b00000000000000000000000000000000))))

(assert (=> d!141181 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!141181 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!581900 #b00000000000000000000000000000000) lt!582034)))

(declare-fun bs!37049 () Bool)

(assert (= bs!37049 d!141181))

(assert (=> bs!37049 m!1192053))

(declare-fun m!1192267 () Bool)

(assert (=> bs!37049 m!1192267))

(assert (=> b!1301321 d!141181))

(declare-fun d!141183 () Bool)

(declare-fun res!864741 () Bool)

(declare-fun e!742365 () Bool)

(assert (=> d!141183 (=> res!864741 e!742365)))

(assert (=> d!141183 (= res!864741 (= (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) lt!581900))))

(assert (=> d!141183 (= (arrayContainsKey!0 _keys!1741 lt!581900 #b00000000000000000000000000000000) e!742365)))

(declare-fun b!1301476 () Bool)

(declare-fun e!742366 () Bool)

(assert (=> b!1301476 (= e!742365 e!742366)))

(declare-fun res!864742 () Bool)

(assert (=> b!1301476 (=> (not res!864742) (not e!742366))))

(assert (=> b!1301476 (= res!864742 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(declare-fun b!1301477 () Bool)

(assert (=> b!1301477 (= e!742366 (arrayContainsKey!0 _keys!1741 lt!581900 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!141183 (not res!864741)) b!1301476))

(assert (= (and b!1301476 res!864742) b!1301477))

(assert (=> d!141183 m!1192003))

(declare-fun m!1192269 () Bool)

(assert (=> b!1301477 m!1192269))

(assert (=> b!1301321 d!141183))

(declare-fun b!1301490 () Bool)

(declare-fun e!742374 () SeekEntryResult!10017)

(assert (=> b!1301490 (= e!742374 Undefined!10017)))

(declare-fun lt!582043 () SeekEntryResult!10017)

(declare-fun e!742373 () SeekEntryResult!10017)

(declare-fun b!1301491 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86685 (_ BitVec 32)) SeekEntryResult!10017)

(assert (=> b!1301491 (= e!742373 (seekKeyOrZeroReturnVacant!0 (x!115585 lt!582043) (index!42440 lt!582043) (index!42440 lt!582043) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(declare-fun b!1301492 () Bool)

(assert (=> b!1301492 (= e!742373 (MissingZero!10017 (index!42440 lt!582043)))))

(declare-fun b!1301493 () Bool)

(declare-fun e!742375 () SeekEntryResult!10017)

(assert (=> b!1301493 (= e!742374 e!742375)))

(declare-fun lt!582042 () (_ BitVec 64))

(assert (=> b!1301493 (= lt!582042 (select (arr!41834 _keys!1741) (index!42440 lt!582043)))))

(declare-fun c!124742 () Bool)

(assert (=> b!1301493 (= c!124742 (= lt!582042 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1301494 () Bool)

(assert (=> b!1301494 (= e!742375 (Found!10017 (index!42440 lt!582043)))))

(declare-fun d!141185 () Bool)

(declare-fun lt!582041 () SeekEntryResult!10017)

(assert (=> d!141185 (and (or ((_ is Undefined!10017) lt!582041) (not ((_ is Found!10017) lt!582041)) (and (bvsge (index!42439 lt!582041) #b00000000000000000000000000000000) (bvslt (index!42439 lt!582041) (size!42385 _keys!1741)))) (or ((_ is Undefined!10017) lt!582041) ((_ is Found!10017) lt!582041) (not ((_ is MissingZero!10017) lt!582041)) (and (bvsge (index!42438 lt!582041) #b00000000000000000000000000000000) (bvslt (index!42438 lt!582041) (size!42385 _keys!1741)))) (or ((_ is Undefined!10017) lt!582041) ((_ is Found!10017) lt!582041) ((_ is MissingZero!10017) lt!582041) (not ((_ is MissingVacant!10017) lt!582041)) (and (bvsge (index!42441 lt!582041) #b00000000000000000000000000000000) (bvslt (index!42441 lt!582041) (size!42385 _keys!1741)))) (or ((_ is Undefined!10017) lt!582041) (ite ((_ is Found!10017) lt!582041) (= (select (arr!41834 _keys!1741) (index!42439 lt!582041)) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10017) lt!582041) (= (select (arr!41834 _keys!1741) (index!42438 lt!582041)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10017) lt!582041) (= (select (arr!41834 _keys!1741) (index!42441 lt!582041)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141185 (= lt!582041 e!742374)))

(declare-fun c!124744 () Bool)

(assert (=> d!141185 (= c!124744 (and ((_ is Intermediate!10017) lt!582043) (undefined!10829 lt!582043)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86685 (_ BitVec 32)) SeekEntryResult!10017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!141185 (= lt!582043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) mask!2175) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(assert (=> d!141185 (validMask!0 mask!2175)))

(assert (=> d!141185 (= (seekEntryOrOpen!0 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) lt!582041)))

(declare-fun b!1301495 () Bool)

(declare-fun c!124743 () Bool)

(assert (=> b!1301495 (= c!124743 (= lt!582042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301495 (= e!742375 e!742373)))

(assert (= (and d!141185 c!124744) b!1301490))

(assert (= (and d!141185 (not c!124744)) b!1301493))

(assert (= (and b!1301493 c!124742) b!1301494))

(assert (= (and b!1301493 (not c!124742)) b!1301495))

(assert (= (and b!1301495 c!124743) b!1301492))

(assert (= (and b!1301495 (not c!124743)) b!1301491))

(assert (=> b!1301491 m!1192003))

(declare-fun m!1192271 () Bool)

(assert (=> b!1301491 m!1192271))

(declare-fun m!1192273 () Bool)

(assert (=> b!1301493 m!1192273))

(assert (=> d!141185 m!1192003))

(declare-fun m!1192275 () Bool)

(assert (=> d!141185 m!1192275))

(declare-fun m!1192277 () Bool)

(assert (=> d!141185 m!1192277))

(assert (=> d!141185 m!1192275))

(assert (=> d!141185 m!1192003))

(declare-fun m!1192279 () Bool)

(assert (=> d!141185 m!1192279))

(assert (=> d!141185 m!1191943))

(declare-fun m!1192281 () Bool)

(assert (=> d!141185 m!1192281))

(declare-fun m!1192283 () Bool)

(assert (=> d!141185 m!1192283))

(assert (=> b!1301321 d!141185))

(declare-fun b!1301497 () Bool)

(declare-fun e!742378 () Bool)

(declare-fun call!63959 () Bool)

(assert (=> b!1301497 (= e!742378 call!63959)))

(declare-fun bm!63956 () Bool)

(assert (=> bm!63956 (= call!63959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1301498 () Bool)

(declare-fun e!742376 () Bool)

(assert (=> b!1301498 (= e!742376 call!63959)))

(declare-fun b!1301499 () Bool)

(declare-fun e!742377 () Bool)

(assert (=> b!1301499 (= e!742377 e!742376)))

(declare-fun c!124745 () Bool)

(assert (=> b!1301499 (= c!124745 (validKeyInArray!0 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1301496 () Bool)

(assert (=> b!1301496 (= e!742376 e!742378)))

(declare-fun lt!582046 () (_ BitVec 64))

(assert (=> b!1301496 (= lt!582046 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!582044 () Unit!43012)

(assert (=> b!1301496 (= lt!582044 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582046 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1301496 (arrayContainsKey!0 _keys!1741 lt!582046 #b00000000000000000000000000000000)))

(declare-fun lt!582045 () Unit!43012)

(assert (=> b!1301496 (= lt!582045 lt!582044)))

(declare-fun res!864744 () Bool)

(assert (=> b!1301496 (= res!864744 (= (seekEntryOrOpen!0 (select (arr!41834 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1741 mask!2175) (Found!10017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1301496 (=> (not res!864744) (not e!742378))))

(declare-fun d!141187 () Bool)

(declare-fun res!864743 () Bool)

(assert (=> d!141187 (=> res!864743 e!742377)))

(assert (=> d!141187 (= res!864743 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42385 _keys!1741)))))

(assert (=> d!141187 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175) e!742377)))

(assert (= (and d!141187 (not res!864743)) b!1301499))

(assert (= (and b!1301499 c!124745) b!1301496))

(assert (= (and b!1301499 (not c!124745)) b!1301498))

(assert (= (and b!1301496 res!864744) b!1301497))

(assert (= (or b!1301497 b!1301498) bm!63956))

(declare-fun m!1192285 () Bool)

(assert (=> bm!63956 m!1192285))

(assert (=> b!1301499 m!1192205))

(assert (=> b!1301499 m!1192205))

(assert (=> b!1301499 m!1192207))

(assert (=> b!1301496 m!1192205))

(declare-fun m!1192287 () Bool)

(assert (=> b!1301496 m!1192287))

(declare-fun m!1192289 () Bool)

(assert (=> b!1301496 m!1192289))

(assert (=> b!1301496 m!1192205))

(declare-fun m!1192291 () Bool)

(assert (=> b!1301496 m!1192291))

(assert (=> bm!63932 d!141187))

(declare-fun d!141189 () Bool)

(assert (=> d!141189 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(declare-fun lt!582047 () Unit!43012)

(assert (=> d!141189 (= lt!582047 (choose!1915 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(declare-fun e!742379 () Bool)

(assert (=> d!141189 e!742379))

(declare-fun res!864745 () Bool)

(assert (=> d!141189 (=> (not res!864745) (not e!742379))))

(assert (=> d!141189 (= res!864745 (isStrictlySorted!867 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(assert (=> d!141189 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205) lt!582047)))

(declare-fun b!1301500 () Bool)

(assert (=> b!1301500 (= e!742379 (containsKey!720 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))

(assert (= (and d!141189 res!864745) b!1301500))

(assert (=> d!141189 m!1192061))

(assert (=> d!141189 m!1192061))

(assert (=> d!141189 m!1192063))

(declare-fun m!1192293 () Bool)

(assert (=> d!141189 m!1192293))

(declare-fun m!1192295 () Bool)

(assert (=> d!141189 m!1192295))

(assert (=> b!1301500 m!1192057))

(assert (=> b!1301325 d!141189))

(declare-fun d!141191 () Bool)

(assert (=> d!141191 (= (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205)) (not (isEmpty!1058 (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205))))))

(declare-fun bs!37050 () Bool)

(assert (= bs!37050 d!141191))

(assert (=> bs!37050 m!1192061))

(declare-fun m!1192297 () Bool)

(assert (=> bs!37050 m!1192297))

(assert (=> b!1301325 d!141191))

(declare-fun c!124746 () Bool)

(declare-fun d!141193 () Bool)

(assert (=> d!141193 (= c!124746 (and ((_ is Cons!29882) (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) (= (_1!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) k0!1205)))))

(declare-fun e!742380 () Option!753)

(assert (=> d!141193 (= (getValueByKey!702 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205) e!742380)))

(declare-fun b!1301503 () Bool)

(declare-fun e!742381 () Option!753)

(assert (=> b!1301503 (= e!742381 (getValueByKey!702 (t!43471 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) k0!1205))))

(declare-fun b!1301502 () Bool)

(assert (=> b!1301502 (= e!742380 e!742381)))

(declare-fun c!124747 () Bool)

(assert (=> b!1301502 (= c!124747 (and ((_ is Cons!29882) (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) (not (= (_1!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) k0!1205))))))

(declare-fun b!1301504 () Bool)

(assert (=> b!1301504 (= e!742381 None!751)))

(declare-fun b!1301501 () Bool)

(assert (=> b!1301501 (= e!742380 (Some!752 (_2!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))))

(assert (= (and d!141193 c!124746) b!1301501))

(assert (= (and d!141193 (not c!124746)) b!1301502))

(assert (= (and b!1301502 c!124747) b!1301503))

(assert (= (and b!1301502 (not c!124747)) b!1301504))

(declare-fun m!1192299 () Bool)

(assert (=> b!1301503 m!1192299))

(assert (=> b!1301325 d!141193))

(declare-fun d!141195 () Bool)

(assert (=> d!141195 (= (apply!1052 lt!581980 (select (arr!41834 _keys!1741) from!2144)) (get!21176 (getValueByKey!702 (toList!10215 lt!581980) (select (arr!41834 _keys!1741) from!2144))))))

(declare-fun bs!37051 () Bool)

(assert (= bs!37051 d!141195))

(assert (=> bs!37051 m!1191907))

(declare-fun m!1192301 () Bool)

(assert (=> bs!37051 m!1192301))

(assert (=> bs!37051 m!1192301))

(declare-fun m!1192303 () Bool)

(assert (=> bs!37051 m!1192303))

(assert (=> b!1301392 d!141195))

(assert (=> b!1301392 d!141133))

(assert (=> d!141135 d!141119))

(declare-fun d!141197 () Bool)

(assert (=> d!141197 (contains!8276 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) k0!1205)))

(assert (=> d!141197 true))

(declare-fun _$21!120 () Unit!43012)

(assert (=> d!141197 (= (choose!1914 k0!1205 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)) (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) _$21!120)))

(declare-fun bs!37052 () Bool)

(assert (= bs!37052 d!141197))

(assert (=> bs!37052 m!1191913))

(assert (=> d!141135 d!141197))

(declare-fun d!141199 () Bool)

(declare-fun e!742383 () Bool)

(assert (=> d!141199 e!742383))

(declare-fun res!864746 () Bool)

(assert (=> d!141199 (=> res!864746 e!742383)))

(declare-fun lt!582051 () Bool)

(assert (=> d!141199 (= res!864746 (not lt!582051))))

(declare-fun lt!582048 () Bool)

(assert (=> d!141199 (= lt!582051 lt!582048)))

(declare-fun lt!582049 () Unit!43012)

(declare-fun e!742382 () Unit!43012)

(assert (=> d!141199 (= lt!582049 e!742382)))

(declare-fun c!124748 () Bool)

(assert (=> d!141199 (= c!124748 lt!582048)))

(assert (=> d!141199 (= lt!582048 (containsKey!720 (toList!10215 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) k0!1205))))

(assert (=> d!141199 (= (contains!8276 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))) k0!1205) lt!582051)))

(declare-fun b!1301505 () Bool)

(declare-fun lt!582050 () Unit!43012)

(assert (=> b!1301505 (= e!742382 lt!582050)))

(assert (=> b!1301505 (= lt!582050 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) k0!1205))))

(assert (=> b!1301505 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) k0!1205))))

(declare-fun b!1301506 () Bool)

(declare-fun Unit!43026 () Unit!43012)

(assert (=> b!1301506 (= e!742382 Unit!43026)))

(declare-fun b!1301507 () Bool)

(assert (=> b!1301507 (= e!742383 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) k0!1205)))))

(assert (= (and d!141199 c!124748) b!1301505))

(assert (= (and d!141199 (not c!124748)) b!1301506))

(assert (= (and d!141199 (not res!864746)) b!1301507))

(declare-fun m!1192305 () Bool)

(assert (=> d!141199 m!1192305))

(declare-fun m!1192307 () Bool)

(assert (=> b!1301505 m!1192307))

(declare-fun m!1192309 () Bool)

(assert (=> b!1301505 m!1192309))

(assert (=> b!1301505 m!1192309))

(declare-fun m!1192311 () Bool)

(assert (=> b!1301505 m!1192311))

(assert (=> b!1301507 m!1192309))

(assert (=> b!1301507 m!1192309))

(assert (=> b!1301507 m!1192311))

(assert (=> d!141135 d!141199))

(declare-fun d!141201 () Bool)

(declare-fun e!742384 () Bool)

(assert (=> d!141201 e!742384))

(declare-fun res!864748 () Bool)

(assert (=> d!141201 (=> (not res!864748) (not e!742384))))

(declare-fun lt!582053 () ListLongMap!20399)

(assert (=> d!141201 (= res!864748 (contains!8276 lt!582053 (_1!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))))))

(declare-fun lt!582054 () List!29886)

(assert (=> d!141201 (= lt!582053 (ListLongMap!20400 lt!582054))))

(declare-fun lt!582052 () Unit!43012)

(declare-fun lt!582055 () Unit!43012)

(assert (=> d!141201 (= lt!582052 lt!582055)))

(assert (=> d!141201 (= (getValueByKey!702 lt!582054 (_1!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) (Some!752 (_2!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))))))

(assert (=> d!141201 (= lt!582055 (lemmaContainsTupThenGetReturnValue!346 lt!582054 (_1!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))) (_2!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))))))

(assert (=> d!141201 (= lt!582054 (insertStrictlySorted!475 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) (_1!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))) (_2!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))))))

(assert (=> d!141201 (= (+!4439 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))) lt!582053)))

(declare-fun b!1301508 () Bool)

(declare-fun res!864747 () Bool)

(assert (=> b!1301508 (=> (not res!864747) (not e!742384))))

(assert (=> b!1301508 (= res!864747 (= (getValueByKey!702 (toList!10215 lt!582053) (_1!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387))))) (Some!752 (_2!11375 (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))))))))

(declare-fun b!1301509 () Bool)

(assert (=> b!1301509 (= e!742384 (contains!8279 (toList!10215 lt!582053) (tuple2!22731 (ite c!124667 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124667 minValue!1387 (ite c!124666 zeroValue!1387 minValue!1387)))))))

(assert (= (and d!141201 res!864748) b!1301508))

(assert (= (and b!1301508 res!864747) b!1301509))

(declare-fun m!1192313 () Bool)

(assert (=> d!141201 m!1192313))

(declare-fun m!1192315 () Bool)

(assert (=> d!141201 m!1192315))

(declare-fun m!1192317 () Bool)

(assert (=> d!141201 m!1192317))

(declare-fun m!1192319 () Bool)

(assert (=> d!141201 m!1192319))

(declare-fun m!1192321 () Bool)

(assert (=> b!1301508 m!1192321))

(declare-fun m!1192323 () Bool)

(assert (=> b!1301509 m!1192323))

(assert (=> d!141135 d!141201))

(declare-fun d!141203 () Bool)

(declare-fun e!742386 () Bool)

(assert (=> d!141203 e!742386))

(declare-fun res!864749 () Bool)

(assert (=> d!141203 (=> res!864749 e!742386)))

(declare-fun lt!582059 () Bool)

(assert (=> d!141203 (= res!864749 (not lt!582059))))

(declare-fun lt!582056 () Bool)

(assert (=> d!141203 (= lt!582059 lt!582056)))

(declare-fun lt!582057 () Unit!43012)

(declare-fun e!742385 () Unit!43012)

(assert (=> d!141203 (= lt!582057 e!742385)))

(declare-fun c!124749 () Bool)

(assert (=> d!141203 (= c!124749 lt!582056)))

(assert (=> d!141203 (= lt!582056 (containsKey!720 (toList!10215 lt!581980) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141203 (= (contains!8276 lt!581980 #b1000000000000000000000000000000000000000000000000000000000000000) lt!582059)))

(declare-fun b!1301510 () Bool)

(declare-fun lt!582058 () Unit!43012)

(assert (=> b!1301510 (= e!742385 lt!582058)))

(assert (=> b!1301510 (= lt!582058 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581980) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301510 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301511 () Bool)

(declare-fun Unit!43027 () Unit!43012)

(assert (=> b!1301511 (= e!742385 Unit!43027)))

(declare-fun b!1301512 () Bool)

(assert (=> b!1301512 (= e!742386 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141203 c!124749) b!1301510))

(assert (= (and d!141203 (not c!124749)) b!1301511))

(assert (= (and d!141203 (not res!864749)) b!1301512))

(declare-fun m!1192325 () Bool)

(assert (=> d!141203 m!1192325))

(declare-fun m!1192327 () Bool)

(assert (=> b!1301510 m!1192327))

(declare-fun m!1192329 () Bool)

(assert (=> b!1301510 m!1192329))

(assert (=> b!1301510 m!1192329))

(declare-fun m!1192331 () Bool)

(assert (=> b!1301510 m!1192331))

(assert (=> b!1301512 m!1192329))

(assert (=> b!1301512 m!1192329))

(assert (=> b!1301512 m!1192331))

(assert (=> bm!63947 d!141203))

(declare-fun d!141205 () Bool)

(assert (=> d!141205 (= (isDefined!505 (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1058 (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37053 () Bool)

(assert (= bs!37053 d!141205))

(assert (=> bs!37053 m!1192093))

(declare-fun m!1192333 () Bool)

(assert (=> bs!37053 m!1192333))

(assert (=> b!1301346 d!141205))

(declare-fun d!141207 () Bool)

(declare-fun c!124750 () Bool)

(assert (=> d!141207 (= c!124750 (and ((_ is Cons!29882) (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun e!742387 () Option!753)

(assert (=> d!141207 (= (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742387)))

(declare-fun e!742388 () Option!753)

(declare-fun b!1301515 () Bool)

(assert (=> b!1301515 (= e!742388 (getValueByKey!702 (t!43471 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun b!1301514 () Bool)

(assert (=> b!1301514 (= e!742387 e!742388)))

(declare-fun c!124751 () Bool)

(assert (=> b!1301514 (= c!124751 (and ((_ is Cons!29882) (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1301516 () Bool)

(assert (=> b!1301516 (= e!742388 None!751)))

(declare-fun b!1301513 () Bool)

(assert (=> b!1301513 (= e!742387 (Some!752 (_2!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(assert (= (and d!141207 c!124750) b!1301513))

(assert (= (and d!141207 (not c!124750)) b!1301514))

(assert (= (and b!1301514 c!124751) b!1301515))

(assert (= (and b!1301514 (not c!124751)) b!1301516))

(declare-fun m!1192335 () Bool)

(assert (=> b!1301515 m!1192335))

(assert (=> b!1301346 d!141207))

(declare-fun d!141209 () Bool)

(assert (=> d!141209 (= (apply!1052 lt!581980 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21176 (getValueByKey!702 (toList!10215 lt!581980) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37054 () Bool)

(assert (= bs!37054 d!141209))

(assert (=> bs!37054 m!1192329))

(assert (=> bs!37054 m!1192329))

(declare-fun m!1192337 () Bool)

(assert (=> bs!37054 m!1192337))

(assert (=> b!1301395 d!141209))

(declare-fun d!141211 () Bool)

(declare-fun res!864754 () Bool)

(declare-fun e!742393 () Bool)

(assert (=> d!141211 (=> res!864754 e!742393)))

(assert (=> d!141211 (= res!864754 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (= (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) k0!1205)))))

(assert (=> d!141211 (= (containsKey!720 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205) e!742393)))

(declare-fun b!1301521 () Bool)

(declare-fun e!742394 () Bool)

(assert (=> b!1301521 (= e!742393 e!742394)))

(declare-fun res!864755 () Bool)

(assert (=> b!1301521 (=> (not res!864755) (not e!742394))))

(assert (=> b!1301521 (= res!864755 (and (or (not ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883)))) (bvsle (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) k0!1205)) ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (bvslt (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) k0!1205)))))

(declare-fun b!1301522 () Bool)

(assert (=> b!1301522 (= e!742394 (containsKey!720 (t!43471 (toList!10215 (ListLongMap!20400 Nil!29883))) k0!1205))))

(assert (= (and d!141211 (not res!864754)) b!1301521))

(assert (= (and b!1301521 res!864755) b!1301522))

(declare-fun m!1192339 () Bool)

(assert (=> b!1301522 m!1192339))

(assert (=> d!141121 d!141211))

(declare-fun d!141213 () Bool)

(declare-fun lt!582060 () Bool)

(assert (=> d!141213 (= lt!582060 (select (content!650 (toList!10215 lt!581914)) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))

(declare-fun e!742395 () Bool)

(assert (=> d!141213 (= lt!582060 e!742395)))

(declare-fun res!864757 () Bool)

(assert (=> d!141213 (=> (not res!864757) (not e!742395))))

(assert (=> d!141213 (= res!864757 ((_ is Cons!29882) (toList!10215 lt!581914)))))

(assert (=> d!141213 (= (contains!8279 (toList!10215 lt!581914) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) lt!582060)))

(declare-fun b!1301523 () Bool)

(declare-fun e!742396 () Bool)

(assert (=> b!1301523 (= e!742395 e!742396)))

(declare-fun res!864756 () Bool)

(assert (=> b!1301523 (=> res!864756 e!742396)))

(assert (=> b!1301523 (= res!864756 (= (h!31091 (toList!10215 lt!581914)) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))

(declare-fun b!1301524 () Bool)

(assert (=> b!1301524 (= e!742396 (contains!8279 (t!43471 (toList!10215 lt!581914)) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))

(assert (= (and d!141213 res!864757) b!1301523))

(assert (= (and b!1301523 (not res!864756)) b!1301524))

(declare-fun m!1192341 () Bool)

(assert (=> d!141213 m!1192341))

(declare-fun m!1192343 () Bool)

(assert (=> d!141213 m!1192343))

(declare-fun m!1192345 () Bool)

(assert (=> b!1301524 m!1192345))

(assert (=> b!1301333 d!141213))

(assert (=> b!1301290 d!141147))

(assert (=> bm!63929 d!141153))

(assert (=> b!1301324 d!141165))

(assert (=> b!1301327 d!141191))

(assert (=> b!1301327 d!141193))

(declare-fun d!141215 () Bool)

(assert (=> d!141215 (isDefined!505 (getValueByKey!702 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!582061 () Unit!43012)

(assert (=> d!141215 (= lt!582061 (choose!1915 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!742397 () Bool)

(assert (=> d!141215 e!742397))

(declare-fun res!864758 () Bool)

(assert (=> d!141215 (=> (not res!864758) (not e!742397))))

(assert (=> d!141215 (= res!864758 (isStrictlySorted!867 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141215 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!582061)))

(declare-fun b!1301525 () Bool)

(assert (=> b!1301525 (= e!742397 (containsKey!720 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141215 res!864758) b!1301525))

(assert (=> d!141215 m!1192093))

(assert (=> d!141215 m!1192093))

(assert (=> d!141215 m!1192095))

(declare-fun m!1192347 () Bool)

(assert (=> d!141215 m!1192347))

(declare-fun m!1192349 () Bool)

(assert (=> d!141215 m!1192349))

(assert (=> b!1301525 m!1192089))

(assert (=> b!1301344 d!141215))

(assert (=> b!1301344 d!141205))

(assert (=> b!1301344 d!141207))

(declare-fun d!141217 () Bool)

(declare-fun lt!582064 () Bool)

(declare-fun content!651 (List!29887) (InoxSet (_ BitVec 64)))

(assert (=> d!141217 (= lt!582064 (select (content!651 Nil!29884) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun e!742402 () Bool)

(assert (=> d!141217 (= lt!582064 e!742402)))

(declare-fun res!864763 () Bool)

(assert (=> d!141217 (=> (not res!864763) (not e!742402))))

(assert (=> d!141217 (= res!864763 ((_ is Cons!29883) Nil!29884))))

(assert (=> d!141217 (= (contains!8278 Nil!29884 (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)) lt!582064)))

(declare-fun b!1301530 () Bool)

(declare-fun e!742403 () Bool)

(assert (=> b!1301530 (= e!742402 e!742403)))

(declare-fun res!864764 () Bool)

(assert (=> b!1301530 (=> res!864764 e!742403)))

(assert (=> b!1301530 (= res!864764 (= (h!31092 Nil!29884) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1301531 () Bool)

(assert (=> b!1301531 (= e!742403 (contains!8278 (t!43472 Nil!29884) (select (arr!41834 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141217 res!864763) b!1301530))

(assert (= (and b!1301530 (not res!864764)) b!1301531))

(declare-fun m!1192351 () Bool)

(assert (=> d!141217 m!1192351))

(assert (=> d!141217 m!1192003))

(declare-fun m!1192353 () Bool)

(assert (=> d!141217 m!1192353))

(assert (=> b!1301531 m!1192003))

(declare-fun m!1192355 () Bool)

(assert (=> b!1301531 m!1192355))

(assert (=> b!1301264 d!141217))

(declare-fun d!141219 () Bool)

(declare-fun e!742405 () Bool)

(assert (=> d!141219 e!742405))

(declare-fun res!864765 () Bool)

(assert (=> d!141219 (=> res!864765 e!742405)))

(declare-fun lt!582068 () Bool)

(assert (=> d!141219 (= res!864765 (not lt!582068))))

(declare-fun lt!582065 () Bool)

(assert (=> d!141219 (= lt!582068 lt!582065)))

(declare-fun lt!582066 () Unit!43012)

(declare-fun e!742404 () Unit!43012)

(assert (=> d!141219 (= lt!582066 e!742404)))

(declare-fun c!124752 () Bool)

(assert (=> d!141219 (= c!124752 lt!582065)))

(assert (=> d!141219 (= lt!582065 (containsKey!720 (toList!10215 lt!581872) (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> d!141219 (= (contains!8276 lt!581872 (select (arr!41834 _keys!1741) from!2144)) lt!582068)))

(declare-fun b!1301532 () Bool)

(declare-fun lt!582067 () Unit!43012)

(assert (=> b!1301532 (= e!742404 lt!582067)))

(assert (=> b!1301532 (= lt!582067 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581872) (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301532 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun b!1301533 () Bool)

(declare-fun Unit!43028 () Unit!43012)

(assert (=> b!1301533 (= e!742404 Unit!43028)))

(declare-fun b!1301534 () Bool)

(assert (=> b!1301534 (= e!742405 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) (select (arr!41834 _keys!1741) from!2144))))))

(assert (= (and d!141219 c!124752) b!1301532))

(assert (= (and d!141219 (not c!124752)) b!1301533))

(assert (= (and d!141219 (not res!864765)) b!1301534))

(assert (=> d!141219 m!1191907))

(declare-fun m!1192357 () Bool)

(assert (=> d!141219 m!1192357))

(assert (=> b!1301532 m!1191907))

(declare-fun m!1192359 () Bool)

(assert (=> b!1301532 m!1192359))

(assert (=> b!1301532 m!1191907))

(declare-fun m!1192361 () Bool)

(assert (=> b!1301532 m!1192361))

(assert (=> b!1301532 m!1192361))

(declare-fun m!1192363 () Bool)

(assert (=> b!1301532 m!1192363))

(assert (=> b!1301534 m!1191907))

(assert (=> b!1301534 m!1192361))

(assert (=> b!1301534 m!1192361))

(assert (=> b!1301534 m!1192363))

(assert (=> b!1301299 d!141219))

(declare-fun d!141221 () Bool)

(declare-fun e!742407 () Bool)

(assert (=> d!141221 e!742407))

(declare-fun res!864766 () Bool)

(assert (=> d!141221 (=> res!864766 e!742407)))

(declare-fun lt!582072 () Bool)

(assert (=> d!141221 (= res!864766 (not lt!582072))))

(declare-fun lt!582069 () Bool)

(assert (=> d!141221 (= lt!582072 lt!582069)))

(declare-fun lt!582070 () Unit!43012)

(declare-fun e!742406 () Unit!43012)

(assert (=> d!141221 (= lt!582070 e!742406)))

(declare-fun c!124753 () Bool)

(assert (=> d!141221 (= c!124753 lt!582069)))

(assert (=> d!141221 (= lt!582069 (containsKey!720 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141221 (= (contains!8276 lt!581994 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!582072)))

(declare-fun b!1301535 () Bool)

(declare-fun lt!582071 () Unit!43012)

(assert (=> b!1301535 (= e!742406 lt!582071)))

(assert (=> b!1301535 (= lt!582071 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> b!1301535 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1301536 () Bool)

(declare-fun Unit!43029 () Unit!43012)

(assert (=> b!1301536 (= e!742406 Unit!43029)))

(declare-fun b!1301537 () Bool)

(assert (=> b!1301537 (= e!742407 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (= (and d!141221 c!124753) b!1301535))

(assert (= (and d!141221 (not c!124753)) b!1301536))

(assert (= (and d!141221 (not res!864766)) b!1301537))

(declare-fun m!1192365 () Bool)

(assert (=> d!141221 m!1192365))

(declare-fun m!1192367 () Bool)

(assert (=> b!1301535 m!1192367))

(assert (=> b!1301535 m!1192151))

(assert (=> b!1301535 m!1192151))

(declare-fun m!1192369 () Bool)

(assert (=> b!1301535 m!1192369))

(assert (=> b!1301537 m!1192151))

(assert (=> b!1301537 m!1192151))

(assert (=> b!1301537 m!1192369))

(assert (=> d!141141 d!141221))

(declare-fun d!141223 () Bool)

(declare-fun c!124754 () Bool)

(assert (=> d!141223 (= c!124754 (and ((_ is Cons!29882) lt!581995) (= (_1!11375 (h!31091 lt!581995)) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun e!742408 () Option!753)

(assert (=> d!141223 (= (getValueByKey!702 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) e!742408)))

(declare-fun b!1301540 () Bool)

(declare-fun e!742409 () Option!753)

(assert (=> b!1301540 (= e!742409 (getValueByKey!702 (t!43471 lt!581995) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1301539 () Bool)

(assert (=> b!1301539 (= e!742408 e!742409)))

(declare-fun c!124755 () Bool)

(assert (=> b!1301539 (= c!124755 (and ((_ is Cons!29882) lt!581995) (not (= (_1!11375 (h!31091 lt!581995)) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun b!1301541 () Bool)

(assert (=> b!1301541 (= e!742409 None!751)))

(declare-fun b!1301538 () Bool)

(assert (=> b!1301538 (= e!742408 (Some!752 (_2!11375 (h!31091 lt!581995))))))

(assert (= (and d!141223 c!124754) b!1301538))

(assert (= (and d!141223 (not c!124754)) b!1301539))

(assert (= (and b!1301539 c!124755) b!1301540))

(assert (= (and b!1301539 (not c!124755)) b!1301541))

(declare-fun m!1192371 () Bool)

(assert (=> b!1301540 m!1192371))

(assert (=> d!141141 d!141223))

(declare-fun d!141225 () Bool)

(assert (=> d!141225 (= (getValueByKey!702 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!582075 () Unit!43012)

(declare-fun choose!1916 (List!29886 (_ BitVec 64) V!51579) Unit!43012)

(assert (=> d!141225 (= lt!582075 (choose!1916 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun e!742412 () Bool)

(assert (=> d!141225 e!742412))

(declare-fun res!864771 () Bool)

(assert (=> d!141225 (=> (not res!864771) (not e!742412))))

(assert (=> d!141225 (= res!864771 (isStrictlySorted!867 lt!581995))))

(assert (=> d!141225 (= (lemmaContainsTupThenGetReturnValue!346 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!582075)))

(declare-fun b!1301546 () Bool)

(declare-fun res!864772 () Bool)

(assert (=> b!1301546 (=> (not res!864772) (not e!742412))))

(assert (=> b!1301546 (= res!864772 (containsKey!720 lt!581995 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1301547 () Bool)

(assert (=> b!1301547 (= e!742412 (contains!8279 lt!581995 (tuple2!22731 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (= (and d!141225 res!864771) b!1301546))

(assert (= (and b!1301546 res!864772) b!1301547))

(assert (=> d!141225 m!1192145))

(declare-fun m!1192373 () Bool)

(assert (=> d!141225 m!1192373))

(declare-fun m!1192375 () Bool)

(assert (=> d!141225 m!1192375))

(declare-fun m!1192377 () Bool)

(assert (=> b!1301546 m!1192377))

(declare-fun m!1192379 () Bool)

(assert (=> b!1301547 m!1192379))

(assert (=> d!141141 d!141225))

(declare-fun b!1301568 () Bool)

(declare-fun e!742423 () List!29886)

(declare-fun e!742424 () List!29886)

(assert (=> b!1301568 (= e!742423 e!742424)))

(declare-fun c!124764 () Bool)

(assert (=> b!1301568 (= c!124764 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (= (_1!11375 (h!31091 (toList!10215 lt!581801))) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1301569 () Bool)

(declare-fun e!742427 () List!29886)

(declare-fun call!63967 () List!29886)

(assert (=> b!1301569 (= e!742427 call!63967)))

(declare-fun e!742426 () List!29886)

(declare-fun b!1301570 () Bool)

(declare-fun c!124767 () Bool)

(assert (=> b!1301570 (= e!742426 (ite c!124764 (t!43471 (toList!10215 lt!581801)) (ite c!124767 (Cons!29882 (h!31091 (toList!10215 lt!581801)) (t!43471 (toList!10215 lt!581801))) Nil!29883)))))

(declare-fun c!124765 () Bool)

(declare-fun call!63968 () List!29886)

(declare-fun bm!63963 () Bool)

(declare-fun $colon$colon!669 (List!29886 tuple2!22730) List!29886)

(assert (=> bm!63963 (= call!63968 ($colon$colon!669 e!742426 (ite c!124765 (h!31091 (toList!10215 lt!581801)) (tuple2!22731 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun c!124766 () Bool)

(assert (=> bm!63963 (= c!124766 c!124765)))

(declare-fun b!1301571 () Bool)

(assert (=> b!1301571 (= c!124767 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (bvsgt (_1!11375 (h!31091 (toList!10215 lt!581801))) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (=> b!1301571 (= e!742424 e!742427)))

(declare-fun b!1301572 () Bool)

(declare-fun call!63966 () List!29886)

(assert (=> b!1301572 (= e!742424 call!63966)))

(declare-fun b!1301574 () Bool)

(assert (=> b!1301574 (= e!742423 call!63968)))

(declare-fun b!1301575 () Bool)

(assert (=> b!1301575 (= e!742426 (insertStrictlySorted!475 (t!43471 (toList!10215 lt!581801)) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1301576 () Bool)

(declare-fun e!742425 () Bool)

(declare-fun lt!582078 () List!29886)

(assert (=> b!1301576 (= e!742425 (contains!8279 lt!582078 (tuple2!22731 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun bm!63964 () Bool)

(assert (=> bm!63964 (= call!63967 call!63966)))

(declare-fun bm!63965 () Bool)

(assert (=> bm!63965 (= call!63966 call!63968)))

(declare-fun b!1301577 () Bool)

(assert (=> b!1301577 (= e!742427 call!63967)))

(declare-fun d!141227 () Bool)

(assert (=> d!141227 e!742425))

(declare-fun res!864777 () Bool)

(assert (=> d!141227 (=> (not res!864777) (not e!742425))))

(assert (=> d!141227 (= res!864777 (isStrictlySorted!867 lt!582078))))

(assert (=> d!141227 (= lt!582078 e!742423)))

(assert (=> d!141227 (= c!124765 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (bvslt (_1!11375 (h!31091 (toList!10215 lt!581801))) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(assert (=> d!141227 (isStrictlySorted!867 (toList!10215 lt!581801))))

(assert (=> d!141227 (= (insertStrictlySorted!475 (toList!10215 lt!581801) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) lt!582078)))

(declare-fun b!1301573 () Bool)

(declare-fun res!864778 () Bool)

(assert (=> b!1301573 (=> (not res!864778) (not e!742425))))

(assert (=> b!1301573 (= res!864778 (containsKey!720 lt!582078 (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (= (and d!141227 c!124765) b!1301574))

(assert (= (and d!141227 (not c!124765)) b!1301568))

(assert (= (and b!1301568 c!124764) b!1301572))

(assert (= (and b!1301568 (not c!124764)) b!1301571))

(assert (= (and b!1301571 c!124767) b!1301577))

(assert (= (and b!1301571 (not c!124767)) b!1301569))

(assert (= (or b!1301577 b!1301569) bm!63964))

(assert (= (or b!1301572 bm!63964) bm!63965))

(assert (= (or b!1301574 bm!63965) bm!63963))

(assert (= (and bm!63963 c!124766) b!1301575))

(assert (= (and bm!63963 (not c!124766)) b!1301570))

(assert (= (and d!141227 res!864777) b!1301573))

(assert (= (and b!1301573 res!864778) b!1301576))

(declare-fun m!1192381 () Bool)

(assert (=> bm!63963 m!1192381))

(declare-fun m!1192383 () Bool)

(assert (=> b!1301573 m!1192383))

(declare-fun m!1192385 () Bool)

(assert (=> d!141227 m!1192385))

(declare-fun m!1192387 () Bool)

(assert (=> d!141227 m!1192387))

(declare-fun m!1192389 () Bool)

(assert (=> b!1301575 m!1192389))

(declare-fun m!1192391 () Bool)

(assert (=> b!1301576 m!1192391))

(assert (=> d!141141 d!141227))

(assert (=> b!1301262 d!141165))

(declare-fun d!141229 () Bool)

(assert (=> d!141229 (= (get!21174 (select (arr!41833 _values!1445) from!2144) (dynLambda!3502 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!20109 (select (arr!41833 _values!1445) from!2144)))))

(assert (=> b!1301342 d!141229))

(declare-fun d!141231 () Bool)

(assert (=> d!141231 (= (isDefined!505 (getValueByKey!702 (toList!10215 lt!581801) k0!1205)) (not (isEmpty!1058 (getValueByKey!702 (toList!10215 lt!581801) k0!1205))))))

(declare-fun bs!37055 () Bool)

(assert (= bs!37055 d!141231))

(assert (=> bs!37055 m!1192163))

(declare-fun m!1192393 () Bool)

(assert (=> bs!37055 m!1192393))

(assert (=> b!1301414 d!141231))

(declare-fun d!141233 () Bool)

(declare-fun c!124768 () Bool)

(assert (=> d!141233 (= c!124768 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (= (_1!11375 (h!31091 (toList!10215 lt!581801))) k0!1205)))))

(declare-fun e!742428 () Option!753)

(assert (=> d!141233 (= (getValueByKey!702 (toList!10215 lt!581801) k0!1205) e!742428)))

(declare-fun b!1301580 () Bool)

(declare-fun e!742429 () Option!753)

(assert (=> b!1301580 (= e!742429 (getValueByKey!702 (t!43471 (toList!10215 lt!581801)) k0!1205))))

(declare-fun b!1301579 () Bool)

(assert (=> b!1301579 (= e!742428 e!742429)))

(declare-fun c!124769 () Bool)

(assert (=> b!1301579 (= c!124769 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (not (= (_1!11375 (h!31091 (toList!10215 lt!581801))) k0!1205))))))

(declare-fun b!1301581 () Bool)

(assert (=> b!1301581 (= e!742429 None!751)))

(declare-fun b!1301578 () Bool)

(assert (=> b!1301578 (= e!742428 (Some!752 (_2!11375 (h!31091 (toList!10215 lt!581801)))))))

(assert (= (and d!141233 c!124768) b!1301578))

(assert (= (and d!141233 (not c!124768)) b!1301579))

(assert (= (and b!1301579 c!124769) b!1301580))

(assert (= (and b!1301579 (not c!124769)) b!1301581))

(declare-fun m!1192395 () Bool)

(assert (=> b!1301580 m!1192395))

(assert (=> b!1301414 d!141233))

(declare-fun d!141235 () Bool)

(assert (=> d!141235 (= (apply!1052 lt!581872 (select (arr!41834 _keys!1741) from!2144)) (get!21176 (getValueByKey!702 (toList!10215 lt!581872) (select (arr!41834 _keys!1741) from!2144))))))

(declare-fun bs!37056 () Bool)

(assert (= bs!37056 d!141235))

(assert (=> bs!37056 m!1191907))

(assert (=> bs!37056 m!1192361))

(assert (=> bs!37056 m!1192361))

(declare-fun m!1192397 () Bool)

(assert (=> bs!37056 m!1192397))

(assert (=> b!1301295 d!141235))

(assert (=> b!1301295 d!141133))

(declare-fun d!141237 () Bool)

(declare-fun e!742431 () Bool)

(assert (=> d!141237 e!742431))

(declare-fun res!864779 () Bool)

(assert (=> d!141237 (=> res!864779 e!742431)))

(declare-fun lt!582082 () Bool)

(assert (=> d!141237 (= res!864779 (not lt!582082))))

(declare-fun lt!582079 () Bool)

(assert (=> d!141237 (= lt!582082 lt!582079)))

(declare-fun lt!582080 () Unit!43012)

(declare-fun e!742430 () Unit!43012)

(assert (=> d!141237 (= lt!582080 e!742430)))

(declare-fun c!124770 () Bool)

(assert (=> d!141237 (= c!124770 lt!582079)))

(assert (=> d!141237 (= lt!582079 (containsKey!720 (toList!10215 lt!581980) (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> d!141237 (= (contains!8276 lt!581980 (select (arr!41834 _keys!1741) from!2144)) lt!582082)))

(declare-fun b!1301582 () Bool)

(declare-fun lt!582081 () Unit!43012)

(assert (=> b!1301582 (= e!742430 lt!582081)))

(assert (=> b!1301582 (= lt!582081 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581980) (select (arr!41834 _keys!1741) from!2144)))))

(assert (=> b!1301582 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) (select (arr!41834 _keys!1741) from!2144)))))

(declare-fun b!1301583 () Bool)

(declare-fun Unit!43030 () Unit!43012)

(assert (=> b!1301583 (= e!742430 Unit!43030)))

(declare-fun b!1301584 () Bool)

(assert (=> b!1301584 (= e!742431 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581980) (select (arr!41834 _keys!1741) from!2144))))))

(assert (= (and d!141237 c!124770) b!1301582))

(assert (= (and d!141237 (not c!124770)) b!1301583))

(assert (= (and d!141237 (not res!864779)) b!1301584))

(assert (=> d!141237 m!1191907))

(declare-fun m!1192399 () Bool)

(assert (=> d!141237 m!1192399))

(assert (=> b!1301582 m!1191907))

(declare-fun m!1192401 () Bool)

(assert (=> b!1301582 m!1192401))

(assert (=> b!1301582 m!1191907))

(assert (=> b!1301582 m!1192301))

(assert (=> b!1301582 m!1192301))

(declare-fun m!1192403 () Bool)

(assert (=> b!1301582 m!1192403))

(assert (=> b!1301584 m!1191907))

(assert (=> b!1301584 m!1192301))

(assert (=> b!1301584 m!1192301))

(assert (=> b!1301584 m!1192403))

(assert (=> b!1301397 d!141237))

(declare-fun d!141239 () Bool)

(assert (=> d!141239 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581801) k0!1205))))

(declare-fun lt!582083 () Unit!43012)

(assert (=> d!141239 (= lt!582083 (choose!1915 (toList!10215 lt!581801) k0!1205))))

(declare-fun e!742432 () Bool)

(assert (=> d!141239 e!742432))

(declare-fun res!864780 () Bool)

(assert (=> d!141239 (=> (not res!864780) (not e!742432))))

(assert (=> d!141239 (= res!864780 (isStrictlySorted!867 (toList!10215 lt!581801)))))

(assert (=> d!141239 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581801) k0!1205) lt!582083)))

(declare-fun b!1301585 () Bool)

(assert (=> b!1301585 (= e!742432 (containsKey!720 (toList!10215 lt!581801) k0!1205))))

(assert (= (and d!141239 res!864780) b!1301585))

(assert (=> d!141239 m!1192163))

(assert (=> d!141239 m!1192163))

(assert (=> d!141239 m!1192165))

(declare-fun m!1192405 () Bool)

(assert (=> d!141239 m!1192405))

(assert (=> d!141239 m!1192387))

(assert (=> b!1301585 m!1192159))

(assert (=> b!1301412 d!141239))

(assert (=> b!1301412 d!141231))

(assert (=> b!1301412 d!141233))

(declare-fun d!141241 () Bool)

(declare-fun e!742433 () Bool)

(assert (=> d!141241 e!742433))

(declare-fun res!864782 () Bool)

(assert (=> d!141241 (=> (not res!864782) (not e!742433))))

(declare-fun lt!582085 () ListLongMap!20399)

(assert (=> d!141241 (= res!864782 (contains!8276 lt!582085 (_1!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun lt!582086 () List!29886)

(assert (=> d!141241 (= lt!582085 (ListLongMap!20400 lt!582086))))

(declare-fun lt!582084 () Unit!43012)

(declare-fun lt!582087 () Unit!43012)

(assert (=> d!141241 (= lt!582084 lt!582087)))

(assert (=> d!141241 (= (getValueByKey!702 lt!582086 (_1!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!752 (_2!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141241 (= lt!582087 (lemmaContainsTupThenGetReturnValue!346 lt!582086 (_1!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141241 (= lt!582086 (insertStrictlySorted!475 (toList!10215 (ite c!124718 call!63951 (ite c!124720 call!63955 call!63953))) (_1!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141241 (= (+!4439 (ite c!124718 call!63951 (ite c!124720 call!63955 call!63953)) (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) lt!582085)))

(declare-fun b!1301586 () Bool)

(declare-fun res!864781 () Bool)

(assert (=> b!1301586 (=> (not res!864781) (not e!742433))))

(assert (=> b!1301586 (= res!864781 (= (getValueByKey!702 (toList!10215 lt!582085) (_1!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!752 (_2!11375 (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1301587 () Bool)

(assert (=> b!1301587 (= e!742433 (contains!8279 (toList!10215 lt!582085) (ite (or c!124718 c!124720) (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!141241 res!864782) b!1301586))

(assert (= (and b!1301586 res!864781) b!1301587))

(declare-fun m!1192407 () Bool)

(assert (=> d!141241 m!1192407))

(declare-fun m!1192409 () Bool)

(assert (=> d!141241 m!1192409))

(declare-fun m!1192411 () Bool)

(assert (=> d!141241 m!1192411))

(declare-fun m!1192413 () Bool)

(assert (=> d!141241 m!1192413))

(declare-fun m!1192415 () Bool)

(assert (=> b!1301586 m!1192415))

(declare-fun m!1192417 () Bool)

(assert (=> b!1301587 m!1192417))

(assert (=> bm!63949 d!141241))

(declare-fun d!141243 () Bool)

(declare-fun res!864783 () Bool)

(declare-fun e!742434 () Bool)

(assert (=> d!141243 (=> res!864783 e!742434)))

(assert (=> d!141243 (= res!864783 (and ((_ is Cons!29882) (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141243 (= (containsKey!720 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742434)))

(declare-fun b!1301588 () Bool)

(declare-fun e!742435 () Bool)

(assert (=> b!1301588 (= e!742434 e!742435)))

(declare-fun res!864784 () Bool)

(assert (=> b!1301588 (=> (not res!864784) (not e!742435))))

(assert (=> b!1301588 (= res!864784 (and (or (not ((_ is Cons!29882) (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29882) (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11375 (h!31091 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1301589 () Bool)

(assert (=> b!1301589 (= e!742435 (containsKey!720 (t!43471 (toList!10215 (getCurrentListMap!5184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141243 (not res!864783)) b!1301588))

(assert (= (and b!1301588 res!864784) b!1301589))

(declare-fun m!1192419 () Bool)

(assert (=> b!1301589 m!1192419))

(assert (=> d!141137 d!141243))

(assert (=> d!141139 d!141109))

(declare-fun d!141245 () Bool)

(assert (=> d!141245 (= (apply!1052 lt!581977 lt!581983) (get!21176 (getValueByKey!702 (toList!10215 lt!581977) lt!581983)))))

(declare-fun bs!37057 () Bool)

(assert (= bs!37057 d!141245))

(declare-fun m!1192421 () Bool)

(assert (=> bs!37057 m!1192421))

(assert (=> bs!37057 m!1192421))

(declare-fun m!1192423 () Bool)

(assert (=> bs!37057 m!1192423))

(assert (=> b!1301403 d!141245))

(declare-fun d!141247 () Bool)

(assert (=> d!141247 (= (apply!1052 (+!4439 lt!581977 (tuple2!22731 lt!581971 minValue!1387)) lt!581983) (apply!1052 lt!581977 lt!581983))))

(declare-fun lt!582090 () Unit!43012)

(declare-fun choose!1917 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> d!141247 (= lt!582090 (choose!1917 lt!581977 lt!581971 minValue!1387 lt!581983))))

(declare-fun e!742438 () Bool)

(assert (=> d!141247 e!742438))

(declare-fun res!864787 () Bool)

(assert (=> d!141247 (=> (not res!864787) (not e!742438))))

(assert (=> d!141247 (= res!864787 (contains!8276 lt!581977 lt!581983))))

(assert (=> d!141247 (= (addApplyDifferent!555 lt!581977 lt!581971 minValue!1387 lt!581983) lt!582090)))

(declare-fun b!1301593 () Bool)

(assert (=> b!1301593 (= e!742438 (not (= lt!581983 lt!581971)))))

(assert (= (and d!141247 res!864787) b!1301593))

(declare-fun m!1192425 () Bool)

(assert (=> d!141247 m!1192425))

(declare-fun m!1192427 () Bool)

(assert (=> d!141247 m!1192427))

(assert (=> d!141247 m!1192105))

(assert (=> d!141247 m!1192121))

(assert (=> d!141247 m!1192105))

(assert (=> d!141247 m!1192107))

(assert (=> b!1301403 d!141247))

(declare-fun d!141249 () Bool)

(declare-fun e!742439 () Bool)

(assert (=> d!141249 e!742439))

(declare-fun res!864789 () Bool)

(assert (=> d!141249 (=> (not res!864789) (not e!742439))))

(declare-fun lt!582092 () ListLongMap!20399)

(assert (=> d!141249 (= res!864789 (contains!8276 lt!582092 (_1!11375 (tuple2!22731 lt!581991 zeroValue!1387))))))

(declare-fun lt!582093 () List!29886)

(assert (=> d!141249 (= lt!582092 (ListLongMap!20400 lt!582093))))

(declare-fun lt!582091 () Unit!43012)

(declare-fun lt!582094 () Unit!43012)

(assert (=> d!141249 (= lt!582091 lt!582094)))

(assert (=> d!141249 (= (getValueByKey!702 lt!582093 (_1!11375 (tuple2!22731 lt!581991 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581991 zeroValue!1387))))))

(assert (=> d!141249 (= lt!582094 (lemmaContainsTupThenGetReturnValue!346 lt!582093 (_1!11375 (tuple2!22731 lt!581991 zeroValue!1387)) (_2!11375 (tuple2!22731 lt!581991 zeroValue!1387))))))

(assert (=> d!141249 (= lt!582093 (insertStrictlySorted!475 (toList!10215 lt!581974) (_1!11375 (tuple2!22731 lt!581991 zeroValue!1387)) (_2!11375 (tuple2!22731 lt!581991 zeroValue!1387))))))

(assert (=> d!141249 (= (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387)) lt!582092)))

(declare-fun b!1301594 () Bool)

(declare-fun res!864788 () Bool)

(assert (=> b!1301594 (=> (not res!864788) (not e!742439))))

(assert (=> b!1301594 (= res!864788 (= (getValueByKey!702 (toList!10215 lt!582092) (_1!11375 (tuple2!22731 lt!581991 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581991 zeroValue!1387)))))))

(declare-fun b!1301595 () Bool)

(assert (=> b!1301595 (= e!742439 (contains!8279 (toList!10215 lt!582092) (tuple2!22731 lt!581991 zeroValue!1387)))))

(assert (= (and d!141249 res!864789) b!1301594))

(assert (= (and b!1301594 res!864788) b!1301595))

(declare-fun m!1192429 () Bool)

(assert (=> d!141249 m!1192429))

(declare-fun m!1192431 () Bool)

(assert (=> d!141249 m!1192431))

(declare-fun m!1192433 () Bool)

(assert (=> d!141249 m!1192433))

(declare-fun m!1192435 () Bool)

(assert (=> d!141249 m!1192435))

(declare-fun m!1192437 () Bool)

(assert (=> b!1301594 m!1192437))

(declare-fun m!1192439 () Bool)

(assert (=> b!1301595 m!1192439))

(assert (=> b!1301403 d!141249))

(assert (=> b!1301403 d!141117))

(declare-fun d!141251 () Bool)

(declare-fun e!742441 () Bool)

(assert (=> d!141251 e!742441))

(declare-fun res!864790 () Bool)

(assert (=> d!141251 (=> res!864790 e!742441)))

(declare-fun lt!582098 () Bool)

(assert (=> d!141251 (= res!864790 (not lt!582098))))

(declare-fun lt!582095 () Bool)

(assert (=> d!141251 (= lt!582098 lt!582095)))

(declare-fun lt!582096 () Unit!43012)

(declare-fun e!742440 () Unit!43012)

(assert (=> d!141251 (= lt!582096 e!742440)))

(declare-fun c!124771 () Bool)

(assert (=> d!141251 (= c!124771 lt!582095)))

(assert (=> d!141251 (= lt!582095 (containsKey!720 (toList!10215 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387))) lt!581979))))

(assert (=> d!141251 (= (contains!8276 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387)) lt!581979) lt!582098)))

(declare-fun b!1301596 () Bool)

(declare-fun lt!582097 () Unit!43012)

(assert (=> b!1301596 (= e!742440 lt!582097)))

(assert (=> b!1301596 (= lt!582097 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387))) lt!581979))))

(assert (=> b!1301596 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387))) lt!581979))))

(declare-fun b!1301597 () Bool)

(declare-fun Unit!43031 () Unit!43012)

(assert (=> b!1301597 (= e!742440 Unit!43031)))

(declare-fun b!1301598 () Bool)

(assert (=> b!1301598 (= e!742441 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387))) lt!581979)))))

(assert (= (and d!141251 c!124771) b!1301596))

(assert (= (and d!141251 (not c!124771)) b!1301597))

(assert (= (and d!141251 (not res!864790)) b!1301598))

(declare-fun m!1192441 () Bool)

(assert (=> d!141251 m!1192441))

(declare-fun m!1192443 () Bool)

(assert (=> b!1301596 m!1192443))

(declare-fun m!1192445 () Bool)

(assert (=> b!1301596 m!1192445))

(assert (=> b!1301596 m!1192445))

(declare-fun m!1192447 () Bool)

(assert (=> b!1301596 m!1192447))

(assert (=> b!1301598 m!1192445))

(assert (=> b!1301598 m!1192445))

(assert (=> b!1301598 m!1192447))

(assert (=> b!1301403 d!141251))

(declare-fun d!141253 () Bool)

(assert (=> d!141253 (= (apply!1052 (+!4439 lt!581984 (tuple2!22731 lt!581987 zeroValue!1387)) lt!581978) (apply!1052 lt!581984 lt!581978))))

(declare-fun lt!582099 () Unit!43012)

(assert (=> d!141253 (= lt!582099 (choose!1917 lt!581984 lt!581987 zeroValue!1387 lt!581978))))

(declare-fun e!742442 () Bool)

(assert (=> d!141253 e!742442))

(declare-fun res!864791 () Bool)

(assert (=> d!141253 (=> (not res!864791) (not e!742442))))

(assert (=> d!141253 (= res!864791 (contains!8276 lt!581984 lt!581978))))

(assert (=> d!141253 (= (addApplyDifferent!555 lt!581984 lt!581987 zeroValue!1387 lt!581978) lt!582099)))

(declare-fun b!1301599 () Bool)

(assert (=> b!1301599 (= e!742442 (not (= lt!581978 lt!581987)))))

(assert (= (and d!141253 res!864791) b!1301599))

(declare-fun m!1192449 () Bool)

(assert (=> d!141253 m!1192449))

(declare-fun m!1192451 () Bool)

(assert (=> d!141253 m!1192451))

(assert (=> d!141253 m!1192103))

(assert (=> d!141253 m!1192119))

(assert (=> d!141253 m!1192103))

(assert (=> d!141253 m!1192125))

(assert (=> b!1301403 d!141253))

(declare-fun d!141255 () Bool)

(assert (=> d!141255 (= (apply!1052 (+!4439 lt!581984 (tuple2!22731 lt!581987 zeroValue!1387)) lt!581978) (get!21176 (getValueByKey!702 (toList!10215 (+!4439 lt!581984 (tuple2!22731 lt!581987 zeroValue!1387))) lt!581978)))))

(declare-fun bs!37058 () Bool)

(assert (= bs!37058 d!141255))

(declare-fun m!1192453 () Bool)

(assert (=> bs!37058 m!1192453))

(assert (=> bs!37058 m!1192453))

(declare-fun m!1192455 () Bool)

(assert (=> bs!37058 m!1192455))

(assert (=> b!1301403 d!141255))

(declare-fun d!141257 () Bool)

(assert (=> d!141257 (= (apply!1052 lt!581984 lt!581978) (get!21176 (getValueByKey!702 (toList!10215 lt!581984) lt!581978)))))

(declare-fun bs!37059 () Bool)

(assert (= bs!37059 d!141257))

(declare-fun m!1192457 () Bool)

(assert (=> bs!37059 m!1192457))

(assert (=> bs!37059 m!1192457))

(declare-fun m!1192459 () Bool)

(assert (=> bs!37059 m!1192459))

(assert (=> b!1301403 d!141257))

(declare-fun d!141259 () Bool)

(declare-fun e!742443 () Bool)

(assert (=> d!141259 e!742443))

(declare-fun res!864793 () Bool)

(assert (=> d!141259 (=> (not res!864793) (not e!742443))))

(declare-fun lt!582101 () ListLongMap!20399)

(assert (=> d!141259 (= res!864793 (contains!8276 lt!582101 (_1!11375 (tuple2!22731 lt!581988 minValue!1387))))))

(declare-fun lt!582102 () List!29886)

(assert (=> d!141259 (= lt!582101 (ListLongMap!20400 lt!582102))))

(declare-fun lt!582100 () Unit!43012)

(declare-fun lt!582103 () Unit!43012)

(assert (=> d!141259 (= lt!582100 lt!582103)))

(assert (=> d!141259 (= (getValueByKey!702 lt!582102 (_1!11375 (tuple2!22731 lt!581988 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581988 minValue!1387))))))

(assert (=> d!141259 (= lt!582103 (lemmaContainsTupThenGetReturnValue!346 lt!582102 (_1!11375 (tuple2!22731 lt!581988 minValue!1387)) (_2!11375 (tuple2!22731 lt!581988 minValue!1387))))))

(assert (=> d!141259 (= lt!582102 (insertStrictlySorted!475 (toList!10215 lt!581985) (_1!11375 (tuple2!22731 lt!581988 minValue!1387)) (_2!11375 (tuple2!22731 lt!581988 minValue!1387))))))

(assert (=> d!141259 (= (+!4439 lt!581985 (tuple2!22731 lt!581988 minValue!1387)) lt!582101)))

(declare-fun b!1301600 () Bool)

(declare-fun res!864792 () Bool)

(assert (=> b!1301600 (=> (not res!864792) (not e!742443))))

(assert (=> b!1301600 (= res!864792 (= (getValueByKey!702 (toList!10215 lt!582101) (_1!11375 (tuple2!22731 lt!581988 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581988 minValue!1387)))))))

(declare-fun b!1301601 () Bool)

(assert (=> b!1301601 (= e!742443 (contains!8279 (toList!10215 lt!582101) (tuple2!22731 lt!581988 minValue!1387)))))

(assert (= (and d!141259 res!864793) b!1301600))

(assert (= (and b!1301600 res!864792) b!1301601))

(declare-fun m!1192461 () Bool)

(assert (=> d!141259 m!1192461))

(declare-fun m!1192463 () Bool)

(assert (=> d!141259 m!1192463))

(declare-fun m!1192465 () Bool)

(assert (=> d!141259 m!1192465))

(declare-fun m!1192467 () Bool)

(assert (=> d!141259 m!1192467))

(declare-fun m!1192469 () Bool)

(assert (=> b!1301600 m!1192469))

(declare-fun m!1192471 () Bool)

(assert (=> b!1301601 m!1192471))

(assert (=> b!1301403 d!141259))

(declare-fun d!141261 () Bool)

(assert (=> d!141261 (contains!8276 (+!4439 lt!581974 (tuple2!22731 lt!581991 zeroValue!1387)) lt!581979)))

(declare-fun lt!582106 () Unit!43012)

(declare-fun choose!1918 (ListLongMap!20399 (_ BitVec 64) V!51579 (_ BitVec 64)) Unit!43012)

(assert (=> d!141261 (= lt!582106 (choose!1918 lt!581974 lt!581991 zeroValue!1387 lt!581979))))

(assert (=> d!141261 (contains!8276 lt!581974 lt!581979)))

(assert (=> d!141261 (= (addStillContains!1121 lt!581974 lt!581991 zeroValue!1387 lt!581979) lt!582106)))

(declare-fun bs!37060 () Bool)

(assert (= bs!37060 d!141261))

(assert (=> bs!37060 m!1192115))

(assert (=> bs!37060 m!1192115))

(assert (=> bs!37060 m!1192117))

(declare-fun m!1192473 () Bool)

(assert (=> bs!37060 m!1192473))

(declare-fun m!1192475 () Bool)

(assert (=> bs!37060 m!1192475))

(assert (=> b!1301403 d!141261))

(declare-fun d!141263 () Bool)

(declare-fun e!742444 () Bool)

(assert (=> d!141263 e!742444))

(declare-fun res!864795 () Bool)

(assert (=> d!141263 (=> (not res!864795) (not e!742444))))

(declare-fun lt!582108 () ListLongMap!20399)

(assert (=> d!141263 (= res!864795 (contains!8276 lt!582108 (_1!11375 (tuple2!22731 lt!581971 minValue!1387))))))

(declare-fun lt!582109 () List!29886)

(assert (=> d!141263 (= lt!582108 (ListLongMap!20400 lt!582109))))

(declare-fun lt!582107 () Unit!43012)

(declare-fun lt!582110 () Unit!43012)

(assert (=> d!141263 (= lt!582107 lt!582110)))

(assert (=> d!141263 (= (getValueByKey!702 lt!582109 (_1!11375 (tuple2!22731 lt!581971 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581971 minValue!1387))))))

(assert (=> d!141263 (= lt!582110 (lemmaContainsTupThenGetReturnValue!346 lt!582109 (_1!11375 (tuple2!22731 lt!581971 minValue!1387)) (_2!11375 (tuple2!22731 lt!581971 minValue!1387))))))

(assert (=> d!141263 (= lt!582109 (insertStrictlySorted!475 (toList!10215 lt!581977) (_1!11375 (tuple2!22731 lt!581971 minValue!1387)) (_2!11375 (tuple2!22731 lt!581971 minValue!1387))))))

(assert (=> d!141263 (= (+!4439 lt!581977 (tuple2!22731 lt!581971 minValue!1387)) lt!582108)))

(declare-fun b!1301603 () Bool)

(declare-fun res!864794 () Bool)

(assert (=> b!1301603 (=> (not res!864794) (not e!742444))))

(assert (=> b!1301603 (= res!864794 (= (getValueByKey!702 (toList!10215 lt!582108) (_1!11375 (tuple2!22731 lt!581971 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581971 minValue!1387)))))))

(declare-fun b!1301604 () Bool)

(assert (=> b!1301604 (= e!742444 (contains!8279 (toList!10215 lt!582108) (tuple2!22731 lt!581971 minValue!1387)))))

(assert (= (and d!141263 res!864795) b!1301603))

(assert (= (and b!1301603 res!864794) b!1301604))

(declare-fun m!1192477 () Bool)

(assert (=> d!141263 m!1192477))

(declare-fun m!1192479 () Bool)

(assert (=> d!141263 m!1192479))

(declare-fun m!1192481 () Bool)

(assert (=> d!141263 m!1192481))

(declare-fun m!1192483 () Bool)

(assert (=> d!141263 m!1192483))

(declare-fun m!1192485 () Bool)

(assert (=> b!1301603 m!1192485))

(declare-fun m!1192487 () Bool)

(assert (=> b!1301604 m!1192487))

(assert (=> b!1301403 d!141263))

(declare-fun d!141265 () Bool)

(assert (=> d!141265 (= (apply!1052 (+!4439 lt!581985 (tuple2!22731 lt!581988 minValue!1387)) lt!581982) (get!21176 (getValueByKey!702 (toList!10215 (+!4439 lt!581985 (tuple2!22731 lt!581988 minValue!1387))) lt!581982)))))

(declare-fun bs!37061 () Bool)

(assert (= bs!37061 d!141265))

(declare-fun m!1192489 () Bool)

(assert (=> bs!37061 m!1192489))

(assert (=> bs!37061 m!1192489))

(declare-fun m!1192491 () Bool)

(assert (=> bs!37061 m!1192491))

(assert (=> b!1301403 d!141265))

(declare-fun d!141267 () Bool)

(declare-fun e!742445 () Bool)

(assert (=> d!141267 e!742445))

(declare-fun res!864797 () Bool)

(assert (=> d!141267 (=> (not res!864797) (not e!742445))))

(declare-fun lt!582112 () ListLongMap!20399)

(assert (=> d!141267 (= res!864797 (contains!8276 lt!582112 (_1!11375 (tuple2!22731 lt!581987 zeroValue!1387))))))

(declare-fun lt!582113 () List!29886)

(assert (=> d!141267 (= lt!582112 (ListLongMap!20400 lt!582113))))

(declare-fun lt!582111 () Unit!43012)

(declare-fun lt!582114 () Unit!43012)

(assert (=> d!141267 (= lt!582111 lt!582114)))

(assert (=> d!141267 (= (getValueByKey!702 lt!582113 (_1!11375 (tuple2!22731 lt!581987 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581987 zeroValue!1387))))))

(assert (=> d!141267 (= lt!582114 (lemmaContainsTupThenGetReturnValue!346 lt!582113 (_1!11375 (tuple2!22731 lt!581987 zeroValue!1387)) (_2!11375 (tuple2!22731 lt!581987 zeroValue!1387))))))

(assert (=> d!141267 (= lt!582113 (insertStrictlySorted!475 (toList!10215 lt!581984) (_1!11375 (tuple2!22731 lt!581987 zeroValue!1387)) (_2!11375 (tuple2!22731 lt!581987 zeroValue!1387))))))

(assert (=> d!141267 (= (+!4439 lt!581984 (tuple2!22731 lt!581987 zeroValue!1387)) lt!582112)))

(declare-fun b!1301605 () Bool)

(declare-fun res!864796 () Bool)

(assert (=> b!1301605 (=> (not res!864796) (not e!742445))))

(assert (=> b!1301605 (= res!864796 (= (getValueByKey!702 (toList!10215 lt!582112) (_1!11375 (tuple2!22731 lt!581987 zeroValue!1387))) (Some!752 (_2!11375 (tuple2!22731 lt!581987 zeroValue!1387)))))))

(declare-fun b!1301606 () Bool)

(assert (=> b!1301606 (= e!742445 (contains!8279 (toList!10215 lt!582112) (tuple2!22731 lt!581987 zeroValue!1387)))))

(assert (= (and d!141267 res!864797) b!1301605))

(assert (= (and b!1301605 res!864796) b!1301606))

(declare-fun m!1192493 () Bool)

(assert (=> d!141267 m!1192493))

(declare-fun m!1192495 () Bool)

(assert (=> d!141267 m!1192495))

(declare-fun m!1192497 () Bool)

(assert (=> d!141267 m!1192497))

(declare-fun m!1192499 () Bool)

(assert (=> d!141267 m!1192499))

(declare-fun m!1192501 () Bool)

(assert (=> b!1301605 m!1192501))

(declare-fun m!1192503 () Bool)

(assert (=> b!1301606 m!1192503))

(assert (=> b!1301403 d!141267))

(declare-fun d!141269 () Bool)

(assert (=> d!141269 (= (apply!1052 lt!581985 lt!581982) (get!21176 (getValueByKey!702 (toList!10215 lt!581985) lt!581982)))))

(declare-fun bs!37062 () Bool)

(assert (= bs!37062 d!141269))

(declare-fun m!1192505 () Bool)

(assert (=> bs!37062 m!1192505))

(assert (=> bs!37062 m!1192505))

(declare-fun m!1192507 () Bool)

(assert (=> bs!37062 m!1192507))

(assert (=> b!1301403 d!141269))

(declare-fun d!141271 () Bool)

(assert (=> d!141271 (= (apply!1052 (+!4439 lt!581977 (tuple2!22731 lt!581971 minValue!1387)) lt!581983) (get!21176 (getValueByKey!702 (toList!10215 (+!4439 lt!581977 (tuple2!22731 lt!581971 minValue!1387))) lt!581983)))))

(declare-fun bs!37063 () Bool)

(assert (= bs!37063 d!141271))

(declare-fun m!1192509 () Bool)

(assert (=> bs!37063 m!1192509))

(assert (=> bs!37063 m!1192509))

(declare-fun m!1192511 () Bool)

(assert (=> bs!37063 m!1192511))

(assert (=> b!1301403 d!141271))

(declare-fun d!141273 () Bool)

(assert (=> d!141273 (= (apply!1052 (+!4439 lt!581985 (tuple2!22731 lt!581988 minValue!1387)) lt!581982) (apply!1052 lt!581985 lt!581982))))

(declare-fun lt!582115 () Unit!43012)

(assert (=> d!141273 (= lt!582115 (choose!1917 lt!581985 lt!581988 minValue!1387 lt!581982))))

(declare-fun e!742446 () Bool)

(assert (=> d!141273 e!742446))

(declare-fun res!864798 () Bool)

(assert (=> d!141273 (=> (not res!864798) (not e!742446))))

(assert (=> d!141273 (= res!864798 (contains!8276 lt!581985 lt!581982))))

(assert (=> d!141273 (= (addApplyDifferent!555 lt!581985 lt!581988 minValue!1387 lt!581982) lt!582115)))

(declare-fun b!1301607 () Bool)

(assert (=> b!1301607 (= e!742446 (not (= lt!581982 lt!581988)))))

(assert (= (and d!141273 res!864798) b!1301607))

(declare-fun m!1192513 () Bool)

(assert (=> d!141273 m!1192513))

(declare-fun m!1192515 () Bool)

(assert (=> d!141273 m!1192515))

(assert (=> d!141273 m!1192111))

(assert (=> d!141273 m!1192127))

(assert (=> d!141273 m!1192111))

(assert (=> d!141273 m!1192113))

(assert (=> b!1301403 d!141273))

(declare-fun d!141275 () Bool)

(assert (=> d!141275 (= (isDefined!505 (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205)) (not (isEmpty!1058 (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))))

(declare-fun bs!37064 () Bool)

(assert (= bs!37064 d!141275))

(assert (=> bs!37064 m!1192043))

(declare-fun m!1192517 () Bool)

(assert (=> bs!37064 m!1192517))

(assert (=> b!1301312 d!141275))

(declare-fun d!141277 () Bool)

(declare-fun c!124772 () Bool)

(assert (=> d!141277 (= c!124772 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (= (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) k0!1205)))))

(declare-fun e!742447 () Option!753)

(assert (=> d!141277 (= (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205) e!742447)))

(declare-fun b!1301610 () Bool)

(declare-fun e!742448 () Option!753)

(assert (=> b!1301610 (= e!742448 (getValueByKey!702 (t!43471 (toList!10215 (ListLongMap!20400 Nil!29883))) k0!1205))))

(declare-fun b!1301609 () Bool)

(assert (=> b!1301609 (= e!742447 e!742448)))

(declare-fun c!124773 () Bool)

(assert (=> b!1301609 (= c!124773 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (not (= (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) k0!1205))))))

(declare-fun b!1301611 () Bool)

(assert (=> b!1301611 (= e!742448 None!751)))

(declare-fun b!1301608 () Bool)

(assert (=> b!1301608 (= e!742447 (Some!752 (_2!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883))))))))

(assert (= (and d!141277 c!124772) b!1301608))

(assert (= (and d!141277 (not c!124772)) b!1301609))

(assert (= (and b!1301609 c!124773) b!1301610))

(assert (= (and b!1301609 (not c!124773)) b!1301611))

(declare-fun m!1192519 () Bool)

(assert (=> b!1301610 m!1192519))

(assert (=> b!1301312 d!141277))

(assert (=> d!141131 d!141127))

(assert (=> d!141131 d!141129))

(declare-fun d!141279 () Bool)

(assert (=> d!141279 (not (contains!8276 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) k0!1205))))

(assert (=> d!141279 true))

(declare-fun _$36!378 () Unit!43012)

(assert (=> d!141279 (= (choose!1913 (ListLongMap!20400 Nil!29883) (select (arr!41834 _keys!1741) from!2144) lt!581807 k0!1205) _$36!378)))

(declare-fun bs!37065 () Bool)

(assert (= bs!37065 d!141279))

(assert (=> bs!37065 m!1191931))

(assert (=> bs!37065 m!1191931))

(assert (=> bs!37065 m!1191937))

(assert (=> d!141131 d!141279))

(assert (=> d!141131 d!141121))

(declare-fun d!141281 () Bool)

(declare-fun res!864799 () Bool)

(declare-fun e!742449 () Bool)

(assert (=> d!141281 (=> res!864799 e!742449)))

(assert (=> d!141281 (= res!864799 (and ((_ is Cons!29882) (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) (= (_1!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) k0!1205)))))

(assert (=> d!141281 (= (containsKey!720 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) k0!1205) e!742449)))

(declare-fun b!1301613 () Bool)

(declare-fun e!742450 () Bool)

(assert (=> b!1301613 (= e!742449 e!742450)))

(declare-fun res!864800 () Bool)

(assert (=> b!1301613 (=> (not res!864800) (not e!742450))))

(assert (=> b!1301613 (= res!864800 (and (or (not ((_ is Cons!29882) (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) (bvsle (_1!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) k0!1205)) ((_ is Cons!29882) (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) (bvslt (_1!11375 (h!31091 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))) k0!1205)))))

(declare-fun b!1301614 () Bool)

(assert (=> b!1301614 (= e!742450 (containsKey!720 (t!43471 (toList!10215 (+!4439 (ListLongMap!20400 Nil!29883) (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))) k0!1205))))

(assert (= (and d!141281 (not res!864799)) b!1301613))

(assert (= (and b!1301613 res!864800) b!1301614))

(declare-fun m!1192521 () Bool)

(assert (=> b!1301614 m!1192521))

(assert (=> d!141127 d!141281))

(declare-fun d!141283 () Bool)

(declare-fun e!742452 () Bool)

(assert (=> d!141283 e!742452))

(declare-fun res!864801 () Bool)

(assert (=> d!141283 (=> res!864801 e!742452)))

(declare-fun lt!582119 () Bool)

(assert (=> d!141283 (= res!864801 (not lt!582119))))

(declare-fun lt!582116 () Bool)

(assert (=> d!141283 (= lt!582119 lt!582116)))

(declare-fun lt!582117 () Unit!43012)

(declare-fun e!742451 () Unit!43012)

(assert (=> d!141283 (= lt!582117 e!742451)))

(declare-fun c!124774 () Bool)

(assert (=> d!141283 (= c!124774 lt!582116)))

(assert (=> d!141283 (= lt!582116 (containsKey!720 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(assert (=> d!141283 (= (contains!8276 lt!581914 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) lt!582119)))

(declare-fun b!1301615 () Bool)

(declare-fun lt!582118 () Unit!43012)

(assert (=> b!1301615 (= e!742451 lt!582118)))

(assert (=> b!1301615 (= lt!582118 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(assert (=> b!1301615 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun b!1301616 () Bool)

(declare-fun Unit!43032 () Unit!43012)

(assert (=> b!1301616 (= e!742451 Unit!43032)))

(declare-fun b!1301617 () Bool)

(assert (=> b!1301617 (= e!742452 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(assert (= (and d!141283 c!124774) b!1301615))

(assert (= (and d!141283 (not c!124774)) b!1301616))

(assert (= (and d!141283 (not res!864801)) b!1301617))

(declare-fun m!1192523 () Bool)

(assert (=> d!141283 m!1192523))

(declare-fun m!1192525 () Bool)

(assert (=> b!1301615 m!1192525))

(assert (=> b!1301615 m!1192073))

(assert (=> b!1301615 m!1192073))

(declare-fun m!1192527 () Bool)

(assert (=> b!1301615 m!1192527))

(assert (=> b!1301617 m!1192073))

(assert (=> b!1301617 m!1192073))

(assert (=> b!1301617 m!1192527))

(assert (=> d!141129 d!141283))

(declare-fun c!124775 () Bool)

(declare-fun d!141285 () Bool)

(assert (=> d!141285 (= c!124775 (and ((_ is Cons!29882) lt!581915) (= (_1!11375 (h!31091 lt!581915)) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(declare-fun e!742453 () Option!753)

(assert (=> d!141285 (= (getValueByKey!702 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) e!742453)))

(declare-fun b!1301620 () Bool)

(declare-fun e!742454 () Option!753)

(assert (=> b!1301620 (= e!742454 (getValueByKey!702 (t!43471 lt!581915) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun b!1301619 () Bool)

(assert (=> b!1301619 (= e!742453 e!742454)))

(declare-fun c!124776 () Bool)

(assert (=> b!1301619 (= c!124776 (and ((_ is Cons!29882) lt!581915) (not (= (_1!11375 (h!31091 lt!581915)) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))))

(declare-fun b!1301621 () Bool)

(assert (=> b!1301621 (= e!742454 None!751)))

(declare-fun b!1301618 () Bool)

(assert (=> b!1301618 (= e!742453 (Some!752 (_2!11375 (h!31091 lt!581915))))))

(assert (= (and d!141285 c!124775) b!1301618))

(assert (= (and d!141285 (not c!124775)) b!1301619))

(assert (= (and b!1301619 c!124776) b!1301620))

(assert (= (and b!1301619 (not c!124776)) b!1301621))

(declare-fun m!1192529 () Bool)

(assert (=> b!1301620 m!1192529))

(assert (=> d!141129 d!141285))

(declare-fun d!141287 () Bool)

(assert (=> d!141287 (= (getValueByKey!702 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) (Some!752 (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun lt!582120 () Unit!43012)

(assert (=> d!141287 (= lt!582120 (choose!1916 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun e!742455 () Bool)

(assert (=> d!141287 e!742455))

(declare-fun res!864802 () Bool)

(assert (=> d!141287 (=> (not res!864802) (not e!742455))))

(assert (=> d!141287 (= res!864802 (isStrictlySorted!867 lt!581915))))

(assert (=> d!141287 (= (lemmaContainsTupThenGetReturnValue!346 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) lt!582120)))

(declare-fun b!1301622 () Bool)

(declare-fun res!864803 () Bool)

(assert (=> b!1301622 (=> (not res!864803) (not e!742455))))

(assert (=> b!1301622 (= res!864803 (containsKey!720 lt!581915 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun b!1301623 () Bool)

(assert (=> b!1301623 (= e!742455 (contains!8279 lt!581915 (tuple2!22731 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(assert (= (and d!141287 res!864802) b!1301622))

(assert (= (and b!1301622 res!864803) b!1301623))

(assert (=> d!141287 m!1192067))

(declare-fun m!1192531 () Bool)

(assert (=> d!141287 m!1192531))

(declare-fun m!1192533 () Bool)

(assert (=> d!141287 m!1192533))

(declare-fun m!1192535 () Bool)

(assert (=> b!1301622 m!1192535))

(declare-fun m!1192537 () Bool)

(assert (=> b!1301623 m!1192537))

(assert (=> d!141129 d!141287))

(declare-fun b!1301624 () Bool)

(declare-fun e!742456 () List!29886)

(declare-fun e!742457 () List!29886)

(assert (=> b!1301624 (= e!742456 e!742457)))

(declare-fun c!124777 () Bool)

(assert (=> b!1301624 (= c!124777 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (= (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(declare-fun b!1301625 () Bool)

(declare-fun e!742460 () List!29886)

(declare-fun call!63970 () List!29886)

(assert (=> b!1301625 (= e!742460 call!63970)))

(declare-fun b!1301626 () Bool)

(declare-fun e!742459 () List!29886)

(declare-fun c!124780 () Bool)

(assert (=> b!1301626 (= e!742459 (ite c!124777 (t!43471 (toList!10215 (ListLongMap!20400 Nil!29883))) (ite c!124780 (Cons!29882 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883))) (t!43471 (toList!10215 (ListLongMap!20400 Nil!29883)))) Nil!29883)))))

(declare-fun call!63971 () List!29886)

(declare-fun c!124778 () Bool)

(declare-fun bm!63966 () Bool)

(assert (=> bm!63966 (= call!63971 ($colon$colon!669 e!742459 (ite c!124778 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883))) (tuple2!22731 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))))

(declare-fun c!124779 () Bool)

(assert (=> bm!63966 (= c!124779 c!124778)))

(declare-fun b!1301627 () Bool)

(assert (=> b!1301627 (= c!124780 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (bvsgt (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(assert (=> b!1301627 (= e!742457 e!742460)))

(declare-fun b!1301628 () Bool)

(declare-fun call!63969 () List!29886)

(assert (=> b!1301628 (= e!742457 call!63969)))

(declare-fun b!1301630 () Bool)

(assert (=> b!1301630 (= e!742456 call!63971)))

(declare-fun b!1301631 () Bool)

(assert (=> b!1301631 (= e!742459 (insertStrictlySorted!475 (t!43471 (toList!10215 (ListLongMap!20400 Nil!29883))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun lt!582121 () List!29886)

(declare-fun b!1301632 () Bool)

(declare-fun e!742458 () Bool)

(assert (=> b!1301632 (= e!742458 (contains!8279 lt!582121 (tuple2!22731 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(declare-fun bm!63967 () Bool)

(assert (=> bm!63967 (= call!63970 call!63969)))

(declare-fun bm!63968 () Bool)

(assert (=> bm!63968 (= call!63969 call!63971)))

(declare-fun b!1301633 () Bool)

(assert (=> b!1301633 (= e!742460 call!63970)))

(declare-fun d!141289 () Bool)

(assert (=> d!141289 e!742458))

(declare-fun res!864804 () Bool)

(assert (=> d!141289 (=> (not res!864804) (not e!742458))))

(assert (=> d!141289 (= res!864804 (isStrictlySorted!867 lt!582121))))

(assert (=> d!141289 (= lt!582121 e!742456)))

(assert (=> d!141289 (= c!124778 (and ((_ is Cons!29882) (toList!10215 (ListLongMap!20400 Nil!29883))) (bvslt (_1!11375 (h!31091 (toList!10215 (ListLongMap!20400 Nil!29883)))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(assert (=> d!141289 (isStrictlySorted!867 (toList!10215 (ListLongMap!20400 Nil!29883)))))

(assert (=> d!141289 (= (insertStrictlySorted!475 (toList!10215 (ListLongMap!20400 Nil!29883)) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)) (_2!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) lt!582121)))

(declare-fun b!1301629 () Bool)

(declare-fun res!864805 () Bool)

(assert (=> b!1301629 (=> (not res!864805) (not e!742458))))

(assert (=> b!1301629 (= res!864805 (containsKey!720 lt!582121 (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(assert (= (and d!141289 c!124778) b!1301630))

(assert (= (and d!141289 (not c!124778)) b!1301624))

(assert (= (and b!1301624 c!124777) b!1301628))

(assert (= (and b!1301624 (not c!124777)) b!1301627))

(assert (= (and b!1301627 c!124780) b!1301633))

(assert (= (and b!1301627 (not c!124780)) b!1301625))

(assert (= (or b!1301633 b!1301625) bm!63967))

(assert (= (or b!1301628 bm!63967) bm!63968))

(assert (= (or b!1301630 bm!63968) bm!63966))

(assert (= (and bm!63966 c!124779) b!1301631))

(assert (= (and bm!63966 (not c!124779)) b!1301626))

(assert (= (and d!141289 res!864804) b!1301629))

(assert (= (and b!1301629 res!864805) b!1301632))

(declare-fun m!1192539 () Bool)

(assert (=> bm!63966 m!1192539))

(declare-fun m!1192541 () Bool)

(assert (=> b!1301629 m!1192541))

(declare-fun m!1192543 () Bool)

(assert (=> d!141289 m!1192543))

(declare-fun m!1192545 () Bool)

(assert (=> d!141289 m!1192545))

(declare-fun m!1192547 () Bool)

(assert (=> b!1301631 m!1192547))

(declare-fun m!1192549 () Bool)

(assert (=> b!1301632 m!1192549))

(assert (=> d!141129 d!141289))

(declare-fun d!141291 () Bool)

(assert (=> d!141291 (isDefined!505 (getValueByKey!702 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(declare-fun lt!582122 () Unit!43012)

(assert (=> d!141291 (= lt!582122 (choose!1915 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(declare-fun e!742461 () Bool)

(assert (=> d!141291 e!742461))

(declare-fun res!864806 () Bool)

(assert (=> d!141291 (=> (not res!864806) (not e!742461))))

(assert (=> d!141291 (= res!864806 (isStrictlySorted!867 (toList!10215 (ListLongMap!20400 Nil!29883))))))

(assert (=> d!141291 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205) lt!582122)))

(declare-fun b!1301634 () Bool)

(assert (=> b!1301634 (= e!742461 (containsKey!720 (toList!10215 (ListLongMap!20400 Nil!29883)) k0!1205))))

(assert (= (and d!141291 res!864806) b!1301634))

(assert (=> d!141291 m!1192043))

(assert (=> d!141291 m!1192043))

(assert (=> d!141291 m!1192045))

(declare-fun m!1192551 () Bool)

(assert (=> d!141291 m!1192551))

(assert (=> d!141291 m!1192545))

(assert (=> b!1301634 m!1192039))

(assert (=> b!1301310 d!141291))

(assert (=> b!1301310 d!141275))

(assert (=> b!1301310 d!141277))

(assert (=> d!141143 d!141145))

(declare-fun d!141293 () Bool)

(assert (=> d!141293 (contains!8276 lt!581801 k0!1205)))

(assert (=> d!141293 true))

(declare-fun _$21!121 () Unit!43012)

(assert (=> d!141293 (= (choose!1914 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581801) _$21!121)))

(declare-fun bs!37066 () Bool)

(assert (= bs!37066 d!141293))

(assert (=> bs!37066 m!1191919))

(assert (=> d!141143 d!141293))

(declare-fun d!141295 () Bool)

(declare-fun e!742463 () Bool)

(assert (=> d!141295 e!742463))

(declare-fun res!864807 () Bool)

(assert (=> d!141295 (=> res!864807 e!742463)))

(declare-fun lt!582126 () Bool)

(assert (=> d!141295 (= res!864807 (not lt!582126))))

(declare-fun lt!582123 () Bool)

(assert (=> d!141295 (= lt!582126 lt!582123)))

(declare-fun lt!582124 () Unit!43012)

(declare-fun e!742462 () Unit!43012)

(assert (=> d!141295 (= lt!582124 e!742462)))

(declare-fun c!124781 () Bool)

(assert (=> d!141295 (= c!124781 lt!582123)))

(assert (=> d!141295 (= lt!582123 (containsKey!720 (toList!10215 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> d!141295 (= (contains!8276 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205) lt!582126)))

(declare-fun b!1301635 () Bool)

(declare-fun lt!582125 () Unit!43012)

(assert (=> b!1301635 (= e!742462 lt!582125)))

(assert (=> b!1301635 (= lt!582125 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> b!1301635 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(declare-fun b!1301636 () Bool)

(declare-fun Unit!43033 () Unit!43012)

(assert (=> b!1301636 (= e!742462 Unit!43033)))

(declare-fun b!1301637 () Bool)

(assert (=> b!1301637 (= e!742463 (isDefined!505 (getValueByKey!702 (toList!10215 (+!4439 lt!581801 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205)))))

(assert (= (and d!141295 c!124781) b!1301635))

(assert (= (and d!141295 (not c!124781)) b!1301636))

(assert (= (and d!141295 (not res!864807)) b!1301637))

(declare-fun m!1192553 () Bool)

(assert (=> d!141295 m!1192553))

(declare-fun m!1192555 () Bool)

(assert (=> b!1301635 m!1192555))

(declare-fun m!1192557 () Bool)

(assert (=> b!1301635 m!1192557))

(assert (=> b!1301635 m!1192557))

(declare-fun m!1192559 () Bool)

(assert (=> b!1301635 m!1192559))

(assert (=> b!1301637 m!1192557))

(assert (=> b!1301637 m!1192557))

(assert (=> b!1301637 m!1192559))

(assert (=> d!141143 d!141295))

(assert (=> d!141143 d!141141))

(declare-fun d!141297 () Bool)

(declare-fun e!742464 () Bool)

(assert (=> d!141297 e!742464))

(declare-fun res!864809 () Bool)

(assert (=> d!141297 (=> (not res!864809) (not e!742464))))

(declare-fun lt!582128 () ListLongMap!20399)

(assert (=> d!141297 (= res!864809 (contains!8276 lt!582128 (_1!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!582129 () List!29886)

(assert (=> d!141297 (= lt!582128 (ListLongMap!20400 lt!582129))))

(declare-fun lt!582127 () Unit!43012)

(declare-fun lt!582130 () Unit!43012)

(assert (=> d!141297 (= lt!582127 lt!582130)))

(assert (=> d!141297 (= (getValueByKey!702 lt!582129 (_1!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141297 (= lt!582130 (lemmaContainsTupThenGetReturnValue!346 lt!582129 (_1!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141297 (= lt!582129 (insertStrictlySorted!475 (toList!10215 call!63954) (_1!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141297 (= (+!4439 call!63954 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!582128)))

(declare-fun b!1301638 () Bool)

(declare-fun res!864808 () Bool)

(assert (=> b!1301638 (=> (not res!864808) (not e!742464))))

(assert (=> b!1301638 (= res!864808 (= (getValueByKey!702 (toList!10215 lt!582128) (_1!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!752 (_2!11375 (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1301639 () Bool)

(assert (=> b!1301639 (= e!742464 (contains!8279 (toList!10215 lt!582128) (tuple2!22731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141297 res!864809) b!1301638))

(assert (= (and b!1301638 res!864808) b!1301639))

(declare-fun m!1192561 () Bool)

(assert (=> d!141297 m!1192561))

(declare-fun m!1192563 () Bool)

(assert (=> d!141297 m!1192563))

(declare-fun m!1192565 () Bool)

(assert (=> d!141297 m!1192565))

(declare-fun m!1192567 () Bool)

(assert (=> d!141297 m!1192567))

(declare-fun m!1192569 () Bool)

(assert (=> b!1301638 m!1192569))

(declare-fun m!1192571 () Bool)

(assert (=> b!1301639 m!1192571))

(assert (=> b!1301391 d!141297))

(declare-fun d!141299 () Bool)

(declare-fun e!742466 () Bool)

(assert (=> d!141299 e!742466))

(declare-fun res!864810 () Bool)

(assert (=> d!141299 (=> res!864810 e!742466)))

(declare-fun lt!582134 () Bool)

(assert (=> d!141299 (= res!864810 (not lt!582134))))

(declare-fun lt!582131 () Bool)

(assert (=> d!141299 (= lt!582134 lt!582131)))

(declare-fun lt!582132 () Unit!43012)

(declare-fun e!742465 () Unit!43012)

(assert (=> d!141299 (= lt!582132 e!742465)))

(declare-fun c!124782 () Bool)

(assert (=> d!141299 (= c!124782 lt!582131)))

(assert (=> d!141299 (= lt!582131 (containsKey!720 (toList!10215 lt!581872) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141299 (= (contains!8276 lt!581872 #b0000000000000000000000000000000000000000000000000000000000000000) lt!582134)))

(declare-fun b!1301640 () Bool)

(declare-fun lt!582133 () Unit!43012)

(assert (=> b!1301640 (= e!742465 lt!582133)))

(assert (=> b!1301640 (= lt!582133 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581872) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301640 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301641 () Bool)

(declare-fun Unit!43034 () Unit!43012)

(assert (=> b!1301641 (= e!742465 Unit!43034)))

(declare-fun b!1301642 () Bool)

(assert (=> b!1301642 (= e!742466 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141299 c!124782) b!1301640))

(assert (= (and d!141299 (not c!124782)) b!1301641))

(assert (= (and d!141299 (not res!864810)) b!1301642))

(declare-fun m!1192573 () Bool)

(assert (=> d!141299 m!1192573))

(declare-fun m!1192575 () Bool)

(assert (=> b!1301640 m!1192575))

(declare-fun m!1192577 () Bool)

(assert (=> b!1301640 m!1192577))

(assert (=> b!1301640 m!1192577))

(declare-fun m!1192579 () Bool)

(assert (=> b!1301640 m!1192579))

(assert (=> b!1301642 m!1192577))

(assert (=> b!1301642 m!1192577))

(assert (=> b!1301642 m!1192579))

(assert (=> d!141117 d!141299))

(assert (=> d!141117 d!141109))

(assert (=> bm!63953 d!141117))

(declare-fun c!124783 () Bool)

(declare-fun d!141301 () Bool)

(assert (=> d!141301 (= c!124783 (and ((_ is Cons!29882) (toList!10215 lt!581914)) (= (_1!11375 (h!31091 (toList!10215 lt!581914))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807)))))))

(declare-fun e!742467 () Option!753)

(assert (=> d!141301 (= (getValueByKey!702 (toList!10215 lt!581914) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))) e!742467)))

(declare-fun e!742468 () Option!753)

(declare-fun b!1301645 () Bool)

(assert (=> b!1301645 (= e!742468 (getValueByKey!702 (t!43471 (toList!10215 lt!581914)) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))

(declare-fun b!1301644 () Bool)

(assert (=> b!1301644 (= e!742467 e!742468)))

(declare-fun c!124784 () Bool)

(assert (=> b!1301644 (= c!124784 (and ((_ is Cons!29882) (toList!10215 lt!581914)) (not (= (_1!11375 (h!31091 (toList!10215 lt!581914))) (_1!11375 (tuple2!22731 (select (arr!41834 _keys!1741) from!2144) lt!581807))))))))

(declare-fun b!1301646 () Bool)

(assert (=> b!1301646 (= e!742468 None!751)))

(declare-fun b!1301643 () Bool)

(assert (=> b!1301643 (= e!742467 (Some!752 (_2!11375 (h!31091 (toList!10215 lt!581914)))))))

(assert (= (and d!141301 c!124783) b!1301643))

(assert (= (and d!141301 (not c!124783)) b!1301644))

(assert (= (and b!1301644 c!124784) b!1301645))

(assert (= (and b!1301644 (not c!124784)) b!1301646))

(declare-fun m!1192581 () Bool)

(assert (=> b!1301645 m!1192581))

(assert (=> b!1301332 d!141301))

(declare-fun d!141303 () Bool)

(declare-fun e!742470 () Bool)

(assert (=> d!141303 e!742470))

(declare-fun res!864811 () Bool)

(assert (=> d!141303 (=> res!864811 e!742470)))

(declare-fun lt!582138 () Bool)

(assert (=> d!141303 (= res!864811 (not lt!582138))))

(declare-fun lt!582135 () Bool)

(assert (=> d!141303 (= lt!582138 lt!582135)))

(declare-fun lt!582136 () Unit!43012)

(declare-fun e!742469 () Unit!43012)

(assert (=> d!141303 (= lt!582136 e!742469)))

(declare-fun c!124785 () Bool)

(assert (=> d!141303 (= c!124785 lt!582135)))

(assert (=> d!141303 (= lt!582135 (containsKey!720 (toList!10215 lt!581872) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141303 (= (contains!8276 lt!581872 #b1000000000000000000000000000000000000000000000000000000000000000) lt!582138)))

(declare-fun b!1301647 () Bool)

(declare-fun lt!582137 () Unit!43012)

(assert (=> b!1301647 (= e!742469 lt!582137)))

(assert (=> b!1301647 (= lt!582137 (lemmaContainsKeyImpliesGetValueByKeyDefined!465 (toList!10215 lt!581872) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1301647 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1301648 () Bool)

(declare-fun Unit!43035 () Unit!43012)

(assert (=> b!1301648 (= e!742469 Unit!43035)))

(declare-fun b!1301649 () Bool)

(assert (=> b!1301649 (= e!742470 (isDefined!505 (getValueByKey!702 (toList!10215 lt!581872) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141303 c!124785) b!1301647))

(assert (= (and d!141303 (not c!124785)) b!1301648))

(assert (= (and d!141303 (not res!864811)) b!1301649))

(declare-fun m!1192583 () Bool)

(assert (=> d!141303 m!1192583))

(declare-fun m!1192585 () Bool)

(assert (=> b!1301647 m!1192585))

(declare-fun m!1192587 () Bool)

(assert (=> b!1301647 m!1192587))

(assert (=> b!1301647 m!1192587))

(declare-fun m!1192589 () Bool)

(assert (=> b!1301647 m!1192589))

(assert (=> b!1301649 m!1192587))

(assert (=> b!1301649 m!1192587))

(assert (=> b!1301649 m!1192589))

(assert (=> b!1301289 d!141303))

(declare-fun d!141305 () Bool)

(declare-fun res!864812 () Bool)

(declare-fun e!742471 () Bool)

(assert (=> d!141305 (=> res!864812 e!742471)))

(assert (=> d!141305 (= res!864812 (and ((_ is Cons!29882) (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) (= (_1!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) k0!1205)))))

(assert (=> d!141305 (= (containsKey!720 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))) k0!1205) e!742471)))

(declare-fun b!1301650 () Bool)

(declare-fun e!742472 () Bool)

(assert (=> b!1301650 (= e!742471 e!742472)))

(declare-fun res!864813 () Bool)

(assert (=> b!1301650 (=> (not res!864813) (not e!742472))))

(assert (=> b!1301650 (= res!864813 (and (or (not ((_ is Cons!29882) (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) (bvsle (_1!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) k0!1205)) ((_ is Cons!29882) (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) (bvslt (_1!11375 (h!31091 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806))))) k0!1205)))))

(declare-fun b!1301651 () Bool)

(assert (=> b!1301651 (= e!742472 (containsKey!720 (t!43471 (toList!10215 (ite c!124667 lt!581812 (ite c!124666 lt!581804 lt!581806)))) k0!1205))))

(assert (= (and d!141305 (not res!864812)) b!1301650))

(assert (= (and b!1301650 res!864813) b!1301651))

(declare-fun m!1192591 () Bool)

(assert (=> b!1301651 m!1192591))

(assert (=> d!141119 d!141305))

(declare-fun d!141307 () Bool)

(declare-fun res!864814 () Bool)

(declare-fun e!742473 () Bool)

(assert (=> d!141307 (=> res!864814 e!742473)))

(assert (=> d!141307 (= res!864814 (and ((_ is Cons!29882) (toList!10215 lt!581801)) (= (_1!11375 (h!31091 (toList!10215 lt!581801))) k0!1205)))))

(assert (=> d!141307 (= (containsKey!720 (toList!10215 lt!581801) k0!1205) e!742473)))

(declare-fun b!1301652 () Bool)

(declare-fun e!742474 () Bool)

(assert (=> b!1301652 (= e!742473 e!742474)))

(declare-fun res!864815 () Bool)

(assert (=> b!1301652 (=> (not res!864815) (not e!742474))))

(assert (=> b!1301652 (= res!864815 (and (or (not ((_ is Cons!29882) (toList!10215 lt!581801))) (bvsle (_1!11375 (h!31091 (toList!10215 lt!581801))) k0!1205)) ((_ is Cons!29882) (toList!10215 lt!581801)) (bvslt (_1!11375 (h!31091 (toList!10215 lt!581801))) k0!1205)))))

(declare-fun b!1301653 () Bool)

(assert (=> b!1301653 (= e!742474 (containsKey!720 (t!43471 (toList!10215 lt!581801)) k0!1205))))

(assert (= (and d!141307 (not res!864814)) b!1301652))

(assert (= (and b!1301652 res!864815) b!1301653))

(declare-fun m!1192593 () Bool)

(assert (=> b!1301653 m!1192593))

(assert (=> d!141145 d!141307))

(declare-fun d!141309 () Bool)

(declare-fun c!124786 () Bool)

(assert (=> d!141309 (= c!124786 (and ((_ is Cons!29882) (toList!10215 lt!581994)) (= (_1!11375 (h!31091 (toList!10215 lt!581994))) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun e!742475 () Option!753)

(assert (=> d!141309 (= (getValueByKey!702 (toList!10215 lt!581994) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) e!742475)))

(declare-fun b!1301656 () Bool)

(declare-fun e!742476 () Option!753)

(assert (=> b!1301656 (= e!742476 (getValueByKey!702 (t!43471 (toList!10215 lt!581994)) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun b!1301655 () Bool)

(assert (=> b!1301655 (= e!742475 e!742476)))

(declare-fun c!124787 () Bool)

(assert (=> b!1301655 (= c!124787 (and ((_ is Cons!29882) (toList!10215 lt!581994)) (not (= (_1!11375 (h!31091 (toList!10215 lt!581994))) (_1!11375 (tuple2!22731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))))

(declare-fun b!1301657 () Bool)

(assert (=> b!1301657 (= e!742476 None!751)))

(declare-fun b!1301654 () Bool)

(assert (=> b!1301654 (= e!742475 (Some!752 (_2!11375 (h!31091 (toList!10215 lt!581994)))))))

(assert (= (and d!141309 c!124786) b!1301654))

(assert (= (and d!141309 (not c!124786)) b!1301655))

(assert (= (and b!1301655 c!124787) b!1301656))

(assert (= (and b!1301655 (not c!124787)) b!1301657))

(declare-fun m!1192595 () Bool)

(assert (=> b!1301656 m!1192595))

(assert (=> b!1301410 d!141309))

(assert (=> b!1301405 d!141147))

(declare-fun mapNonEmpty!53868 () Bool)

(declare-fun mapRes!53868 () Bool)

(declare-fun tp!102796 () Bool)

(declare-fun e!742478 () Bool)

(assert (=> mapNonEmpty!53868 (= mapRes!53868 (and tp!102796 e!742478))))

(declare-fun mapValue!53868 () ValueCell!16530)

(declare-fun mapRest!53868 () (Array (_ BitVec 32) ValueCell!16530))

(declare-fun mapKey!53868 () (_ BitVec 32))

(assert (=> mapNonEmpty!53868 (= mapRest!53867 (store mapRest!53868 mapKey!53868 mapValue!53868))))

(declare-fun b!1301659 () Bool)

(declare-fun e!742477 () Bool)

(assert (=> b!1301659 (= e!742477 tp_is_empty!34857)))

(declare-fun b!1301658 () Bool)

(assert (=> b!1301658 (= e!742478 tp_is_empty!34857)))

(declare-fun condMapEmpty!53868 () Bool)

(declare-fun mapDefault!53868 () ValueCell!16530)

(assert (=> mapNonEmpty!53867 (= condMapEmpty!53868 (= mapRest!53867 ((as const (Array (_ BitVec 32) ValueCell!16530)) mapDefault!53868)))))

(assert (=> mapNonEmpty!53867 (= tp!102795 (and e!742477 mapRes!53868))))

(declare-fun mapIsEmpty!53868 () Bool)

(assert (=> mapIsEmpty!53868 mapRes!53868))

(assert (= (and mapNonEmpty!53867 condMapEmpty!53868) mapIsEmpty!53868))

(assert (= (and mapNonEmpty!53867 (not condMapEmpty!53868)) mapNonEmpty!53868))

(assert (= (and mapNonEmpty!53868 ((_ is ValueCellFull!16530) mapValue!53868)) b!1301658))

(assert (= (and mapNonEmpty!53867 ((_ is ValueCellFull!16530) mapDefault!53868)) b!1301659))

(declare-fun m!1192597 () Bool)

(assert (=> mapNonEmpty!53868 m!1192597))

(declare-fun b_lambda!23219 () Bool)

(assert (= b_lambda!23217 (or (and start!109860 b_free!29217) b_lambda!23219)))

(declare-fun b_lambda!23221 () Bool)

(assert (= b_lambda!23215 (or (and start!109860 b_free!29217) b_lambda!23221)))

(check-sat (not b!1301580) (not bm!63954) (not d!141237) (not d!141297) (not b!1301629) (not d!141205) (not b!1301595) (not b!1301448) (not d!141257) (not b!1301505) (not d!141295) (not b!1301425) (not d!141159) (not b!1301524) (not b_lambda!23221) (not d!141203) (not b!1301617) (not b!1301423) (not b!1301610) (not b!1301535) (not b!1301622) (not d!141161) (not b!1301598) (not b!1301432) (not d!141189) (not d!141265) (not b!1301638) (not b_lambda!23209) (not d!141181) (not d!141253) (not b!1301586) (not b!1301435) (not d!141177) (not b!1301446) (not b!1301496) (not mapNonEmpty!53868) (not d!141219) (not b!1301614) (not b!1301525) (not d!141289) (not d!141149) (not d!141209) (not b!1301509) (not d!141291) (not d!141213) (not b!1301603) (not b!1301508) (not b!1301427) (not b!1301631) (not b!1301431) (not d!141249) (not d!141235) (not b!1301649) (not b!1301503) (not d!141225) (not b!1301585) (not d!141167) (not d!141283) (not b_lambda!23213) (not b!1301499) (not bm!63955) (not d!141303) (not b!1301623) (not d!141269) (not bm!63963) (not d!141259) (not b!1301426) (not d!141247) (not d!141279) (not b!1301531) (not b!1301600) (not d!141227) (not b!1301444) (not b!1301450) (not b!1301500) (not d!141231) (not d!141271) (not d!141245) (not d!141195) (not d!141175) (not d!141191) (not d!141251) (not b!1301587) (not d!141255) (not d!141199) (not b!1301634) (not d!141261) (not d!141153) (not b!1301601) (not b!1301594) (not b!1301604) (not d!141215) (not d!141287) (not b!1301534) (not b!1301507) (not b!1301620) (not b!1301471) (not b!1301512) (not d!141267) b_and!47359 (not d!141217) (not b!1301442) (not b!1301640) (not b!1301642) (not b!1301449) (not b_lambda!23211) tp_is_empty!34857 (not b!1301576) (not b!1301443) (not b!1301573) (not b!1301639) (not b!1301540) (not b!1301605) (not d!141263) (not d!141273) (not b!1301647) (not d!141275) (not d!141185) (not b!1301653) (not b!1301433) (not b!1301522) (not b!1301438) (not d!141179) (not b!1301436) (not d!141221) (not b!1301606) (not d!141241) (not d!141157) (not b!1301515) (not d!141293) (not d!141163) (not b!1301575) (not b!1301428) (not b!1301637) (not d!141201) (not b!1301547) (not b!1301615) (not d!141299) (not b!1301461) (not d!141197) (not b!1301596) (not d!141169) (not b!1301477) (not b!1301440) (not b_next!29217) (not b_lambda!23201) (not b_lambda!23219) (not b!1301632) (not b!1301651) (not b!1301656) (not bm!63966) (not b!1301546) (not b!1301584) (not b!1301582) (not b!1301491) (not b!1301465) (not b!1301635) (not bm!63956) (not b!1301589) (not d!141239) (not d!141151) (not b!1301532) (not b!1301510) (not b!1301645) (not b!1301537))
(check-sat b_and!47359 (not b_next!29217))
