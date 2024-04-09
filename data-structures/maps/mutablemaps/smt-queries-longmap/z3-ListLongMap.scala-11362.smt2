; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132110 () Bool)

(assert start!132110)

(declare-fun b_free!31791 () Bool)

(declare-fun b_next!31791 () Bool)

(assert (=> start!132110 (= b_free!31791 (not b_next!31791))))

(declare-fun tp!111625 () Bool)

(declare-fun b_and!51211 () Bool)

(assert (=> start!132110 (= tp!111625 b_and!51211)))

(declare-datatypes ((V!59199 0))(
  ( (V!59200 (val!19111 Int)) )
))
(declare-datatypes ((tuple2!24746 0))(
  ( (tuple2!24747 (_1!12383 (_ BitVec 64)) (_2!12383 V!59199)) )
))
(declare-datatypes ((List!36249 0))(
  ( (Nil!36246) (Cons!36245 (h!37691 tuple2!24746) (t!50950 List!36249)) )
))
(declare-datatypes ((ListLongMap!22367 0))(
  ( (ListLongMap!22368 (toList!11199 List!36249)) )
))
(declare-fun call!70158 () ListLongMap!22367)

(declare-fun zeroValue!436 () V!59199)

(declare-fun bm!70154 () Bool)

(declare-fun call!70157 () ListLongMap!22367)

(declare-fun minValue!436 () V!59199)

(declare-fun call!70161 () ListLongMap!22367)

(declare-fun c!142124 () Bool)

(declare-fun c!142123 () Bool)

(declare-fun call!70160 () ListLongMap!22367)

(declare-fun +!4919 (ListLongMap!22367 tuple2!24746) ListLongMap!22367)

