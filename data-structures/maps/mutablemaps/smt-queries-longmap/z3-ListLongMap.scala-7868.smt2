; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97990 () Bool)

(assert start!97990)

(declare-fun b_free!23655 () Bool)

(declare-fun b_next!23655 () Bool)

(assert (=> start!97990 (= b_free!23655 (not b_next!23655))))

(declare-fun tp!83670 () Bool)

(declare-fun b_and!38115 () Bool)

(assert (=> start!97990 (= tp!83670 b_and!38115)))

(declare-fun b!1122715 () Bool)

(declare-fun e!639225 () Bool)

(declare-datatypes ((V!42707 0))(
  ( (V!42708 (val!14149 Int)) )
))
(declare-datatypes ((tuple2!17836 0))(
  ( (tuple2!17837 (_1!8928 (_ BitVec 64)) (_2!8928 V!42707)) )
))
(declare-datatypes ((List!24671 0))(
  ( (Nil!24668) (Cons!24667 (h!25876 tuple2!17836) (t!35325 List!24671)) )
))
(declare-datatypes ((ListLongMap!15817 0))(
  ( (ListLongMap!15818 (toList!7924 List!24671)) )
))
(declare-fun call!47248 () ListLongMap!15817)

(declare-fun call!47249 () ListLongMap!15817)

(assert (=> b!1122715 (= e!639225 (= call!47248 call!47249))))

(declare-fun b!1122716 () Bool)

(declare-fun res!750155 () Bool)

(declare-fun e!639224 () Bool)

(assert (=> b!1122716 (=> (not res!750155) (not e!639224))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122716 (= res!750155 (validMask!0 mask!1564))))

(declare-fun b!1122717 () Bool)

(declare-fun e!639228 () Bool)

(assert (=> b!1122717 (= e!639224 e!639228)))

(declare-fun res!750156 () Bool)

(assert (=> b!1122717 (=> (not res!750156) (not e!639228))))

(declare-datatypes ((array!73196 0))(
  ( (array!73197 (arr!35247 (Array (_ BitVec 32) (_ BitVec 64))) (size!35784 (_ BitVec 32))) )
))
(declare-fun lt!498809 () array!73196)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73196 (_ BitVec 32)) Bool)

(assert (=> b!1122717 (= res!750156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498809 mask!1564))))

(declare-fun _keys!1208 () array!73196)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122717 (= lt!498809 (array!73197 (store (arr!35247 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35784 _keys!1208)))))

(declare-fun mapNonEmpty!44095 () Bool)

(declare-fun mapRes!44095 () Bool)

(declare-fun tp!83669 () Bool)

(declare-fun e!639227 () Bool)

(assert (=> mapNonEmpty!44095 (= mapRes!44095 (and tp!83669 e!639227))))

(declare-datatypes ((ValueCell!13383 0))(
  ( (ValueCellFull!13383 (v!16783 V!42707)) (EmptyCell!13383) )
))
(declare-fun mapRest!44095 () (Array (_ BitVec 32) ValueCell!13383))

(declare-fun mapKey!44095 () (_ BitVec 32))

(declare-fun mapValue!44095 () ValueCell!13383)

