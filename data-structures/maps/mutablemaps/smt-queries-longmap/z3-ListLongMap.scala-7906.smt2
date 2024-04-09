; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98218 () Bool)

(assert start!98218)

(declare-fun b_free!23883 () Bool)

(declare-fun b_next!23883 () Bool)

(assert (=> start!98218 (= b_free!23883 (not b_next!23883))))

(declare-fun tp!84354 () Bool)

(declare-fun b_and!38571 () Bool)

(assert (=> start!98218 (= tp!84354 b_and!38571)))

(declare-datatypes ((V!43011 0))(
  ( (V!43012 (val!14263 Int)) )
))
(declare-fun zeroValue!944 () V!43011)

(declare-datatypes ((tuple2!18050 0))(
  ( (tuple2!18051 (_1!9035 (_ BitVec 64)) (_2!9035 V!43011)) )
))
(declare-datatypes ((List!24869 0))(
  ( (Nil!24866) (Cons!24865 (h!26074 tuple2!18050) (t!35751 List!24869)) )
))
(declare-datatypes ((ListLongMap!16031 0))(
  ( (ListLongMap!16032 (toList!8031 List!24869)) )
))
(declare-fun call!48071 () ListLongMap!16031)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!48067 () Bool)

(declare-datatypes ((ValueCell!13497 0))(
  ( (ValueCellFull!13497 (v!16897 V!43011)) (EmptyCell!13497) )
))
(declare-datatypes ((array!73644 0))(
  ( (array!73645 (arr!35471 (Array (_ BitVec 32) ValueCell!13497)) (size!36008 (_ BitVec 32))) )
))
(declare-fun lt!501449 () array!73644)

(declare-datatypes ((array!73646 0))(
  ( (array!73647 (arr!35472 (Array (_ BitVec 32) (_ BitVec 64))) (size!36009 (_ BitVec 32))) )
))
(declare-fun lt!501458 () array!73646)

(declare-fun minValue!944 () V!43011)

(declare-fun getCurrentListMapNoExtraKeys!4484 (array!73646 array!73644 (_ BitVec 32) (_ BitVec 32) V!43011 V!43011 (_ BitVec 32) Int) ListLongMap!16031)