(assert (=> bm!70154 (= call!70158 (+!4919 (ite c!142123 call!70161 (ite c!142124 call!70157 call!70160)) (ite (or c!142123 c!142124) (tuple2!24747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548298 () Bool)

(declare-fun res!1061125 () Bool)

(declare-fun e!861855 () Bool)

(assert (=> b!1548298 (=> (not res!1061125) (not e!861855))))

(declare-datatypes ((array!103299 0))(
  ( (array!103300 (arr!49847 (Array (_ BitVec 32) (_ BitVec 64))) (size!50398 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103299)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103299 (_ BitVec 32)) Bool)

(assert (=> b!1548298 (= res!1061125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1061124 () Bool)

(assert (=> start!132110 (=> (not res!1061124) (not e!861855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132110 (= res!1061124 (validMask!0 mask!926))))

(assert (=> start!132110 e!861855))

(declare-fun array_inv!38689 (array!103299) Bool)

(assert (=> start!132110 (array_inv!38689 _keys!618)))

(declare-fun tp_is_empty!38067 () Bool)

(assert (=> start!132110 tp_is_empty!38067))

(assert (=> start!132110 true))

(assert (=> start!132110 tp!111625))

(declare-datatypes ((ValueCell!18123 0))(
  ( (ValueCellFull!18123 (v!21909 V!59199)) (EmptyCell!18123) )
))
(declare-datatypes ((array!103301 0))(
  ( (array!103302 (arr!49848 (Array (_ BitVec 32) ValueCell!18123)) (size!50399 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103301)

(declare-fun e!861859 () Bool)

(declare-fun array_inv!38690 (array!103301) Bool)

(assert (=> start!132110 (and (array_inv!38690 _values!470) e!861859)))

(declare-fun b!1548299 () Bool)

(declare-fun e!861862 () ListLongMap!22367)

(declare-fun call!70159 () ListLongMap!22367)

(assert (=> b!1548299 (= e!861862 call!70159)))

(declare-fun b!1548300 () Bool)

(declare-fun res!1061129 () Bool)

(assert (=> b!1548300 (=> (not res!1061129) (not e!861855))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1548300 (= res!1061129 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50398 _keys!618))))))

(declare-fun mapNonEmpty!58804 () Bool)

(declare-fun mapRes!58804 () Bool)

(declare-fun tp!111626 () Bool)

(declare-fun e!861856 () Bool)

(assert (=> mapNonEmpty!58804 (= mapRes!58804 (and tp!111626 e!861856))))

(declare-fun mapKey!58804 () (_ BitVec 32))

(declare-fun mapRest!58804 () (Array (_ BitVec 32) ValueCell!18123))

(declare-fun mapValue!58804 () ValueCell!18123)

(assert (=> mapNonEmpty!58804 (= (arr!49848 _values!470) (store mapRest!58804 mapKey!58804 mapValue!58804))))

(declare-fun b!1548301 () Bool)

(declare-fun c!142122 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!667210 () Bool)

(assert (=> b!1548301 (= c!142122 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667210))))

(declare-fun e!861858 () ListLongMap!22367)

(assert (=> b!1548301 (= e!861862 e!861858)))

(declare-fun bm!70155 () Bool)

(assert (=> bm!70155 (= call!70159 call!70158)))

(declare-fun b!1548302 () Bool)

(declare-fun e!861857 () Bool)

(assert (=> b!1548302 (= e!861859 (and e!861857 mapRes!58804))))

(declare-fun condMapEmpty!58804 () Bool)

(declare-fun mapDefault!58804 () ValueCell!18123)

(assert (=> b!1548302 (= condMapEmpty!58804 (= (arr!49848 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18123)) mapDefault!58804)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70156 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6639 (array!103299 array!103301 (_ BitVec 32) (_ BitVec 32) V!59199 V!59199 (_ BitVec 32) Int) ListLongMap!22367)

(assert (=> bm!70156 (= call!70161 (getCurrentListMapNoExtraKeys!6639 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70157 () Bool)

(assert (=> bm!70157 (= call!70160 call!70157)))

(declare-fun b!1548303 () Bool)

(assert (=> b!1548303 (= e!861856 tp_is_empty!38067)))

(declare-fun b!1548304 () Bool)

(declare-fun e!861861 () Bool)

(assert (=> b!1548304 (= e!861855 e!861861)))

(declare-fun res!1061127 () Bool)

(assert (=> b!1548304 (=> (not res!1061127) (not e!861861))))

(assert (=> b!1548304 (= res!1061127 (bvslt from!762 (size!50398 _keys!618)))))

(declare-fun lt!667213 () ListLongMap!22367)

(declare-fun e!861854 () ListLongMap!22367)

(assert (=> b!1548304 (= lt!667213 e!861854)))

(assert (=> b!1548304 (= c!142123 (and (not lt!667210) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548304 (= lt!667210 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548305 () Bool)

(assert (=> b!1548305 (= e!861858 call!70160)))

(declare-fun b!1548306 () Bool)

(assert (=> b!1548306 (= e!861857 tp_is_empty!38067)))

(declare-fun b!1548307 () Bool)

(declare-fun res!1061128 () Bool)

(assert (=> b!1548307 (=> (not res!1061128) (not e!861855))))

(assert (=> b!1548307 (= res!1061128 (and (= (size!50399 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50398 _keys!618) (size!50399 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548308 () Bool)

(assert (=> b!1548308 (= e!861858 call!70159)))

(declare-fun b!1548309 () Bool)

(assert (=> b!1548309 (= e!861861 (not true))))

(declare-fun lt!667206 () V!59199)

(declare-fun lt!667208 () ListLongMap!22367)

(declare-fun apply!1102 (ListLongMap!22367 (_ BitVec 64)) V!59199)

(assert (=> b!1548309 (= (apply!1102 lt!667208 (select (arr!49847 _keys!618) from!762)) lt!667206)))

(declare-datatypes ((Unit!51534 0))(
  ( (Unit!51535) )
))
(declare-fun lt!667209 () Unit!51534)

(declare-fun lt!667214 () ListLongMap!22367)

(declare-fun addApplyDifferent!605 (ListLongMap!22367 (_ BitVec 64) V!59199 (_ BitVec 64)) Unit!51534)

(assert (=> b!1548309 (= lt!667209 (addApplyDifferent!605 lt!667214 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49847 _keys!618) from!762)))))

(declare-fun lt!667212 () V!59199)

(assert (=> b!1548309 (= lt!667212 lt!667206)))

(assert (=> b!1548309 (= lt!667206 (apply!1102 lt!667214 (select (arr!49847 _keys!618) from!762)))))

(assert (=> b!1548309 (= lt!667212 (apply!1102 (+!4919 lt!667214 (tuple2!24747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49847 _keys!618) from!762)))))

(declare-fun lt!667207 () Unit!51534)

(assert (=> b!1548309 (= lt!667207 (addApplyDifferent!605 lt!667214 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49847 _keys!618) from!762)))))

(declare-fun contains!10086 (ListLongMap!22367 (_ BitVec 64)) Bool)

(assert (=> b!1548309 (contains!10086 lt!667208 (select (arr!49847 _keys!618) from!762))))

(assert (=> b!1548309 (= lt!667208 (+!4919 lt!667214 (tuple2!24747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667211 () Unit!51534)

(declare-fun addStillContains!1268 (ListLongMap!22367 (_ BitVec 64) V!59199 (_ BitVec 64)) Unit!51534)

(assert (=> b!1548309 (= lt!667211 (addStillContains!1268 lt!667214 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49847 _keys!618) from!762)))))

(assert (=> b!1548309 (= lt!667214 (getCurrentListMapNoExtraKeys!6639 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70158 () Bool)

(assert (=> bm!70158 (= call!70157 call!70161)))

(declare-fun b!1548310 () Bool)

(declare-fun res!1061123 () Bool)

(assert (=> b!1548310 (=> (not res!1061123) (not e!861855))))

(declare-datatypes ((List!36250 0))(
  ( (Nil!36247) (Cons!36246 (h!37692 (_ BitVec 64)) (t!50951 List!36250)) )
))
(declare-fun arrayNoDuplicates!0 (array!103299 (_ BitVec 32) List!36250) Bool)

(assert (=> b!1548310 (= res!1061123 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36247))))

(declare-fun b!1548311 () Bool)

(assert (=> b!1548311 (= e!861854 e!861862)))

(assert (=> b!1548311 (= c!142124 (and (not lt!667210) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!58804 () Bool)

(assert (=> mapIsEmpty!58804 mapRes!58804))

(declare-fun b!1548312 () Bool)

(assert (=> b!1548312 (= e!861854 (+!4919 call!70158 (tuple2!24747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548313 () Bool)

(declare-fun res!1061126 () Bool)

(assert (=> b!1548313 (=> (not res!1061126) (not e!861861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548313 (= res!1061126 (validKeyInArray!0 (select (arr!49847 _keys!618) from!762)))))

(assert (= (and start!132110 res!1061124) b!1548307))

(assert (= (and b!1548307 res!1061128) b!1548298))

(assert (= (and b!1548298 res!1061125) b!1548310))

(assert (= (and b!1548310 res!1061123) b!1548300))

(assert (= (and b!1548300 res!1061129) b!1548304))

(assert (= (and b!1548304 c!142123) b!1548312))

(assert (= (and b!1548304 (not c!142123)) b!1548311))

(assert (= (and b!1548311 c!142124) b!1548299))

(assert (= (and b!1548311 (not c!142124)) b!1548301))

(assert (= (and b!1548301 c!142122) b!1548308))

(assert (= (and b!1548301 (not c!142122)) b!1548305))

(assert (= (or b!1548308 b!1548305) bm!70157))

(assert (= (or b!1548299 bm!70157) bm!70158))

(assert (= (or b!1548299 b!1548308) bm!70155))

(assert (= (or b!1548312 bm!70158) bm!70156))

(assert (= (or b!1548312 bm!70155) bm!70154))

(assert (= (and b!1548304 res!1061127) b!1548313))

(assert (= (and b!1548313 res!1061126) b!1548309))

(assert (= (and b!1548302 condMapEmpty!58804) mapIsEmpty!58804))

(assert (= (and b!1548302 (not condMapEmpty!58804)) mapNonEmpty!58804))

(get-info :version)

(assert (= (and mapNonEmpty!58804 ((_ is ValueCellFull!18123) mapValue!58804)) b!1548303))

(assert (= (and b!1548302 ((_ is ValueCellFull!18123) mapDefault!58804)) b!1548306))

(assert (= start!132110 b!1548302))

(declare-fun m!1427753 () Bool)

(assert (=> b!1548309 m!1427753))

(declare-fun m!1427755 () Bool)

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427757 () Bool)

(assert (=> b!1548309 m!1427757))

(declare-fun m!1427759 () Bool)

(assert (=> b!1548309 m!1427759))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427761 () Bool)

(assert (=> b!1548309 m!1427761))

(declare-fun m!1427763 () Bool)

(assert (=> b!1548309 m!1427763))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427765 () Bool)

(assert (=> b!1548309 m!1427765))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427767 () Bool)

(assert (=> b!1548309 m!1427767))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427769 () Bool)

(assert (=> b!1548309 m!1427769))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427771 () Bool)

(assert (=> b!1548309 m!1427771))

(assert (=> b!1548309 m!1427755))

(assert (=> b!1548309 m!1427753))

(assert (=> b!1548309 m!1427755))

(declare-fun m!1427773 () Bool)

(assert (=> b!1548309 m!1427773))

(declare-fun m!1427775 () Bool)

(assert (=> b!1548310 m!1427775))

(assert (=> b!1548313 m!1427755))

(assert (=> b!1548313 m!1427755))

(declare-fun m!1427777 () Bool)

(assert (=> b!1548313 m!1427777))

(declare-fun m!1427779 () Bool)

(assert (=> start!132110 m!1427779))

(declare-fun m!1427781 () Bool)

(assert (=> start!132110 m!1427781))

(declare-fun m!1427783 () Bool)

(assert (=> start!132110 m!1427783))

(declare-fun m!1427785 () Bool)

(assert (=> mapNonEmpty!58804 m!1427785))

(declare-fun m!1427787 () Bool)

(assert (=> b!1548298 m!1427787))

(declare-fun m!1427789 () Bool)

(assert (=> b!1548312 m!1427789))

(declare-fun m!1427791 () Bool)

(assert (=> bm!70154 m!1427791))

(assert (=> bm!70156 m!1427759))

(check-sat (not start!132110) (not b!1548313) (not bm!70156) (not b_next!31791) b_and!51211 (not b!1548298) (not b!1548309) tp_is_empty!38067 (not b!1548310) (not b!1548312) (not bm!70154) (not mapNonEmpty!58804))
(check-sat b_and!51211 (not b_next!31791))
