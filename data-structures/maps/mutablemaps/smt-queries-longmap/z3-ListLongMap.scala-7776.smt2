; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97438 () Bool)

(assert start!97438)

(declare-fun b_free!23373 () Bool)

(declare-fun b_next!23373 () Bool)

(assert (=> start!97438 (= b_free!23373 (not b_next!23373))))

(declare-fun tp!82418 () Bool)

(declare-fun b_and!37603 () Bool)

(assert (=> start!97438 (= tp!82418 b_and!37603)))

(declare-fun b!1110693 () Bool)

(declare-fun e!633454 () Bool)

(declare-fun e!633452 () Bool)

(declare-fun mapRes!43267 () Bool)

(assert (=> b!1110693 (= e!633454 (and e!633452 mapRes!43267))))

(declare-fun condMapEmpty!43267 () Bool)

(declare-datatypes ((V!41971 0))(
  ( (V!41972 (val!13873 Int)) )
))
(declare-datatypes ((ValueCell!13107 0))(
  ( (ValueCellFull!13107 (v!16507 V!41971)) (EmptyCell!13107) )
))
(declare-datatypes ((array!72132 0))(
  ( (array!72133 (arr!34715 (Array (_ BitVec 32) ValueCell!13107)) (size!35252 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72132)

(declare-fun mapDefault!43267 () ValueCell!13107)

(assert (=> b!1110693 (= condMapEmpty!43267 (= (arr!34715 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13107)) mapDefault!43267)))))

(declare-fun b!1110694 () Bool)

(declare-fun e!633449 () Bool)

(declare-fun e!633448 () Bool)

(assert (=> b!1110694 (= e!633449 (not e!633448))))

(declare-fun res!741288 () Bool)

(assert (=> b!1110694 (=> res!741288 e!633448)))

(declare-datatypes ((array!72134 0))(
  ( (array!72135 (arr!34716 (Array (_ BitVec 32) (_ BitVec 64))) (size!35253 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72134)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1110694 (= res!741288 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35253 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110694 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36369 0))(
  ( (Unit!36370) )
))
(declare-fun lt!496193 () Unit!36369)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72134 (_ BitVec 64) (_ BitVec 32)) Unit!36369)

(assert (=> b!1110694 (= lt!496193 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun zeroValue!944 () V!41971)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17614 0))(
  ( (tuple2!17615 (_1!8817 (_ BitVec 64)) (_2!8817 V!41971)) )
))
(declare-datatypes ((List!24350 0))(
  ( (Nil!24347) (Cons!24346 (h!25555 tuple2!17614) (t!34776 List!24350)) )
))
(declare-datatypes ((ListLongMap!15595 0))(
  ( (ListLongMap!15596 (toList!7813 List!24350)) )
))
(declare-fun call!46816 () ListLongMap!15595)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41971)

(declare-fun bm!46813 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4276 (array!72134 array!72132 (_ BitVec 32) (_ BitVec 32) V!41971 V!41971 (_ BitVec 32) Int) ListLongMap!15595)

