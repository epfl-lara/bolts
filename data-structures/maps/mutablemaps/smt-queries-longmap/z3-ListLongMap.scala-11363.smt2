; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132116 () Bool)

(assert start!132116)

(declare-fun b_free!31797 () Bool)

(declare-fun b_next!31797 () Bool)

(assert (=> start!132116 (= b_free!31797 (not b_next!31797))))

(declare-fun tp!111644 () Bool)

(declare-fun b_and!51217 () Bool)

(assert (=> start!132116 (= tp!111644 b_and!51217)))

(declare-fun b!1548442 () Bool)

(declare-fun res!1061188 () Bool)

(declare-fun e!861939 () Bool)

(assert (=> b!1548442 (=> (not res!1061188) (not e!861939))))

(declare-datatypes ((array!103311 0))(
  ( (array!103312 (arr!49853 (Array (_ BitVec 32) (_ BitVec 64))) (size!50404 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103311)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103311 (_ BitVec 32)) Bool)

(assert (=> b!1548442 (= res!1061188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548443 () Bool)

(declare-fun c!142149 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!667293 () Bool)

(assert (=> b!1548443 (= c!142149 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667293))))

(declare-datatypes ((V!59207 0))(
  ( (V!59208 (val!19114 Int)) )
))
(declare-datatypes ((tuple2!24752 0))(
  ( (tuple2!24753 (_1!12386 (_ BitVec 64)) (_2!12386 V!59207)) )
))
(declare-datatypes ((List!36253 0))(
  ( (Nil!36250) (Cons!36249 (h!37695 tuple2!24752) (t!50954 List!36253)) )
))
(declare-datatypes ((ListLongMap!22373 0))(
  ( (ListLongMap!22374 (toList!11202 List!36253)) )
))
(declare-fun e!861935 () ListLongMap!22373)

(declare-fun e!861941 () ListLongMap!22373)

(assert (=> b!1548443 (= e!861935 e!861941)))

(declare-fun b!1548444 () Bool)

(declare-fun res!1061190 () Bool)

(declare-fun e!861940 () Bool)

(assert (=> b!1548444 (=> (not res!1061190) (not e!861940))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548444 (= res!1061190 (validKeyInArray!0 (select (arr!49853 _keys!618) from!762)))))

(declare-fun b!1548445 () Bool)

(declare-fun res!1061191 () Bool)

(assert (=> b!1548445 (=> (not res!1061191) (not e!861939))))

(declare-datatypes ((List!36254 0))(
  ( (Nil!36251) (Cons!36250 (h!37696 (_ BitVec 64)) (t!50955 List!36254)) )
))
(declare-fun arrayNoDuplicates!0 (array!103311 (_ BitVec 32) List!36254) Bool)

(assert (=> b!1548445 (= res!1061191 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36251))))

(declare-fun b!1548446 () Bool)

(declare-fun e!861938 () Bool)

(declare-fun e!861936 () Bool)

(declare-fun mapRes!58813 () Bool)

(assert (=> b!1548446 (= e!861938 (and e!861936 mapRes!58813))))

(declare-fun condMapEmpty!58813 () Bool)

(declare-datatypes ((ValueCell!18126 0))(
  ( (ValueCellFull!18126 (v!21912 V!59207)) (EmptyCell!18126) )
))
(declare-datatypes ((array!103313 0))(
  ( (array!103314 (arr!49854 (Array (_ BitVec 32) ValueCell!18126)) (size!50405 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103313)

(declare-fun mapDefault!58813 () ValueCell!18126)

(assert (=> b!1548446 (= condMapEmpty!58813 (= (arr!49854 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18126)) mapDefault!58813)))))

(declare-fun bm!70199 () Bool)

(declare-fun call!70203 () ListLongMap!22373)

(declare-fun call!70206 () ListLongMap!22373)

(assert (=> bm!70199 (= call!70203 call!70206)))

(declare-fun b!1548447 () Bool)

(assert (=> b!1548447 (= e!861939 e!861940)))

(declare-fun res!1061186 () Bool)

(assert (=> b!1548447 (=> (not res!1061186) (not e!861940))))

(assert (=> b!1548447 (= res!1061186 (bvslt from!762 (size!50404 _keys!618)))))

(declare-fun lt!667295 () ListLongMap!22373)

(declare-fun e!861943 () ListLongMap!22373)

(assert (=> b!1548447 (= lt!667295 e!861943)))

(declare-fun c!142151 () Bool)

(assert (=> b!1548447 (= c!142151 (and (not lt!667293) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548447 (= lt!667293 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548448 () Bool)

(declare-fun call!70205 () ListLongMap!22373)

(declare-fun minValue!436 () V!59207)

(declare-fun +!4921 (ListLongMap!22373 tuple2!24752) ListLongMap!22373)

(assert (=> b!1548448 (= e!861943 (+!4921 call!70205 (tuple2!24753 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548449 () Bool)

(declare-fun call!70202 () ListLongMap!22373)

(assert (=> b!1548449 (= e!861941 call!70202)))

(declare-fun b!1548450 () Bool)

(declare-fun res!1061189 () Bool)

(assert (=> b!1548450 (=> (not res!1061189) (not e!861939))))

(assert (=> b!1548450 (= res!1061189 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50404 _keys!618))))))

(declare-fun res!1061192 () Bool)

(assert (=> start!132116 (=> (not res!1061192) (not e!861939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132116 (= res!1061192 (validMask!0 mask!926))))

(assert (=> start!132116 e!861939))

(declare-fun array_inv!38693 (array!103311) Bool)

(assert (=> start!132116 (array_inv!38693 _keys!618)))

(declare-fun tp_is_empty!38073 () Bool)

(assert (=> start!132116 tp_is_empty!38073))

(assert (=> start!132116 true))

(assert (=> start!132116 tp!111644))

(declare-fun array_inv!38694 (array!103313) Bool)

(assert (=> start!132116 (and (array_inv!38694 _values!470) e!861938)))

(declare-fun b!1548451 () Bool)

(assert (=> b!1548451 (= e!861943 e!861935)))

(declare-fun c!142150 () Bool)

(assert (=> b!1548451 (= c!142150 (and (not lt!667293) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548452 () Bool)

(declare-fun res!1061187 () Bool)

(assert (=> b!1548452 (=> (not res!1061187) (not e!861939))))

(assert (=> b!1548452 (= res!1061187 (and (= (size!50405 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50404 _keys!618) (size!50405 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58813 () Bool)

(assert (=> mapIsEmpty!58813 mapRes!58813))

(declare-fun call!70204 () ListLongMap!22373)

(declare-fun bm!70200 () Bool)

(declare-fun zeroValue!436 () V!59207)

(assert (=> bm!70200 (= call!70205 (+!4921 (ite c!142151 call!70206 (ite c!142150 call!70203 call!70204)) (ite (or c!142151 c!142150) (tuple2!24753 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24753 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548453 () Bool)

(assert (=> b!1548453 (= e!861941 call!70204)))

(declare-fun bm!70201 () Bool)

(assert (=> bm!70201 (= call!70204 call!70203)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70202 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6642 (array!103311 array!103313 (_ BitVec 32) (_ BitVec 32) V!59207 V!59207 (_ BitVec 32) Int) ListLongMap!22373)

(assert (=> bm!70202 (= call!70206 (getCurrentListMapNoExtraKeys!6642 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58813 () Bool)

(declare-fun tp!111643 () Bool)

(declare-fun e!861942 () Bool)

(assert (=> mapNonEmpty!58813 (= mapRes!58813 (and tp!111643 e!861942))))

(declare-fun mapRest!58813 () (Array (_ BitVec 32) ValueCell!18126))

(declare-fun mapValue!58813 () ValueCell!18126)

(declare-fun mapKey!58813 () (_ BitVec 32))

(assert (=> mapNonEmpty!58813 (= (arr!49854 _values!470) (store mapRest!58813 mapKey!58813 mapValue!58813))))

(declare-fun b!1548454 () Bool)

(assert (=> b!1548454 (= e!861935 call!70202)))

(declare-fun b!1548455 () Bool)

(assert (=> b!1548455 (= e!861936 tp_is_empty!38073)))

(declare-fun b!1548456 () Bool)

(assert (=> b!1548456 (= e!861940 (not true))))

(declare-fun lt!667291 () V!59207)

(declare-fun lt!667292 () ListLongMap!22373)

(declare-fun apply!1104 (ListLongMap!22373 (_ BitVec 64)) V!59207)

(assert (=> b!1548456 (= (apply!1104 lt!667292 (select (arr!49853 _keys!618) from!762)) lt!667291)))

(declare-fun lt!667290 () ListLongMap!22373)

(declare-datatypes ((Unit!51538 0))(
  ( (Unit!51539) )
))
(declare-fun lt!667289 () Unit!51538)

(declare-fun addApplyDifferent!607 (ListLongMap!22373 (_ BitVec 64) V!59207 (_ BitVec 64)) Unit!51538)

(assert (=> b!1548456 (= lt!667289 (addApplyDifferent!607 lt!667290 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49853 _keys!618) from!762)))))

(declare-fun lt!667288 () V!59207)

(assert (=> b!1548456 (= lt!667288 lt!667291)))

(assert (=> b!1548456 (= lt!667291 (apply!1104 lt!667290 (select (arr!49853 _keys!618) from!762)))))

(assert (=> b!1548456 (= lt!667288 (apply!1104 (+!4921 lt!667290 (tuple2!24753 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49853 _keys!618) from!762)))))

(declare-fun lt!667287 () Unit!51538)

(assert (=> b!1548456 (= lt!667287 (addApplyDifferent!607 lt!667290 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49853 _keys!618) from!762)))))

(declare-fun contains!10088 (ListLongMap!22373 (_ BitVec 64)) Bool)

(assert (=> b!1548456 (contains!10088 lt!667292 (select (arr!49853 _keys!618) from!762))))

(assert (=> b!1548456 (= lt!667292 (+!4921 lt!667290 (tuple2!24753 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667294 () Unit!51538)

(declare-fun addStillContains!1270 (ListLongMap!22373 (_ BitVec 64) V!59207 (_ BitVec 64)) Unit!51538)

(assert (=> b!1548456 (= lt!667294 (addStillContains!1270 lt!667290 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49853 _keys!618) from!762)))))

(assert (=> b!1548456 (= lt!667290 (getCurrentListMapNoExtraKeys!6642 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548457 () Bool)

(assert (=> b!1548457 (= e!861942 tp_is_empty!38073)))

(declare-fun bm!70203 () Bool)

(assert (=> bm!70203 (= call!70202 call!70205)))

(assert (= (and start!132116 res!1061192) b!1548452))

(assert (= (and b!1548452 res!1061187) b!1548442))

(assert (= (and b!1548442 res!1061188) b!1548445))

(assert (= (and b!1548445 res!1061191) b!1548450))

(assert (= (and b!1548450 res!1061189) b!1548447))

(assert (= (and b!1548447 c!142151) b!1548448))

(assert (= (and b!1548447 (not c!142151)) b!1548451))

(assert (= (and b!1548451 c!142150) b!1548454))

(assert (= (and b!1548451 (not c!142150)) b!1548443))

(assert (= (and b!1548443 c!142149) b!1548449))

(assert (= (and b!1548443 (not c!142149)) b!1548453))

(assert (= (or b!1548449 b!1548453) bm!70201))

(assert (= (or b!1548454 bm!70201) bm!70199))

(assert (= (or b!1548454 b!1548449) bm!70203))

(assert (= (or b!1548448 bm!70199) bm!70202))

(assert (= (or b!1548448 bm!70203) bm!70200))

(assert (= (and b!1548447 res!1061186) b!1548444))

(assert (= (and b!1548444 res!1061190) b!1548456))

(assert (= (and b!1548446 condMapEmpty!58813) mapIsEmpty!58813))

(assert (= (and b!1548446 (not condMapEmpty!58813)) mapNonEmpty!58813))

(get-info :version)

(assert (= (and mapNonEmpty!58813 ((_ is ValueCellFull!18126) mapValue!58813)) b!1548457))

(assert (= (and b!1548446 ((_ is ValueCellFull!18126) mapDefault!58813)) b!1548455))

(assert (= start!132116 b!1548446))

(declare-fun m!1427873 () Bool)

(assert (=> bm!70200 m!1427873))

(declare-fun m!1427875 () Bool)

(assert (=> bm!70202 m!1427875))

(declare-fun m!1427877 () Bool)

(assert (=> b!1548445 m!1427877))

(declare-fun m!1427879 () Bool)

(assert (=> b!1548442 m!1427879))

(declare-fun m!1427881 () Bool)

(assert (=> b!1548448 m!1427881))

(declare-fun m!1427883 () Bool)

(assert (=> start!132116 m!1427883))

(declare-fun m!1427885 () Bool)

(assert (=> start!132116 m!1427885))

(declare-fun m!1427887 () Bool)

(assert (=> start!132116 m!1427887))

(declare-fun m!1427889 () Bool)

(assert (=> b!1548444 m!1427889))

(assert (=> b!1548444 m!1427889))

(declare-fun m!1427891 () Bool)

(assert (=> b!1548444 m!1427891))

(assert (=> b!1548456 m!1427875))

(assert (=> b!1548456 m!1427889))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427893 () Bool)

(assert (=> b!1548456 m!1427893))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427895 () Bool)

(assert (=> b!1548456 m!1427895))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427897 () Bool)

(assert (=> b!1548456 m!1427897))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427899 () Bool)

(assert (=> b!1548456 m!1427899))

(declare-fun m!1427901 () Bool)

(assert (=> b!1548456 m!1427901))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427903 () Bool)

(assert (=> b!1548456 m!1427903))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427905 () Bool)

(assert (=> b!1548456 m!1427905))

(assert (=> b!1548456 m!1427901))

(declare-fun m!1427907 () Bool)

(assert (=> b!1548456 m!1427907))

(assert (=> b!1548456 m!1427889))

(declare-fun m!1427909 () Bool)

(assert (=> b!1548456 m!1427909))

(declare-fun m!1427911 () Bool)

(assert (=> mapNonEmpty!58813 m!1427911))

(check-sat (not bm!70200) tp_is_empty!38073 (not b!1548444) (not b!1548448) (not mapNonEmpty!58813) (not b_next!31797) (not b!1548442) b_and!51217 (not start!132116) (not b!1548456) (not b!1548445) (not bm!70202))
(check-sat b_and!51217 (not b_next!31797))