(assert (=> bm!48067 (= call!48071 (getCurrentListMapNoExtraKeys!4484 lt!501458 lt!501449 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129490 () Bool)

(declare-fun res!754843 () Bool)

(declare-fun e!642858 () Bool)

(assert (=> b!1129490 (=> (not res!754843) (not e!642858))))

(declare-fun _keys!1208 () array!73646)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1129490 (= res!754843 (= (select (arr!35472 _keys!1208) i!673) k0!934))))

(declare-fun bm!48068 () Bool)

(declare-fun _values!996 () array!73644)

(declare-fun call!48070 () ListLongMap!16031)

(assert (=> bm!48068 (= call!48070 (getCurrentListMapNoExtraKeys!4484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129491 () Bool)

(declare-datatypes ((Unit!36950 0))(
  ( (Unit!36951) )
))
(declare-fun e!642851 () Unit!36950)

(declare-fun Unit!36952 () Unit!36950)

(assert (=> b!1129491 (= e!642851 Unit!36952)))

(declare-fun mapNonEmpty!44437 () Bool)

(declare-fun mapRes!44437 () Bool)

(declare-fun tp!84353 () Bool)

(declare-fun e!642862 () Bool)

(assert (=> mapNonEmpty!44437 (= mapRes!44437 (and tp!84353 e!642862))))

(declare-fun mapRest!44437 () (Array (_ BitVec 32) ValueCell!13497))

(declare-fun mapKey!44437 () (_ BitVec 32))

(declare-fun mapValue!44437 () ValueCell!13497)

(assert (=> mapNonEmpty!44437 (= (arr!35471 _values!996) (store mapRest!44437 mapKey!44437 mapValue!44437))))

(declare-fun b!1129492 () Bool)

(declare-fun e!642856 () Bool)

(declare-fun e!642861 () Bool)

(assert (=> b!1129492 (= e!642856 e!642861)))

(declare-fun res!754853 () Bool)

(assert (=> b!1129492 (=> res!754853 e!642861)))

(assert (=> b!1129492 (= res!754853 (not (= (select (arr!35472 _keys!1208) from!1455) k0!934)))))

(declare-fun e!642863 () Bool)

(assert (=> b!1129492 e!642863))

(declare-fun c!109847 () Bool)

(assert (=> b!1129492 (= c!109847 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501445 () Unit!36950)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!415 (array!73646 array!73644 (_ BitVec 32) (_ BitVec 32) V!43011 V!43011 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36950)

(assert (=> b!1129492 (= lt!501445 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!415 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129493 () Bool)

(declare-fun e!642852 () Bool)

(declare-fun tp_is_empty!28413 () Bool)

(assert (=> b!1129493 (= e!642852 tp_is_empty!28413)))

(declare-fun lt!501452 () ListLongMap!16031)

(declare-fun bm!48069 () Bool)

(declare-fun c!109845 () Bool)

(declare-fun call!48074 () ListLongMap!16031)

(declare-fun c!109844 () Bool)

(declare-fun +!3399 (ListLongMap!16031 tuple2!18050) ListLongMap!16031)

(assert (=> bm!48069 (= call!48074 (+!3399 lt!501452 (ite (or c!109844 c!109845) (tuple2!18051 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18051 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!48070 () Bool)

(declare-fun call!48072 () ListLongMap!16031)

(declare-fun call!48077 () Bool)

(declare-fun lt!501446 () ListLongMap!16031)

(declare-fun contains!6525 (ListLongMap!16031 (_ BitVec 64)) Bool)

(assert (=> bm!48070 (= call!48077 (contains!6525 (ite c!109844 lt!501446 call!48072) k0!934))))

(declare-fun b!1129495 () Bool)

(declare-fun -!1162 (ListLongMap!16031 (_ BitVec 64)) ListLongMap!16031)

(assert (=> b!1129495 (= e!642863 (= call!48071 (-!1162 call!48070 k0!934)))))

(declare-fun b!1129496 () Bool)

(declare-fun e!642855 () Unit!36950)

(declare-fun e!642857 () Unit!36950)

(assert (=> b!1129496 (= e!642855 e!642857)))

(declare-fun lt!501453 () Bool)

(assert (=> b!1129496 (= c!109845 (and (not lt!501453) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129497 () Bool)

(declare-fun e!642853 () Bool)

(assert (=> b!1129497 (= e!642853 true)))

(declare-fun lt!501450 () Bool)

(declare-fun getCurrentListMap!4436 (array!73646 array!73644 (_ BitVec 32) (_ BitVec 32) V!43011 V!43011 (_ BitVec 32) Int) ListLongMap!16031)

(assert (=> b!1129497 (= lt!501450 (contains!6525 (getCurrentListMap!4436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1129498 () Bool)

(declare-fun call!48076 () Bool)

(assert (=> b!1129498 call!48076))

(declare-fun lt!501454 () Unit!36950)

(declare-fun call!48073 () Unit!36950)

(assert (=> b!1129498 (= lt!501454 call!48073)))

(assert (=> b!1129498 (= e!642857 lt!501454)))

(declare-fun bm!48071 () Bool)

(assert (=> bm!48071 (= call!48076 call!48077)))

(declare-fun b!1129499 () Bool)

(declare-fun e!642854 () Bool)

(declare-fun e!642849 () Bool)

(assert (=> b!1129499 (= e!642854 (not e!642849))))

(declare-fun res!754847 () Bool)

(assert (=> b!1129499 (=> res!754847 e!642849)))

(assert (=> b!1129499 (= res!754847 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129499 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501459 () Unit!36950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73646 (_ BitVec 64) (_ BitVec 32)) Unit!36950)

(assert (=> b!1129499 (= lt!501459 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1129500 () Bool)

(declare-fun res!754849 () Bool)

(assert (=> b!1129500 (=> (not res!754849) (not e!642854))))

(declare-datatypes ((List!24870 0))(
  ( (Nil!24867) (Cons!24866 (h!26075 (_ BitVec 64)) (t!35752 List!24870)) )
))
(declare-fun arrayNoDuplicates!0 (array!73646 (_ BitVec 32) List!24870) Bool)

(assert (=> b!1129500 (= res!754849 (arrayNoDuplicates!0 lt!501458 #b00000000000000000000000000000000 Nil!24867))))

(declare-fun b!1129501 () Bool)

(declare-fun res!754848 () Bool)

(assert (=> b!1129501 (=> (not res!754848) (not e!642858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73646 (_ BitVec 32)) Bool)

(assert (=> b!1129501 (= res!754848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44437 () Bool)

(assert (=> mapIsEmpty!44437 mapRes!44437))

(declare-fun b!1129502 () Bool)

(declare-fun lt!501448 () Unit!36950)

(assert (=> b!1129502 (= e!642851 lt!501448)))

(assert (=> b!1129502 (= lt!501448 call!48073)))

(assert (=> b!1129502 call!48076))

(declare-fun b!1129503 () Bool)

(declare-fun res!754851 () Bool)

(assert (=> b!1129503 (=> (not res!754851) (not e!642858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129503 (= res!754851 (validMask!0 mask!1564))))

(declare-fun b!1129504 () Bool)

(declare-fun res!754846 () Bool)

(assert (=> b!1129504 (=> (not res!754846) (not e!642858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129504 (= res!754846 (validKeyInArray!0 k0!934))))

(declare-fun bm!48072 () Bool)

(declare-fun call!48075 () Unit!36950)

(declare-fun addStillContains!698 (ListLongMap!16031 (_ BitVec 64) V!43011 (_ BitVec 64)) Unit!36950)

(assert (=> bm!48072 (= call!48075 (addStillContains!698 lt!501452 (ite (or c!109844 c!109845) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109844 c!109845) zeroValue!944 minValue!944) k0!934))))

(declare-fun res!754857 () Bool)

(assert (=> start!98218 (=> (not res!754857) (not e!642858))))

(assert (=> start!98218 (= res!754857 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36009 _keys!1208))))))

(assert (=> start!98218 e!642858))

(assert (=> start!98218 tp_is_empty!28413))

(declare-fun array_inv!27080 (array!73646) Bool)

(assert (=> start!98218 (array_inv!27080 _keys!1208)))

(assert (=> start!98218 true))

(assert (=> start!98218 tp!84354))

(declare-fun e!642850 () Bool)

(declare-fun array_inv!27081 (array!73644) Bool)

(assert (=> start!98218 (and (array_inv!27081 _values!996) e!642850)))

(declare-fun b!1129494 () Bool)

(declare-fun e!642860 () Bool)

(assert (=> b!1129494 (= e!642861 e!642860)))

(declare-fun res!754854 () Bool)

(assert (=> b!1129494 (=> res!754854 e!642860)))

(assert (=> b!1129494 (= res!754854 (not (contains!6525 lt!501452 k0!934)))))

(assert (=> b!1129494 (= lt!501452 (getCurrentListMapNoExtraKeys!4484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48073 () Bool)

(assert (=> bm!48073 (= call!48072 call!48074)))

(declare-fun b!1129505 () Bool)

(assert (=> b!1129505 (= e!642862 tp_is_empty!28413)))

(declare-fun b!1129506 () Bool)

(declare-fun c!109846 () Bool)

(assert (=> b!1129506 (= c!109846 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501453))))

(assert (=> b!1129506 (= e!642857 e!642851)))

(declare-fun b!1129507 () Bool)

(declare-fun res!754852 () Bool)

(assert (=> b!1129507 (=> (not res!754852) (not e!642858))))

(assert (=> b!1129507 (= res!754852 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36009 _keys!1208))))))

(declare-fun b!1129508 () Bool)

(assert (=> b!1129508 (= e!642863 (= call!48071 call!48070))))

(declare-fun b!1129509 () Bool)

(declare-fun res!754844 () Bool)

(assert (=> b!1129509 (=> (not res!754844) (not e!642858))))

(assert (=> b!1129509 (= res!754844 (and (= (size!36008 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36009 _keys!1208) (size!36008 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48074 () Bool)

(assert (=> bm!48074 (= call!48073 call!48075)))

(declare-fun b!1129510 () Bool)

(assert (=> b!1129510 (= e!642858 e!642854)))

(declare-fun res!754850 () Bool)

(assert (=> b!1129510 (=> (not res!754850) (not e!642854))))

(assert (=> b!1129510 (= res!754850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501458 mask!1564))))

(assert (=> b!1129510 (= lt!501458 (array!73647 (store (arr!35472 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36009 _keys!1208)))))

(declare-fun b!1129511 () Bool)

(assert (=> b!1129511 (= e!642849 e!642856)))

(declare-fun res!754855 () Bool)

(assert (=> b!1129511 (=> res!754855 e!642856)))

(assert (=> b!1129511 (= res!754855 (not (= from!1455 i!673)))))

(declare-fun lt!501457 () ListLongMap!16031)

(assert (=> b!1129511 (= lt!501457 (getCurrentListMapNoExtraKeys!4484 lt!501458 lt!501449 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2561 (Int (_ BitVec 64)) V!43011)

(assert (=> b!1129511 (= lt!501449 (array!73645 (store (arr!35471 _values!996) i!673 (ValueCellFull!13497 (dynLambda!2561 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36008 _values!996)))))

(declare-fun lt!501455 () ListLongMap!16031)

(assert (=> b!1129511 (= lt!501455 (getCurrentListMapNoExtraKeys!4484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129512 () Bool)

(assert (=> b!1129512 (= e!642850 (and e!642852 mapRes!44437))))

(declare-fun condMapEmpty!44437 () Bool)

(declare-fun mapDefault!44437 () ValueCell!13497)

(assert (=> b!1129512 (= condMapEmpty!44437 (= (arr!35471 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13497)) mapDefault!44437)))))

(declare-fun b!1129513 () Bool)

(assert (=> b!1129513 (= e!642860 e!642853)))

(declare-fun res!754856 () Bool)

(assert (=> b!1129513 (=> res!754856 e!642853)))

(assert (=> b!1129513 (= res!754856 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36009 _keys!1208))))))

(declare-fun lt!501451 () Unit!36950)

(assert (=> b!1129513 (= lt!501451 e!642855)))

(assert (=> b!1129513 (= c!109844 (and (not lt!501453) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129513 (= lt!501453 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1129514 () Bool)

(declare-fun res!754845 () Bool)

(assert (=> b!1129514 (=> (not res!754845) (not e!642858))))

(assert (=> b!1129514 (= res!754845 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24867))))

(declare-fun b!1129515 () Bool)

(declare-fun lt!501447 () Unit!36950)

(assert (=> b!1129515 (= e!642855 lt!501447)))

(declare-fun lt!501456 () Unit!36950)

(assert (=> b!1129515 (= lt!501456 call!48075)))

(assert (=> b!1129515 (= lt!501446 call!48074)))

(assert (=> b!1129515 call!48077))

(assert (=> b!1129515 (= lt!501447 (addStillContains!698 lt!501446 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1129515 (contains!6525 (+!3399 lt!501446 (tuple2!18051 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(assert (= (and start!98218 res!754857) b!1129503))

(assert (= (and b!1129503 res!754851) b!1129509))

(assert (= (and b!1129509 res!754844) b!1129501))

(assert (= (and b!1129501 res!754848) b!1129514))

(assert (= (and b!1129514 res!754845) b!1129507))

(assert (= (and b!1129507 res!754852) b!1129504))

(assert (= (and b!1129504 res!754846) b!1129490))

(assert (= (and b!1129490 res!754843) b!1129510))

(assert (= (and b!1129510 res!754850) b!1129500))

(assert (= (and b!1129500 res!754849) b!1129499))

(assert (= (and b!1129499 (not res!754847)) b!1129511))

(assert (= (and b!1129511 (not res!754855)) b!1129492))

(assert (= (and b!1129492 c!109847) b!1129495))

(assert (= (and b!1129492 (not c!109847)) b!1129508))

(assert (= (or b!1129495 b!1129508) bm!48067))

(assert (= (or b!1129495 b!1129508) bm!48068))

(assert (= (and b!1129492 (not res!754853)) b!1129494))

(assert (= (and b!1129494 (not res!754854)) b!1129513))

(assert (= (and b!1129513 c!109844) b!1129515))

(assert (= (and b!1129513 (not c!109844)) b!1129496))

(assert (= (and b!1129496 c!109845) b!1129498))

(assert (= (and b!1129496 (not c!109845)) b!1129506))

(assert (= (and b!1129506 c!109846) b!1129502))

(assert (= (and b!1129506 (not c!109846)) b!1129491))

(assert (= (or b!1129498 b!1129502) bm!48074))

(assert (= (or b!1129498 b!1129502) bm!48073))

(assert (= (or b!1129498 b!1129502) bm!48071))

(assert (= (or b!1129515 bm!48071) bm!48070))

(assert (= (or b!1129515 bm!48074) bm!48072))

(assert (= (or b!1129515 bm!48073) bm!48069))

(assert (= (and b!1129513 (not res!754856)) b!1129497))

(assert (= (and b!1129512 condMapEmpty!44437) mapIsEmpty!44437))

(assert (= (and b!1129512 (not condMapEmpty!44437)) mapNonEmpty!44437))

(get-info :version)

(assert (= (and mapNonEmpty!44437 ((_ is ValueCellFull!13497) mapValue!44437)) b!1129505))

(assert (= (and b!1129512 ((_ is ValueCellFull!13497) mapDefault!44437)) b!1129493))

(assert (= start!98218 b!1129512))

(declare-fun b_lambda!18887 () Bool)

(assert (=> (not b_lambda!18887) (not b!1129511)))

(declare-fun t!35750 () Bool)

(declare-fun tb!8703 () Bool)

(assert (=> (and start!98218 (= defaultEntry!1004 defaultEntry!1004) t!35750) tb!8703))

(declare-fun result!17959 () Bool)

(assert (=> tb!8703 (= result!17959 tp_is_empty!28413)))

(assert (=> b!1129511 t!35750))

(declare-fun b_and!38573 () Bool)

(assert (= b_and!38571 (and (=> t!35750 result!17959) b_and!38573)))

(declare-fun m!1042971 () Bool)

(assert (=> b!1129494 m!1042971))

(declare-fun m!1042973 () Bool)

(assert (=> b!1129494 m!1042973))

(declare-fun m!1042975 () Bool)

(assert (=> bm!48070 m!1042975))

(declare-fun m!1042977 () Bool)

(assert (=> b!1129501 m!1042977))

(declare-fun m!1042979 () Bool)

(assert (=> start!98218 m!1042979))

(declare-fun m!1042981 () Bool)

(assert (=> start!98218 m!1042981))

(declare-fun m!1042983 () Bool)

(assert (=> bm!48069 m!1042983))

(declare-fun m!1042985 () Bool)

(assert (=> bm!48067 m!1042985))

(declare-fun m!1042987 () Bool)

(assert (=> b!1129515 m!1042987))

(declare-fun m!1042989 () Bool)

(assert (=> b!1129515 m!1042989))

(assert (=> b!1129515 m!1042989))

(declare-fun m!1042991 () Bool)

(assert (=> b!1129515 m!1042991))

(declare-fun m!1042993 () Bool)

(assert (=> b!1129490 m!1042993))

(declare-fun m!1042995 () Bool)

(assert (=> b!1129500 m!1042995))

(declare-fun m!1042997 () Bool)

(assert (=> b!1129495 m!1042997))

(declare-fun m!1042999 () Bool)

(assert (=> b!1129503 m!1042999))

(assert (=> bm!48068 m!1042973))

(declare-fun m!1043001 () Bool)

(assert (=> b!1129511 m!1043001))

(declare-fun m!1043003 () Bool)

(assert (=> b!1129511 m!1043003))

(declare-fun m!1043005 () Bool)

(assert (=> b!1129511 m!1043005))

(declare-fun m!1043007 () Bool)

(assert (=> b!1129511 m!1043007))

(declare-fun m!1043009 () Bool)

(assert (=> mapNonEmpty!44437 m!1043009))

(declare-fun m!1043011 () Bool)

(assert (=> bm!48072 m!1043011))

(declare-fun m!1043013 () Bool)

(assert (=> b!1129514 m!1043013))

(declare-fun m!1043015 () Bool)

(assert (=> b!1129510 m!1043015))

(declare-fun m!1043017 () Bool)

(assert (=> b!1129510 m!1043017))

(declare-fun m!1043019 () Bool)

(assert (=> b!1129504 m!1043019))

(declare-fun m!1043021 () Bool)

(assert (=> b!1129499 m!1043021))

(declare-fun m!1043023 () Bool)

(assert (=> b!1129499 m!1043023))

(declare-fun m!1043025 () Bool)

(assert (=> b!1129497 m!1043025))

(assert (=> b!1129497 m!1043025))

(declare-fun m!1043027 () Bool)

(assert (=> b!1129497 m!1043027))

(declare-fun m!1043029 () Bool)

(assert (=> b!1129492 m!1043029))

(declare-fun m!1043031 () Bool)

(assert (=> b!1129492 m!1043031))

(check-sat (not bm!48067) (not b!1129503) (not b!1129515) (not start!98218) (not b_lambda!18887) (not mapNonEmpty!44437) (not b!1129500) (not bm!48069) (not b!1129514) (not b!1129494) (not b_next!23883) (not b!1129495) (not b!1129499) (not b!1129511) (not b!1129504) (not bm!48070) tp_is_empty!28413 (not b!1129510) (not b!1129501) (not bm!48068) (not b!1129492) (not bm!48072) b_and!38573 (not b!1129497))
(check-sat b_and!38573 (not b_next!23883))