(assert (=> bm!46813 (= call!46816 (getCurrentListMapNoExtraKeys!4276 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110695 () Bool)

(declare-fun res!741284 () Bool)

(declare-fun e!633455 () Bool)

(assert (=> b!1110695 (=> (not res!741284) (not e!633455))))

(assert (=> b!1110695 (= res!741284 (= (select (arr!34716 _keys!1208) i!673) k0!934))))

(declare-fun call!46817 () ListLongMap!15595)

(declare-fun lt!496194 () array!72134)

(declare-fun bm!46814 () Bool)

(declare-fun dynLambda!2398 (Int (_ BitVec 64)) V!41971)

(assert (=> bm!46814 (= call!46817 (getCurrentListMapNoExtraKeys!4276 lt!496194 (array!72133 (store (arr!34715 _values!996) i!673 (ValueCellFull!13107 (dynLambda!2398 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35252 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110697 () Bool)

(declare-fun res!741279 () Bool)

(assert (=> b!1110697 (=> (not res!741279) (not e!633455))))

(declare-datatypes ((List!24351 0))(
  ( (Nil!24348) (Cons!24347 (h!25556 (_ BitVec 64)) (t!34777 List!24351)) )
))
(declare-fun arrayNoDuplicates!0 (array!72134 (_ BitVec 32) List!24351) Bool)

(assert (=> b!1110697 (= res!741279 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24348))))

(declare-fun b!1110698 () Bool)

(assert (=> b!1110698 (= e!633448 true)))

(declare-fun e!633450 () Bool)

(assert (=> b!1110698 e!633450))

(declare-fun c!109211 () Bool)

(assert (=> b!1110698 (= c!109211 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496192 () Unit!36369)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!291 (array!72134 array!72132 (_ BitVec 32) (_ BitVec 32) V!41971 V!41971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36369)

(assert (=> b!1110698 (= lt!496192 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!291 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110699 () Bool)

(declare-fun -!1037 (ListLongMap!15595 (_ BitVec 64)) ListLongMap!15595)

(assert (=> b!1110699 (= e!633450 (= call!46817 (-!1037 call!46816 k0!934)))))

(declare-fun b!1110700 () Bool)

(declare-fun res!741286 () Bool)

(assert (=> b!1110700 (=> (not res!741286) (not e!633455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110700 (= res!741286 (validKeyInArray!0 k0!934))))

(declare-fun b!1110701 () Bool)

(assert (=> b!1110701 (= e!633455 e!633449)))

(declare-fun res!741283 () Bool)

(assert (=> b!1110701 (=> (not res!741283) (not e!633449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72134 (_ BitVec 32)) Bool)

(assert (=> b!1110701 (= res!741283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496194 mask!1564))))

(assert (=> b!1110701 (= lt!496194 (array!72135 (store (arr!34716 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35253 _keys!1208)))))

(declare-fun b!1110702 () Bool)

(declare-fun res!741278 () Bool)

(assert (=> b!1110702 (=> (not res!741278) (not e!633455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110702 (= res!741278 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43267 () Bool)

(assert (=> mapIsEmpty!43267 mapRes!43267))

(declare-fun b!1110703 () Bool)

(declare-fun res!741282 () Bool)

(assert (=> b!1110703 (=> (not res!741282) (not e!633455))))

(assert (=> b!1110703 (= res!741282 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35253 _keys!1208))))))

(declare-fun mapNonEmpty!43267 () Bool)

(declare-fun tp!82419 () Bool)

(declare-fun e!633451 () Bool)

(assert (=> mapNonEmpty!43267 (= mapRes!43267 (and tp!82419 e!633451))))

(declare-fun mapValue!43267 () ValueCell!13107)

(declare-fun mapKey!43267 () (_ BitVec 32))

(declare-fun mapRest!43267 () (Array (_ BitVec 32) ValueCell!13107))

(assert (=> mapNonEmpty!43267 (= (arr!34715 _values!996) (store mapRest!43267 mapKey!43267 mapValue!43267))))

(declare-fun b!1110704 () Bool)

(declare-fun res!741280 () Bool)

(assert (=> b!1110704 (=> (not res!741280) (not e!633455))))

(assert (=> b!1110704 (= res!741280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110705 () Bool)

(declare-fun tp_is_empty!27633 () Bool)

(assert (=> b!1110705 (= e!633451 tp_is_empty!27633)))

(declare-fun b!1110706 () Bool)

(assert (=> b!1110706 (= e!633450 (= call!46817 call!46816))))

(declare-fun b!1110707 () Bool)

(assert (=> b!1110707 (= e!633452 tp_is_empty!27633)))

(declare-fun b!1110708 () Bool)

(declare-fun res!741287 () Bool)

(assert (=> b!1110708 (=> (not res!741287) (not e!633455))))

(assert (=> b!1110708 (= res!741287 (and (= (size!35252 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35253 _keys!1208) (size!35252 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!741281 () Bool)

(assert (=> start!97438 (=> (not res!741281) (not e!633455))))

(assert (=> start!97438 (= res!741281 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35253 _keys!1208))))))

(assert (=> start!97438 e!633455))

(assert (=> start!97438 tp_is_empty!27633))

(declare-fun array_inv!26576 (array!72134) Bool)

(assert (=> start!97438 (array_inv!26576 _keys!1208)))

(assert (=> start!97438 true))

(assert (=> start!97438 tp!82418))

(declare-fun array_inv!26577 (array!72132) Bool)

(assert (=> start!97438 (and (array_inv!26577 _values!996) e!633454)))

(declare-fun b!1110696 () Bool)

(declare-fun res!741285 () Bool)

(assert (=> b!1110696 (=> (not res!741285) (not e!633449))))

(assert (=> b!1110696 (= res!741285 (arrayNoDuplicates!0 lt!496194 #b00000000000000000000000000000000 Nil!24348))))

(assert (= (and start!97438 res!741281) b!1110702))

(assert (= (and b!1110702 res!741278) b!1110708))

(assert (= (and b!1110708 res!741287) b!1110704))

(assert (= (and b!1110704 res!741280) b!1110697))

(assert (= (and b!1110697 res!741279) b!1110703))

(assert (= (and b!1110703 res!741282) b!1110700))

(assert (= (and b!1110700 res!741286) b!1110695))

(assert (= (and b!1110695 res!741284) b!1110701))

(assert (= (and b!1110701 res!741283) b!1110696))

(assert (= (and b!1110696 res!741285) b!1110694))

(assert (= (and b!1110694 (not res!741288)) b!1110698))

(assert (= (and b!1110698 c!109211) b!1110699))

(assert (= (and b!1110698 (not c!109211)) b!1110706))

(assert (= (or b!1110699 b!1110706) bm!46814))

(assert (= (or b!1110699 b!1110706) bm!46813))

(assert (= (and b!1110693 condMapEmpty!43267) mapIsEmpty!43267))

(assert (= (and b!1110693 (not condMapEmpty!43267)) mapNonEmpty!43267))

(get-info :version)

(assert (= (and mapNonEmpty!43267 ((_ is ValueCellFull!13107) mapValue!43267)) b!1110705))

(assert (= (and b!1110693 ((_ is ValueCellFull!13107) mapDefault!43267)) b!1110707))

(assert (= start!97438 b!1110693))

(declare-fun b_lambda!18429 () Bool)

(assert (=> (not b_lambda!18429) (not bm!46814)))

(declare-fun t!34775 () Bool)

(declare-fun tb!8247 () Bool)

(assert (=> (and start!97438 (= defaultEntry!1004 defaultEntry!1004) t!34775) tb!8247))

(declare-fun result!17047 () Bool)

(assert (=> tb!8247 (= result!17047 tp_is_empty!27633)))

(assert (=> bm!46814 t!34775))

(declare-fun b_and!37605 () Bool)

(assert (= b_and!37603 (and (=> t!34775 result!17047) b_and!37605)))

(declare-fun m!1028775 () Bool)

(assert (=> b!1110696 m!1028775))

(declare-fun m!1028777 () Bool)

(assert (=> bm!46814 m!1028777))

(declare-fun m!1028779 () Bool)

(assert (=> bm!46814 m!1028779))

(declare-fun m!1028781 () Bool)

(assert (=> bm!46814 m!1028781))

(declare-fun m!1028783 () Bool)

(assert (=> b!1110695 m!1028783))

(declare-fun m!1028785 () Bool)

(assert (=> mapNonEmpty!43267 m!1028785))

(declare-fun m!1028787 () Bool)

(assert (=> start!97438 m!1028787))

(declare-fun m!1028789 () Bool)

(assert (=> start!97438 m!1028789))

(declare-fun m!1028791 () Bool)

(assert (=> b!1110701 m!1028791))

(declare-fun m!1028793 () Bool)

(assert (=> b!1110701 m!1028793))

(declare-fun m!1028795 () Bool)

(assert (=> b!1110694 m!1028795))

(declare-fun m!1028797 () Bool)

(assert (=> b!1110694 m!1028797))

(declare-fun m!1028799 () Bool)

(assert (=> b!1110704 m!1028799))

(declare-fun m!1028801 () Bool)

(assert (=> b!1110700 m!1028801))

(declare-fun m!1028803 () Bool)

(assert (=> b!1110697 m!1028803))

(declare-fun m!1028805 () Bool)

(assert (=> bm!46813 m!1028805))

(declare-fun m!1028807 () Bool)

(assert (=> b!1110702 m!1028807))

(declare-fun m!1028809 () Bool)

(assert (=> b!1110699 m!1028809))

(declare-fun m!1028811 () Bool)

(assert (=> b!1110698 m!1028811))

(check-sat b_and!37605 (not b!1110700) (not b!1110701) (not b!1110699) (not b!1110697) (not mapNonEmpty!43267) (not b!1110694) tp_is_empty!27633 (not bm!46813) (not bm!46814) (not b_lambda!18429) (not b!1110702) (not b!1110698) (not b!1110704) (not start!97438) (not b_next!23373) (not b!1110696))
(check-sat b_and!37605 (not b_next!23373))