(declare-datatypes ((array!73198 0))(
  ( (array!73199 (arr!35248 (Array (_ BitVec 32) ValueCell!13383)) (size!35785 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73198)

(assert (=> mapNonEmpty!44095 (= (arr!35248 _values!996) (store mapRest!44095 mapKey!44095 mapValue!44095))))

(declare-fun b!1122718 () Bool)

(declare-fun e!639231 () Bool)

(declare-fun e!639232 () Bool)

(assert (=> b!1122718 (= e!639231 e!639232)))

(declare-fun res!750146 () Bool)

(assert (=> b!1122718 (=> res!750146 e!639232)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1122718 (= res!750146 (not (= (select (arr!35247 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1122718 e!639225))

(declare-fun c!109433 () Bool)

(assert (=> b!1122718 (= c!109433 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42707)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36757 0))(
  ( (Unit!36758) )
))
(declare-fun lt!498810 () Unit!36757)

(declare-fun minValue!944 () V!42707)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!338 (array!73196 array!73198 (_ BitVec 32) (_ BitVec 32) V!42707 V!42707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36757)

(assert (=> b!1122718 (= lt!498810 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47245 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4384 (array!73196 array!73198 (_ BitVec 32) (_ BitVec 32) V!42707 V!42707 (_ BitVec 32) Int) ListLongMap!15817)

(assert (=> bm!47245 (= call!47249 (getCurrentListMapNoExtraKeys!4384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47246 () Bool)

(declare-fun lt!498808 () array!73198)

(assert (=> bm!47246 (= call!47248 (getCurrentListMapNoExtraKeys!4384 lt!498809 lt!498808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122719 () Bool)

(declare-fun res!750149 () Bool)

(assert (=> b!1122719 (=> (not res!750149) (not e!639228))))

(declare-datatypes ((List!24672 0))(
  ( (Nil!24669) (Cons!24668 (h!25877 (_ BitVec 64)) (t!35326 List!24672)) )
))
(declare-fun arrayNoDuplicates!0 (array!73196 (_ BitVec 32) List!24672) Bool)

(assert (=> b!1122719 (= res!750149 (arrayNoDuplicates!0 lt!498809 #b00000000000000000000000000000000 Nil!24669))))

(declare-fun b!1122720 () Bool)

(declare-fun res!750152 () Bool)

(assert (=> b!1122720 (=> (not res!750152) (not e!639224))))

(assert (=> b!1122720 (= res!750152 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24669))))

(declare-fun b!1122721 () Bool)

(declare-fun e!639229 () Bool)

(assert (=> b!1122721 (= e!639228 (not e!639229))))

(declare-fun res!750144 () Bool)

(assert (=> b!1122721 (=> res!750144 e!639229)))

(assert (=> b!1122721 (= res!750144 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122721 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498804 () Unit!36757)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73196 (_ BitVec 64) (_ BitVec 32)) Unit!36757)

(assert (=> b!1122721 (= lt!498804 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1122722 () Bool)

(declare-fun res!750151 () Bool)

(assert (=> b!1122722 (=> (not res!750151) (not e!639224))))

(assert (=> b!1122722 (= res!750151 (and (= (size!35785 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35784 _keys!1208) (size!35785 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122723 () Bool)

(declare-fun tp_is_empty!28185 () Bool)

(assert (=> b!1122723 (= e!639227 tp_is_empty!28185)))

(declare-fun b!1122724 () Bool)

(declare-fun e!639233 () Bool)

(assert (=> b!1122724 (= e!639233 tp_is_empty!28185)))

(declare-fun b!1122725 () Bool)

(declare-fun res!750148 () Bool)

(assert (=> b!1122725 (=> (not res!750148) (not e!639224))))

(assert (=> b!1122725 (= res!750148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122726 () Bool)

(assert (=> b!1122726 (= e!639229 e!639231)))

(declare-fun res!750154 () Bool)

(assert (=> b!1122726 (=> res!750154 e!639231)))

(assert (=> b!1122726 (= res!750154 (not (= from!1455 i!673)))))

(declare-fun lt!498807 () ListLongMap!15817)

(assert (=> b!1122726 (= lt!498807 (getCurrentListMapNoExtraKeys!4384 lt!498809 lt!498808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2480 (Int (_ BitVec 64)) V!42707)

(assert (=> b!1122726 (= lt!498808 (array!73199 (store (arr!35248 _values!996) i!673 (ValueCellFull!13383 (dynLambda!2480 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35785 _values!996)))))

(declare-fun lt!498806 () ListLongMap!15817)

(assert (=> b!1122726 (= lt!498806 (getCurrentListMapNoExtraKeys!4384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122727 () Bool)

(declare-fun e!639226 () Bool)

(assert (=> b!1122727 (= e!639226 (and e!639233 mapRes!44095))))

(declare-fun condMapEmpty!44095 () Bool)

(declare-fun mapDefault!44095 () ValueCell!13383)

(assert (=> b!1122727 (= condMapEmpty!44095 (= (arr!35248 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13383)) mapDefault!44095)))))

(declare-fun res!750153 () Bool)

(assert (=> start!97990 (=> (not res!750153) (not e!639224))))

(assert (=> start!97990 (= res!750153 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35784 _keys!1208))))))

(assert (=> start!97990 e!639224))

(assert (=> start!97990 tp_is_empty!28185))

(declare-fun array_inv!26936 (array!73196) Bool)

(assert (=> start!97990 (array_inv!26936 _keys!1208)))

(assert (=> start!97990 true))

(assert (=> start!97990 tp!83670))

(declare-fun array_inv!26937 (array!73198) Bool)

(assert (=> start!97990 (and (array_inv!26937 _values!996) e!639226)))

(declare-fun b!1122728 () Bool)

(declare-fun res!750150 () Bool)

(assert (=> b!1122728 (=> (not res!750150) (not e!639224))))

(assert (=> b!1122728 (= res!750150 (= (select (arr!35247 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!44095 () Bool)

(assert (=> mapIsEmpty!44095 mapRes!44095))

(declare-fun b!1122729 () Bool)

(assert (=> b!1122729 (= e!639232 true)))

(declare-fun lt!498805 () Bool)

(declare-fun contains!6442 (ListLongMap!15817 (_ BitVec 64)) Bool)

(assert (=> b!1122729 (= lt!498805 (contains!6442 (getCurrentListMapNoExtraKeys!4384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1122730 () Bool)

(declare-fun -!1086 (ListLongMap!15817 (_ BitVec 64)) ListLongMap!15817)

(assert (=> b!1122730 (= e!639225 (= call!47248 (-!1086 call!47249 k0!934)))))

(declare-fun b!1122731 () Bool)

(declare-fun res!750147 () Bool)

(assert (=> b!1122731 (=> (not res!750147) (not e!639224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122731 (= res!750147 (validKeyInArray!0 k0!934))))

(declare-fun b!1122732 () Bool)

(declare-fun res!750145 () Bool)

(assert (=> b!1122732 (=> (not res!750145) (not e!639224))))

(assert (=> b!1122732 (= res!750145 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35784 _keys!1208))))))

(assert (= (and start!97990 res!750153) b!1122716))

(assert (= (and b!1122716 res!750155) b!1122722))

(assert (= (and b!1122722 res!750151) b!1122725))

(assert (= (and b!1122725 res!750148) b!1122720))

(assert (= (and b!1122720 res!750152) b!1122732))

(assert (= (and b!1122732 res!750145) b!1122731))

(assert (= (and b!1122731 res!750147) b!1122728))

(assert (= (and b!1122728 res!750150) b!1122717))

(assert (= (and b!1122717 res!750156) b!1122719))

(assert (= (and b!1122719 res!750149) b!1122721))

(assert (= (and b!1122721 (not res!750144)) b!1122726))

(assert (= (and b!1122726 (not res!750154)) b!1122718))

(assert (= (and b!1122718 c!109433) b!1122730))

(assert (= (and b!1122718 (not c!109433)) b!1122715))

(assert (= (or b!1122730 b!1122715) bm!47245))

(assert (= (or b!1122730 b!1122715) bm!47246))

(assert (= (and b!1122718 (not res!750146)) b!1122729))

(assert (= (and b!1122727 condMapEmpty!44095) mapIsEmpty!44095))

(assert (= (and b!1122727 (not condMapEmpty!44095)) mapNonEmpty!44095))

(get-info :version)

(assert (= (and mapNonEmpty!44095 ((_ is ValueCellFull!13383) mapValue!44095)) b!1122723))

(assert (= (and b!1122727 ((_ is ValueCellFull!13383) mapDefault!44095)) b!1122724))

(assert (= start!97990 b!1122727))

(declare-fun b_lambda!18659 () Bool)

(assert (=> (not b_lambda!18659) (not b!1122726)))

(declare-fun t!35324 () Bool)

(declare-fun tb!8475 () Bool)

(assert (=> (and start!97990 (= defaultEntry!1004 defaultEntry!1004) t!35324) tb!8475))

(declare-fun result!17503 () Bool)

(assert (=> tb!8475 (= result!17503 tp_is_empty!28185)))

(assert (=> b!1122726 t!35324))

(declare-fun b_and!38117 () Bool)

(assert (= b_and!38115 (and (=> t!35324 result!17503) b_and!38117)))

(declare-fun m!1037425 () Bool)

(assert (=> b!1122719 m!1037425))

(declare-fun m!1037427 () Bool)

(assert (=> b!1122717 m!1037427))

(declare-fun m!1037429 () Bool)

(assert (=> b!1122717 m!1037429))

(declare-fun m!1037431 () Bool)

(assert (=> b!1122725 m!1037431))

(declare-fun m!1037433 () Bool)

(assert (=> b!1122729 m!1037433))

(assert (=> b!1122729 m!1037433))

(declare-fun m!1037435 () Bool)

(assert (=> b!1122729 m!1037435))

(declare-fun m!1037437 () Bool)

(assert (=> b!1122730 m!1037437))

(declare-fun m!1037439 () Bool)

(assert (=> b!1122721 m!1037439))

(declare-fun m!1037441 () Bool)

(assert (=> b!1122721 m!1037441))

(assert (=> bm!47245 m!1037433))

(declare-fun m!1037443 () Bool)

(assert (=> b!1122728 m!1037443))

(declare-fun m!1037445 () Bool)

(assert (=> b!1122720 m!1037445))

(declare-fun m!1037447 () Bool)

(assert (=> b!1122726 m!1037447))

(declare-fun m!1037449 () Bool)

(assert (=> b!1122726 m!1037449))

(declare-fun m!1037451 () Bool)

(assert (=> b!1122726 m!1037451))

(declare-fun m!1037453 () Bool)

(assert (=> b!1122726 m!1037453))

(declare-fun m!1037455 () Bool)

(assert (=> b!1122718 m!1037455))

(declare-fun m!1037457 () Bool)

(assert (=> b!1122718 m!1037457))

(declare-fun m!1037459 () Bool)

(assert (=> start!97990 m!1037459))

(declare-fun m!1037461 () Bool)

(assert (=> start!97990 m!1037461))

(declare-fun m!1037463 () Bool)

(assert (=> bm!47246 m!1037463))

(declare-fun m!1037465 () Bool)

(assert (=> b!1122731 m!1037465))

(declare-fun m!1037467 () Bool)

(assert (=> mapNonEmpty!44095 m!1037467))

(declare-fun m!1037469 () Bool)

(assert (=> b!1122716 m!1037469))

(check-sat (not b_next!23655) (not b!1122720) (not b_lambda!18659) b_and!38117 (not b!1122721) (not b!1122717) (not b!1122730) (not b!1122716) (not b!1122719) (not b!1122731) (not bm!47246) (not b!1122718) (not b!1122725) (not bm!47245) (not mapNonEmpty!44095) tp_is_empty!28185 (not start!97990) (not b!1122729) (not b!1122726))
(check-sat b_and!38117 (not b_next!23655))
