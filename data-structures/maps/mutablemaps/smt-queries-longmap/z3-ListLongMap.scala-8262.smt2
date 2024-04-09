; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100558 () Bool)

(assert start!100558)

(declare-fun b_free!25845 () Bool)

(declare-fun b_next!25845 () Bool)

(assert (=> start!100558 (= b_free!25845 (not b_next!25845))))

(declare-fun tp!90526 () Bool)

(declare-fun b_and!42591 () Bool)

(assert (=> start!100558 (= tp!90526 b_and!42591)))

(declare-fun b!1201101 () Bool)

(declare-fun res!799666 () Bool)

(declare-fun e!682113 () Bool)

(assert (=> b!1201101 (=> (not res!799666) (not e!682113))))

(declare-datatypes ((array!77852 0))(
  ( (array!77853 (arr!37567 (Array (_ BitVec 32) (_ BitVec 64))) (size!38104 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77852)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45859 0))(
  ( (V!45860 (val!15331 Int)) )
))
(declare-datatypes ((ValueCell!14565 0))(
  ( (ValueCellFull!14565 (v!17970 V!45859)) (EmptyCell!14565) )
))
(declare-datatypes ((array!77854 0))(
  ( (array!77855 (arr!37568 (Array (_ BitVec 32) ValueCell!14565)) (size!38105 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77854)

(assert (=> b!1201101 (= res!799666 (and (= (size!38105 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38104 _keys!1208) (size!38105 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!45859)

(declare-fun lt!544264 () array!77852)

(declare-datatypes ((tuple2!19774 0))(
  ( (tuple2!19775 (_1!9897 (_ BitVec 64)) (_2!9897 V!45859)) )
))
(declare-datatypes ((List!26606 0))(
  ( (Nil!26603) (Cons!26602 (h!27811 tuple2!19774) (t!39438 List!26606)) )
))
(declare-datatypes ((ListLongMap!17755 0))(
  ( (ListLongMap!17756 (toList!8893 List!26606)) )
))
(declare-fun call!57363 () ListLongMap!17755)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45859)

(declare-fun lt!544262 () array!77854)

(declare-fun bm!57360 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5305 (array!77852 array!77854 (_ BitVec 32) (_ BitVec 32) V!45859 V!45859 (_ BitVec 32) Int) ListLongMap!17755)

(assert (=> bm!57360 (= call!57363 (getCurrentListMapNoExtraKeys!5305 lt!544264 lt!544262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201102 () Bool)

(declare-fun res!799656 () Bool)

(assert (=> b!1201102 (=> (not res!799656) (not e!682113))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201102 (= res!799656 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38104 _keys!1208))))))

(declare-fun b!1201103 () Bool)

(declare-fun e!682111 () Bool)

(declare-fun call!57364 () ListLongMap!17755)

(assert (=> b!1201103 (= e!682111 (= call!57363 call!57364))))

(declare-fun bm!57361 () Bool)

(assert (=> bm!57361 (= call!57364 (getCurrentListMapNoExtraKeys!5305 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201104 () Bool)

(declare-fun res!799665 () Bool)

(assert (=> b!1201104 (=> (not res!799665) (not e!682113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77852 (_ BitVec 32)) Bool)

(assert (=> b!1201104 (= res!799665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1201105 () Bool)

(declare-fun e!682114 () Bool)

(declare-fun e!682112 () Bool)

(assert (=> b!1201105 (= e!682114 (not e!682112))))

(declare-fun res!799658 () Bool)

(assert (=> b!1201105 (=> res!799658 e!682112)))

(assert (=> b!1201105 (= res!799658 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201105 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39746 0))(
  ( (Unit!39747) )
))
(declare-fun lt!544263 () Unit!39746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77852 (_ BitVec 64) (_ BitVec 32)) Unit!39746)

(assert (=> b!1201105 (= lt!544263 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1201106 () Bool)

(declare-fun res!799657 () Bool)

(assert (=> b!1201106 (=> (not res!799657) (not e!682113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201106 (= res!799657 (validKeyInArray!0 k0!934))))

(declare-fun b!1201107 () Bool)

(declare-fun e!682120 () Bool)

(declare-fun tp_is_empty!30549 () Bool)

(assert (=> b!1201107 (= e!682120 tp_is_empty!30549)))

(declare-fun b!1201108 () Bool)

(declare-fun res!799660 () Bool)

(assert (=> b!1201108 (=> (not res!799660) (not e!682113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201108 (= res!799660 (validMask!0 mask!1564))))

(declare-fun b!1201109 () Bool)

(assert (=> b!1201109 (= e!682113 e!682114)))

(declare-fun res!799667 () Bool)

(assert (=> b!1201109 (=> (not res!799667) (not e!682114))))

(assert (=> b!1201109 (= res!799667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544264 mask!1564))))

(assert (=> b!1201109 (= lt!544264 (array!77853 (store (arr!37567 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38104 _keys!1208)))))

(declare-fun res!799661 () Bool)

(assert (=> start!100558 (=> (not res!799661) (not e!682113))))

(assert (=> start!100558 (= res!799661 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38104 _keys!1208))))))

(assert (=> start!100558 e!682113))

(assert (=> start!100558 tp_is_empty!30549))

(declare-fun array_inv!28522 (array!77852) Bool)

(assert (=> start!100558 (array_inv!28522 _keys!1208)))

(assert (=> start!100558 true))

(assert (=> start!100558 tp!90526))

(declare-fun e!682116 () Bool)

(declare-fun array_inv!28523 (array!77854) Bool)

(assert (=> start!100558 (and (array_inv!28523 _values!996) e!682116)))

(declare-fun b!1201110 () Bool)

(declare-fun res!799663 () Bool)

(assert (=> b!1201110 (=> (not res!799663) (not e!682113))))

(assert (=> b!1201110 (= res!799663 (= (select (arr!37567 _keys!1208) i!673) k0!934))))

(declare-fun b!1201111 () Bool)

(declare-fun -!1816 (ListLongMap!17755 (_ BitVec 64)) ListLongMap!17755)

(assert (=> b!1201111 (= e!682111 (= call!57363 (-!1816 call!57364 k0!934)))))

(declare-fun b!1201112 () Bool)

(declare-fun e!682118 () Bool)

(declare-fun e!682119 () Bool)

(assert (=> b!1201112 (= e!682118 e!682119)))

(declare-fun res!799659 () Bool)

(assert (=> b!1201112 (=> res!799659 e!682119)))

(assert (=> b!1201112 (= res!799659 (not (= (select (arr!37567 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1201112 e!682111))

(declare-fun c!117427 () Bool)

(assert (=> b!1201112 (= c!117427 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544261 () Unit!39746)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1020 (array!77852 array!77854 (_ BitVec 32) (_ BitVec 32) V!45859 V!45859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39746)

(assert (=> b!1201112 (= lt!544261 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1020 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201113 () Bool)

(declare-fun e!682117 () Bool)

(assert (=> b!1201113 (= e!682117 tp_is_empty!30549)))

(declare-fun b!1201114 () Bool)

(declare-fun res!799668 () Bool)

(assert (=> b!1201114 (=> (not res!799668) (not e!682113))))

(declare-datatypes ((List!26607 0))(
  ( (Nil!26604) (Cons!26603 (h!27812 (_ BitVec 64)) (t!39439 List!26607)) )
))
(declare-fun arrayNoDuplicates!0 (array!77852 (_ BitVec 32) List!26607) Bool)

(assert (=> b!1201114 (= res!799668 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26604))))

(declare-fun mapIsEmpty!47666 () Bool)

(declare-fun mapRes!47666 () Bool)

(assert (=> mapIsEmpty!47666 mapRes!47666))

(declare-fun b!1201115 () Bool)

(assert (=> b!1201115 (= e!682119 true)))

(declare-fun lt!544266 () Bool)

(declare-fun contains!6894 (ListLongMap!17755 (_ BitVec 64)) Bool)

(assert (=> b!1201115 (= lt!544266 (contains!6894 (getCurrentListMapNoExtraKeys!5305 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1201116 () Bool)

(assert (=> b!1201116 (= e!682116 (and e!682120 mapRes!47666))))

(declare-fun condMapEmpty!47666 () Bool)

(declare-fun mapDefault!47666 () ValueCell!14565)

(assert (=> b!1201116 (= condMapEmpty!47666 (= (arr!37568 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14565)) mapDefault!47666)))))

(declare-fun b!1201117 () Bool)

(declare-fun res!799664 () Bool)

(assert (=> b!1201117 (=> (not res!799664) (not e!682114))))

(assert (=> b!1201117 (= res!799664 (arrayNoDuplicates!0 lt!544264 #b00000000000000000000000000000000 Nil!26604))))

(declare-fun mapNonEmpty!47666 () Bool)

(declare-fun tp!90525 () Bool)

(assert (=> mapNonEmpty!47666 (= mapRes!47666 (and tp!90525 e!682117))))

(declare-fun mapKey!47666 () (_ BitVec 32))

(declare-fun mapValue!47666 () ValueCell!14565)

(declare-fun mapRest!47666 () (Array (_ BitVec 32) ValueCell!14565))

(assert (=> mapNonEmpty!47666 (= (arr!37568 _values!996) (store mapRest!47666 mapKey!47666 mapValue!47666))))

(declare-fun b!1201118 () Bool)

(assert (=> b!1201118 (= e!682112 e!682118)))

(declare-fun res!799662 () Bool)

(assert (=> b!1201118 (=> res!799662 e!682118)))

(assert (=> b!1201118 (= res!799662 (not (= from!1455 i!673)))))

(declare-fun lt!544267 () ListLongMap!17755)

(assert (=> b!1201118 (= lt!544267 (getCurrentListMapNoExtraKeys!5305 lt!544264 lt!544262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3233 (Int (_ BitVec 64)) V!45859)

(assert (=> b!1201118 (= lt!544262 (array!77855 (store (arr!37568 _values!996) i!673 (ValueCellFull!14565 (dynLambda!3233 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38105 _values!996)))))

(declare-fun lt!544265 () ListLongMap!17755)

(assert (=> b!1201118 (= lt!544265 (getCurrentListMapNoExtraKeys!5305 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!100558 res!799661) b!1201108))

(assert (= (and b!1201108 res!799660) b!1201101))

(assert (= (and b!1201101 res!799666) b!1201104))

(assert (= (and b!1201104 res!799665) b!1201114))

(assert (= (and b!1201114 res!799668) b!1201102))

(assert (= (and b!1201102 res!799656) b!1201106))

(assert (= (and b!1201106 res!799657) b!1201110))

(assert (= (and b!1201110 res!799663) b!1201109))

(assert (= (and b!1201109 res!799667) b!1201117))

(assert (= (and b!1201117 res!799664) b!1201105))

(assert (= (and b!1201105 (not res!799658)) b!1201118))

(assert (= (and b!1201118 (not res!799662)) b!1201112))

(assert (= (and b!1201112 c!117427) b!1201111))

(assert (= (and b!1201112 (not c!117427)) b!1201103))

(assert (= (or b!1201111 b!1201103) bm!57360))

(assert (= (or b!1201111 b!1201103) bm!57361))

(assert (= (and b!1201112 (not res!799659)) b!1201115))

(assert (= (and b!1201116 condMapEmpty!47666) mapIsEmpty!47666))

(assert (= (and b!1201116 (not condMapEmpty!47666)) mapNonEmpty!47666))

(get-info :version)

(assert (= (and mapNonEmpty!47666 ((_ is ValueCellFull!14565) mapValue!47666)) b!1201113))

(assert (= (and b!1201116 ((_ is ValueCellFull!14565) mapDefault!47666)) b!1201107))

(assert (= start!100558 b!1201116))

(declare-fun b_lambda!21059 () Bool)

(assert (=> (not b_lambda!21059) (not b!1201118)))

(declare-fun t!39437 () Bool)

(declare-fun tb!10653 () Bool)

(assert (=> (and start!100558 (= defaultEntry!1004 defaultEntry!1004) t!39437) tb!10653))

(declare-fun result!21875 () Bool)

(assert (=> tb!10653 (= result!21875 tp_is_empty!30549)))

(assert (=> b!1201118 t!39437))

(declare-fun b_and!42593 () Bool)

(assert (= b_and!42591 (and (=> t!39437 result!21875) b_and!42593)))

(declare-fun m!1107329 () Bool)

(assert (=> b!1201114 m!1107329))

(declare-fun m!1107331 () Bool)

(assert (=> b!1201118 m!1107331))

(declare-fun m!1107333 () Bool)

(assert (=> b!1201118 m!1107333))

(declare-fun m!1107335 () Bool)

(assert (=> b!1201118 m!1107335))

(declare-fun m!1107337 () Bool)

(assert (=> b!1201118 m!1107337))

(declare-fun m!1107339 () Bool)

(assert (=> b!1201105 m!1107339))

(declare-fun m!1107341 () Bool)

(assert (=> b!1201105 m!1107341))

(declare-fun m!1107343 () Bool)

(assert (=> b!1201117 m!1107343))

(declare-fun m!1107345 () Bool)

(assert (=> start!100558 m!1107345))

(declare-fun m!1107347 () Bool)

(assert (=> start!100558 m!1107347))

(declare-fun m!1107349 () Bool)

(assert (=> b!1201115 m!1107349))

(assert (=> b!1201115 m!1107349))

(declare-fun m!1107351 () Bool)

(assert (=> b!1201115 m!1107351))

(assert (=> bm!57361 m!1107349))

(declare-fun m!1107353 () Bool)

(assert (=> b!1201110 m!1107353))

(declare-fun m!1107355 () Bool)

(assert (=> bm!57360 m!1107355))

(declare-fun m!1107357 () Bool)

(assert (=> b!1201104 m!1107357))

(declare-fun m!1107359 () Bool)

(assert (=> mapNonEmpty!47666 m!1107359))

(declare-fun m!1107361 () Bool)

(assert (=> b!1201109 m!1107361))

(declare-fun m!1107363 () Bool)

(assert (=> b!1201109 m!1107363))

(declare-fun m!1107365 () Bool)

(assert (=> b!1201111 m!1107365))

(declare-fun m!1107367 () Bool)

(assert (=> b!1201112 m!1107367))

(declare-fun m!1107369 () Bool)

(assert (=> b!1201112 m!1107369))

(declare-fun m!1107371 () Bool)

(assert (=> b!1201108 m!1107371))

(declare-fun m!1107373 () Bool)

(assert (=> b!1201106 m!1107373))

(check-sat (not b!1201104) (not bm!57361) (not b!1201111) (not b_lambda!21059) (not b!1201118) (not b!1201105) (not b!1201108) (not b!1201117) (not b!1201112) (not b!1201109) (not start!100558) (not b!1201114) (not b_next!25845) tp_is_empty!30549 b_and!42593 (not mapNonEmpty!47666) (not b!1201106) (not bm!57360) (not b!1201115))
(check-sat b_and!42593 (not b_next!25845))
