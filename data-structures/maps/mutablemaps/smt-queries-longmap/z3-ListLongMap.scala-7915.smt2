; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98272 () Bool)

(assert start!98272)

(declare-fun b_free!23937 () Bool)

(declare-fun b_next!23937 () Bool)

(assert (=> start!98272 (= b_free!23937 (not b_next!23937))))

(declare-fun tp!84516 () Bool)

(declare-fun b_and!38679 () Bool)

(assert (=> start!98272 (= tp!84516 b_and!38679)))

(declare-datatypes ((V!43083 0))(
  ( (V!43084 (val!14290 Int)) )
))
(declare-fun zeroValue!944 () V!43083)

(declare-fun c!110185 () Bool)

(declare-datatypes ((tuple2!18102 0))(
  ( (tuple2!18103 (_1!9061 (_ BitVec 64)) (_2!9061 V!43083)) )
))
(declare-datatypes ((List!24916 0))(
  ( (Nil!24913) (Cons!24912 (h!26121 tuple2!18102) (t!35852 List!24916)) )
))
(declare-datatypes ((ListLongMap!16083 0))(
  ( (ListLongMap!16084 (toList!8057 List!24916)) )
))
(declare-fun lt!502664 () ListLongMap!16083)

(declare-fun c!110183 () Bool)

(declare-fun call!48720 () ListLongMap!16083)

(declare-fun lt!502672 () ListLongMap!16083)

(declare-fun minValue!944 () V!43083)

(declare-fun bm!48715 () Bool)

(declare-fun +!3420 (ListLongMap!16083 tuple2!18102) ListLongMap!16083)

(assert (=> bm!48715 (= call!48720 (+!3420 (ite c!110183 lt!502672 lt!502664) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1131665 () Bool)

(declare-fun res!756051 () Bool)

(declare-fun e!644064 () Bool)

(assert (=> b!1131665 (=> (not res!756051) (not e!644064))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13524 0))(
  ( (ValueCellFull!13524 (v!16924 V!43083)) (EmptyCell!13524) )
))
(declare-datatypes ((array!73752 0))(
  ( (array!73753 (arr!35525 (Array (_ BitVec 32) ValueCell!13524)) (size!36062 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73752)

(declare-datatypes ((array!73754 0))(
  ( (array!73755 (arr!35526 (Array (_ BitVec 32) (_ BitVec 64))) (size!36063 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73754)

(assert (=> b!1131665 (= res!756051 (and (= (size!36062 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36063 _keys!1208) (size!36062 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1131666 () Bool)

(declare-fun e!644072 () Bool)

(declare-fun e!644077 () Bool)

(assert (=> b!1131666 (= e!644072 (not e!644077))))

(declare-fun res!756054 () Bool)

(assert (=> b!1131666 (=> res!756054 e!644077)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131666 (= res!756054 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1131666 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37021 0))(
  ( (Unit!37022) )
))
(declare-fun lt!502662 () Unit!37021)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73754 (_ BitVec 64) (_ BitVec 32)) Unit!37021)

(assert (=> b!1131666 (= lt!502662 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1131667 () Bool)

(declare-fun res!756047 () Bool)

(assert (=> b!1131667 (=> (not res!756047) (not e!644072))))

(declare-fun lt!502669 () array!73754)

(declare-datatypes ((List!24917 0))(
  ( (Nil!24914) (Cons!24913 (h!26122 (_ BitVec 64)) (t!35853 List!24917)) )
))
(declare-fun arrayNoDuplicates!0 (array!73754 (_ BitVec 32) List!24917) Bool)

(assert (=> b!1131667 (= res!756047 (arrayNoDuplicates!0 lt!502669 #b00000000000000000000000000000000 Nil!24914))))

(declare-fun b!1131668 () Bool)

(declare-fun e!644078 () Unit!37021)

(declare-fun lt!502667 () Unit!37021)

(assert (=> b!1131668 (= e!644078 lt!502667)))

(declare-fun call!48721 () Unit!37021)

(assert (=> b!1131668 (= lt!502667 call!48721)))

(declare-fun call!48722 () Bool)

(assert (=> b!1131668 call!48722))

(declare-fun b!1131669 () Bool)

(declare-fun res!756044 () Bool)

(assert (=> b!1131669 (=> (not res!756044) (not e!644064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1131669 (= res!756044 (validMask!0 mask!1564))))

(declare-fun b!1131670 () Bool)

(declare-fun e!644069 () Unit!37021)

(declare-fun lt!502661 () Unit!37021)

(assert (=> b!1131670 (= e!644069 lt!502661)))

(declare-fun lt!502665 () Unit!37021)

(declare-fun call!48724 () Unit!37021)

(assert (=> b!1131670 (= lt!502665 call!48724)))

(assert (=> b!1131670 (= lt!502672 (+!3420 lt!502664 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!48719 () Bool)

(assert (=> b!1131670 call!48719))

(declare-fun addStillContains!720 (ListLongMap!16083 (_ BitVec 64) V!43083 (_ BitVec 64)) Unit!37021)

(assert (=> b!1131670 (= lt!502661 (addStillContains!720 lt!502672 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6547 (ListLongMap!16083 (_ BitVec 64)) Bool)

(assert (=> b!1131670 (contains!6547 call!48720 k0!934)))

(declare-fun mapNonEmpty!44518 () Bool)

(declare-fun mapRes!44518 () Bool)

(declare-fun tp!84515 () Bool)

(declare-fun e!644076 () Bool)

(assert (=> mapNonEmpty!44518 (= mapRes!44518 (and tp!84515 e!644076))))

(declare-fun mapKey!44518 () (_ BitVec 32))

(declare-fun mapRest!44518 () (Array (_ BitVec 32) ValueCell!13524))

(declare-fun mapValue!44518 () ValueCell!13524)

(assert (=> mapNonEmpty!44518 (= (arr!35525 _values!996) (store mapRest!44518 mapKey!44518 mapValue!44518))))

(declare-fun call!48718 () ListLongMap!16083)

(declare-fun bm!48716 () Bool)

(assert (=> bm!48716 (= call!48719 (contains!6547 (ite c!110183 lt!502672 call!48718) k0!934))))

(declare-fun b!1131671 () Bool)

(declare-fun res!756055 () Bool)

(assert (=> b!1131671 (=> (not res!756055) (not e!644064))))

(assert (=> b!1131671 (= res!756055 (= (select (arr!35526 _keys!1208) i!673) k0!934))))

(declare-fun bm!48717 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!48723 () ListLongMap!16083)

(declare-fun lt!502663 () array!73752)

(declare-fun getCurrentListMapNoExtraKeys!4508 (array!73754 array!73752 (_ BitVec 32) (_ BitVec 32) V!43083 V!43083 (_ BitVec 32) Int) ListLongMap!16083)

(assert (=> bm!48717 (= call!48723 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131672 () Bool)

(declare-fun res!756045 () Bool)

(assert (=> b!1131672 (=> (not res!756045) (not e!644064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1131672 (= res!756045 (validKeyInArray!0 k0!934))))

(declare-fun b!1131673 () Bool)

(assert (=> b!1131673 call!48722))

(declare-fun lt!502670 () Unit!37021)

(assert (=> b!1131673 (= lt!502670 call!48721)))

(declare-fun e!644071 () Unit!37021)

(assert (=> b!1131673 (= e!644071 lt!502670)))

(declare-fun b!1131674 () Bool)

(declare-fun e!644074 () Bool)

(declare-fun e!644066 () Bool)

(assert (=> b!1131674 (= e!644074 (and e!644066 mapRes!44518))))

(declare-fun condMapEmpty!44518 () Bool)

(declare-fun mapDefault!44518 () ValueCell!13524)

(assert (=> b!1131674 (= condMapEmpty!44518 (= (arr!35525 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13524)) mapDefault!44518)))))

(declare-fun b!1131664 () Bool)

(declare-fun c!110182 () Bool)

(declare-fun lt!502674 () Bool)

(assert (=> b!1131664 (= c!110182 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502674))))

(assert (=> b!1131664 (= e!644071 e!644078)))

(declare-fun res!756050 () Bool)

(assert (=> start!98272 (=> (not res!756050) (not e!644064))))

(assert (=> start!98272 (= res!756050 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36063 _keys!1208))))))

(assert (=> start!98272 e!644064))

(declare-fun tp_is_empty!28467 () Bool)

(assert (=> start!98272 tp_is_empty!28467))

(declare-fun array_inv!27116 (array!73754) Bool)

(assert (=> start!98272 (array_inv!27116 _keys!1208)))

(assert (=> start!98272 true))

(assert (=> start!98272 tp!84516))

(declare-fun array_inv!27117 (array!73752) Bool)

(assert (=> start!98272 (and (array_inv!27117 _values!996) e!644074)))

(declare-fun bm!48718 () Bool)

(assert (=> bm!48718 (= call!48722 call!48719)))

(declare-fun e!644067 () Bool)

(declare-fun b!1131675 () Bool)

(declare-fun call!48725 () ListLongMap!16083)

(declare-fun -!1179 (ListLongMap!16083 (_ BitVec 64)) ListLongMap!16083)

(assert (=> b!1131675 (= e!644067 (= call!48723 (-!1179 call!48725 k0!934)))))

(declare-fun bm!48719 () Bool)

(assert (=> bm!48719 (= call!48724 (addStillContains!720 lt!502664 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1131676 () Bool)

(declare-fun e!644068 () Bool)

(assert (=> b!1131676 (= e!644068 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!48720 () Bool)

(assert (=> bm!48720 (= call!48725 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131677 () Bool)

(declare-fun e!644065 () Bool)

(assert (=> b!1131677 (= e!644077 e!644065)))

(declare-fun res!756053 () Bool)

(assert (=> b!1131677 (=> res!756053 e!644065)))

(assert (=> b!1131677 (= res!756053 (not (= from!1455 i!673)))))

(declare-fun lt!502673 () ListLongMap!16083)

(assert (=> b!1131677 (= lt!502673 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2580 (Int (_ BitVec 64)) V!43083)

(assert (=> b!1131677 (= lt!502663 (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)))))

(declare-fun lt!502671 () ListLongMap!16083)

(assert (=> b!1131677 (= lt!502671 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1131678 () Bool)

(declare-fun e!644073 () Bool)

(declare-fun e!644075 () Bool)

(assert (=> b!1131678 (= e!644073 e!644075)))

(declare-fun res!756049 () Bool)

(assert (=> b!1131678 (=> res!756049 e!644075)))

(assert (=> b!1131678 (= res!756049 (not (contains!6547 lt!502664 k0!934)))))

(assert (=> b!1131678 (= lt!502664 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131679 () Bool)

(assert (=> b!1131679 (= e!644066 tp_is_empty!28467)))

(declare-fun b!1131680 () Bool)

(assert (=> b!1131680 (= e!644075 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208))))))

(assert (=> b!1131680 e!644068))

(declare-fun c!110184 () Bool)

(assert (=> b!1131680 (= c!110184 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!502666 () Unit!37021)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!330 (array!73754 array!73752 (_ BitVec 32) (_ BitVec 32) V!43083 V!43083 (_ BitVec 64) (_ BitVec 32) Int) Unit!37021)

(assert (=> b!1131680 (= lt!502666 (lemmaListMapContainsThenArrayContainsFrom!330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!502660 () Unit!37021)

(assert (=> b!1131680 (= lt!502660 e!644069)))

(assert (=> b!1131680 (= c!110183 (and (not lt!502674) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1131680 (= lt!502674 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1131681 () Bool)

(assert (=> b!1131681 (= e!644067 (= call!48723 call!48725))))

(declare-fun b!1131682 () Bool)

(assert (=> b!1131682 (= e!644065 e!644073)))

(declare-fun res!756056 () Bool)

(assert (=> b!1131682 (=> res!756056 e!644073)))

(assert (=> b!1131682 (= res!756056 (not (= (select (arr!35526 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1131682 e!644067))

(declare-fun c!110186 () Bool)

(assert (=> b!1131682 (= c!110186 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502668 () Unit!37021)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!435 (array!73754 array!73752 (_ BitVec 32) (_ BitVec 32) V!43083 V!43083 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37021)

(assert (=> b!1131682 (= lt!502668 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131683 () Bool)

(declare-fun res!756052 () Bool)

(assert (=> b!1131683 (=> (not res!756052) (not e!644064))))

(assert (=> b!1131683 (= res!756052 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24914))))

(declare-fun b!1131684 () Bool)

(assert (=> b!1131684 (= e!644064 e!644072)))

(declare-fun res!756046 () Bool)

(assert (=> b!1131684 (=> (not res!756046) (not e!644072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73754 (_ BitVec 32)) Bool)

(assert (=> b!1131684 (= res!756046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502669 mask!1564))))

(assert (=> b!1131684 (= lt!502669 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))

(declare-fun b!1131685 () Bool)

(assert (=> b!1131685 (= e!644068 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!502674) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!48721 () Bool)

(assert (=> bm!48721 (= call!48718 call!48720)))

(declare-fun b!1131686 () Bool)

(declare-fun res!756048 () Bool)

(assert (=> b!1131686 (=> (not res!756048) (not e!644064))))

(assert (=> b!1131686 (= res!756048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1131687 () Bool)

(assert (=> b!1131687 (= e!644076 tp_is_empty!28467)))

(declare-fun mapIsEmpty!44518 () Bool)

(assert (=> mapIsEmpty!44518 mapRes!44518))

(declare-fun b!1131688 () Bool)

(assert (=> b!1131688 (= e!644069 e!644071)))

(assert (=> b!1131688 (= c!110185 (and (not lt!502674) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1131689 () Bool)

(declare-fun res!756057 () Bool)

(assert (=> b!1131689 (=> (not res!756057) (not e!644064))))

(assert (=> b!1131689 (= res!756057 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36063 _keys!1208))))))

(declare-fun b!1131690 () Bool)

(declare-fun Unit!37023 () Unit!37021)

(assert (=> b!1131690 (= e!644078 Unit!37023)))

(declare-fun bm!48722 () Bool)

(assert (=> bm!48722 (= call!48721 call!48724)))

(assert (= (and start!98272 res!756050) b!1131669))

(assert (= (and b!1131669 res!756044) b!1131665))

(assert (= (and b!1131665 res!756051) b!1131686))

(assert (= (and b!1131686 res!756048) b!1131683))

(assert (= (and b!1131683 res!756052) b!1131689))

(assert (= (and b!1131689 res!756057) b!1131672))

(assert (= (and b!1131672 res!756045) b!1131671))

(assert (= (and b!1131671 res!756055) b!1131684))

(assert (= (and b!1131684 res!756046) b!1131667))

(assert (= (and b!1131667 res!756047) b!1131666))

(assert (= (and b!1131666 (not res!756054)) b!1131677))

(assert (= (and b!1131677 (not res!756053)) b!1131682))

(assert (= (and b!1131682 c!110186) b!1131675))

(assert (= (and b!1131682 (not c!110186)) b!1131681))

(assert (= (or b!1131675 b!1131681) bm!48717))

(assert (= (or b!1131675 b!1131681) bm!48720))

(assert (= (and b!1131682 (not res!756056)) b!1131678))

(assert (= (and b!1131678 (not res!756049)) b!1131680))

(assert (= (and b!1131680 c!110183) b!1131670))

(assert (= (and b!1131680 (not c!110183)) b!1131688))

(assert (= (and b!1131688 c!110185) b!1131673))

(assert (= (and b!1131688 (not c!110185)) b!1131664))

(assert (= (and b!1131664 c!110182) b!1131668))

(assert (= (and b!1131664 (not c!110182)) b!1131690))

(assert (= (or b!1131673 b!1131668) bm!48722))

(assert (= (or b!1131673 b!1131668) bm!48721))

(assert (= (or b!1131673 b!1131668) bm!48718))

(assert (= (or b!1131670 bm!48718) bm!48716))

(assert (= (or b!1131670 bm!48722) bm!48719))

(assert (= (or b!1131670 bm!48721) bm!48715))

(assert (= (and b!1131680 c!110184) b!1131676))

(assert (= (and b!1131680 (not c!110184)) b!1131685))

(assert (= (and b!1131674 condMapEmpty!44518) mapIsEmpty!44518))

(assert (= (and b!1131674 (not condMapEmpty!44518)) mapNonEmpty!44518))

(get-info :version)

(assert (= (and mapNonEmpty!44518 ((_ is ValueCellFull!13524) mapValue!44518)) b!1131687))

(assert (= (and b!1131674 ((_ is ValueCellFull!13524) mapDefault!44518)) b!1131679))

(assert (= start!98272 b!1131674))

(declare-fun b_lambda!18941 () Bool)

(assert (=> (not b_lambda!18941) (not b!1131677)))

(declare-fun t!35851 () Bool)

(declare-fun tb!8757 () Bool)

(assert (=> (and start!98272 (= defaultEntry!1004 defaultEntry!1004) t!35851) tb!8757))

(declare-fun result!18067 () Bool)

(assert (=> tb!8757 (= result!18067 tp_is_empty!28467)))

(assert (=> b!1131677 t!35851))

(declare-fun b_and!38681 () Bool)

(assert (= b_and!38679 (and (=> t!35851 result!18067) b_and!38681)))

(declare-fun m!1044645 () Bool)

(assert (=> bm!48720 m!1044645))

(declare-fun m!1044647 () Bool)

(assert (=> b!1131672 m!1044647))

(declare-fun m!1044649 () Bool)

(assert (=> b!1131680 m!1044649))

(declare-fun m!1044651 () Bool)

(assert (=> b!1131670 m!1044651))

(declare-fun m!1044653 () Bool)

(assert (=> b!1131670 m!1044653))

(declare-fun m!1044655 () Bool)

(assert (=> b!1131670 m!1044655))

(declare-fun m!1044657 () Bool)

(assert (=> b!1131686 m!1044657))

(declare-fun m!1044659 () Bool)

(assert (=> bm!48716 m!1044659))

(declare-fun m!1044661 () Bool)

(assert (=> b!1131683 m!1044661))

(declare-fun m!1044663 () Bool)

(assert (=> bm!48719 m!1044663))

(declare-fun m!1044665 () Bool)

(assert (=> b!1131671 m!1044665))

(declare-fun m!1044667 () Bool)

(assert (=> mapNonEmpty!44518 m!1044667))

(declare-fun m!1044669 () Bool)

(assert (=> b!1131676 m!1044669))

(declare-fun m!1044671 () Bool)

(assert (=> bm!48715 m!1044671))

(declare-fun m!1044673 () Bool)

(assert (=> b!1131678 m!1044673))

(assert (=> b!1131678 m!1044645))

(declare-fun m!1044675 () Bool)

(assert (=> b!1131675 m!1044675))

(declare-fun m!1044677 () Bool)

(assert (=> bm!48717 m!1044677))

(declare-fun m!1044679 () Bool)

(assert (=> b!1131677 m!1044679))

(declare-fun m!1044681 () Bool)

(assert (=> b!1131677 m!1044681))

(declare-fun m!1044683 () Bool)

(assert (=> b!1131677 m!1044683))

(declare-fun m!1044685 () Bool)

(assert (=> b!1131677 m!1044685))

(declare-fun m!1044687 () Bool)

(assert (=> b!1131666 m!1044687))

(declare-fun m!1044689 () Bool)

(assert (=> b!1131666 m!1044689))

(declare-fun m!1044691 () Bool)

(assert (=> b!1131682 m!1044691))

(declare-fun m!1044693 () Bool)

(assert (=> b!1131682 m!1044693))

(declare-fun m!1044695 () Bool)

(assert (=> b!1131684 m!1044695))

(declare-fun m!1044697 () Bool)

(assert (=> b!1131684 m!1044697))

(declare-fun m!1044699 () Bool)

(assert (=> start!98272 m!1044699))

(declare-fun m!1044701 () Bool)

(assert (=> start!98272 m!1044701))

(declare-fun m!1044703 () Bool)

(assert (=> b!1131669 m!1044703))

(declare-fun m!1044705 () Bool)

(assert (=> b!1131667 m!1044705))

(check-sat (not b!1131669) (not b!1131676) (not b!1131677) (not b!1131680) (not bm!48719) (not b!1131672) (not b!1131686) (not b_lambda!18941) (not bm!48715) (not b!1131675) (not b!1131684) tp_is_empty!28467 (not b!1131682) (not bm!48717) b_and!38681 (not b_next!23937) (not b!1131667) (not bm!48720) (not b!1131678) (not b!1131670) (not b!1131683) (not bm!48716) (not mapNonEmpty!44518) (not start!98272) (not b!1131666))
(check-sat b_and!38681 (not b_next!23937))
(get-model)

(declare-fun b_lambda!18945 () Bool)

(assert (= b_lambda!18941 (or (and start!98272 b_free!23937) b_lambda!18945)))

(check-sat (not b!1131669) (not b!1131676) (not b!1131677) (not b!1131680) (not b_lambda!18945) (not bm!48719) (not b!1131672) (not b!1131686) (not bm!48715) (not b!1131675) (not b!1131684) tp_is_empty!28467 (not b!1131682) (not bm!48717) b_and!38681 (not b_next!23937) (not b!1131667) (not bm!48720) (not b!1131678) (not b!1131670) (not b!1131683) (not bm!48716) (not mapNonEmpty!44518) (not start!98272) (not b!1131666))
(check-sat b_and!38681 (not b_next!23937))
(get-model)

(declare-fun d!131249 () Bool)

(declare-fun e!644126 () Bool)

(assert (=> d!131249 e!644126))

(declare-fun res!756105 () Bool)

(assert (=> d!131249 (=> (not res!756105) (not e!644126))))

(declare-fun lt!502729 () ListLongMap!16083)

(assert (=> d!131249 (= res!756105 (contains!6547 lt!502729 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!502731 () List!24916)

(assert (=> d!131249 (= lt!502729 (ListLongMap!16084 lt!502731))))

(declare-fun lt!502730 () Unit!37021)

(declare-fun lt!502728 () Unit!37021)

(assert (=> d!131249 (= lt!502730 lt!502728)))

(declare-datatypes ((Option!682 0))(
  ( (Some!681 (v!16926 V!43083)) (None!680) )
))
(declare-fun getValueByKey!631 (List!24916 (_ BitVec 64)) Option!682)

(assert (=> d!131249 (= (getValueByKey!631 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!681 (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lemmaContainsTupThenGetReturnValue!306 (List!24916 (_ BitVec 64) V!43083) Unit!37021)

(assert (=> d!131249 (= lt!502728 (lemmaContainsTupThenGetReturnValue!306 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun insertStrictlySorted!398 (List!24916 (_ BitVec 64) V!43083) List!24916)

(assert (=> d!131249 (= lt!502731 (insertStrictlySorted!398 (toList!8057 lt!502664) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!131249 (= (+!3420 lt!502664 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!502729)))

(declare-fun b!1131780 () Bool)

(declare-fun res!756104 () Bool)

(assert (=> b!1131780 (=> (not res!756104) (not e!644126))))

(assert (=> b!1131780 (= res!756104 (= (getValueByKey!631 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!681 (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1131781 () Bool)

(declare-fun contains!6548 (List!24916 tuple2!18102) Bool)

(assert (=> b!1131781 (= e!644126 (contains!6548 (toList!8057 lt!502729) (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!131249 res!756105) b!1131780))

(assert (= (and b!1131780 res!756104) b!1131781))

(declare-fun m!1044769 () Bool)

(assert (=> d!131249 m!1044769))

(declare-fun m!1044771 () Bool)

(assert (=> d!131249 m!1044771))

(declare-fun m!1044773 () Bool)

(assert (=> d!131249 m!1044773))

(declare-fun m!1044775 () Bool)

(assert (=> d!131249 m!1044775))

(declare-fun m!1044777 () Bool)

(assert (=> b!1131780 m!1044777))

(declare-fun m!1044779 () Bool)

(assert (=> b!1131781 m!1044779))

(assert (=> b!1131670 d!131249))

(declare-fun d!131251 () Bool)

(assert (=> d!131251 (contains!6547 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!502734 () Unit!37021)

(declare-fun choose!1781 (ListLongMap!16083 (_ BitVec 64) V!43083 (_ BitVec 64)) Unit!37021)

(assert (=> d!131251 (= lt!502734 (choose!1781 lt!502672 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!131251 (contains!6547 lt!502672 k0!934)))

(assert (=> d!131251 (= (addStillContains!720 lt!502672 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!502734)))

(declare-fun bs!32953 () Bool)

(assert (= bs!32953 d!131251))

(declare-fun m!1044781 () Bool)

(assert (=> bs!32953 m!1044781))

(assert (=> bs!32953 m!1044781))

(declare-fun m!1044783 () Bool)

(assert (=> bs!32953 m!1044783))

(declare-fun m!1044785 () Bool)

(assert (=> bs!32953 m!1044785))

(declare-fun m!1044787 () Bool)

(assert (=> bs!32953 m!1044787))

(assert (=> b!1131670 d!131251))

(declare-fun d!131253 () Bool)

(declare-fun e!644131 () Bool)

(assert (=> d!131253 e!644131))

(declare-fun res!756108 () Bool)

(assert (=> d!131253 (=> res!756108 e!644131)))

(declare-fun lt!502743 () Bool)

(assert (=> d!131253 (= res!756108 (not lt!502743))))

(declare-fun lt!502744 () Bool)

(assert (=> d!131253 (= lt!502743 lt!502744)))

(declare-fun lt!502745 () Unit!37021)

(declare-fun e!644132 () Unit!37021)

(assert (=> d!131253 (= lt!502745 e!644132)))

(declare-fun c!110204 () Bool)

(assert (=> d!131253 (= c!110204 lt!502744)))

(declare-fun containsKey!586 (List!24916 (_ BitVec 64)) Bool)

(assert (=> d!131253 (= lt!502744 (containsKey!586 (toList!8057 call!48720) k0!934))))

(assert (=> d!131253 (= (contains!6547 call!48720 k0!934) lt!502743)))

(declare-fun b!1131789 () Bool)

(declare-fun lt!502746 () Unit!37021)

(assert (=> b!1131789 (= e!644132 lt!502746)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!415 (List!24916 (_ BitVec 64)) Unit!37021)

(assert (=> b!1131789 (= lt!502746 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 call!48720) k0!934))))

(declare-fun isDefined!455 (Option!682) Bool)

(assert (=> b!1131789 (isDefined!455 (getValueByKey!631 (toList!8057 call!48720) k0!934))))

(declare-fun b!1131790 () Bool)

(declare-fun Unit!37024 () Unit!37021)

(assert (=> b!1131790 (= e!644132 Unit!37024)))

(declare-fun b!1131791 () Bool)

(assert (=> b!1131791 (= e!644131 (isDefined!455 (getValueByKey!631 (toList!8057 call!48720) k0!934)))))

(assert (= (and d!131253 c!110204) b!1131789))

(assert (= (and d!131253 (not c!110204)) b!1131790))

(assert (= (and d!131253 (not res!756108)) b!1131791))

(declare-fun m!1044789 () Bool)

(assert (=> d!131253 m!1044789))

(declare-fun m!1044791 () Bool)

(assert (=> b!1131789 m!1044791))

(declare-fun m!1044793 () Bool)

(assert (=> b!1131789 m!1044793))

(assert (=> b!1131789 m!1044793))

(declare-fun m!1044795 () Bool)

(assert (=> b!1131789 m!1044795))

(assert (=> b!1131791 m!1044793))

(assert (=> b!1131791 m!1044793))

(assert (=> b!1131791 m!1044795))

(assert (=> b!1131670 d!131253))

(declare-fun d!131255 () Bool)

(declare-fun res!756113 () Bool)

(declare-fun e!644137 () Bool)

(assert (=> d!131255 (=> res!756113 e!644137)))

(assert (=> d!131255 (= res!756113 (= (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!131255 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!644137)))

(declare-fun b!1131796 () Bool)

(declare-fun e!644138 () Bool)

(assert (=> b!1131796 (= e!644137 e!644138)))

(declare-fun res!756114 () Bool)

(assert (=> b!1131796 (=> (not res!756114) (not e!644138))))

(assert (=> b!1131796 (= res!756114 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1131797 () Bool)

(assert (=> b!1131797 (= e!644138 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!131255 (not res!756113)) b!1131796))

(assert (= (and b!1131796 res!756114) b!1131797))

(declare-fun m!1044797 () Bool)

(assert (=> d!131255 m!1044797))

(declare-fun m!1044799 () Bool)

(assert (=> b!1131797 m!1044799))

(assert (=> b!1131676 d!131255))

(declare-fun d!131257 () Bool)

(assert (=> d!131257 (contains!6547 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!502747 () Unit!37021)

(assert (=> d!131257 (= lt!502747 (choose!1781 lt!502664 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!131257 (contains!6547 lt!502664 k0!934)))

(assert (=> d!131257 (= (addStillContains!720 lt!502664 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944) k0!934) lt!502747)))

(declare-fun bs!32954 () Bool)

(assert (= bs!32954 d!131257))

(declare-fun m!1044801 () Bool)

(assert (=> bs!32954 m!1044801))

(assert (=> bs!32954 m!1044801))

(declare-fun m!1044803 () Bool)

(assert (=> bs!32954 m!1044803))

(declare-fun m!1044805 () Bool)

(assert (=> bs!32954 m!1044805))

(assert (=> bs!32954 m!1044673))

(assert (=> bm!48719 d!131257))

(declare-fun b!1131806 () Bool)

(declare-fun e!644145 () Bool)

(declare-fun e!644146 () Bool)

(assert (=> b!1131806 (= e!644145 e!644146)))

(declare-fun lt!502756 () (_ BitVec 64))

(assert (=> b!1131806 (= lt!502756 (select (arr!35526 lt!502669) #b00000000000000000000000000000000))))

(declare-fun lt!502754 () Unit!37021)

(assert (=> b!1131806 (= lt!502754 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!502669 lt!502756 #b00000000000000000000000000000000))))

(assert (=> b!1131806 (arrayContainsKey!0 lt!502669 lt!502756 #b00000000000000000000000000000000)))

(declare-fun lt!502755 () Unit!37021)

(assert (=> b!1131806 (= lt!502755 lt!502754)))

(declare-fun res!756120 () Bool)

(declare-datatypes ((SeekEntryResult!9922 0))(
  ( (MissingZero!9922 (index!42058 (_ BitVec 32))) (Found!9922 (index!42059 (_ BitVec 32))) (Intermediate!9922 (undefined!10734 Bool) (index!42060 (_ BitVec 32)) (x!101483 (_ BitVec 32))) (Undefined!9922) (MissingVacant!9922 (index!42061 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!73754 (_ BitVec 32)) SeekEntryResult!9922)

(assert (=> b!1131806 (= res!756120 (= (seekEntryOrOpen!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) lt!502669 mask!1564) (Found!9922 #b00000000000000000000000000000000)))))

(assert (=> b!1131806 (=> (not res!756120) (not e!644146))))

(declare-fun bm!48749 () Bool)

(declare-fun call!48752 () Bool)

(assert (=> bm!48749 (= call!48752 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!502669 mask!1564))))

(declare-fun b!1131807 () Bool)

(assert (=> b!1131807 (= e!644145 call!48752)))

(declare-fun d!131259 () Bool)

(declare-fun res!756119 () Bool)

(declare-fun e!644147 () Bool)

(assert (=> d!131259 (=> res!756119 e!644147)))

(assert (=> d!131259 (= res!756119 (bvsge #b00000000000000000000000000000000 (size!36063 lt!502669)))))

(assert (=> d!131259 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502669 mask!1564) e!644147)))

(declare-fun b!1131808 () Bool)

(assert (=> b!1131808 (= e!644147 e!644145)))

(declare-fun c!110207 () Bool)

(assert (=> b!1131808 (= c!110207 (validKeyInArray!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun b!1131809 () Bool)

(assert (=> b!1131809 (= e!644146 call!48752)))

(assert (= (and d!131259 (not res!756119)) b!1131808))

(assert (= (and b!1131808 c!110207) b!1131806))

(assert (= (and b!1131808 (not c!110207)) b!1131807))

(assert (= (and b!1131806 res!756120) b!1131809))

(assert (= (or b!1131809 b!1131807) bm!48749))

(declare-fun m!1044807 () Bool)

(assert (=> b!1131806 m!1044807))

(declare-fun m!1044809 () Bool)

(assert (=> b!1131806 m!1044809))

(declare-fun m!1044811 () Bool)

(assert (=> b!1131806 m!1044811))

(assert (=> b!1131806 m!1044807))

(declare-fun m!1044813 () Bool)

(assert (=> b!1131806 m!1044813))

(declare-fun m!1044815 () Bool)

(assert (=> bm!48749 m!1044815))

(assert (=> b!1131808 m!1044807))

(assert (=> b!1131808 m!1044807))

(declare-fun m!1044817 () Bool)

(assert (=> b!1131808 m!1044817))

(assert (=> b!1131684 d!131259))

(declare-fun d!131261 () Bool)

(assert (=> d!131261 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1131669 d!131261))

(declare-fun d!131263 () Bool)

(assert (=> d!131263 (= (array_inv!27116 _keys!1208) (bvsge (size!36063 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!98272 d!131263))

(declare-fun d!131265 () Bool)

(assert (=> d!131265 (= (array_inv!27117 _values!996) (bvsge (size!36062 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!98272 d!131265))

(declare-fun d!131267 () Bool)

(declare-fun lt!502759 () ListLongMap!16083)

(assert (=> d!131267 (not (contains!6547 lt!502759 k0!934))))

(declare-fun removeStrictlySorted!90 (List!24916 (_ BitVec 64)) List!24916)

(assert (=> d!131267 (= lt!502759 (ListLongMap!16084 (removeStrictlySorted!90 (toList!8057 call!48725) k0!934)))))

(assert (=> d!131267 (= (-!1179 call!48725 k0!934) lt!502759)))

(declare-fun bs!32955 () Bool)

(assert (= bs!32955 d!131267))

(declare-fun m!1044819 () Bool)

(assert (=> bs!32955 m!1044819))

(declare-fun m!1044821 () Bool)

(assert (=> bs!32955 m!1044821))

(assert (=> b!1131675 d!131267))

(declare-fun b!1131820 () Bool)

(declare-fun e!644158 () Bool)

(declare-fun contains!6549 (List!24917 (_ BitVec 64)) Bool)

(assert (=> b!1131820 (= e!644158 (contains!6549 Nil!24914 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1131821 () Bool)

(declare-fun e!644156 () Bool)

(declare-fun call!48755 () Bool)

(assert (=> b!1131821 (= e!644156 call!48755)))

(declare-fun bm!48752 () Bool)

(declare-fun c!110210 () Bool)

(assert (=> bm!48752 (= call!48755 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110210 (Cons!24913 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) Nil!24914) Nil!24914)))))

(declare-fun b!1131822 () Bool)

(declare-fun e!644159 () Bool)

(declare-fun e!644157 () Bool)

(assert (=> b!1131822 (= e!644159 e!644157)))

(declare-fun res!756129 () Bool)

(assert (=> b!1131822 (=> (not res!756129) (not e!644157))))

(assert (=> b!1131822 (= res!756129 (not e!644158))))

(declare-fun res!756127 () Bool)

(assert (=> b!1131822 (=> (not res!756127) (not e!644158))))

(assert (=> b!1131822 (= res!756127 (validKeyInArray!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1131823 () Bool)

(assert (=> b!1131823 (= e!644156 call!48755)))

(declare-fun d!131269 () Bool)

(declare-fun res!756128 () Bool)

(assert (=> d!131269 (=> res!756128 e!644159)))

(assert (=> d!131269 (= res!756128 (bvsge #b00000000000000000000000000000000 (size!36063 _keys!1208)))))

(assert (=> d!131269 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24914) e!644159)))

(declare-fun b!1131824 () Bool)

(assert (=> b!1131824 (= e!644157 e!644156)))

(assert (=> b!1131824 (= c!110210 (validKeyInArray!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!131269 (not res!756128)) b!1131822))

(assert (= (and b!1131822 res!756127) b!1131820))

(assert (= (and b!1131822 res!756129) b!1131824))

(assert (= (and b!1131824 c!110210) b!1131821))

(assert (= (and b!1131824 (not c!110210)) b!1131823))

(assert (= (or b!1131821 b!1131823) bm!48752))

(declare-fun m!1044823 () Bool)

(assert (=> b!1131820 m!1044823))

(assert (=> b!1131820 m!1044823))

(declare-fun m!1044825 () Bool)

(assert (=> b!1131820 m!1044825))

(assert (=> bm!48752 m!1044823))

(declare-fun m!1044827 () Bool)

(assert (=> bm!48752 m!1044827))

(assert (=> b!1131822 m!1044823))

(assert (=> b!1131822 m!1044823))

(declare-fun m!1044829 () Bool)

(assert (=> b!1131822 m!1044829))

(assert (=> b!1131824 m!1044823))

(assert (=> b!1131824 m!1044823))

(assert (=> b!1131824 m!1044829))

(assert (=> b!1131683 d!131269))

(declare-fun call!48761 () ListLongMap!16083)

(declare-fun bm!48757 () Bool)

(assert (=> bm!48757 (= call!48761 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131831 () Bool)

(declare-fun e!644164 () Bool)

(declare-fun e!644165 () Bool)

(assert (=> b!1131831 (= e!644164 e!644165)))

(declare-fun c!110213 () Bool)

(assert (=> b!1131831 (= c!110213 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1131832 () Bool)

(declare-fun call!48760 () ListLongMap!16083)

(assert (=> b!1131832 (= e!644165 (= call!48760 call!48761))))

(assert (=> b!1131832 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36062 _values!996)))))

(declare-fun b!1131833 () Bool)

(assert (=> b!1131833 (= e!644165 (= call!48760 (-!1179 call!48761 k0!934)))))

(assert (=> b!1131833 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36062 _values!996)))))

(declare-fun d!131271 () Bool)

(assert (=> d!131271 e!644164))

(declare-fun res!756132 () Bool)

(assert (=> d!131271 (=> (not res!756132) (not e!644164))))

(assert (=> d!131271 (= res!756132 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36063 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36063 _keys!1208))))))))

(declare-fun lt!502762 () Unit!37021)

(declare-fun choose!1782 (array!73754 array!73752 (_ BitVec 32) (_ BitVec 32) V!43083 V!43083 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37021)

(assert (=> d!131271 (= lt!502762 (choose!1782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!131271 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(assert (=> d!131271 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!502762)))

(declare-fun bm!48758 () Bool)

(assert (=> bm!48758 (= call!48760 (getCurrentListMapNoExtraKeys!4508 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)) (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!131271 res!756132) b!1131831))

(assert (= (and b!1131831 c!110213) b!1131833))

(assert (= (and b!1131831 (not c!110213)) b!1131832))

(assert (= (or b!1131833 b!1131832) bm!48757))

(assert (= (or b!1131833 b!1131832) bm!48758))

(declare-fun b_lambda!18947 () Bool)

(assert (=> (not b_lambda!18947) (not bm!48758)))

(assert (=> bm!48758 t!35851))

(declare-fun b_and!38687 () Bool)

(assert (= b_and!38681 (and (=> t!35851 result!18067) b_and!38687)))

(assert (=> bm!48757 m!1044645))

(declare-fun m!1044831 () Bool)

(assert (=> b!1131833 m!1044831))

(declare-fun m!1044833 () Bool)

(assert (=> d!131271 m!1044833))

(assert (=> bm!48758 m!1044697))

(assert (=> bm!48758 m!1044681))

(assert (=> bm!48758 m!1044683))

(declare-fun m!1044835 () Bool)

(assert (=> bm!48758 m!1044835))

(assert (=> b!1131682 d!131271))

(declare-fun b!1131834 () Bool)

(declare-fun e!644168 () Bool)

(assert (=> b!1131834 (= e!644168 (contains!6549 Nil!24914 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun b!1131835 () Bool)

(declare-fun e!644166 () Bool)

(declare-fun call!48762 () Bool)

(assert (=> b!1131835 (= e!644166 call!48762)))

(declare-fun bm!48759 () Bool)

(declare-fun c!110214 () Bool)

(assert (=> bm!48759 (= call!48762 (arrayNoDuplicates!0 lt!502669 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110214 (Cons!24913 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) Nil!24914) Nil!24914)))))

(declare-fun b!1131836 () Bool)

(declare-fun e!644169 () Bool)

(declare-fun e!644167 () Bool)

(assert (=> b!1131836 (= e!644169 e!644167)))

(declare-fun res!756135 () Bool)

(assert (=> b!1131836 (=> (not res!756135) (not e!644167))))

(assert (=> b!1131836 (= res!756135 (not e!644168))))

(declare-fun res!756133 () Bool)

(assert (=> b!1131836 (=> (not res!756133) (not e!644168))))

(assert (=> b!1131836 (= res!756133 (validKeyInArray!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun b!1131837 () Bool)

(assert (=> b!1131837 (= e!644166 call!48762)))

(declare-fun d!131273 () Bool)

(declare-fun res!756134 () Bool)

(assert (=> d!131273 (=> res!756134 e!644169)))

(assert (=> d!131273 (= res!756134 (bvsge #b00000000000000000000000000000000 (size!36063 lt!502669)))))

(assert (=> d!131273 (= (arrayNoDuplicates!0 lt!502669 #b00000000000000000000000000000000 Nil!24914) e!644169)))

(declare-fun b!1131838 () Bool)

(assert (=> b!1131838 (= e!644167 e!644166)))

(assert (=> b!1131838 (= c!110214 (validKeyInArray!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(assert (= (and d!131273 (not res!756134)) b!1131836))

(assert (= (and b!1131836 res!756133) b!1131834))

(assert (= (and b!1131836 res!756135) b!1131838))

(assert (= (and b!1131838 c!110214) b!1131835))

(assert (= (and b!1131838 (not c!110214)) b!1131837))

(assert (= (or b!1131835 b!1131837) bm!48759))

(assert (=> b!1131834 m!1044807))

(assert (=> b!1131834 m!1044807))

(declare-fun m!1044837 () Bool)

(assert (=> b!1131834 m!1044837))

(assert (=> bm!48759 m!1044807))

(declare-fun m!1044839 () Bool)

(assert (=> bm!48759 m!1044839))

(assert (=> b!1131836 m!1044807))

(assert (=> b!1131836 m!1044807))

(assert (=> b!1131836 m!1044817))

(assert (=> b!1131838 m!1044807))

(assert (=> b!1131838 m!1044807))

(assert (=> b!1131838 m!1044817))

(assert (=> b!1131667 d!131273))

(declare-fun d!131275 () Bool)

(declare-fun res!756136 () Bool)

(declare-fun e!644170 () Bool)

(assert (=> d!131275 (=> res!756136 e!644170)))

(assert (=> d!131275 (= res!756136 (= (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!131275 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!644170)))

(declare-fun b!1131839 () Bool)

(declare-fun e!644171 () Bool)

(assert (=> b!1131839 (= e!644170 e!644171)))

(declare-fun res!756137 () Bool)

(assert (=> b!1131839 (=> (not res!756137) (not e!644171))))

(assert (=> b!1131839 (= res!756137 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1131840 () Bool)

(assert (=> b!1131840 (= e!644171 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!131275 (not res!756136)) b!1131839))

(assert (= (and b!1131839 res!756137) b!1131840))

(assert (=> d!131275 m!1044823))

(declare-fun m!1044841 () Bool)

(assert (=> b!1131840 m!1044841))

(assert (=> b!1131666 d!131275))

(declare-fun d!131277 () Bool)

(assert (=> d!131277 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!502765 () Unit!37021)

(declare-fun choose!13 (array!73754 (_ BitVec 64) (_ BitVec 32)) Unit!37021)

(assert (=> d!131277 (= lt!502765 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!131277 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!131277 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!502765)))

(declare-fun bs!32956 () Bool)

(assert (= bs!32956 d!131277))

(assert (=> bs!32956 m!1044687))

(declare-fun m!1044843 () Bool)

(assert (=> bs!32956 m!1044843))

(assert (=> b!1131666 d!131277))

(declare-fun d!131279 () Bool)

(declare-fun e!644174 () Bool)

(assert (=> d!131279 e!644174))

(declare-fun c!110217 () Bool)

(assert (=> d!131279 (= c!110217 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!502768 () Unit!37021)

(declare-fun choose!1783 (array!73754 array!73752 (_ BitVec 32) (_ BitVec 32) V!43083 V!43083 (_ BitVec 64) (_ BitVec 32) Int) Unit!37021)

(assert (=> d!131279 (= lt!502768 (choose!1783 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!131279 (validMask!0 mask!1564)))

(assert (=> d!131279 (= (lemmaListMapContainsThenArrayContainsFrom!330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!502768)))

(declare-fun b!1131845 () Bool)

(assert (=> b!1131845 (= e!644174 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1131846 () Bool)

(assert (=> b!1131846 (= e!644174 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!131279 c!110217) b!1131845))

(assert (= (and d!131279 (not c!110217)) b!1131846))

(declare-fun m!1044845 () Bool)

(assert (=> d!131279 m!1044845))

(assert (=> d!131279 m!1044703))

(assert (=> b!1131845 m!1044669))

(assert (=> b!1131680 d!131279))

(declare-fun d!131281 () Bool)

(declare-fun e!644175 () Bool)

(assert (=> d!131281 e!644175))

(declare-fun res!756139 () Bool)

(assert (=> d!131281 (=> (not res!756139) (not e!644175))))

(declare-fun lt!502770 () ListLongMap!16083)

(assert (=> d!131281 (= res!756139 (contains!6547 lt!502770 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!502772 () List!24916)

(assert (=> d!131281 (= lt!502770 (ListLongMap!16084 lt!502772))))

(declare-fun lt!502771 () Unit!37021)

(declare-fun lt!502769 () Unit!37021)

(assert (=> d!131281 (= lt!502771 lt!502769)))

(assert (=> d!131281 (= (getValueByKey!631 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!681 (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!131281 (= lt!502769 (lemmaContainsTupThenGetReturnValue!306 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!131281 (= lt!502772 (insertStrictlySorted!398 (toList!8057 (ite c!110183 lt!502672 lt!502664)) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!131281 (= (+!3420 (ite c!110183 lt!502672 lt!502664) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!502770)))

(declare-fun b!1131847 () Bool)

(declare-fun res!756138 () Bool)

(assert (=> b!1131847 (=> (not res!756138) (not e!644175))))

(assert (=> b!1131847 (= res!756138 (= (getValueByKey!631 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!681 (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1131848 () Bool)

(assert (=> b!1131848 (= e!644175 (contains!6548 (toList!8057 lt!502770) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!131281 res!756139) b!1131847))

(assert (= (and b!1131847 res!756138) b!1131848))

(declare-fun m!1044847 () Bool)

(assert (=> d!131281 m!1044847))

(declare-fun m!1044849 () Bool)

(assert (=> d!131281 m!1044849))

(declare-fun m!1044851 () Bool)

(assert (=> d!131281 m!1044851))

(declare-fun m!1044853 () Bool)

(assert (=> d!131281 m!1044853))

(declare-fun m!1044855 () Bool)

(assert (=> b!1131847 m!1044855))

(declare-fun m!1044857 () Bool)

(assert (=> b!1131848 m!1044857))

(assert (=> bm!48715 d!131281))

(declare-fun d!131283 () Bool)

(assert (=> d!131283 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131672 d!131283))

(declare-fun b!1131873 () Bool)

(declare-fun e!644191 () Bool)

(assert (=> b!1131873 (= e!644191 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1131873 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1131874 () Bool)

(declare-fun e!644190 () ListLongMap!16083)

(assert (=> b!1131874 (= e!644190 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1131875 () Bool)

(declare-fun e!644194 () Bool)

(declare-fun e!644193 () Bool)

(assert (=> b!1131875 (= e!644194 e!644193)))

(assert (=> b!1131875 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 lt!502669)))))

(declare-fun lt!502787 () ListLongMap!16083)

(declare-fun res!756148 () Bool)

(assert (=> b!1131875 (= res!756148 (contains!6547 lt!502787 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1131875 (=> (not res!756148) (not e!644193))))

(declare-fun b!1131876 () Bool)

(declare-fun lt!502789 () Unit!37021)

(declare-fun lt!502788 () Unit!37021)

(assert (=> b!1131876 (= lt!502789 lt!502788)))

(declare-fun lt!502790 () (_ BitVec 64))

(declare-fun lt!502792 () V!43083)

(declare-fun lt!502793 () ListLongMap!16083)

(declare-fun lt!502791 () (_ BitVec 64))

(assert (=> b!1131876 (not (contains!6547 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792)) lt!502791))))

(declare-fun addStillNotContains!285 (ListLongMap!16083 (_ BitVec 64) V!43083 (_ BitVec 64)) Unit!37021)

(assert (=> b!1131876 (= lt!502788 (addStillNotContains!285 lt!502793 lt!502790 lt!502792 lt!502791))))

(assert (=> b!1131876 (= lt!502791 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!18084 (ValueCell!13524 V!43083) V!43083)

(assert (=> b!1131876 (= lt!502792 (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1131876 (= lt!502790 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!48765 () ListLongMap!16083)

(assert (=> b!1131876 (= lt!502793 call!48765)))

(declare-fun e!644196 () ListLongMap!16083)

(assert (=> b!1131876 (= e!644196 (+!3420 call!48765 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131285 () Bool)

(declare-fun e!644192 () Bool)

(assert (=> d!131285 e!644192))

(declare-fun res!756150 () Bool)

(assert (=> d!131285 (=> (not res!756150) (not e!644192))))

(assert (=> d!131285 (= res!756150 (not (contains!6547 lt!502787 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131285 (= lt!502787 e!644190)))

(declare-fun c!110226 () Bool)

(assert (=> d!131285 (= c!110226 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 lt!502669)))))

(assert (=> d!131285 (validMask!0 mask!1564)))

(assert (=> d!131285 (= (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!502787)))

(declare-fun b!1131877 () Bool)

(declare-fun e!644195 () Bool)

(assert (=> b!1131877 (= e!644195 (= lt!502787 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1131878 () Bool)

(assert (=> b!1131878 (= e!644196 call!48765)))

(declare-fun b!1131879 () Bool)

(declare-fun isEmpty!976 (ListLongMap!16083) Bool)

(assert (=> b!1131879 (= e!644195 (isEmpty!976 lt!502787))))

(declare-fun b!1131880 () Bool)

(assert (=> b!1131880 (= e!644190 e!644196)))

(declare-fun c!110227 () Bool)

(assert (=> b!1131880 (= c!110227 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1131881 () Bool)

(assert (=> b!1131881 (= e!644192 e!644194)))

(declare-fun c!110229 () Bool)

(assert (=> b!1131881 (= c!110229 e!644191)))

(declare-fun res!756151 () Bool)

(assert (=> b!1131881 (=> (not res!756151) (not e!644191))))

(assert (=> b!1131881 (= res!756151 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 lt!502669)))))

(declare-fun bm!48762 () Bool)

(assert (=> bm!48762 (= call!48765 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1131882 () Bool)

(assert (=> b!1131882 (= e!644194 e!644195)))

(declare-fun c!110228 () Bool)

(assert (=> b!1131882 (= c!110228 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 lt!502669)))))

(declare-fun b!1131883 () Bool)

(assert (=> b!1131883 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 lt!502669)))))

(assert (=> b!1131883 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36062 lt!502663)))))

(declare-fun apply!990 (ListLongMap!16083 (_ BitVec 64)) V!43083)

(assert (=> b!1131883 (= e!644193 (= (apply!990 lt!502787 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1131884 () Bool)

(declare-fun res!756149 () Bool)

(assert (=> b!1131884 (=> (not res!756149) (not e!644192))))

(assert (=> b!1131884 (= res!756149 (not (contains!6547 lt!502787 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131285 c!110226) b!1131874))

(assert (= (and d!131285 (not c!110226)) b!1131880))

(assert (= (and b!1131880 c!110227) b!1131876))

(assert (= (and b!1131880 (not c!110227)) b!1131878))

(assert (= (or b!1131876 b!1131878) bm!48762))

(assert (= (and d!131285 res!756150) b!1131884))

(assert (= (and b!1131884 res!756149) b!1131881))

(assert (= (and b!1131881 res!756151) b!1131873))

(assert (= (and b!1131881 c!110229) b!1131875))

(assert (= (and b!1131881 (not c!110229)) b!1131882))

(assert (= (and b!1131875 res!756148) b!1131883))

(assert (= (and b!1131882 c!110228) b!1131877))

(assert (= (and b!1131882 (not c!110228)) b!1131879))

(declare-fun b_lambda!18949 () Bool)

(assert (=> (not b_lambda!18949) (not b!1131876)))

(assert (=> b!1131876 t!35851))

(declare-fun b_and!38689 () Bool)

(assert (= b_and!38687 (and (=> t!35851 result!18067) b_and!38689)))

(declare-fun b_lambda!18951 () Bool)

(assert (=> (not b_lambda!18951) (not b!1131883)))

(assert (=> b!1131883 t!35851))

(declare-fun b_and!38691 () Bool)

(assert (= b_and!38689 (and (=> t!35851 result!18067) b_and!38691)))

(declare-fun m!1044859 () Bool)

(assert (=> b!1131875 m!1044859))

(assert (=> b!1131875 m!1044859))

(declare-fun m!1044861 () Bool)

(assert (=> b!1131875 m!1044861))

(declare-fun m!1044863 () Bool)

(assert (=> bm!48762 m!1044863))

(assert (=> b!1131880 m!1044859))

(assert (=> b!1131880 m!1044859))

(declare-fun m!1044865 () Bool)

(assert (=> b!1131880 m!1044865))

(declare-fun m!1044867 () Bool)

(assert (=> b!1131884 m!1044867))

(declare-fun m!1044869 () Bool)

(assert (=> d!131285 m!1044869))

(assert (=> d!131285 m!1044703))

(declare-fun m!1044871 () Bool)

(assert (=> b!1131879 m!1044871))

(assert (=> b!1131873 m!1044859))

(assert (=> b!1131873 m!1044859))

(assert (=> b!1131873 m!1044865))

(declare-fun m!1044873 () Bool)

(assert (=> b!1131876 m!1044873))

(declare-fun m!1044875 () Bool)

(assert (=> b!1131876 m!1044875))

(assert (=> b!1131876 m!1044873))

(assert (=> b!1131876 m!1044681))

(declare-fun m!1044877 () Bool)

(assert (=> b!1131876 m!1044877))

(declare-fun m!1044879 () Bool)

(assert (=> b!1131876 m!1044879))

(declare-fun m!1044881 () Bool)

(assert (=> b!1131876 m!1044881))

(assert (=> b!1131876 m!1044681))

(assert (=> b!1131876 m!1044859))

(assert (=> b!1131876 m!1044881))

(declare-fun m!1044883 () Bool)

(assert (=> b!1131876 m!1044883))

(assert (=> b!1131877 m!1044863))

(assert (=> b!1131883 m!1044681))

(assert (=> b!1131883 m!1044859))

(declare-fun m!1044885 () Bool)

(assert (=> b!1131883 m!1044885))

(assert (=> b!1131883 m!1044873))

(assert (=> b!1131883 m!1044873))

(assert (=> b!1131883 m!1044681))

(assert (=> b!1131883 m!1044877))

(assert (=> b!1131883 m!1044859))

(assert (=> bm!48717 d!131285))

(declare-fun d!131287 () Bool)

(declare-fun e!644197 () Bool)

(assert (=> d!131287 e!644197))

(declare-fun res!756152 () Bool)

(assert (=> d!131287 (=> res!756152 e!644197)))

(declare-fun lt!502794 () Bool)

(assert (=> d!131287 (= res!756152 (not lt!502794))))

(declare-fun lt!502795 () Bool)

(assert (=> d!131287 (= lt!502794 lt!502795)))

(declare-fun lt!502796 () Unit!37021)

(declare-fun e!644198 () Unit!37021)

(assert (=> d!131287 (= lt!502796 e!644198)))

(declare-fun c!110230 () Bool)

(assert (=> d!131287 (= c!110230 lt!502795)))

(assert (=> d!131287 (= lt!502795 (containsKey!586 (toList!8057 lt!502664) k0!934))))

(assert (=> d!131287 (= (contains!6547 lt!502664 k0!934) lt!502794)))

(declare-fun b!1131885 () Bool)

(declare-fun lt!502797 () Unit!37021)

(assert (=> b!1131885 (= e!644198 lt!502797)))

(assert (=> b!1131885 (= lt!502797 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502664) k0!934))))

(assert (=> b!1131885 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502664) k0!934))))

(declare-fun b!1131886 () Bool)

(declare-fun Unit!37025 () Unit!37021)

(assert (=> b!1131886 (= e!644198 Unit!37025)))

(declare-fun b!1131887 () Bool)

(assert (=> b!1131887 (= e!644197 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502664) k0!934)))))

(assert (= (and d!131287 c!110230) b!1131885))

(assert (= (and d!131287 (not c!110230)) b!1131886))

(assert (= (and d!131287 (not res!756152)) b!1131887))

(declare-fun m!1044887 () Bool)

(assert (=> d!131287 m!1044887))

(declare-fun m!1044889 () Bool)

(assert (=> b!1131885 m!1044889))

(declare-fun m!1044891 () Bool)

(assert (=> b!1131885 m!1044891))

(assert (=> b!1131885 m!1044891))

(declare-fun m!1044893 () Bool)

(assert (=> b!1131885 m!1044893))

(assert (=> b!1131887 m!1044891))

(assert (=> b!1131887 m!1044891))

(assert (=> b!1131887 m!1044893))

(assert (=> b!1131678 d!131287))

(declare-fun b!1131888 () Bool)

(declare-fun e!644200 () Bool)

(assert (=> b!1131888 (= e!644200 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1131888 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1131889 () Bool)

(declare-fun e!644199 () ListLongMap!16083)

(assert (=> b!1131889 (= e!644199 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1131890 () Bool)

(declare-fun e!644203 () Bool)

(declare-fun e!644202 () Bool)

(assert (=> b!1131890 (= e!644203 e!644202)))

(assert (=> b!1131890 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(declare-fun lt!502798 () ListLongMap!16083)

(declare-fun res!756153 () Bool)

(assert (=> b!1131890 (= res!756153 (contains!6547 lt!502798 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1131890 (=> (not res!756153) (not e!644202))))

(declare-fun b!1131891 () Bool)

(declare-fun lt!502800 () Unit!37021)

(declare-fun lt!502799 () Unit!37021)

(assert (=> b!1131891 (= lt!502800 lt!502799)))

(declare-fun lt!502803 () V!43083)

(declare-fun lt!502802 () (_ BitVec 64))

(declare-fun lt!502804 () ListLongMap!16083)

(declare-fun lt!502801 () (_ BitVec 64))

(assert (=> b!1131891 (not (contains!6547 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803)) lt!502802))))

(assert (=> b!1131891 (= lt!502799 (addStillNotContains!285 lt!502804 lt!502801 lt!502803 lt!502802))))

(assert (=> b!1131891 (= lt!502802 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1131891 (= lt!502803 (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1131891 (= lt!502801 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!48766 () ListLongMap!16083)

(assert (=> b!1131891 (= lt!502804 call!48766)))

(declare-fun e!644205 () ListLongMap!16083)

(assert (=> b!1131891 (= e!644205 (+!3420 call!48766 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131289 () Bool)

(declare-fun e!644201 () Bool)

(assert (=> d!131289 e!644201))

(declare-fun res!756155 () Bool)

(assert (=> d!131289 (=> (not res!756155) (not e!644201))))

(assert (=> d!131289 (= res!756155 (not (contains!6547 lt!502798 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131289 (= lt!502798 e!644199)))

(declare-fun c!110231 () Bool)

(assert (=> d!131289 (= c!110231 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(assert (=> d!131289 (validMask!0 mask!1564)))

(assert (=> d!131289 (= (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!502798)))

(declare-fun e!644204 () Bool)

(declare-fun b!1131892 () Bool)

(assert (=> b!1131892 (= e!644204 (= lt!502798 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1131893 () Bool)

(assert (=> b!1131893 (= e!644205 call!48766)))

(declare-fun b!1131894 () Bool)

(assert (=> b!1131894 (= e!644204 (isEmpty!976 lt!502798))))

(declare-fun b!1131895 () Bool)

(assert (=> b!1131895 (= e!644199 e!644205)))

(declare-fun c!110232 () Bool)

(assert (=> b!1131895 (= c!110232 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1131896 () Bool)

(assert (=> b!1131896 (= e!644201 e!644203)))

(declare-fun c!110234 () Bool)

(assert (=> b!1131896 (= c!110234 e!644200)))

(declare-fun res!756156 () Bool)

(assert (=> b!1131896 (=> (not res!756156) (not e!644200))))

(assert (=> b!1131896 (= res!756156 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(declare-fun bm!48763 () Bool)

(assert (=> bm!48763 (= call!48766 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1131897 () Bool)

(assert (=> b!1131897 (= e!644203 e!644204)))

(declare-fun c!110233 () Bool)

(assert (=> b!1131897 (= c!110233 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(declare-fun b!1131898 () Bool)

(assert (=> b!1131898 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 _keys!1208)))))

(assert (=> b!1131898 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36062 _values!996)))))

(assert (=> b!1131898 (= e!644202 (= (apply!990 lt!502798 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1131899 () Bool)

(declare-fun res!756154 () Bool)

(assert (=> b!1131899 (=> (not res!756154) (not e!644201))))

(assert (=> b!1131899 (= res!756154 (not (contains!6547 lt!502798 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131289 c!110231) b!1131889))

(assert (= (and d!131289 (not c!110231)) b!1131895))

(assert (= (and b!1131895 c!110232) b!1131891))

(assert (= (and b!1131895 (not c!110232)) b!1131893))

(assert (= (or b!1131891 b!1131893) bm!48763))

(assert (= (and d!131289 res!756155) b!1131899))

(assert (= (and b!1131899 res!756154) b!1131896))

(assert (= (and b!1131896 res!756156) b!1131888))

(assert (= (and b!1131896 c!110234) b!1131890))

(assert (= (and b!1131896 (not c!110234)) b!1131897))

(assert (= (and b!1131890 res!756153) b!1131898))

(assert (= (and b!1131897 c!110233) b!1131892))

(assert (= (and b!1131897 (not c!110233)) b!1131894))

(declare-fun b_lambda!18953 () Bool)

(assert (=> (not b_lambda!18953) (not b!1131891)))

(assert (=> b!1131891 t!35851))

(declare-fun b_and!38693 () Bool)

(assert (= b_and!38691 (and (=> t!35851 result!18067) b_and!38693)))

(declare-fun b_lambda!18955 () Bool)

(assert (=> (not b_lambda!18955) (not b!1131898)))

(assert (=> b!1131898 t!35851))

(declare-fun b_and!38695 () Bool)

(assert (= b_and!38693 (and (=> t!35851 result!18067) b_and!38695)))

(assert (=> b!1131890 m!1044797))

(assert (=> b!1131890 m!1044797))

(declare-fun m!1044895 () Bool)

(assert (=> b!1131890 m!1044895))

(declare-fun m!1044897 () Bool)

(assert (=> bm!48763 m!1044897))

(assert (=> b!1131895 m!1044797))

(assert (=> b!1131895 m!1044797))

(declare-fun m!1044899 () Bool)

(assert (=> b!1131895 m!1044899))

(declare-fun m!1044901 () Bool)

(assert (=> b!1131899 m!1044901))

(declare-fun m!1044903 () Bool)

(assert (=> d!131289 m!1044903))

(assert (=> d!131289 m!1044703))

(declare-fun m!1044905 () Bool)

(assert (=> b!1131894 m!1044905))

(assert (=> b!1131888 m!1044797))

(assert (=> b!1131888 m!1044797))

(assert (=> b!1131888 m!1044899))

(declare-fun m!1044907 () Bool)

(assert (=> b!1131891 m!1044907))

(declare-fun m!1044909 () Bool)

(assert (=> b!1131891 m!1044909))

(assert (=> b!1131891 m!1044907))

(assert (=> b!1131891 m!1044681))

(declare-fun m!1044911 () Bool)

(assert (=> b!1131891 m!1044911))

(declare-fun m!1044913 () Bool)

(assert (=> b!1131891 m!1044913))

(declare-fun m!1044915 () Bool)

(assert (=> b!1131891 m!1044915))

(assert (=> b!1131891 m!1044681))

(assert (=> b!1131891 m!1044797))

(assert (=> b!1131891 m!1044915))

(declare-fun m!1044917 () Bool)

(assert (=> b!1131891 m!1044917))

(assert (=> b!1131892 m!1044897))

(assert (=> b!1131898 m!1044681))

(assert (=> b!1131898 m!1044797))

(declare-fun m!1044919 () Bool)

(assert (=> b!1131898 m!1044919))

(assert (=> b!1131898 m!1044907))

(assert (=> b!1131898 m!1044907))

(assert (=> b!1131898 m!1044681))

(assert (=> b!1131898 m!1044911))

(assert (=> b!1131898 m!1044797))

(assert (=> b!1131678 d!131289))

(declare-fun d!131291 () Bool)

(declare-fun e!644206 () Bool)

(assert (=> d!131291 e!644206))

(declare-fun res!756157 () Bool)

(assert (=> d!131291 (=> res!756157 e!644206)))

(declare-fun lt!502805 () Bool)

(assert (=> d!131291 (= res!756157 (not lt!502805))))

(declare-fun lt!502806 () Bool)

(assert (=> d!131291 (= lt!502805 lt!502806)))

(declare-fun lt!502807 () Unit!37021)

(declare-fun e!644207 () Unit!37021)

(assert (=> d!131291 (= lt!502807 e!644207)))

(declare-fun c!110235 () Bool)

(assert (=> d!131291 (= c!110235 lt!502806)))

(assert (=> d!131291 (= lt!502806 (containsKey!586 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(assert (=> d!131291 (= (contains!6547 (ite c!110183 lt!502672 call!48718) k0!934) lt!502805)))

(declare-fun b!1131900 () Bool)

(declare-fun lt!502808 () Unit!37021)

(assert (=> b!1131900 (= e!644207 lt!502808)))

(assert (=> b!1131900 (= lt!502808 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(assert (=> b!1131900 (isDefined!455 (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(declare-fun b!1131901 () Bool)

(declare-fun Unit!37026 () Unit!37021)

(assert (=> b!1131901 (= e!644207 Unit!37026)))

(declare-fun b!1131902 () Bool)

(assert (=> b!1131902 (= e!644206 (isDefined!455 (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934)))))

(assert (= (and d!131291 c!110235) b!1131900))

(assert (= (and d!131291 (not c!110235)) b!1131901))

(assert (= (and d!131291 (not res!756157)) b!1131902))

(declare-fun m!1044921 () Bool)

(assert (=> d!131291 m!1044921))

(declare-fun m!1044923 () Bool)

(assert (=> b!1131900 m!1044923))

(declare-fun m!1044925 () Bool)

(assert (=> b!1131900 m!1044925))

(assert (=> b!1131900 m!1044925))

(declare-fun m!1044927 () Bool)

(assert (=> b!1131900 m!1044927))

(assert (=> b!1131902 m!1044925))

(assert (=> b!1131902 m!1044925))

(assert (=> b!1131902 m!1044927))

(assert (=> bm!48716 d!131291))

(declare-fun b!1131903 () Bool)

(declare-fun e!644209 () Bool)

(assert (=> b!1131903 (= e!644209 (validKeyInArray!0 (select (arr!35526 lt!502669) from!1455)))))

(assert (=> b!1131903 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1131904 () Bool)

(declare-fun e!644208 () ListLongMap!16083)

(assert (=> b!1131904 (= e!644208 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1131905 () Bool)

(declare-fun e!644212 () Bool)

(declare-fun e!644211 () Bool)

(assert (=> b!1131905 (= e!644212 e!644211)))

(assert (=> b!1131905 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36063 lt!502669)))))

(declare-fun lt!502809 () ListLongMap!16083)

(declare-fun res!756158 () Bool)

(assert (=> b!1131905 (= res!756158 (contains!6547 lt!502809 (select (arr!35526 lt!502669) from!1455)))))

(assert (=> b!1131905 (=> (not res!756158) (not e!644211))))

(declare-fun b!1131906 () Bool)

(declare-fun lt!502811 () Unit!37021)

(declare-fun lt!502810 () Unit!37021)

(assert (=> b!1131906 (= lt!502811 lt!502810)))

(declare-fun lt!502813 () (_ BitVec 64))

(declare-fun lt!502814 () V!43083)

(declare-fun lt!502812 () (_ BitVec 64))

(declare-fun lt!502815 () ListLongMap!16083)

(assert (=> b!1131906 (not (contains!6547 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814)) lt!502813))))

(assert (=> b!1131906 (= lt!502810 (addStillNotContains!285 lt!502815 lt!502812 lt!502814 lt!502813))))

(assert (=> b!1131906 (= lt!502813 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1131906 (= lt!502814 (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1131906 (= lt!502812 (select (arr!35526 lt!502669) from!1455))))

(declare-fun call!48767 () ListLongMap!16083)

(assert (=> b!1131906 (= lt!502815 call!48767)))

(declare-fun e!644214 () ListLongMap!16083)

(assert (=> b!1131906 (= e!644214 (+!3420 call!48767 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131293 () Bool)

(declare-fun e!644210 () Bool)

(assert (=> d!131293 e!644210))

(declare-fun res!756160 () Bool)

(assert (=> d!131293 (=> (not res!756160) (not e!644210))))

(assert (=> d!131293 (= res!756160 (not (contains!6547 lt!502809 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131293 (= lt!502809 e!644208)))

(declare-fun c!110236 () Bool)

(assert (=> d!131293 (= c!110236 (bvsge from!1455 (size!36063 lt!502669)))))

(assert (=> d!131293 (validMask!0 mask!1564)))

(assert (=> d!131293 (= (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!502809)))

(declare-fun e!644213 () Bool)

(declare-fun b!1131907 () Bool)

(assert (=> b!1131907 (= e!644213 (= lt!502809 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1131908 () Bool)

(assert (=> b!1131908 (= e!644214 call!48767)))

(declare-fun b!1131909 () Bool)

(assert (=> b!1131909 (= e!644213 (isEmpty!976 lt!502809))))

(declare-fun b!1131910 () Bool)

(assert (=> b!1131910 (= e!644208 e!644214)))

(declare-fun c!110237 () Bool)

(assert (=> b!1131910 (= c!110237 (validKeyInArray!0 (select (arr!35526 lt!502669) from!1455)))))

(declare-fun b!1131911 () Bool)

(assert (=> b!1131911 (= e!644210 e!644212)))

(declare-fun c!110239 () Bool)

(assert (=> b!1131911 (= c!110239 e!644209)))

(declare-fun res!756161 () Bool)

(assert (=> b!1131911 (=> (not res!756161) (not e!644209))))

(assert (=> b!1131911 (= res!756161 (bvslt from!1455 (size!36063 lt!502669)))))

(declare-fun bm!48764 () Bool)

(assert (=> bm!48764 (= call!48767 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1131912 () Bool)

(assert (=> b!1131912 (= e!644212 e!644213)))

(declare-fun c!110238 () Bool)

(assert (=> b!1131912 (= c!110238 (bvslt from!1455 (size!36063 lt!502669)))))

(declare-fun b!1131913 () Bool)

(assert (=> b!1131913 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36063 lt!502669)))))

(assert (=> b!1131913 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36062 lt!502663)))))

(assert (=> b!1131913 (= e!644211 (= (apply!990 lt!502809 (select (arr!35526 lt!502669) from!1455)) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1131914 () Bool)

(declare-fun res!756159 () Bool)

(assert (=> b!1131914 (=> (not res!756159) (not e!644210))))

(assert (=> b!1131914 (= res!756159 (not (contains!6547 lt!502809 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131293 c!110236) b!1131904))

(assert (= (and d!131293 (not c!110236)) b!1131910))

(assert (= (and b!1131910 c!110237) b!1131906))

(assert (= (and b!1131910 (not c!110237)) b!1131908))

(assert (= (or b!1131906 b!1131908) bm!48764))

(assert (= (and d!131293 res!756160) b!1131914))

(assert (= (and b!1131914 res!756159) b!1131911))

(assert (= (and b!1131911 res!756161) b!1131903))

(assert (= (and b!1131911 c!110239) b!1131905))

(assert (= (and b!1131911 (not c!110239)) b!1131912))

(assert (= (and b!1131905 res!756158) b!1131913))

(assert (= (and b!1131912 c!110238) b!1131907))

(assert (= (and b!1131912 (not c!110238)) b!1131909))

(declare-fun b_lambda!18957 () Bool)

(assert (=> (not b_lambda!18957) (not b!1131906)))

(assert (=> b!1131906 t!35851))

(declare-fun b_and!38697 () Bool)

(assert (= b_and!38695 (and (=> t!35851 result!18067) b_and!38697)))

(declare-fun b_lambda!18959 () Bool)

(assert (=> (not b_lambda!18959) (not b!1131913)))

(assert (=> b!1131913 t!35851))

(declare-fun b_and!38699 () Bool)

(assert (= b_and!38697 (and (=> t!35851 result!18067) b_and!38699)))

(declare-fun m!1044929 () Bool)

(assert (=> b!1131905 m!1044929))

(assert (=> b!1131905 m!1044929))

(declare-fun m!1044931 () Bool)

(assert (=> b!1131905 m!1044931))

(declare-fun m!1044933 () Bool)

(assert (=> bm!48764 m!1044933))

(assert (=> b!1131910 m!1044929))

(assert (=> b!1131910 m!1044929))

(declare-fun m!1044935 () Bool)

(assert (=> b!1131910 m!1044935))

(declare-fun m!1044937 () Bool)

(assert (=> b!1131914 m!1044937))

(declare-fun m!1044939 () Bool)

(assert (=> d!131293 m!1044939))

(assert (=> d!131293 m!1044703))

(declare-fun m!1044941 () Bool)

(assert (=> b!1131909 m!1044941))

(assert (=> b!1131903 m!1044929))

(assert (=> b!1131903 m!1044929))

(assert (=> b!1131903 m!1044935))

(declare-fun m!1044943 () Bool)

(assert (=> b!1131906 m!1044943))

(declare-fun m!1044945 () Bool)

(assert (=> b!1131906 m!1044945))

(assert (=> b!1131906 m!1044943))

(assert (=> b!1131906 m!1044681))

(declare-fun m!1044947 () Bool)

(assert (=> b!1131906 m!1044947))

(declare-fun m!1044949 () Bool)

(assert (=> b!1131906 m!1044949))

(declare-fun m!1044951 () Bool)

(assert (=> b!1131906 m!1044951))

(assert (=> b!1131906 m!1044681))

(assert (=> b!1131906 m!1044929))

(assert (=> b!1131906 m!1044951))

(declare-fun m!1044953 () Bool)

(assert (=> b!1131906 m!1044953))

(assert (=> b!1131907 m!1044933))

(assert (=> b!1131913 m!1044681))

(assert (=> b!1131913 m!1044929))

(declare-fun m!1044955 () Bool)

(assert (=> b!1131913 m!1044955))

(assert (=> b!1131913 m!1044943))

(assert (=> b!1131913 m!1044943))

(assert (=> b!1131913 m!1044681))

(assert (=> b!1131913 m!1044947))

(assert (=> b!1131913 m!1044929))

(assert (=> b!1131677 d!131293))

(declare-fun b!1131915 () Bool)

(declare-fun e!644216 () Bool)

(assert (=> b!1131915 (= e!644216 (validKeyInArray!0 (select (arr!35526 _keys!1208) from!1455)))))

(assert (=> b!1131915 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1131916 () Bool)

(declare-fun e!644215 () ListLongMap!16083)

(assert (=> b!1131916 (= e!644215 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1131917 () Bool)

(declare-fun e!644219 () Bool)

(declare-fun e!644218 () Bool)

(assert (=> b!1131917 (= e!644219 e!644218)))

(assert (=> b!1131917 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36063 _keys!1208)))))

(declare-fun res!756162 () Bool)

(declare-fun lt!502816 () ListLongMap!16083)

(assert (=> b!1131917 (= res!756162 (contains!6547 lt!502816 (select (arr!35526 _keys!1208) from!1455)))))

(assert (=> b!1131917 (=> (not res!756162) (not e!644218))))

(declare-fun b!1131918 () Bool)

(declare-fun lt!502818 () Unit!37021)

(declare-fun lt!502817 () Unit!37021)

(assert (=> b!1131918 (= lt!502818 lt!502817)))

(declare-fun lt!502820 () (_ BitVec 64))

(declare-fun lt!502821 () V!43083)

(declare-fun lt!502822 () ListLongMap!16083)

(declare-fun lt!502819 () (_ BitVec 64))

(assert (=> b!1131918 (not (contains!6547 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821)) lt!502820))))

(assert (=> b!1131918 (= lt!502817 (addStillNotContains!285 lt!502822 lt!502819 lt!502821 lt!502820))))

(assert (=> b!1131918 (= lt!502820 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1131918 (= lt!502821 (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1131918 (= lt!502819 (select (arr!35526 _keys!1208) from!1455))))

(declare-fun call!48768 () ListLongMap!16083)

(assert (=> b!1131918 (= lt!502822 call!48768)))

(declare-fun e!644221 () ListLongMap!16083)

(assert (=> b!1131918 (= e!644221 (+!3420 call!48768 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131295 () Bool)

(declare-fun e!644217 () Bool)

(assert (=> d!131295 e!644217))

(declare-fun res!756164 () Bool)

(assert (=> d!131295 (=> (not res!756164) (not e!644217))))

(assert (=> d!131295 (= res!756164 (not (contains!6547 lt!502816 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131295 (= lt!502816 e!644215)))

(declare-fun c!110240 () Bool)

(assert (=> d!131295 (= c!110240 (bvsge from!1455 (size!36063 _keys!1208)))))

(assert (=> d!131295 (validMask!0 mask!1564)))

(assert (=> d!131295 (= (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!502816)))

(declare-fun b!1131919 () Bool)

(declare-fun e!644220 () Bool)

(assert (=> b!1131919 (= e!644220 (= lt!502816 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1131920 () Bool)

(assert (=> b!1131920 (= e!644221 call!48768)))

(declare-fun b!1131921 () Bool)

(assert (=> b!1131921 (= e!644220 (isEmpty!976 lt!502816))))

(declare-fun b!1131922 () Bool)

(assert (=> b!1131922 (= e!644215 e!644221)))

(declare-fun c!110241 () Bool)

(assert (=> b!1131922 (= c!110241 (validKeyInArray!0 (select (arr!35526 _keys!1208) from!1455)))))

(declare-fun b!1131923 () Bool)

(assert (=> b!1131923 (= e!644217 e!644219)))

(declare-fun c!110243 () Bool)

(assert (=> b!1131923 (= c!110243 e!644216)))

(declare-fun res!756165 () Bool)

(assert (=> b!1131923 (=> (not res!756165) (not e!644216))))

(assert (=> b!1131923 (= res!756165 (bvslt from!1455 (size!36063 _keys!1208)))))

(declare-fun bm!48765 () Bool)

(assert (=> bm!48765 (= call!48768 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1131924 () Bool)

(assert (=> b!1131924 (= e!644219 e!644220)))

(declare-fun c!110242 () Bool)

(assert (=> b!1131924 (= c!110242 (bvslt from!1455 (size!36063 _keys!1208)))))

(declare-fun b!1131925 () Bool)

(assert (=> b!1131925 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36063 _keys!1208)))))

(assert (=> b!1131925 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36062 _values!996)))))

(assert (=> b!1131925 (= e!644218 (= (apply!990 lt!502816 (select (arr!35526 _keys!1208) from!1455)) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1131926 () Bool)

(declare-fun res!756163 () Bool)

(assert (=> b!1131926 (=> (not res!756163) (not e!644217))))

(assert (=> b!1131926 (= res!756163 (not (contains!6547 lt!502816 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131295 c!110240) b!1131916))

(assert (= (and d!131295 (not c!110240)) b!1131922))

(assert (= (and b!1131922 c!110241) b!1131918))

(assert (= (and b!1131922 (not c!110241)) b!1131920))

(assert (= (or b!1131918 b!1131920) bm!48765))

(assert (= (and d!131295 res!756164) b!1131926))

(assert (= (and b!1131926 res!756163) b!1131923))

(assert (= (and b!1131923 res!756165) b!1131915))

(assert (= (and b!1131923 c!110243) b!1131917))

(assert (= (and b!1131923 (not c!110243)) b!1131924))

(assert (= (and b!1131917 res!756162) b!1131925))

(assert (= (and b!1131924 c!110242) b!1131919))

(assert (= (and b!1131924 (not c!110242)) b!1131921))

(declare-fun b_lambda!18961 () Bool)

(assert (=> (not b_lambda!18961) (not b!1131918)))

(assert (=> b!1131918 t!35851))

(declare-fun b_and!38701 () Bool)

(assert (= b_and!38699 (and (=> t!35851 result!18067) b_and!38701)))

(declare-fun b_lambda!18963 () Bool)

(assert (=> (not b_lambda!18963) (not b!1131925)))

(assert (=> b!1131925 t!35851))

(declare-fun b_and!38703 () Bool)

(assert (= b_and!38701 (and (=> t!35851 result!18067) b_and!38703)))

(assert (=> b!1131917 m!1044691))

(assert (=> b!1131917 m!1044691))

(declare-fun m!1044957 () Bool)

(assert (=> b!1131917 m!1044957))

(declare-fun m!1044959 () Bool)

(assert (=> bm!48765 m!1044959))

(assert (=> b!1131922 m!1044691))

(assert (=> b!1131922 m!1044691))

(declare-fun m!1044961 () Bool)

(assert (=> b!1131922 m!1044961))

(declare-fun m!1044963 () Bool)

(assert (=> b!1131926 m!1044963))

(declare-fun m!1044965 () Bool)

(assert (=> d!131295 m!1044965))

(assert (=> d!131295 m!1044703))

(declare-fun m!1044967 () Bool)

(assert (=> b!1131921 m!1044967))

(assert (=> b!1131915 m!1044691))

(assert (=> b!1131915 m!1044691))

(assert (=> b!1131915 m!1044961))

(declare-fun m!1044969 () Bool)

(assert (=> b!1131918 m!1044969))

(declare-fun m!1044971 () Bool)

(assert (=> b!1131918 m!1044971))

(assert (=> b!1131918 m!1044969))

(assert (=> b!1131918 m!1044681))

(declare-fun m!1044973 () Bool)

(assert (=> b!1131918 m!1044973))

(declare-fun m!1044975 () Bool)

(assert (=> b!1131918 m!1044975))

(declare-fun m!1044977 () Bool)

(assert (=> b!1131918 m!1044977))

(assert (=> b!1131918 m!1044681))

(assert (=> b!1131918 m!1044691))

(assert (=> b!1131918 m!1044977))

(declare-fun m!1044979 () Bool)

(assert (=> b!1131918 m!1044979))

(assert (=> b!1131919 m!1044959))

(assert (=> b!1131925 m!1044681))

(assert (=> b!1131925 m!1044691))

(declare-fun m!1044981 () Bool)

(assert (=> b!1131925 m!1044981))

(assert (=> b!1131925 m!1044969))

(assert (=> b!1131925 m!1044969))

(assert (=> b!1131925 m!1044681))

(assert (=> b!1131925 m!1044973))

(assert (=> b!1131925 m!1044691))

(assert (=> b!1131677 d!131295))

(assert (=> bm!48720 d!131289))

(declare-fun b!1131927 () Bool)

(declare-fun e!644222 () Bool)

(declare-fun e!644223 () Bool)

(assert (=> b!1131927 (= e!644222 e!644223)))

(declare-fun lt!502825 () (_ BitVec 64))

(assert (=> b!1131927 (= lt!502825 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!502823 () Unit!37021)

(assert (=> b!1131927 (= lt!502823 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!502825 #b00000000000000000000000000000000))))

(assert (=> b!1131927 (arrayContainsKey!0 _keys!1208 lt!502825 #b00000000000000000000000000000000)))

(declare-fun lt!502824 () Unit!37021)

(assert (=> b!1131927 (= lt!502824 lt!502823)))

(declare-fun res!756167 () Bool)

(assert (=> b!1131927 (= res!756167 (= (seekEntryOrOpen!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9922 #b00000000000000000000000000000000)))))

(assert (=> b!1131927 (=> (not res!756167) (not e!644223))))

(declare-fun bm!48766 () Bool)

(declare-fun call!48769 () Bool)

(assert (=> bm!48766 (= call!48769 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1131928 () Bool)

(assert (=> b!1131928 (= e!644222 call!48769)))

(declare-fun d!131297 () Bool)

(declare-fun res!756166 () Bool)

(declare-fun e!644224 () Bool)

(assert (=> d!131297 (=> res!756166 e!644224)))

(assert (=> d!131297 (= res!756166 (bvsge #b00000000000000000000000000000000 (size!36063 _keys!1208)))))

(assert (=> d!131297 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!644224)))

(declare-fun b!1131929 () Bool)

(assert (=> b!1131929 (= e!644224 e!644222)))

(declare-fun c!110244 () Bool)

(assert (=> b!1131929 (= c!110244 (validKeyInArray!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1131930 () Bool)

(assert (=> b!1131930 (= e!644223 call!48769)))

(assert (= (and d!131297 (not res!756166)) b!1131929))

(assert (= (and b!1131929 c!110244) b!1131927))

(assert (= (and b!1131929 (not c!110244)) b!1131928))

(assert (= (and b!1131927 res!756167) b!1131930))

(assert (= (or b!1131930 b!1131928) bm!48766))

(assert (=> b!1131927 m!1044823))

(declare-fun m!1044983 () Bool)

(assert (=> b!1131927 m!1044983))

(declare-fun m!1044985 () Bool)

(assert (=> b!1131927 m!1044985))

(assert (=> b!1131927 m!1044823))

(declare-fun m!1044987 () Bool)

(assert (=> b!1131927 m!1044987))

(declare-fun m!1044989 () Bool)

(assert (=> bm!48766 m!1044989))

(assert (=> b!1131929 m!1044823))

(assert (=> b!1131929 m!1044823))

(assert (=> b!1131929 m!1044829))

(assert (=> b!1131686 d!131297))

(declare-fun mapNonEmpty!44524 () Bool)

(declare-fun mapRes!44524 () Bool)

(declare-fun tp!84525 () Bool)

(declare-fun e!644229 () Bool)

(assert (=> mapNonEmpty!44524 (= mapRes!44524 (and tp!84525 e!644229))))

(declare-fun mapKey!44524 () (_ BitVec 32))

(declare-fun mapValue!44524 () ValueCell!13524)

(declare-fun mapRest!44524 () (Array (_ BitVec 32) ValueCell!13524))

(assert (=> mapNonEmpty!44524 (= mapRest!44518 (store mapRest!44524 mapKey!44524 mapValue!44524))))

(declare-fun condMapEmpty!44524 () Bool)

(declare-fun mapDefault!44524 () ValueCell!13524)

(assert (=> mapNonEmpty!44518 (= condMapEmpty!44524 (= mapRest!44518 ((as const (Array (_ BitVec 32) ValueCell!13524)) mapDefault!44524)))))

(declare-fun e!644230 () Bool)

(assert (=> mapNonEmpty!44518 (= tp!84515 (and e!644230 mapRes!44524))))

(declare-fun mapIsEmpty!44524 () Bool)

(assert (=> mapIsEmpty!44524 mapRes!44524))

(declare-fun b!1131937 () Bool)

(assert (=> b!1131937 (= e!644229 tp_is_empty!28467)))

(declare-fun b!1131938 () Bool)

(assert (=> b!1131938 (= e!644230 tp_is_empty!28467)))

(assert (= (and mapNonEmpty!44518 condMapEmpty!44524) mapIsEmpty!44524))

(assert (= (and mapNonEmpty!44518 (not condMapEmpty!44524)) mapNonEmpty!44524))

(assert (= (and mapNonEmpty!44524 ((_ is ValueCellFull!13524) mapValue!44524)) b!1131937))

(assert (= (and mapNonEmpty!44518 ((_ is ValueCellFull!13524) mapDefault!44524)) b!1131938))

(declare-fun m!1044991 () Bool)

(assert (=> mapNonEmpty!44524 m!1044991))

(declare-fun b_lambda!18965 () Bool)

(assert (= b_lambda!18955 (or (and start!98272 b_free!23937) b_lambda!18965)))

(declare-fun b_lambda!18967 () Bool)

(assert (= b_lambda!18951 (or (and start!98272 b_free!23937) b_lambda!18967)))

(declare-fun b_lambda!18969 () Bool)

(assert (= b_lambda!18963 (or (and start!98272 b_free!23937) b_lambda!18969)))

(declare-fun b_lambda!18971 () Bool)

(assert (= b_lambda!18947 (or (and start!98272 b_free!23937) b_lambda!18971)))

(declare-fun b_lambda!18973 () Bool)

(assert (= b_lambda!18949 (or (and start!98272 b_free!23937) b_lambda!18973)))

(declare-fun b_lambda!18975 () Bool)

(assert (= b_lambda!18961 (or (and start!98272 b_free!23937) b_lambda!18975)))

(declare-fun b_lambda!18977 () Bool)

(assert (= b_lambda!18959 (or (and start!98272 b_free!23937) b_lambda!18977)))

(declare-fun b_lambda!18979 () Bool)

(assert (= b_lambda!18953 (or (and start!98272 b_free!23937) b_lambda!18979)))

(declare-fun b_lambda!18981 () Bool)

(assert (= b_lambda!18957 (or (and start!98272 b_free!23937) b_lambda!18981)))

(check-sat (not d!131293) (not b!1131909) (not bm!48765) (not b!1131883) (not b!1131887) (not b_lambda!18975) tp_is_empty!28467 (not b!1131780) (not b!1131907) (not bm!48757) (not b!1131876) (not d!131251) (not b_lambda!18967) (not b!1131899) (not b!1131894) (not d!131257) (not b!1131888) (not d!131271) (not b!1131836) (not b!1131838) (not b!1131880) (not b!1131895) (not bm!48766) (not d!131277) (not b!1131913) (not b!1131820) (not b!1131917) (not d!131295) (not b!1131914) (not b!1131915) (not bm!48759) (not b!1131884) (not b!1131906) (not b_next!23937) (not b!1131822) (not b!1131891) (not b!1131903) (not b!1131848) (not b_lambda!18979) (not b!1131781) (not b!1131892) (not b!1131845) (not d!131285) (not b!1131840) (not bm!48749) (not b_lambda!18965) (not b!1131905) (not b!1131879) (not bm!48764) (not b!1131824) (not b!1131925) (not mapNonEmpty!44524) (not b!1131921) (not b!1131926) (not b_lambda!18977) (not b!1131833) (not b!1131919) b_and!38703 (not b_lambda!18945) (not b!1131900) (not d!131279) (not b!1131834) (not bm!48763) (not d!131281) (not d!131287) (not b_lambda!18969) (not b!1131873) (not b_lambda!18973) (not b!1131890) (not b!1131797) (not b!1131927) (not b!1131808) (not b!1131789) (not bm!48752) (not d!131291) (not b!1131877) (not b!1131791) (not d!131289) (not d!131249) (not b!1131875) (not b_lambda!18981) (not b!1131806) (not d!131253) (not bm!48758) (not b!1131898) (not b!1131910) (not d!131267) (not bm!48762) (not b!1131885) (not b!1131847) (not b!1131929) (not b!1131922) (not b!1131902) (not b!1131918) (not b_lambda!18971))
(check-sat b_and!38703 (not b_next!23937))
(get-model)

(declare-fun b!1131939 () Bool)

(declare-fun e!644231 () Bool)

(declare-fun e!644232 () Bool)

(assert (=> b!1131939 (= e!644231 e!644232)))

(declare-fun lt!502828 () (_ BitVec 64))

(assert (=> b!1131939 (= lt!502828 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!502826 () Unit!37021)

(assert (=> b!1131939 (= lt!502826 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!502669 lt!502828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1131939 (arrayContainsKey!0 lt!502669 lt!502828 #b00000000000000000000000000000000)))

(declare-fun lt!502827 () Unit!37021)

(assert (=> b!1131939 (= lt!502827 lt!502826)))

(declare-fun res!756169 () Bool)

(assert (=> b!1131939 (= res!756169 (= (seekEntryOrOpen!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!502669 mask!1564) (Found!9922 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1131939 (=> (not res!756169) (not e!644232))))

(declare-fun bm!48767 () Bool)

(declare-fun call!48770 () Bool)

(assert (=> bm!48767 (= call!48770 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!502669 mask!1564))))

(declare-fun b!1131940 () Bool)

(assert (=> b!1131940 (= e!644231 call!48770)))

(declare-fun d!131299 () Bool)

(declare-fun res!756168 () Bool)

(declare-fun e!644233 () Bool)

(assert (=> d!131299 (=> res!756168 e!644233)))

(assert (=> d!131299 (= res!756168 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> d!131299 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!502669 mask!1564) e!644233)))

(declare-fun b!1131941 () Bool)

(assert (=> b!1131941 (= e!644233 e!644231)))

(declare-fun c!110245 () Bool)

(assert (=> b!1131941 (= c!110245 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1131942 () Bool)

(assert (=> b!1131942 (= e!644232 call!48770)))

(assert (= (and d!131299 (not res!756168)) b!1131941))

(assert (= (and b!1131941 c!110245) b!1131939))

(assert (= (and b!1131941 (not c!110245)) b!1131940))

(assert (= (and b!1131939 res!756169) b!1131942))

(assert (= (or b!1131942 b!1131940) bm!48767))

(declare-fun m!1044993 () Bool)

(assert (=> b!1131939 m!1044993))

(declare-fun m!1044995 () Bool)

(assert (=> b!1131939 m!1044995))

(declare-fun m!1044997 () Bool)

(assert (=> b!1131939 m!1044997))

(assert (=> b!1131939 m!1044993))

(declare-fun m!1044999 () Bool)

(assert (=> b!1131939 m!1044999))

(declare-fun m!1045001 () Bool)

(assert (=> bm!48767 m!1045001))

(assert (=> b!1131941 m!1044993))

(assert (=> b!1131941 m!1044993))

(declare-fun m!1045003 () Bool)

(assert (=> b!1131941 m!1045003))

(assert (=> bm!48749 d!131299))

(declare-fun d!131301 () Bool)

(assert (=> d!131301 (= (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131880 d!131301))

(declare-fun d!131303 () Bool)

(declare-fun e!644236 () Bool)

(assert (=> d!131303 e!644236))

(declare-fun c!110248 () Bool)

(assert (=> d!131303 (= c!110248 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!131303 true))

(declare-fun _$29!186 () Unit!37021)

(assert (=> d!131303 (= (choose!1783 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) _$29!186)))

(declare-fun b!1131947 () Bool)

(assert (=> b!1131947 (= e!644236 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1131948 () Bool)

(assert (=> b!1131948 (= e!644236 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!131303 c!110248) b!1131947))

(assert (= (and d!131303 (not c!110248)) b!1131948))

(assert (=> b!1131947 m!1044669))

(assert (=> d!131279 d!131303))

(assert (=> d!131279 d!131261))

(declare-fun d!131305 () Bool)

(assert (=> d!131305 (= (validKeyInArray!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)) (and (not (= (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131929 d!131305))

(declare-fun d!131307 () Bool)

(declare-fun isEmpty!977 (Option!682) Bool)

(assert (=> d!131307 (= (isDefined!455 (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934)) (not (isEmpty!977 (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))))

(declare-fun bs!32957 () Bool)

(assert (= bs!32957 d!131307))

(assert (=> bs!32957 m!1044925))

(declare-fun m!1045005 () Bool)

(assert (=> bs!32957 m!1045005))

(assert (=> b!1131902 d!131307))

(declare-fun d!131309 () Bool)

(declare-fun c!110253 () Bool)

(assert (=> d!131309 (= c!110253 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 call!48718))) (= (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718)))) k0!934)))))

(declare-fun e!644241 () Option!682)

(assert (=> d!131309 (= (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934) e!644241)))

(declare-fun b!1131959 () Bool)

(declare-fun e!644242 () Option!682)

(assert (=> b!1131959 (= e!644242 (getValueByKey!631 (t!35852 (toList!8057 (ite c!110183 lt!502672 call!48718))) k0!934))))

(declare-fun b!1131960 () Bool)

(assert (=> b!1131960 (= e!644242 None!680)))

(declare-fun b!1131957 () Bool)

(assert (=> b!1131957 (= e!644241 (Some!681 (_2!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718))))))))

(declare-fun b!1131958 () Bool)

(assert (=> b!1131958 (= e!644241 e!644242)))

(declare-fun c!110254 () Bool)

(assert (=> b!1131958 (= c!110254 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 call!48718))) (not (= (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718)))) k0!934))))))

(assert (= (and d!131309 c!110253) b!1131957))

(assert (= (and d!131309 (not c!110253)) b!1131958))

(assert (= (and b!1131958 c!110254) b!1131959))

(assert (= (and b!1131958 (not c!110254)) b!1131960))

(declare-fun m!1045007 () Bool)

(assert (=> b!1131959 m!1045007))

(assert (=> b!1131902 d!131309))

(declare-fun d!131311 () Bool)

(assert (=> d!131311 (isDefined!455 (getValueByKey!631 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(declare-fun lt!502831 () Unit!37021)

(declare-fun choose!1784 (List!24916 (_ BitVec 64)) Unit!37021)

(assert (=> d!131311 (= lt!502831 (choose!1784 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(declare-fun e!644245 () Bool)

(assert (=> d!131311 e!644245))

(declare-fun res!756172 () Bool)

(assert (=> d!131311 (=> (not res!756172) (not e!644245))))

(declare-fun isStrictlySorted!723 (List!24916) Bool)

(assert (=> d!131311 (= res!756172 (isStrictlySorted!723 (toList!8057 (ite c!110183 lt!502672 call!48718))))))

(assert (=> d!131311 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934) lt!502831)))

(declare-fun b!1131963 () Bool)

(assert (=> b!1131963 (= e!644245 (containsKey!586 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934))))

(assert (= (and d!131311 res!756172) b!1131963))

(assert (=> d!131311 m!1044925))

(assert (=> d!131311 m!1044925))

(assert (=> d!131311 m!1044927))

(declare-fun m!1045009 () Bool)

(assert (=> d!131311 m!1045009))

(declare-fun m!1045011 () Bool)

(assert (=> d!131311 m!1045011))

(assert (=> b!1131963 m!1044921))

(assert (=> b!1131900 d!131311))

(assert (=> b!1131900 d!131307))

(assert (=> b!1131900 d!131309))

(declare-fun d!131313 () Bool)

(declare-fun e!644246 () Bool)

(assert (=> d!131313 e!644246))

(declare-fun res!756173 () Bool)

(assert (=> d!131313 (=> res!756173 e!644246)))

(declare-fun lt!502832 () Bool)

(assert (=> d!131313 (= res!756173 (not lt!502832))))

(declare-fun lt!502833 () Bool)

(assert (=> d!131313 (= lt!502832 lt!502833)))

(declare-fun lt!502834 () Unit!37021)

(declare-fun e!644247 () Unit!37021)

(assert (=> d!131313 (= lt!502834 e!644247)))

(declare-fun c!110255 () Bool)

(assert (=> d!131313 (= c!110255 lt!502833)))

(assert (=> d!131313 (= lt!502833 (containsKey!586 (toList!8057 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!131313 (= (contains!6547 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!502832)))

(declare-fun b!1131964 () Bool)

(declare-fun lt!502835 () Unit!37021)

(assert (=> b!1131964 (= e!644247 lt!502835)))

(assert (=> b!1131964 (= lt!502835 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> b!1131964 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1131965 () Bool)

(declare-fun Unit!37027 () Unit!37021)

(assert (=> b!1131965 (= e!644247 Unit!37027)))

(declare-fun b!1131966 () Bool)

(assert (=> b!1131966 (= e!644246 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!131313 c!110255) b!1131964))

(assert (= (and d!131313 (not c!110255)) b!1131965))

(assert (= (and d!131313 (not res!756173)) b!1131966))

(declare-fun m!1045013 () Bool)

(assert (=> d!131313 m!1045013))

(declare-fun m!1045015 () Bool)

(assert (=> b!1131964 m!1045015))

(declare-fun m!1045017 () Bool)

(assert (=> b!1131964 m!1045017))

(assert (=> b!1131964 m!1045017))

(declare-fun m!1045019 () Bool)

(assert (=> b!1131964 m!1045019))

(assert (=> b!1131966 m!1045017))

(assert (=> b!1131966 m!1045017))

(assert (=> b!1131966 m!1045019))

(assert (=> d!131251 d!131313))

(declare-fun d!131315 () Bool)

(declare-fun e!644248 () Bool)

(assert (=> d!131315 e!644248))

(declare-fun res!756175 () Bool)

(assert (=> d!131315 (=> (not res!756175) (not e!644248))))

(declare-fun lt!502837 () ListLongMap!16083)

(assert (=> d!131315 (= res!756175 (contains!6547 lt!502837 (_1!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!502839 () List!24916)

(assert (=> d!131315 (= lt!502837 (ListLongMap!16084 lt!502839))))

(declare-fun lt!502838 () Unit!37021)

(declare-fun lt!502836 () Unit!37021)

(assert (=> d!131315 (= lt!502838 lt!502836)))

(assert (=> d!131315 (= (getValueByKey!631 lt!502839 (_1!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!681 (_2!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!131315 (= lt!502836 (lemmaContainsTupThenGetReturnValue!306 lt!502839 (_1!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!131315 (= lt!502839 (insertStrictlySorted!398 (toList!8057 lt!502672) (_1!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!131315 (= (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!502837)))

(declare-fun b!1131967 () Bool)

(declare-fun res!756174 () Bool)

(assert (=> b!1131967 (=> (not res!756174) (not e!644248))))

(assert (=> b!1131967 (= res!756174 (= (getValueByKey!631 (toList!8057 lt!502837) (_1!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!681 (_2!9061 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1131968 () Bool)

(assert (=> b!1131968 (= e!644248 (contains!6548 (toList!8057 lt!502837) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!131315 res!756175) b!1131967))

(assert (= (and b!1131967 res!756174) b!1131968))

(declare-fun m!1045021 () Bool)

(assert (=> d!131315 m!1045021))

(declare-fun m!1045023 () Bool)

(assert (=> d!131315 m!1045023))

(declare-fun m!1045025 () Bool)

(assert (=> d!131315 m!1045025))

(declare-fun m!1045027 () Bool)

(assert (=> d!131315 m!1045027))

(declare-fun m!1045029 () Bool)

(assert (=> b!1131967 m!1045029))

(declare-fun m!1045031 () Bool)

(assert (=> b!1131968 m!1045031))

(assert (=> d!131251 d!131315))

(declare-fun d!131317 () Bool)

(assert (=> d!131317 (contains!6547 (+!3420 lt!502672 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(assert (=> d!131317 true))

(declare-fun _$35!450 () Unit!37021)

(assert (=> d!131317 (= (choose!1781 lt!502672 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) _$35!450)))

(declare-fun bs!32958 () Bool)

(assert (= bs!32958 d!131317))

(assert (=> bs!32958 m!1044781))

(assert (=> bs!32958 m!1044781))

(assert (=> bs!32958 m!1044783))

(assert (=> d!131251 d!131317))

(declare-fun d!131319 () Bool)

(declare-fun e!644249 () Bool)

(assert (=> d!131319 e!644249))

(declare-fun res!756176 () Bool)

(assert (=> d!131319 (=> res!756176 e!644249)))

(declare-fun lt!502840 () Bool)

(assert (=> d!131319 (= res!756176 (not lt!502840))))

(declare-fun lt!502841 () Bool)

(assert (=> d!131319 (= lt!502840 lt!502841)))

(declare-fun lt!502842 () Unit!37021)

(declare-fun e!644250 () Unit!37021)

(assert (=> d!131319 (= lt!502842 e!644250)))

(declare-fun c!110256 () Bool)

(assert (=> d!131319 (= c!110256 lt!502841)))

(assert (=> d!131319 (= lt!502841 (containsKey!586 (toList!8057 lt!502672) k0!934))))

(assert (=> d!131319 (= (contains!6547 lt!502672 k0!934) lt!502840)))

(declare-fun b!1131970 () Bool)

(declare-fun lt!502843 () Unit!37021)

(assert (=> b!1131970 (= e!644250 lt!502843)))

(assert (=> b!1131970 (= lt!502843 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502672) k0!934))))

(assert (=> b!1131970 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502672) k0!934))))

(declare-fun b!1131971 () Bool)

(declare-fun Unit!37028 () Unit!37021)

(assert (=> b!1131971 (= e!644250 Unit!37028)))

(declare-fun b!1131972 () Bool)

(assert (=> b!1131972 (= e!644249 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502672) k0!934)))))

(assert (= (and d!131319 c!110256) b!1131970))

(assert (= (and d!131319 (not c!110256)) b!1131971))

(assert (= (and d!131319 (not res!756176)) b!1131972))

(declare-fun m!1045033 () Bool)

(assert (=> d!131319 m!1045033))

(declare-fun m!1045035 () Bool)

(assert (=> b!1131970 m!1045035))

(declare-fun m!1045037 () Bool)

(assert (=> b!1131970 m!1045037))

(assert (=> b!1131970 m!1045037))

(declare-fun m!1045039 () Bool)

(assert (=> b!1131970 m!1045039))

(assert (=> b!1131972 m!1045037))

(assert (=> b!1131972 m!1045037))

(assert (=> b!1131972 m!1045039))

(assert (=> d!131251 d!131319))

(declare-fun d!131321 () Bool)

(declare-fun e!644251 () Bool)

(assert (=> d!131321 e!644251))

(declare-fun res!756177 () Bool)

(assert (=> d!131321 (=> res!756177 e!644251)))

(declare-fun lt!502844 () Bool)

(assert (=> d!131321 (= res!756177 (not lt!502844))))

(declare-fun lt!502845 () Bool)

(assert (=> d!131321 (= lt!502844 lt!502845)))

(declare-fun lt!502846 () Unit!37021)

(declare-fun e!644252 () Unit!37021)

(assert (=> d!131321 (= lt!502846 e!644252)))

(declare-fun c!110257 () Bool)

(assert (=> d!131321 (= c!110257 lt!502845)))

(assert (=> d!131321 (= lt!502845 (containsKey!586 (toList!8057 lt!502816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131321 (= (contains!6547 lt!502816 #b0000000000000000000000000000000000000000000000000000000000000000) lt!502844)))

(declare-fun b!1131973 () Bool)

(declare-fun lt!502847 () Unit!37021)

(assert (=> b!1131973 (= e!644252 lt!502847)))

(assert (=> b!1131973 (= lt!502847 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1131973 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1131974 () Bool)

(declare-fun Unit!37029 () Unit!37021)

(assert (=> b!1131974 (= e!644252 Unit!37029)))

(declare-fun b!1131975 () Bool)

(assert (=> b!1131975 (= e!644251 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131321 c!110257) b!1131973))

(assert (= (and d!131321 (not c!110257)) b!1131974))

(assert (= (and d!131321 (not res!756177)) b!1131975))

(declare-fun m!1045041 () Bool)

(assert (=> d!131321 m!1045041))

(declare-fun m!1045043 () Bool)

(assert (=> b!1131973 m!1045043))

(declare-fun m!1045045 () Bool)

(assert (=> b!1131973 m!1045045))

(assert (=> b!1131973 m!1045045))

(declare-fun m!1045047 () Bool)

(assert (=> b!1131973 m!1045047))

(assert (=> b!1131975 m!1045045))

(assert (=> b!1131975 m!1045045))

(assert (=> b!1131975 m!1045047))

(assert (=> d!131295 d!131321))

(assert (=> d!131295 d!131261))

(declare-fun d!131323 () Bool)

(assert (=> d!131323 (not (contains!6547 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792)) lt!502791))))

(declare-fun lt!502850 () Unit!37021)

(declare-fun choose!1785 (ListLongMap!16083 (_ BitVec 64) V!43083 (_ BitVec 64)) Unit!37021)

(assert (=> d!131323 (= lt!502850 (choose!1785 lt!502793 lt!502790 lt!502792 lt!502791))))

(declare-fun e!644255 () Bool)

(assert (=> d!131323 e!644255))

(declare-fun res!756180 () Bool)

(assert (=> d!131323 (=> (not res!756180) (not e!644255))))

(assert (=> d!131323 (= res!756180 (not (contains!6547 lt!502793 lt!502791)))))

(assert (=> d!131323 (= (addStillNotContains!285 lt!502793 lt!502790 lt!502792 lt!502791) lt!502850)))

(declare-fun b!1131979 () Bool)

(assert (=> b!1131979 (= e!644255 (not (= lt!502790 lt!502791)))))

(assert (= (and d!131323 res!756180) b!1131979))

(assert (=> d!131323 m!1044881))

(assert (=> d!131323 m!1044881))

(assert (=> d!131323 m!1044883))

(declare-fun m!1045049 () Bool)

(assert (=> d!131323 m!1045049))

(declare-fun m!1045051 () Bool)

(assert (=> d!131323 m!1045051))

(assert (=> b!1131876 d!131323))

(declare-fun d!131325 () Bool)

(declare-fun e!644256 () Bool)

(assert (=> d!131325 e!644256))

(declare-fun res!756182 () Bool)

(assert (=> d!131325 (=> (not res!756182) (not e!644256))))

(declare-fun lt!502852 () ListLongMap!16083)

(assert (=> d!131325 (= res!756182 (contains!6547 lt!502852 (_1!9061 (tuple2!18103 lt!502790 lt!502792))))))

(declare-fun lt!502854 () List!24916)

(assert (=> d!131325 (= lt!502852 (ListLongMap!16084 lt!502854))))

(declare-fun lt!502853 () Unit!37021)

(declare-fun lt!502851 () Unit!37021)

(assert (=> d!131325 (= lt!502853 lt!502851)))

(assert (=> d!131325 (= (getValueByKey!631 lt!502854 (_1!9061 (tuple2!18103 lt!502790 lt!502792))) (Some!681 (_2!9061 (tuple2!18103 lt!502790 lt!502792))))))

(assert (=> d!131325 (= lt!502851 (lemmaContainsTupThenGetReturnValue!306 lt!502854 (_1!9061 (tuple2!18103 lt!502790 lt!502792)) (_2!9061 (tuple2!18103 lt!502790 lt!502792))))))

(assert (=> d!131325 (= lt!502854 (insertStrictlySorted!398 (toList!8057 lt!502793) (_1!9061 (tuple2!18103 lt!502790 lt!502792)) (_2!9061 (tuple2!18103 lt!502790 lt!502792))))))

(assert (=> d!131325 (= (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792)) lt!502852)))

(declare-fun b!1131980 () Bool)

(declare-fun res!756181 () Bool)

(assert (=> b!1131980 (=> (not res!756181) (not e!644256))))

(assert (=> b!1131980 (= res!756181 (= (getValueByKey!631 (toList!8057 lt!502852) (_1!9061 (tuple2!18103 lt!502790 lt!502792))) (Some!681 (_2!9061 (tuple2!18103 lt!502790 lt!502792)))))))

(declare-fun b!1131981 () Bool)

(assert (=> b!1131981 (= e!644256 (contains!6548 (toList!8057 lt!502852) (tuple2!18103 lt!502790 lt!502792)))))

(assert (= (and d!131325 res!756182) b!1131980))

(assert (= (and b!1131980 res!756181) b!1131981))

(declare-fun m!1045053 () Bool)

(assert (=> d!131325 m!1045053))

(declare-fun m!1045055 () Bool)

(assert (=> d!131325 m!1045055))

(declare-fun m!1045057 () Bool)

(assert (=> d!131325 m!1045057))

(declare-fun m!1045059 () Bool)

(assert (=> d!131325 m!1045059))

(declare-fun m!1045061 () Bool)

(assert (=> b!1131980 m!1045061))

(declare-fun m!1045063 () Bool)

(assert (=> b!1131981 m!1045063))

(assert (=> b!1131876 d!131325))

(declare-fun d!131327 () Bool)

(declare-fun c!110260 () Bool)

(assert (=> d!131327 (= c!110260 ((_ is ValueCellFull!13524) (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!644259 () V!43083)

(assert (=> d!131327 (= (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!644259)))

(declare-fun b!1131986 () Bool)

(declare-fun get!18085 (ValueCell!13524 V!43083) V!43083)

(assert (=> b!1131986 (= e!644259 (get!18085 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1131987 () Bool)

(declare-fun get!18086 (ValueCell!13524 V!43083) V!43083)

(assert (=> b!1131987 (= e!644259 (get!18086 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131327 c!110260) b!1131986))

(assert (= (and d!131327 (not c!110260)) b!1131987))

(assert (=> b!1131986 m!1044873))

(assert (=> b!1131986 m!1044681))

(declare-fun m!1045065 () Bool)

(assert (=> b!1131986 m!1045065))

(assert (=> b!1131987 m!1044873))

(assert (=> b!1131987 m!1044681))

(declare-fun m!1045067 () Bool)

(assert (=> b!1131987 m!1045067))

(assert (=> b!1131876 d!131327))

(declare-fun d!131329 () Bool)

(declare-fun e!644260 () Bool)

(assert (=> d!131329 e!644260))

(declare-fun res!756184 () Bool)

(assert (=> d!131329 (=> (not res!756184) (not e!644260))))

(declare-fun lt!502856 () ListLongMap!16083)

(assert (=> d!131329 (= res!756184 (contains!6547 lt!502856 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!502858 () List!24916)

(assert (=> d!131329 (= lt!502856 (ListLongMap!16084 lt!502858))))

(declare-fun lt!502857 () Unit!37021)

(declare-fun lt!502855 () Unit!37021)

(assert (=> d!131329 (= lt!502857 lt!502855)))

(assert (=> d!131329 (= (getValueByKey!631 lt!502858 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131329 (= lt!502855 (lemmaContainsTupThenGetReturnValue!306 lt!502858 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131329 (= lt!502858 (insertStrictlySorted!398 (toList!8057 call!48765) (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131329 (= (+!3420 call!48765 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!502856)))

(declare-fun b!1131988 () Bool)

(declare-fun res!756183 () Bool)

(assert (=> b!1131988 (=> (not res!756183) (not e!644260))))

(assert (=> b!1131988 (= res!756183 (= (getValueByKey!631 (toList!8057 lt!502856) (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1131989 () Bool)

(assert (=> b!1131989 (= e!644260 (contains!6548 (toList!8057 lt!502856) (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!131329 res!756184) b!1131988))

(assert (= (and b!1131988 res!756183) b!1131989))

(declare-fun m!1045069 () Bool)

(assert (=> d!131329 m!1045069))

(declare-fun m!1045071 () Bool)

(assert (=> d!131329 m!1045071))

(declare-fun m!1045073 () Bool)

(assert (=> d!131329 m!1045073))

(declare-fun m!1045075 () Bool)

(assert (=> d!131329 m!1045075))

(declare-fun m!1045077 () Bool)

(assert (=> b!1131988 m!1045077))

(declare-fun m!1045079 () Bool)

(assert (=> b!1131989 m!1045079))

(assert (=> b!1131876 d!131329))

(declare-fun d!131331 () Bool)

(declare-fun e!644261 () Bool)

(assert (=> d!131331 e!644261))

(declare-fun res!756185 () Bool)

(assert (=> d!131331 (=> res!756185 e!644261)))

(declare-fun lt!502859 () Bool)

(assert (=> d!131331 (= res!756185 (not lt!502859))))

(declare-fun lt!502860 () Bool)

(assert (=> d!131331 (= lt!502859 lt!502860)))

(declare-fun lt!502861 () Unit!37021)

(declare-fun e!644262 () Unit!37021)

(assert (=> d!131331 (= lt!502861 e!644262)))

(declare-fun c!110261 () Bool)

(assert (=> d!131331 (= c!110261 lt!502860)))

(assert (=> d!131331 (= lt!502860 (containsKey!586 (toList!8057 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792))) lt!502791))))

(assert (=> d!131331 (= (contains!6547 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792)) lt!502791) lt!502859)))

(declare-fun b!1131990 () Bool)

(declare-fun lt!502862 () Unit!37021)

(assert (=> b!1131990 (= e!644262 lt!502862)))

(assert (=> b!1131990 (= lt!502862 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792))) lt!502791))))

(assert (=> b!1131990 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792))) lt!502791))))

(declare-fun b!1131991 () Bool)

(declare-fun Unit!37030 () Unit!37021)

(assert (=> b!1131991 (= e!644262 Unit!37030)))

(declare-fun b!1131992 () Bool)

(assert (=> b!1131992 (= e!644261 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502793 (tuple2!18103 lt!502790 lt!502792))) lt!502791)))))

(assert (= (and d!131331 c!110261) b!1131990))

(assert (= (and d!131331 (not c!110261)) b!1131991))

(assert (= (and d!131331 (not res!756185)) b!1131992))

(declare-fun m!1045081 () Bool)

(assert (=> d!131331 m!1045081))

(declare-fun m!1045083 () Bool)

(assert (=> b!1131990 m!1045083))

(declare-fun m!1045085 () Bool)

(assert (=> b!1131990 m!1045085))

(assert (=> b!1131990 m!1045085))

(declare-fun m!1045087 () Bool)

(assert (=> b!1131990 m!1045087))

(assert (=> b!1131992 m!1045085))

(assert (=> b!1131992 m!1045085))

(assert (=> b!1131992 m!1045087))

(assert (=> b!1131876 d!131331))

(declare-fun d!131333 () Bool)

(declare-fun e!644263 () Bool)

(assert (=> d!131333 e!644263))

(declare-fun res!756186 () Bool)

(assert (=> d!131333 (=> res!756186 e!644263)))

(declare-fun lt!502863 () Bool)

(assert (=> d!131333 (= res!756186 (not lt!502863))))

(declare-fun lt!502864 () Bool)

(assert (=> d!131333 (= lt!502863 lt!502864)))

(declare-fun lt!502865 () Unit!37021)

(declare-fun e!644264 () Unit!37021)

(assert (=> d!131333 (= lt!502865 e!644264)))

(declare-fun c!110262 () Bool)

(assert (=> d!131333 (= c!110262 lt!502864)))

(assert (=> d!131333 (= lt!502864 (containsKey!586 (toList!8057 lt!502798) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!131333 (= (contains!6547 lt!502798 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) lt!502863)))

(declare-fun b!1131993 () Bool)

(declare-fun lt!502866 () Unit!37021)

(assert (=> b!1131993 (= e!644264 lt!502866)))

(assert (=> b!1131993 (= lt!502866 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502798) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1131993 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1131994 () Bool)

(declare-fun Unit!37031 () Unit!37021)

(assert (=> b!1131994 (= e!644264 Unit!37031)))

(declare-fun b!1131995 () Bool)

(assert (=> b!1131995 (= e!644263 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!131333 c!110262) b!1131993))

(assert (= (and d!131333 (not c!110262)) b!1131994))

(assert (= (and d!131333 (not res!756186)) b!1131995))

(assert (=> d!131333 m!1044797))

(declare-fun m!1045089 () Bool)

(assert (=> d!131333 m!1045089))

(assert (=> b!1131993 m!1044797))

(declare-fun m!1045091 () Bool)

(assert (=> b!1131993 m!1045091))

(assert (=> b!1131993 m!1044797))

(declare-fun m!1045093 () Bool)

(assert (=> b!1131993 m!1045093))

(assert (=> b!1131993 m!1045093))

(declare-fun m!1045095 () Bool)

(assert (=> b!1131993 m!1045095))

(assert (=> b!1131995 m!1044797))

(assert (=> b!1131995 m!1045093))

(assert (=> b!1131995 m!1045093))

(assert (=> b!1131995 m!1045095))

(assert (=> b!1131890 d!131333))

(declare-fun d!131335 () Bool)

(declare-fun lt!502867 () ListLongMap!16083)

(assert (=> d!131335 (not (contains!6547 lt!502867 k0!934))))

(assert (=> d!131335 (= lt!502867 (ListLongMap!16084 (removeStrictlySorted!90 (toList!8057 call!48761) k0!934)))))

(assert (=> d!131335 (= (-!1179 call!48761 k0!934) lt!502867)))

(declare-fun bs!32959 () Bool)

(assert (= bs!32959 d!131335))

(declare-fun m!1045097 () Bool)

(assert (=> bs!32959 m!1045097))

(declare-fun m!1045099 () Bool)

(assert (=> bs!32959 m!1045099))

(assert (=> b!1131833 d!131335))

(declare-fun d!131337 () Bool)

(declare-fun get!18087 (Option!682) V!43083)

(assert (=> d!131337 (= (apply!990 lt!502787 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18087 (getValueByKey!631 (toList!8057 lt!502787) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!32960 () Bool)

(assert (= bs!32960 d!131337))

(assert (=> bs!32960 m!1044859))

(declare-fun m!1045101 () Bool)

(assert (=> bs!32960 m!1045101))

(assert (=> bs!32960 m!1045101))

(declare-fun m!1045103 () Bool)

(assert (=> bs!32960 m!1045103))

(assert (=> b!1131883 d!131337))

(assert (=> b!1131883 d!131327))

(assert (=> b!1131845 d!131255))

(declare-fun d!131339 () Bool)

(assert (=> d!131339 (= (validKeyInArray!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)) (and (not (= (select (arr!35526 lt!502669) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 lt!502669) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131808 d!131339))

(declare-fun b!1131996 () Bool)

(declare-fun e!644266 () Bool)

(assert (=> b!1131996 (= e!644266 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1131996 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1131997 () Bool)

(declare-fun e!644265 () ListLongMap!16083)

(assert (=> b!1131997 (= e!644265 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1131998 () Bool)

(declare-fun e!644269 () Bool)

(declare-fun e!644268 () Bool)

(assert (=> b!1131998 (= e!644269 e!644268)))

(assert (=> b!1131998 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun lt!502868 () ListLongMap!16083)

(declare-fun res!756187 () Bool)

(assert (=> b!1131998 (= res!756187 (contains!6547 lt!502868 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1131998 (=> (not res!756187) (not e!644268))))

(declare-fun b!1131999 () Bool)

(declare-fun lt!502870 () Unit!37021)

(declare-fun lt!502869 () Unit!37021)

(assert (=> b!1131999 (= lt!502870 lt!502869)))

(declare-fun lt!502873 () V!43083)

(declare-fun lt!502871 () (_ BitVec 64))

(declare-fun lt!502872 () (_ BitVec 64))

(declare-fun lt!502874 () ListLongMap!16083)

(assert (=> b!1131999 (not (contains!6547 (+!3420 lt!502874 (tuple2!18103 lt!502871 lt!502873)) lt!502872))))

(assert (=> b!1131999 (= lt!502869 (addStillNotContains!285 lt!502874 lt!502871 lt!502873 lt!502872))))

(assert (=> b!1131999 (= lt!502872 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1131999 (= lt!502873 (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1131999 (= lt!502871 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!48771 () ListLongMap!16083)

(assert (=> b!1131999 (= lt!502874 call!48771)))

(declare-fun e!644271 () ListLongMap!16083)

(assert (=> b!1131999 (= e!644271 (+!3420 call!48771 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131341 () Bool)

(declare-fun e!644267 () Bool)

(assert (=> d!131341 e!644267))

(declare-fun res!756189 () Bool)

(assert (=> d!131341 (=> (not res!756189) (not e!644267))))

(assert (=> d!131341 (= res!756189 (not (contains!6547 lt!502868 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131341 (= lt!502868 e!644265)))

(declare-fun c!110263 () Bool)

(assert (=> d!131341 (= c!110263 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> d!131341 (validMask!0 mask!1564)))

(assert (=> d!131341 (= (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!502868)))

(declare-fun b!1132000 () Bool)

(declare-fun e!644270 () Bool)

(assert (=> b!1132000 (= e!644270 (= lt!502868 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1132001 () Bool)

(assert (=> b!1132001 (= e!644271 call!48771)))

(declare-fun b!1132002 () Bool)

(assert (=> b!1132002 (= e!644270 (isEmpty!976 lt!502868))))

(declare-fun b!1132003 () Bool)

(assert (=> b!1132003 (= e!644265 e!644271)))

(declare-fun c!110264 () Bool)

(assert (=> b!1132003 (= c!110264 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1132004 () Bool)

(assert (=> b!1132004 (= e!644267 e!644269)))

(declare-fun c!110266 () Bool)

(assert (=> b!1132004 (= c!110266 e!644266)))

(declare-fun res!756190 () Bool)

(assert (=> b!1132004 (=> (not res!756190) (not e!644266))))

(assert (=> b!1132004 (= res!756190 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun bm!48768 () Bool)

(assert (=> bm!48768 (= call!48771 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132005 () Bool)

(assert (=> b!1132005 (= e!644269 e!644270)))

(declare-fun c!110265 () Bool)

(assert (=> b!1132005 (= c!110265 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun b!1132006 () Bool)

(assert (=> b!1132006 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> b!1132006 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36062 lt!502663)))))

(assert (=> b!1132006 (= e!644268 (= (apply!990 lt!502868 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!18084 (select (arr!35525 lt!502663) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132007 () Bool)

(declare-fun res!756188 () Bool)

(assert (=> b!1132007 (=> (not res!756188) (not e!644267))))

(assert (=> b!1132007 (= res!756188 (not (contains!6547 lt!502868 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131341 c!110263) b!1131997))

(assert (= (and d!131341 (not c!110263)) b!1132003))

(assert (= (and b!1132003 c!110264) b!1131999))

(assert (= (and b!1132003 (not c!110264)) b!1132001))

(assert (= (or b!1131999 b!1132001) bm!48768))

(assert (= (and d!131341 res!756189) b!1132007))

(assert (= (and b!1132007 res!756188) b!1132004))

(assert (= (and b!1132004 res!756190) b!1131996))

(assert (= (and b!1132004 c!110266) b!1131998))

(assert (= (and b!1132004 (not c!110266)) b!1132005))

(assert (= (and b!1131998 res!756187) b!1132006))

(assert (= (and b!1132005 c!110265) b!1132000))

(assert (= (and b!1132005 (not c!110265)) b!1132002))

(declare-fun b_lambda!18983 () Bool)

(assert (=> (not b_lambda!18983) (not b!1131999)))

(assert (=> b!1131999 t!35851))

(declare-fun b_and!38705 () Bool)

(assert (= b_and!38703 (and (=> t!35851 result!18067) b_and!38705)))

(declare-fun b_lambda!18985 () Bool)

(assert (=> (not b_lambda!18985) (not b!1132006)))

(assert (=> b!1132006 t!35851))

(declare-fun b_and!38707 () Bool)

(assert (= b_and!38705 (and (=> t!35851 result!18067) b_and!38707)))

(declare-fun m!1045105 () Bool)

(assert (=> b!1131998 m!1045105))

(assert (=> b!1131998 m!1045105))

(declare-fun m!1045107 () Bool)

(assert (=> b!1131998 m!1045107))

(declare-fun m!1045109 () Bool)

(assert (=> bm!48768 m!1045109))

(assert (=> b!1132003 m!1045105))

(assert (=> b!1132003 m!1045105))

(declare-fun m!1045111 () Bool)

(assert (=> b!1132003 m!1045111))

(declare-fun m!1045113 () Bool)

(assert (=> b!1132007 m!1045113))

(declare-fun m!1045115 () Bool)

(assert (=> d!131341 m!1045115))

(assert (=> d!131341 m!1044703))

(declare-fun m!1045117 () Bool)

(assert (=> b!1132002 m!1045117))

(assert (=> b!1131996 m!1045105))

(assert (=> b!1131996 m!1045105))

(assert (=> b!1131996 m!1045111))

(declare-fun m!1045119 () Bool)

(assert (=> b!1131999 m!1045119))

(declare-fun m!1045121 () Bool)

(assert (=> b!1131999 m!1045121))

(assert (=> b!1131999 m!1045119))

(assert (=> b!1131999 m!1044681))

(declare-fun m!1045123 () Bool)

(assert (=> b!1131999 m!1045123))

(declare-fun m!1045125 () Bool)

(assert (=> b!1131999 m!1045125))

(declare-fun m!1045127 () Bool)

(assert (=> b!1131999 m!1045127))

(assert (=> b!1131999 m!1044681))

(assert (=> b!1131999 m!1045105))

(assert (=> b!1131999 m!1045127))

(declare-fun m!1045129 () Bool)

(assert (=> b!1131999 m!1045129))

(assert (=> b!1132000 m!1045109))

(assert (=> b!1132006 m!1044681))

(assert (=> b!1132006 m!1045105))

(declare-fun m!1045131 () Bool)

(assert (=> b!1132006 m!1045131))

(assert (=> b!1132006 m!1045119))

(assert (=> b!1132006 m!1045119))

(assert (=> b!1132006 m!1044681))

(assert (=> b!1132006 m!1045123))

(assert (=> b!1132006 m!1045105))

(assert (=> bm!48762 d!131341))

(declare-fun d!131343 () Bool)

(declare-fun c!110267 () Bool)

(assert (=> d!131343 (= c!110267 ((_ is ValueCellFull!13524) (select (arr!35525 _values!996) from!1455)))))

(declare-fun e!644272 () V!43083)

(assert (=> d!131343 (= (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!644272)))

(declare-fun b!1132008 () Bool)

(assert (=> b!1132008 (= e!644272 (get!18085 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1132009 () Bool)

(assert (=> b!1132009 (= e!644272 (get!18086 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131343 c!110267) b!1132008))

(assert (= (and d!131343 (not c!110267)) b!1132009))

(assert (=> b!1132008 m!1044969))

(assert (=> b!1132008 m!1044681))

(declare-fun m!1045133 () Bool)

(assert (=> b!1132008 m!1045133))

(assert (=> b!1132009 m!1044969))

(assert (=> b!1132009 m!1044681))

(declare-fun m!1045135 () Bool)

(assert (=> b!1132009 m!1045135))

(assert (=> b!1131918 d!131343))

(declare-fun d!131345 () Bool)

(declare-fun e!644273 () Bool)

(assert (=> d!131345 e!644273))

(declare-fun res!756192 () Bool)

(assert (=> d!131345 (=> (not res!756192) (not e!644273))))

(declare-fun lt!502876 () ListLongMap!16083)

(assert (=> d!131345 (= res!756192 (contains!6547 lt!502876 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!502878 () List!24916)

(assert (=> d!131345 (= lt!502876 (ListLongMap!16084 lt!502878))))

(declare-fun lt!502877 () Unit!37021)

(declare-fun lt!502875 () Unit!37021)

(assert (=> d!131345 (= lt!502877 lt!502875)))

(assert (=> d!131345 (= (getValueByKey!631 lt!502878 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131345 (= lt!502875 (lemmaContainsTupThenGetReturnValue!306 lt!502878 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131345 (= lt!502878 (insertStrictlySorted!398 (toList!8057 call!48768) (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131345 (= (+!3420 call!48768 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!502876)))

(declare-fun b!1132010 () Bool)

(declare-fun res!756191 () Bool)

(assert (=> b!1132010 (=> (not res!756191) (not e!644273))))

(assert (=> b!1132010 (= res!756191 (= (getValueByKey!631 (toList!8057 lt!502876) (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1132011 () Bool)

(assert (=> b!1132011 (= e!644273 (contains!6548 (toList!8057 lt!502876) (tuple2!18103 (select (arr!35526 _keys!1208) from!1455) (get!18084 (select (arr!35525 _values!996) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!131345 res!756192) b!1132010))

(assert (= (and b!1132010 res!756191) b!1132011))

(declare-fun m!1045137 () Bool)

(assert (=> d!131345 m!1045137))

(declare-fun m!1045139 () Bool)

(assert (=> d!131345 m!1045139))

(declare-fun m!1045141 () Bool)

(assert (=> d!131345 m!1045141))

(declare-fun m!1045143 () Bool)

(assert (=> d!131345 m!1045143))

(declare-fun m!1045145 () Bool)

(assert (=> b!1132010 m!1045145))

(declare-fun m!1045147 () Bool)

(assert (=> b!1132011 m!1045147))

(assert (=> b!1131918 d!131345))

(declare-fun d!131347 () Bool)

(declare-fun e!644274 () Bool)

(assert (=> d!131347 e!644274))

(declare-fun res!756193 () Bool)

(assert (=> d!131347 (=> res!756193 e!644274)))

(declare-fun lt!502879 () Bool)

(assert (=> d!131347 (= res!756193 (not lt!502879))))

(declare-fun lt!502880 () Bool)

(assert (=> d!131347 (= lt!502879 lt!502880)))

(declare-fun lt!502881 () Unit!37021)

(declare-fun e!644275 () Unit!37021)

(assert (=> d!131347 (= lt!502881 e!644275)))

(declare-fun c!110268 () Bool)

(assert (=> d!131347 (= c!110268 lt!502880)))

(assert (=> d!131347 (= lt!502880 (containsKey!586 (toList!8057 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821))) lt!502820))))

(assert (=> d!131347 (= (contains!6547 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821)) lt!502820) lt!502879)))

(declare-fun b!1132012 () Bool)

(declare-fun lt!502882 () Unit!37021)

(assert (=> b!1132012 (= e!644275 lt!502882)))

(assert (=> b!1132012 (= lt!502882 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821))) lt!502820))))

(assert (=> b!1132012 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821))) lt!502820))))

(declare-fun b!1132013 () Bool)

(declare-fun Unit!37032 () Unit!37021)

(assert (=> b!1132013 (= e!644275 Unit!37032)))

(declare-fun b!1132014 () Bool)

(assert (=> b!1132014 (= e!644274 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821))) lt!502820)))))

(assert (= (and d!131347 c!110268) b!1132012))

(assert (= (and d!131347 (not c!110268)) b!1132013))

(assert (= (and d!131347 (not res!756193)) b!1132014))

(declare-fun m!1045149 () Bool)

(assert (=> d!131347 m!1045149))

(declare-fun m!1045151 () Bool)

(assert (=> b!1132012 m!1045151))

(declare-fun m!1045153 () Bool)

(assert (=> b!1132012 m!1045153))

(assert (=> b!1132012 m!1045153))

(declare-fun m!1045155 () Bool)

(assert (=> b!1132012 m!1045155))

(assert (=> b!1132014 m!1045153))

(assert (=> b!1132014 m!1045153))

(assert (=> b!1132014 m!1045155))

(assert (=> b!1131918 d!131347))

(declare-fun d!131349 () Bool)

(declare-fun e!644276 () Bool)

(assert (=> d!131349 e!644276))

(declare-fun res!756195 () Bool)

(assert (=> d!131349 (=> (not res!756195) (not e!644276))))

(declare-fun lt!502884 () ListLongMap!16083)

(assert (=> d!131349 (= res!756195 (contains!6547 lt!502884 (_1!9061 (tuple2!18103 lt!502819 lt!502821))))))

(declare-fun lt!502886 () List!24916)

(assert (=> d!131349 (= lt!502884 (ListLongMap!16084 lt!502886))))

(declare-fun lt!502885 () Unit!37021)

(declare-fun lt!502883 () Unit!37021)

(assert (=> d!131349 (= lt!502885 lt!502883)))

(assert (=> d!131349 (= (getValueByKey!631 lt!502886 (_1!9061 (tuple2!18103 lt!502819 lt!502821))) (Some!681 (_2!9061 (tuple2!18103 lt!502819 lt!502821))))))

(assert (=> d!131349 (= lt!502883 (lemmaContainsTupThenGetReturnValue!306 lt!502886 (_1!9061 (tuple2!18103 lt!502819 lt!502821)) (_2!9061 (tuple2!18103 lt!502819 lt!502821))))))

(assert (=> d!131349 (= lt!502886 (insertStrictlySorted!398 (toList!8057 lt!502822) (_1!9061 (tuple2!18103 lt!502819 lt!502821)) (_2!9061 (tuple2!18103 lt!502819 lt!502821))))))

(assert (=> d!131349 (= (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821)) lt!502884)))

(declare-fun b!1132015 () Bool)

(declare-fun res!756194 () Bool)

(assert (=> b!1132015 (=> (not res!756194) (not e!644276))))

(assert (=> b!1132015 (= res!756194 (= (getValueByKey!631 (toList!8057 lt!502884) (_1!9061 (tuple2!18103 lt!502819 lt!502821))) (Some!681 (_2!9061 (tuple2!18103 lt!502819 lt!502821)))))))

(declare-fun b!1132016 () Bool)

(assert (=> b!1132016 (= e!644276 (contains!6548 (toList!8057 lt!502884) (tuple2!18103 lt!502819 lt!502821)))))

(assert (= (and d!131349 res!756195) b!1132015))

(assert (= (and b!1132015 res!756194) b!1132016))

(declare-fun m!1045157 () Bool)

(assert (=> d!131349 m!1045157))

(declare-fun m!1045159 () Bool)

(assert (=> d!131349 m!1045159))

(declare-fun m!1045161 () Bool)

(assert (=> d!131349 m!1045161))

(declare-fun m!1045163 () Bool)

(assert (=> d!131349 m!1045163))

(declare-fun m!1045165 () Bool)

(assert (=> b!1132015 m!1045165))

(declare-fun m!1045167 () Bool)

(assert (=> b!1132016 m!1045167))

(assert (=> b!1131918 d!131349))

(declare-fun d!131351 () Bool)

(assert (=> d!131351 (not (contains!6547 (+!3420 lt!502822 (tuple2!18103 lt!502819 lt!502821)) lt!502820))))

(declare-fun lt!502887 () Unit!37021)

(assert (=> d!131351 (= lt!502887 (choose!1785 lt!502822 lt!502819 lt!502821 lt!502820))))

(declare-fun e!644277 () Bool)

(assert (=> d!131351 e!644277))

(declare-fun res!756196 () Bool)

(assert (=> d!131351 (=> (not res!756196) (not e!644277))))

(assert (=> d!131351 (= res!756196 (not (contains!6547 lt!502822 lt!502820)))))

(assert (=> d!131351 (= (addStillNotContains!285 lt!502822 lt!502819 lt!502821 lt!502820) lt!502887)))

(declare-fun b!1132017 () Bool)

(assert (=> b!1132017 (= e!644277 (not (= lt!502819 lt!502820)))))

(assert (= (and d!131351 res!756196) b!1132017))

(assert (=> d!131351 m!1044977))

(assert (=> d!131351 m!1044977))

(assert (=> d!131351 m!1044979))

(declare-fun m!1045169 () Bool)

(assert (=> d!131351 m!1045169))

(declare-fun m!1045171 () Bool)

(assert (=> d!131351 m!1045171))

(assert (=> b!1131918 d!131351))

(declare-fun d!131353 () Bool)

(declare-fun res!756197 () Bool)

(declare-fun e!644278 () Bool)

(assert (=> d!131353 (=> res!756197 e!644278)))

(assert (=> d!131353 (= res!756197 (= (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!934))))

(assert (=> d!131353 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!644278)))

(declare-fun b!1132018 () Bool)

(declare-fun e!644279 () Bool)

(assert (=> b!1132018 (= e!644278 e!644279)))

(declare-fun res!756198 () Bool)

(assert (=> b!1132018 (=> (not res!756198) (not e!644279))))

(assert (=> b!1132018 (= res!756198 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1132019 () Bool)

(assert (=> b!1132019 (= e!644279 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!131353 (not res!756197)) b!1132018))

(assert (= (and b!1132018 res!756198) b!1132019))

(declare-fun m!1045173 () Bool)

(assert (=> d!131353 m!1045173))

(declare-fun m!1045175 () Bool)

(assert (=> b!1132019 m!1045175))

(assert (=> b!1131840 d!131353))

(declare-fun d!131355 () Bool)

(declare-fun c!110269 () Bool)

(assert (=> d!131355 (= c!110269 (and ((_ is Cons!24912) (toList!8057 lt!502729)) (= (_1!9061 (h!26121 (toList!8057 lt!502729))) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun e!644280 () Option!682)

(assert (=> d!131355 (= (getValueByKey!631 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) e!644280)))

(declare-fun b!1132022 () Bool)

(declare-fun e!644281 () Option!682)

(assert (=> b!1132022 (= e!644281 (getValueByKey!631 (t!35852 (toList!8057 lt!502729)) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun b!1132023 () Bool)

(assert (=> b!1132023 (= e!644281 None!680)))

(declare-fun b!1132020 () Bool)

(assert (=> b!1132020 (= e!644280 (Some!681 (_2!9061 (h!26121 (toList!8057 lt!502729)))))))

(declare-fun b!1132021 () Bool)

(assert (=> b!1132021 (= e!644280 e!644281)))

(declare-fun c!110270 () Bool)

(assert (=> b!1132021 (= c!110270 (and ((_ is Cons!24912) (toList!8057 lt!502729)) (not (= (_1!9061 (h!26121 (toList!8057 lt!502729))) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))))

(assert (= (and d!131355 c!110269) b!1132020))

(assert (= (and d!131355 (not c!110269)) b!1132021))

(assert (= (and b!1132021 c!110270) b!1132022))

(assert (= (and b!1132021 (not c!110270)) b!1132023))

(declare-fun m!1045177 () Bool)

(assert (=> b!1132022 m!1045177))

(assert (=> b!1131780 d!131355))

(declare-fun d!131357 () Bool)

(assert (=> d!131357 (= (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131888 d!131357))

(declare-fun d!131359 () Bool)

(declare-fun res!756199 () Bool)

(declare-fun e!644282 () Bool)

(assert (=> d!131359 (=> res!756199 e!644282)))

(assert (=> d!131359 (= res!756199 (= (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) k0!934))))

(assert (=> d!131359 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) e!644282)))

(declare-fun b!1132024 () Bool)

(declare-fun e!644283 () Bool)

(assert (=> b!1132024 (= e!644282 e!644283)))

(declare-fun res!756200 () Bool)

(assert (=> b!1132024 (=> (not res!756200) (not e!644283))))

(assert (=> b!1132024 (= res!756200 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1132025 () Bool)

(assert (=> b!1132025 (= e!644283 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!131359 (not res!756199)) b!1132024))

(assert (= (and b!1132024 res!756200) b!1132025))

(declare-fun m!1045179 () Bool)

(assert (=> d!131359 m!1045179))

(declare-fun m!1045181 () Bool)

(assert (=> b!1132025 m!1045181))

(assert (=> b!1131797 d!131359))

(declare-fun d!131361 () Bool)

(declare-fun e!644284 () Bool)

(assert (=> d!131361 e!644284))

(declare-fun res!756201 () Bool)

(assert (=> d!131361 (=> res!756201 e!644284)))

(declare-fun lt!502888 () Bool)

(assert (=> d!131361 (= res!756201 (not lt!502888))))

(declare-fun lt!502889 () Bool)

(assert (=> d!131361 (= lt!502888 lt!502889)))

(declare-fun lt!502890 () Unit!37021)

(declare-fun e!644285 () Unit!37021)

(assert (=> d!131361 (= lt!502890 e!644285)))

(declare-fun c!110271 () Bool)

(assert (=> d!131361 (= c!110271 lt!502889)))

(assert (=> d!131361 (= lt!502889 (containsKey!586 (toList!8057 lt!502809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131361 (= (contains!6547 lt!502809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!502888)))

(declare-fun b!1132026 () Bool)

(declare-fun lt!502891 () Unit!37021)

(assert (=> b!1132026 (= e!644285 lt!502891)))

(assert (=> b!1132026 (= lt!502891 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132026 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132027 () Bool)

(declare-fun Unit!37033 () Unit!37021)

(assert (=> b!1132027 (= e!644285 Unit!37033)))

(declare-fun b!1132028 () Bool)

(assert (=> b!1132028 (= e!644284 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131361 c!110271) b!1132026))

(assert (= (and d!131361 (not c!110271)) b!1132027))

(assert (= (and d!131361 (not res!756201)) b!1132028))

(declare-fun m!1045183 () Bool)

(assert (=> d!131361 m!1045183))

(declare-fun m!1045185 () Bool)

(assert (=> b!1132026 m!1045185))

(declare-fun m!1045187 () Bool)

(assert (=> b!1132026 m!1045187))

(assert (=> b!1132026 m!1045187))

(declare-fun m!1045189 () Bool)

(assert (=> b!1132026 m!1045189))

(assert (=> b!1132028 m!1045187))

(assert (=> b!1132028 m!1045187))

(assert (=> b!1132028 m!1045189))

(assert (=> b!1131914 d!131361))

(declare-fun d!131363 () Bool)

(assert (=> d!131363 (= (apply!990 lt!502816 (select (arr!35526 _keys!1208) from!1455)) (get!18087 (getValueByKey!631 (toList!8057 lt!502816) (select (arr!35526 _keys!1208) from!1455))))))

(declare-fun bs!32961 () Bool)

(assert (= bs!32961 d!131363))

(assert (=> bs!32961 m!1044691))

(declare-fun m!1045191 () Bool)

(assert (=> bs!32961 m!1045191))

(assert (=> bs!32961 m!1045191))

(declare-fun m!1045193 () Bool)

(assert (=> bs!32961 m!1045193))

(assert (=> b!1131925 d!131363))

(assert (=> b!1131925 d!131343))

(assert (=> b!1131824 d!131305))

(assert (=> b!1131822 d!131305))

(declare-fun d!131365 () Bool)

(declare-fun isEmpty!978 (List!24916) Bool)

(assert (=> d!131365 (= (isEmpty!976 lt!502798) (isEmpty!978 (toList!8057 lt!502798)))))

(declare-fun bs!32962 () Bool)

(assert (= bs!32962 d!131365))

(declare-fun m!1045195 () Bool)

(assert (=> bs!32962 m!1045195))

(assert (=> b!1131894 d!131365))

(declare-fun b!1132029 () Bool)

(declare-fun e!644288 () Bool)

(assert (=> b!1132029 (= e!644288 (contains!6549 (ite c!110214 (Cons!24913 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) Nil!24914) Nil!24914) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1132030 () Bool)

(declare-fun e!644286 () Bool)

(declare-fun call!48772 () Bool)

(assert (=> b!1132030 (= e!644286 call!48772)))

(declare-fun bm!48769 () Bool)

(declare-fun c!110272 () Bool)

(assert (=> bm!48769 (= call!48772 (arrayNoDuplicates!0 lt!502669 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!110272 (Cons!24913 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!110214 (Cons!24913 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) Nil!24914) Nil!24914)) (ite c!110214 (Cons!24913 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) Nil!24914) Nil!24914))))))

(declare-fun b!1132031 () Bool)

(declare-fun e!644289 () Bool)

(declare-fun e!644287 () Bool)

(assert (=> b!1132031 (= e!644289 e!644287)))

(declare-fun res!756204 () Bool)

(assert (=> b!1132031 (=> (not res!756204) (not e!644287))))

(assert (=> b!1132031 (= res!756204 (not e!644288))))

(declare-fun res!756202 () Bool)

(assert (=> b!1132031 (=> (not res!756202) (not e!644288))))

(assert (=> b!1132031 (= res!756202 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1132032 () Bool)

(assert (=> b!1132032 (= e!644286 call!48772)))

(declare-fun d!131367 () Bool)

(declare-fun res!756203 () Bool)

(assert (=> d!131367 (=> res!756203 e!644289)))

(assert (=> d!131367 (= res!756203 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> d!131367 (= (arrayNoDuplicates!0 lt!502669 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110214 (Cons!24913 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) Nil!24914) Nil!24914)) e!644289)))

(declare-fun b!1132033 () Bool)

(assert (=> b!1132033 (= e!644287 e!644286)))

(assert (=> b!1132033 (= c!110272 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!131367 (not res!756203)) b!1132031))

(assert (= (and b!1132031 res!756202) b!1132029))

(assert (= (and b!1132031 res!756204) b!1132033))

(assert (= (and b!1132033 c!110272) b!1132030))

(assert (= (and b!1132033 (not c!110272)) b!1132032))

(assert (= (or b!1132030 b!1132032) bm!48769))

(assert (=> b!1132029 m!1044993))

(assert (=> b!1132029 m!1044993))

(declare-fun m!1045197 () Bool)

(assert (=> b!1132029 m!1045197))

(assert (=> bm!48769 m!1044993))

(declare-fun m!1045199 () Bool)

(assert (=> bm!48769 m!1045199))

(assert (=> b!1132031 m!1044993))

(assert (=> b!1132031 m!1044993))

(assert (=> b!1132031 m!1045003))

(assert (=> b!1132033 m!1044993))

(assert (=> b!1132033 m!1044993))

(assert (=> b!1132033 m!1045003))

(assert (=> bm!48759 d!131367))

(declare-fun d!131369 () Bool)

(assert (=> d!131369 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502664) k0!934))))

(declare-fun lt!502892 () Unit!37021)

(assert (=> d!131369 (= lt!502892 (choose!1784 (toList!8057 lt!502664) k0!934))))

(declare-fun e!644290 () Bool)

(assert (=> d!131369 e!644290))

(declare-fun res!756205 () Bool)

(assert (=> d!131369 (=> (not res!756205) (not e!644290))))

(assert (=> d!131369 (= res!756205 (isStrictlySorted!723 (toList!8057 lt!502664)))))

(assert (=> d!131369 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502664) k0!934) lt!502892)))

(declare-fun b!1132034 () Bool)

(assert (=> b!1132034 (= e!644290 (containsKey!586 (toList!8057 lt!502664) k0!934))))

(assert (= (and d!131369 res!756205) b!1132034))

(assert (=> d!131369 m!1044891))

(assert (=> d!131369 m!1044891))

(assert (=> d!131369 m!1044893))

(declare-fun m!1045201 () Bool)

(assert (=> d!131369 m!1045201))

(declare-fun m!1045203 () Bool)

(assert (=> d!131369 m!1045203))

(assert (=> b!1132034 m!1044887))

(assert (=> b!1131885 d!131369))

(declare-fun d!131371 () Bool)

(assert (=> d!131371 (= (isDefined!455 (getValueByKey!631 (toList!8057 lt!502664) k0!934)) (not (isEmpty!977 (getValueByKey!631 (toList!8057 lt!502664) k0!934))))))

(declare-fun bs!32963 () Bool)

(assert (= bs!32963 d!131371))

(assert (=> bs!32963 m!1044891))

(declare-fun m!1045205 () Bool)

(assert (=> bs!32963 m!1045205))

(assert (=> b!1131885 d!131371))

(declare-fun d!131373 () Bool)

(declare-fun c!110273 () Bool)

(assert (=> d!131373 (= c!110273 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (= (_1!9061 (h!26121 (toList!8057 lt!502664))) k0!934)))))

(declare-fun e!644291 () Option!682)

(assert (=> d!131373 (= (getValueByKey!631 (toList!8057 lt!502664) k0!934) e!644291)))

(declare-fun b!1132037 () Bool)

(declare-fun e!644292 () Option!682)

(assert (=> b!1132037 (= e!644292 (getValueByKey!631 (t!35852 (toList!8057 lt!502664)) k0!934))))

(declare-fun b!1132038 () Bool)

(assert (=> b!1132038 (= e!644292 None!680)))

(declare-fun b!1132035 () Bool)

(assert (=> b!1132035 (= e!644291 (Some!681 (_2!9061 (h!26121 (toList!8057 lt!502664)))))))

(declare-fun b!1132036 () Bool)

(assert (=> b!1132036 (= e!644291 e!644292)))

(declare-fun c!110274 () Bool)

(assert (=> b!1132036 (= c!110274 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (not (= (_1!9061 (h!26121 (toList!8057 lt!502664))) k0!934))))))

(assert (= (and d!131373 c!110273) b!1132035))

(assert (= (and d!131373 (not c!110273)) b!1132036))

(assert (= (and b!1132036 c!110274) b!1132037))

(assert (= (and b!1132036 (not c!110274)) b!1132038))

(declare-fun m!1045207 () Bool)

(assert (=> b!1132037 m!1045207))

(assert (=> b!1131885 d!131373))

(declare-fun d!131375 () Bool)

(declare-fun e!644293 () Bool)

(assert (=> d!131375 e!644293))

(declare-fun res!756206 () Bool)

(assert (=> d!131375 (=> res!756206 e!644293)))

(declare-fun lt!502893 () Bool)

(assert (=> d!131375 (= res!756206 (not lt!502893))))

(declare-fun lt!502894 () Bool)

(assert (=> d!131375 (= lt!502893 lt!502894)))

(declare-fun lt!502895 () Unit!37021)

(declare-fun e!644294 () Unit!37021)

(assert (=> d!131375 (= lt!502895 e!644294)))

(declare-fun c!110275 () Bool)

(assert (=> d!131375 (= c!110275 lt!502894)))

(assert (=> d!131375 (= lt!502894 (containsKey!586 (toList!8057 lt!502809) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131375 (= (contains!6547 lt!502809 #b0000000000000000000000000000000000000000000000000000000000000000) lt!502893)))

(declare-fun b!1132039 () Bool)

(declare-fun lt!502896 () Unit!37021)

(assert (=> b!1132039 (= e!644294 lt!502896)))

(assert (=> b!1132039 (= lt!502896 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502809) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132039 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132040 () Bool)

(declare-fun Unit!37034 () Unit!37021)

(assert (=> b!1132040 (= e!644294 Unit!37034)))

(declare-fun b!1132041 () Bool)

(assert (=> b!1132041 (= e!644293 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131375 c!110275) b!1132039))

(assert (= (and d!131375 (not c!110275)) b!1132040))

(assert (= (and d!131375 (not res!756206)) b!1132041))

(declare-fun m!1045209 () Bool)

(assert (=> d!131375 m!1045209))

(declare-fun m!1045211 () Bool)

(assert (=> b!1132039 m!1045211))

(declare-fun m!1045213 () Bool)

(assert (=> b!1132039 m!1045213))

(assert (=> b!1132039 m!1045213))

(declare-fun m!1045215 () Bool)

(assert (=> b!1132039 m!1045215))

(assert (=> b!1132041 m!1045213))

(assert (=> b!1132041 m!1045213))

(assert (=> b!1132041 m!1045215))

(assert (=> d!131293 d!131375))

(assert (=> d!131293 d!131261))

(declare-fun d!131377 () Bool)

(declare-fun lt!502899 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!544 (List!24917) (InoxSet (_ BitVec 64)))

(assert (=> d!131377 (= lt!502899 (select (content!544 Nil!24914) (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun e!644300 () Bool)

(assert (=> d!131377 (= lt!502899 e!644300)))

(declare-fun res!756212 () Bool)

(assert (=> d!131377 (=> (not res!756212) (not e!644300))))

(assert (=> d!131377 (= res!756212 ((_ is Cons!24913) Nil!24914))))

(assert (=> d!131377 (= (contains!6549 Nil!24914 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)) lt!502899)))

(declare-fun b!1132046 () Bool)

(declare-fun e!644299 () Bool)

(assert (=> b!1132046 (= e!644300 e!644299)))

(declare-fun res!756211 () Bool)

(assert (=> b!1132046 (=> res!756211 e!644299)))

(assert (=> b!1132046 (= res!756211 (= (h!26122 Nil!24914) (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun b!1132047 () Bool)

(assert (=> b!1132047 (= e!644299 (contains!6549 (t!35853 Nil!24914) (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(assert (= (and d!131377 res!756212) b!1132046))

(assert (= (and b!1132046 (not res!756211)) b!1132047))

(declare-fun m!1045217 () Bool)

(assert (=> d!131377 m!1045217))

(assert (=> d!131377 m!1044807))

(declare-fun m!1045219 () Bool)

(assert (=> d!131377 m!1045219))

(assert (=> b!1132047 m!1044807))

(declare-fun m!1045221 () Bool)

(assert (=> b!1132047 m!1045221))

(assert (=> b!1131834 d!131377))

(declare-fun d!131379 () Bool)

(declare-fun res!756217 () Bool)

(declare-fun e!644305 () Bool)

(assert (=> d!131379 (=> res!756217 e!644305)))

(assert (=> d!131379 (= res!756217 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 call!48718))) (= (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718)))) k0!934)))))

(assert (=> d!131379 (= (containsKey!586 (toList!8057 (ite c!110183 lt!502672 call!48718)) k0!934) e!644305)))

(declare-fun b!1132052 () Bool)

(declare-fun e!644306 () Bool)

(assert (=> b!1132052 (= e!644305 e!644306)))

(declare-fun res!756218 () Bool)

(assert (=> b!1132052 (=> (not res!756218) (not e!644306))))

(assert (=> b!1132052 (= res!756218 (and (or (not ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 call!48718)))) (bvsle (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718)))) k0!934)) ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 call!48718))) (bvslt (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 call!48718)))) k0!934)))))

(declare-fun b!1132053 () Bool)

(assert (=> b!1132053 (= e!644306 (containsKey!586 (t!35852 (toList!8057 (ite c!110183 lt!502672 call!48718))) k0!934))))

(assert (= (and d!131379 (not res!756217)) b!1132052))

(assert (= (and b!1132052 res!756218) b!1132053))

(declare-fun m!1045223 () Bool)

(assert (=> b!1132053 m!1045223))

(assert (=> d!131291 d!131379))

(declare-fun b!1132054 () Bool)

(declare-fun e!644308 () Bool)

(assert (=> b!1132054 (= e!644308 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132054 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1132055 () Bool)

(declare-fun e!644307 () ListLongMap!16083)

(assert (=> b!1132055 (= e!644307 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1132056 () Bool)

(declare-fun e!644311 () Bool)

(declare-fun e!644310 () Bool)

(assert (=> b!1132056 (= e!644311 e!644310)))

(assert (=> b!1132056 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun res!756219 () Bool)

(declare-fun lt!502900 () ListLongMap!16083)

(assert (=> b!1132056 (= res!756219 (contains!6547 lt!502900 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132056 (=> (not res!756219) (not e!644310))))

(declare-fun b!1132057 () Bool)

(declare-fun lt!502902 () Unit!37021)

(declare-fun lt!502901 () Unit!37021)

(assert (=> b!1132057 (= lt!502902 lt!502901)))

(declare-fun lt!502905 () V!43083)

(declare-fun lt!502904 () (_ BitVec 64))

(declare-fun lt!502903 () (_ BitVec 64))

(declare-fun lt!502906 () ListLongMap!16083)

(assert (=> b!1132057 (not (contains!6547 (+!3420 lt!502906 (tuple2!18103 lt!502903 lt!502905)) lt!502904))))

(assert (=> b!1132057 (= lt!502901 (addStillNotContains!285 lt!502906 lt!502903 lt!502905 lt!502904))))

(assert (=> b!1132057 (= lt!502904 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132057 (= lt!502905 (get!18084 (select (arr!35525 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132057 (= lt!502903 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!48773 () ListLongMap!16083)

(assert (=> b!1132057 (= lt!502906 call!48773)))

(declare-fun e!644313 () ListLongMap!16083)

(assert (=> b!1132057 (= e!644313 (+!3420 call!48773 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)) (get!18084 (select (arr!35525 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131381 () Bool)

(declare-fun e!644309 () Bool)

(assert (=> d!131381 e!644309))

(declare-fun res!756221 () Bool)

(assert (=> d!131381 (=> (not res!756221) (not e!644309))))

(assert (=> d!131381 (= res!756221 (not (contains!6547 lt!502900 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131381 (= lt!502900 e!644307)))

(declare-fun c!110276 () Bool)

(assert (=> d!131381 (= c!110276 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> d!131381 (validMask!0 mask!1564)))

(assert (=> d!131381 (= (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!502900)))

(declare-fun e!644312 () Bool)

(declare-fun b!1132058 () Bool)

(assert (=> b!1132058 (= e!644312 (= lt!502900 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1132059 () Bool)

(assert (=> b!1132059 (= e!644313 call!48773)))

(declare-fun b!1132060 () Bool)

(assert (=> b!1132060 (= e!644312 (isEmpty!976 lt!502900))))

(declare-fun b!1132061 () Bool)

(assert (=> b!1132061 (= e!644307 e!644313)))

(declare-fun c!110277 () Bool)

(assert (=> b!1132061 (= c!110277 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1132062 () Bool)

(assert (=> b!1132062 (= e!644309 e!644311)))

(declare-fun c!110279 () Bool)

(assert (=> b!1132062 (= c!110279 e!644308)))

(declare-fun res!756222 () Bool)

(assert (=> b!1132062 (=> (not res!756222) (not e!644308))))

(assert (=> b!1132062 (= res!756222 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun bm!48770 () Bool)

(assert (=> bm!48770 (= call!48773 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132063 () Bool)

(assert (=> b!1132063 (= e!644311 e!644312)))

(declare-fun c!110278 () Bool)

(assert (=> b!1132063 (= c!110278 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1132064 () Bool)

(assert (=> b!1132064 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> b!1132064 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36062 _values!996)))))

(assert (=> b!1132064 (= e!644310 (= (apply!990 lt!502900 (select (arr!35526 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))) (get!18084 (select (arr!35525 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132065 () Bool)

(declare-fun res!756220 () Bool)

(assert (=> b!1132065 (=> (not res!756220) (not e!644309))))

(assert (=> b!1132065 (= res!756220 (not (contains!6547 lt!502900 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131381 c!110276) b!1132055))

(assert (= (and d!131381 (not c!110276)) b!1132061))

(assert (= (and b!1132061 c!110277) b!1132057))

(assert (= (and b!1132061 (not c!110277)) b!1132059))

(assert (= (or b!1132057 b!1132059) bm!48770))

(assert (= (and d!131381 res!756221) b!1132065))

(assert (= (and b!1132065 res!756220) b!1132062))

(assert (= (and b!1132062 res!756222) b!1132054))

(assert (= (and b!1132062 c!110279) b!1132056))

(assert (= (and b!1132062 (not c!110279)) b!1132063))

(assert (= (and b!1132056 res!756219) b!1132064))

(assert (= (and b!1132063 c!110278) b!1132058))

(assert (= (and b!1132063 (not c!110278)) b!1132060))

(declare-fun b_lambda!18987 () Bool)

(assert (=> (not b_lambda!18987) (not b!1132057)))

(assert (=> b!1132057 t!35851))

(declare-fun b_and!38709 () Bool)

(assert (= b_and!38707 (and (=> t!35851 result!18067) b_and!38709)))

(declare-fun b_lambda!18989 () Bool)

(assert (=> (not b_lambda!18989) (not b!1132064)))

(assert (=> b!1132064 t!35851))

(declare-fun b_and!38711 () Bool)

(assert (= b_and!38709 (and (=> t!35851 result!18067) b_and!38711)))

(declare-fun m!1045225 () Bool)

(assert (=> b!1132056 m!1045225))

(assert (=> b!1132056 m!1045225))

(declare-fun m!1045227 () Bool)

(assert (=> b!1132056 m!1045227))

(declare-fun m!1045229 () Bool)

(assert (=> bm!48770 m!1045229))

(assert (=> b!1132061 m!1045225))

(assert (=> b!1132061 m!1045225))

(declare-fun m!1045231 () Bool)

(assert (=> b!1132061 m!1045231))

(declare-fun m!1045233 () Bool)

(assert (=> b!1132065 m!1045233))

(declare-fun m!1045235 () Bool)

(assert (=> d!131381 m!1045235))

(assert (=> d!131381 m!1044703))

(declare-fun m!1045237 () Bool)

(assert (=> b!1132060 m!1045237))

(assert (=> b!1132054 m!1045225))

(assert (=> b!1132054 m!1045225))

(assert (=> b!1132054 m!1045231))

(declare-fun m!1045239 () Bool)

(assert (=> b!1132057 m!1045239))

(declare-fun m!1045241 () Bool)

(assert (=> b!1132057 m!1045241))

(assert (=> b!1132057 m!1045239))

(assert (=> b!1132057 m!1044681))

(declare-fun m!1045243 () Bool)

(assert (=> b!1132057 m!1045243))

(declare-fun m!1045245 () Bool)

(assert (=> b!1132057 m!1045245))

(declare-fun m!1045247 () Bool)

(assert (=> b!1132057 m!1045247))

(assert (=> b!1132057 m!1044681))

(assert (=> b!1132057 m!1045225))

(assert (=> b!1132057 m!1045247))

(declare-fun m!1045249 () Bool)

(assert (=> b!1132057 m!1045249))

(assert (=> b!1132058 m!1045229))

(assert (=> b!1132064 m!1044681))

(assert (=> b!1132064 m!1045225))

(declare-fun m!1045251 () Bool)

(assert (=> b!1132064 m!1045251))

(assert (=> b!1132064 m!1045239))

(assert (=> b!1132064 m!1045239))

(assert (=> b!1132064 m!1044681))

(assert (=> b!1132064 m!1045243))

(assert (=> b!1132064 m!1045225))

(assert (=> bm!48765 d!131381))

(declare-fun d!131383 () Bool)

(assert (=> d!131383 (= (validKeyInArray!0 (select (arr!35526 _keys!1208) from!1455)) (and (not (= (select (arr!35526 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131922 d!131383))

(declare-fun d!131385 () Bool)

(declare-fun e!644314 () Bool)

(assert (=> d!131385 e!644314))

(declare-fun res!756223 () Bool)

(assert (=> d!131385 (=> res!756223 e!644314)))

(declare-fun lt!502907 () Bool)

(assert (=> d!131385 (= res!756223 (not lt!502907))))

(declare-fun lt!502908 () Bool)

(assert (=> d!131385 (= lt!502907 lt!502908)))

(declare-fun lt!502909 () Unit!37021)

(declare-fun e!644315 () Unit!37021)

(assert (=> d!131385 (= lt!502909 e!644315)))

(declare-fun c!110280 () Bool)

(assert (=> d!131385 (= c!110280 lt!502908)))

(assert (=> d!131385 (= lt!502908 (containsKey!586 (toList!8057 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) k0!934))))

(assert (=> d!131385 (= (contains!6547 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) k0!934) lt!502907)))

(declare-fun b!1132066 () Bool)

(declare-fun lt!502910 () Unit!37021)

(assert (=> b!1132066 (= e!644315 lt!502910)))

(assert (=> b!1132066 (= lt!502910 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) k0!934))))

(assert (=> b!1132066 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) k0!934))))

(declare-fun b!1132067 () Bool)

(declare-fun Unit!37035 () Unit!37021)

(assert (=> b!1132067 (= e!644315 Unit!37035)))

(declare-fun b!1132068 () Bool)

(assert (=> b!1132068 (= e!644314 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) k0!934)))))

(assert (= (and d!131385 c!110280) b!1132066))

(assert (= (and d!131385 (not c!110280)) b!1132067))

(assert (= (and d!131385 (not res!756223)) b!1132068))

(declare-fun m!1045253 () Bool)

(assert (=> d!131385 m!1045253))

(declare-fun m!1045255 () Bool)

(assert (=> b!1132066 m!1045255))

(declare-fun m!1045257 () Bool)

(assert (=> b!1132066 m!1045257))

(assert (=> b!1132066 m!1045257))

(declare-fun m!1045259 () Bool)

(assert (=> b!1132066 m!1045259))

(assert (=> b!1132068 m!1045257))

(assert (=> b!1132068 m!1045257))

(assert (=> b!1132068 m!1045259))

(assert (=> d!131257 d!131385))

(declare-fun d!131387 () Bool)

(declare-fun e!644316 () Bool)

(assert (=> d!131387 e!644316))

(declare-fun res!756225 () Bool)

(assert (=> d!131387 (=> (not res!756225) (not e!644316))))

(declare-fun lt!502912 () ListLongMap!16083)

(assert (=> d!131387 (= res!756225 (contains!6547 lt!502912 (_1!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))))))

(declare-fun lt!502914 () List!24916)

(assert (=> d!131387 (= lt!502912 (ListLongMap!16084 lt!502914))))

(declare-fun lt!502913 () Unit!37021)

(declare-fun lt!502911 () Unit!37021)

(assert (=> d!131387 (= lt!502913 lt!502911)))

(assert (=> d!131387 (= (getValueByKey!631 lt!502914 (_1!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) (Some!681 (_2!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))))))

(assert (=> d!131387 (= lt!502911 (lemmaContainsTupThenGetReturnValue!306 lt!502914 (_1!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) (_2!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))))))

(assert (=> d!131387 (= lt!502914 (insertStrictlySorted!398 (toList!8057 lt!502664) (_1!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) (_2!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))))))

(assert (=> d!131387 (= (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) lt!502912)))

(declare-fun b!1132069 () Bool)

(declare-fun res!756224 () Bool)

(assert (=> b!1132069 (=> (not res!756224) (not e!644316))))

(assert (=> b!1132069 (= res!756224 (= (getValueByKey!631 (toList!8057 lt!502912) (_1!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944)))) (Some!681 (_2!9061 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))))))))

(declare-fun b!1132070 () Bool)

(assert (=> b!1132070 (= e!644316 (contains!6548 (toList!8057 lt!502912) (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))))))

(assert (= (and d!131387 res!756225) b!1132069))

(assert (= (and b!1132069 res!756224) b!1132070))

(declare-fun m!1045261 () Bool)

(assert (=> d!131387 m!1045261))

(declare-fun m!1045263 () Bool)

(assert (=> d!131387 m!1045263))

(declare-fun m!1045265 () Bool)

(assert (=> d!131387 m!1045265))

(declare-fun m!1045267 () Bool)

(assert (=> d!131387 m!1045267))

(declare-fun m!1045269 () Bool)

(assert (=> b!1132069 m!1045269))

(declare-fun m!1045271 () Bool)

(assert (=> b!1132070 m!1045271))

(assert (=> d!131257 d!131387))

(declare-fun d!131389 () Bool)

(assert (=> d!131389 (contains!6547 (+!3420 lt!502664 (tuple2!18103 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944))) k0!934)))

(assert (=> d!131389 true))

(declare-fun _$35!451 () Unit!37021)

(assert (=> d!131389 (= (choose!1781 lt!502664 (ite (or c!110183 c!110185) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110183 c!110185) zeroValue!944 minValue!944) k0!934) _$35!451)))

(declare-fun bs!32964 () Bool)

(assert (= bs!32964 d!131389))

(assert (=> bs!32964 m!1044801))

(assert (=> bs!32964 m!1044801))

(assert (=> bs!32964 m!1044803))

(assert (=> d!131257 d!131389))

(assert (=> d!131257 d!131287))

(assert (=> d!131277 d!131275))

(declare-fun d!131391 () Bool)

(assert (=> d!131391 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(assert (=> d!131391 true))

(declare-fun _$60!445 () Unit!37021)

(assert (=> d!131391 (= (choose!13 _keys!1208 k0!934 i!673) _$60!445)))

(declare-fun bs!32965 () Bool)

(assert (= bs!32965 d!131391))

(assert (=> bs!32965 m!1044687))

(assert (=> d!131277 d!131391))

(declare-fun b!1132071 () Bool)

(declare-fun e!644318 () Bool)

(assert (=> b!1132071 (= e!644318 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132071 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1132072 () Bool)

(declare-fun e!644317 () ListLongMap!16083)

(assert (=> b!1132072 (= e!644317 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1132073 () Bool)

(declare-fun e!644321 () Bool)

(declare-fun e!644320 () Bool)

(assert (=> b!1132073 (= e!644321 e!644320)))

(assert (=> b!1132073 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun lt!502915 () ListLongMap!16083)

(declare-fun res!756226 () Bool)

(assert (=> b!1132073 (= res!756226 (contains!6547 lt!502915 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132073 (=> (not res!756226) (not e!644320))))

(declare-fun b!1132074 () Bool)

(declare-fun lt!502917 () Unit!37021)

(declare-fun lt!502916 () Unit!37021)

(assert (=> b!1132074 (= lt!502917 lt!502916)))

(declare-fun lt!502921 () ListLongMap!16083)

(declare-fun lt!502919 () (_ BitVec 64))

(declare-fun lt!502918 () (_ BitVec 64))

(declare-fun lt!502920 () V!43083)

(assert (=> b!1132074 (not (contains!6547 (+!3420 lt!502921 (tuple2!18103 lt!502918 lt!502920)) lt!502919))))

(assert (=> b!1132074 (= lt!502916 (addStillNotContains!285 lt!502921 lt!502918 lt!502920 lt!502919))))

(assert (=> b!1132074 (= lt!502919 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132074 (= lt!502920 (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132074 (= lt!502918 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!48774 () ListLongMap!16083)

(assert (=> b!1132074 (= lt!502921 call!48774)))

(declare-fun e!644323 () ListLongMap!16083)

(assert (=> b!1132074 (= e!644323 (+!3420 call!48774 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131393 () Bool)

(declare-fun e!644319 () Bool)

(assert (=> d!131393 e!644319))

(declare-fun res!756228 () Bool)

(assert (=> d!131393 (=> (not res!756228) (not e!644319))))

(assert (=> d!131393 (= res!756228 (not (contains!6547 lt!502915 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131393 (= lt!502915 e!644317)))

(declare-fun c!110281 () Bool)

(assert (=> d!131393 (= c!110281 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> d!131393 (validMask!0 mask!1564)))

(assert (=> d!131393 (= (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!502915)))

(declare-fun e!644322 () Bool)

(declare-fun b!1132075 () Bool)

(assert (=> b!1132075 (= e!644322 (= lt!502915 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1132076 () Bool)

(assert (=> b!1132076 (= e!644323 call!48774)))

(declare-fun b!1132077 () Bool)

(assert (=> b!1132077 (= e!644322 (isEmpty!976 lt!502915))))

(declare-fun b!1132078 () Bool)

(assert (=> b!1132078 (= e!644317 e!644323)))

(declare-fun c!110282 () Bool)

(assert (=> b!1132078 (= c!110282 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1132079 () Bool)

(assert (=> b!1132079 (= e!644319 e!644321)))

(declare-fun c!110284 () Bool)

(assert (=> b!1132079 (= c!110284 e!644318)))

(declare-fun res!756229 () Bool)

(assert (=> b!1132079 (=> (not res!756229) (not e!644318))))

(assert (=> b!1132079 (= res!756229 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun bm!48771 () Bool)

(assert (=> bm!48771 (= call!48774 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132080 () Bool)

(assert (=> b!1132080 (= e!644321 e!644322)))

(declare-fun c!110283 () Bool)

(assert (=> b!1132080 (= c!110283 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1132081 () Bool)

(assert (=> b!1132081 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> b!1132081 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36062 _values!996)))))

(assert (=> b!1132081 (= e!644320 (= (apply!990 lt!502915 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132082 () Bool)

(declare-fun res!756227 () Bool)

(assert (=> b!1132082 (=> (not res!756227) (not e!644319))))

(assert (=> b!1132082 (= res!756227 (not (contains!6547 lt!502915 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131393 c!110281) b!1132072))

(assert (= (and d!131393 (not c!110281)) b!1132078))

(assert (= (and b!1132078 c!110282) b!1132074))

(assert (= (and b!1132078 (not c!110282)) b!1132076))

(assert (= (or b!1132074 b!1132076) bm!48771))

(assert (= (and d!131393 res!756228) b!1132082))

(assert (= (and b!1132082 res!756227) b!1132079))

(assert (= (and b!1132079 res!756229) b!1132071))

(assert (= (and b!1132079 c!110284) b!1132073))

(assert (= (and b!1132079 (not c!110284)) b!1132080))

(assert (= (and b!1132073 res!756226) b!1132081))

(assert (= (and b!1132080 c!110283) b!1132075))

(assert (= (and b!1132080 (not c!110283)) b!1132077))

(declare-fun b_lambda!18991 () Bool)

(assert (=> (not b_lambda!18991) (not b!1132074)))

(assert (=> b!1132074 t!35851))

(declare-fun b_and!38713 () Bool)

(assert (= b_and!38711 (and (=> t!35851 result!18067) b_and!38713)))

(declare-fun b_lambda!18993 () Bool)

(assert (=> (not b_lambda!18993) (not b!1132081)))

(assert (=> b!1132081 t!35851))

(declare-fun b_and!38715 () Bool)

(assert (= b_and!38713 (and (=> t!35851 result!18067) b_and!38715)))

(assert (=> b!1132073 m!1045179))

(assert (=> b!1132073 m!1045179))

(declare-fun m!1045273 () Bool)

(assert (=> b!1132073 m!1045273))

(declare-fun m!1045275 () Bool)

(assert (=> bm!48771 m!1045275))

(assert (=> b!1132078 m!1045179))

(assert (=> b!1132078 m!1045179))

(declare-fun m!1045277 () Bool)

(assert (=> b!1132078 m!1045277))

(declare-fun m!1045279 () Bool)

(assert (=> b!1132082 m!1045279))

(declare-fun m!1045281 () Bool)

(assert (=> d!131393 m!1045281))

(assert (=> d!131393 m!1044703))

(declare-fun m!1045283 () Bool)

(assert (=> b!1132077 m!1045283))

(assert (=> b!1132071 m!1045179))

(assert (=> b!1132071 m!1045179))

(assert (=> b!1132071 m!1045277))

(declare-fun m!1045285 () Bool)

(assert (=> b!1132074 m!1045285))

(declare-fun m!1045287 () Bool)

(assert (=> b!1132074 m!1045287))

(assert (=> b!1132074 m!1045285))

(assert (=> b!1132074 m!1044681))

(declare-fun m!1045289 () Bool)

(assert (=> b!1132074 m!1045289))

(declare-fun m!1045291 () Bool)

(assert (=> b!1132074 m!1045291))

(declare-fun m!1045293 () Bool)

(assert (=> b!1132074 m!1045293))

(assert (=> b!1132074 m!1044681))

(assert (=> b!1132074 m!1045179))

(assert (=> b!1132074 m!1045293))

(declare-fun m!1045295 () Bool)

(assert (=> b!1132074 m!1045295))

(assert (=> b!1132075 m!1045275))

(assert (=> b!1132081 m!1044681))

(assert (=> b!1132081 m!1045179))

(declare-fun m!1045297 () Bool)

(assert (=> b!1132081 m!1045297))

(assert (=> b!1132081 m!1045285))

(assert (=> b!1132081 m!1045285))

(assert (=> b!1132081 m!1044681))

(assert (=> b!1132081 m!1045289))

(assert (=> b!1132081 m!1045179))

(assert (=> b!1131892 d!131393))

(declare-fun d!131395 () Bool)

(assert (=> d!131395 (arrayContainsKey!0 _keys!1208 lt!502825 #b00000000000000000000000000000000)))

(declare-fun lt!502922 () Unit!37021)

(assert (=> d!131395 (= lt!502922 (choose!13 _keys!1208 lt!502825 #b00000000000000000000000000000000))))

(assert (=> d!131395 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!131395 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!502825 #b00000000000000000000000000000000) lt!502922)))

(declare-fun bs!32966 () Bool)

(assert (= bs!32966 d!131395))

(assert (=> bs!32966 m!1044985))

(declare-fun m!1045299 () Bool)

(assert (=> bs!32966 m!1045299))

(assert (=> b!1131927 d!131395))

(declare-fun d!131397 () Bool)

(declare-fun res!756230 () Bool)

(declare-fun e!644324 () Bool)

(assert (=> d!131397 (=> res!756230 e!644324)))

(assert (=> d!131397 (= res!756230 (= (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) lt!502825))))

(assert (=> d!131397 (= (arrayContainsKey!0 _keys!1208 lt!502825 #b00000000000000000000000000000000) e!644324)))

(declare-fun b!1132083 () Bool)

(declare-fun e!644325 () Bool)

(assert (=> b!1132083 (= e!644324 e!644325)))

(declare-fun res!756231 () Bool)

(assert (=> b!1132083 (=> (not res!756231) (not e!644325))))

(assert (=> b!1132083 (= res!756231 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(declare-fun b!1132084 () Bool)

(assert (=> b!1132084 (= e!644325 (arrayContainsKey!0 _keys!1208 lt!502825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!131397 (not res!756230)) b!1132083))

(assert (= (and b!1132083 res!756231) b!1132084))

(assert (=> d!131397 m!1044823))

(declare-fun m!1045301 () Bool)

(assert (=> b!1132084 m!1045301))

(assert (=> b!1131927 d!131397))

(declare-fun b!1132097 () Bool)

(declare-fun c!110293 () Bool)

(declare-fun lt!502929 () (_ BitVec 64))

(assert (=> b!1132097 (= c!110293 (= lt!502929 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!644332 () SeekEntryResult!9922)

(declare-fun e!644334 () SeekEntryResult!9922)

(assert (=> b!1132097 (= e!644332 e!644334)))

(declare-fun b!1132098 () Bool)

(declare-fun lt!502930 () SeekEntryResult!9922)

(assert (=> b!1132098 (= e!644334 (MissingZero!9922 (index!42060 lt!502930)))))

(declare-fun b!1132099 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!73754 (_ BitVec 32)) SeekEntryResult!9922)

(assert (=> b!1132099 (= e!644334 (seekKeyOrZeroReturnVacant!0 (x!101483 lt!502930) (index!42060 lt!502930) (index!42060 lt!502930) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(declare-fun b!1132100 () Bool)

(assert (=> b!1132100 (= e!644332 (Found!9922 (index!42060 lt!502930)))))

(declare-fun b!1132101 () Bool)

(declare-fun e!644333 () SeekEntryResult!9922)

(assert (=> b!1132101 (= e!644333 e!644332)))

(assert (=> b!1132101 (= lt!502929 (select (arr!35526 _keys!1208) (index!42060 lt!502930)))))

(declare-fun c!110292 () Bool)

(assert (=> b!1132101 (= c!110292 (= lt!502929 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!131399 () Bool)

(declare-fun lt!502931 () SeekEntryResult!9922)

(assert (=> d!131399 (and (or ((_ is Undefined!9922) lt!502931) (not ((_ is Found!9922) lt!502931)) (and (bvsge (index!42059 lt!502931) #b00000000000000000000000000000000) (bvslt (index!42059 lt!502931) (size!36063 _keys!1208)))) (or ((_ is Undefined!9922) lt!502931) ((_ is Found!9922) lt!502931) (not ((_ is MissingZero!9922) lt!502931)) (and (bvsge (index!42058 lt!502931) #b00000000000000000000000000000000) (bvslt (index!42058 lt!502931) (size!36063 _keys!1208)))) (or ((_ is Undefined!9922) lt!502931) ((_ is Found!9922) lt!502931) ((_ is MissingZero!9922) lt!502931) (not ((_ is MissingVacant!9922) lt!502931)) (and (bvsge (index!42061 lt!502931) #b00000000000000000000000000000000) (bvslt (index!42061 lt!502931) (size!36063 _keys!1208)))) (or ((_ is Undefined!9922) lt!502931) (ite ((_ is Found!9922) lt!502931) (= (select (arr!35526 _keys!1208) (index!42059 lt!502931)) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9922) lt!502931) (= (select (arr!35526 _keys!1208) (index!42058 lt!502931)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9922) lt!502931) (= (select (arr!35526 _keys!1208) (index!42061 lt!502931)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131399 (= lt!502931 e!644333)))

(declare-fun c!110291 () Bool)

(assert (=> d!131399 (= c!110291 (and ((_ is Intermediate!9922) lt!502930) (undefined!10734 lt!502930)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!73754 (_ BitVec 32)) SeekEntryResult!9922)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!131399 (= lt!502930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) mask!1564) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(assert (=> d!131399 (validMask!0 mask!1564)))

(assert (=> d!131399 (= (seekEntryOrOpen!0 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) lt!502931)))

(declare-fun b!1132102 () Bool)

(assert (=> b!1132102 (= e!644333 Undefined!9922)))

(assert (= (and d!131399 c!110291) b!1132102))

(assert (= (and d!131399 (not c!110291)) b!1132101))

(assert (= (and b!1132101 c!110292) b!1132100))

(assert (= (and b!1132101 (not c!110292)) b!1132097))

(assert (= (and b!1132097 c!110293) b!1132098))

(assert (= (and b!1132097 (not c!110293)) b!1132099))

(assert (=> b!1132099 m!1044823))

(declare-fun m!1045303 () Bool)

(assert (=> b!1132099 m!1045303))

(declare-fun m!1045305 () Bool)

(assert (=> b!1132101 m!1045305))

(declare-fun m!1045307 () Bool)

(assert (=> d!131399 m!1045307))

(declare-fun m!1045309 () Bool)

(assert (=> d!131399 m!1045309))

(declare-fun m!1045311 () Bool)

(assert (=> d!131399 m!1045311))

(assert (=> d!131399 m!1044823))

(declare-fun m!1045313 () Bool)

(assert (=> d!131399 m!1045313))

(assert (=> d!131399 m!1045313))

(assert (=> d!131399 m!1044823))

(declare-fun m!1045315 () Bool)

(assert (=> d!131399 m!1045315))

(assert (=> d!131399 m!1044703))

(assert (=> b!1131927 d!131399))

(declare-fun d!131401 () Bool)

(declare-fun e!644335 () Bool)

(assert (=> d!131401 e!644335))

(declare-fun res!756232 () Bool)

(assert (=> d!131401 (=> res!756232 e!644335)))

(declare-fun lt!502932 () Bool)

(assert (=> d!131401 (= res!756232 (not lt!502932))))

(declare-fun lt!502933 () Bool)

(assert (=> d!131401 (= lt!502932 lt!502933)))

(declare-fun lt!502934 () Unit!37021)

(declare-fun e!644336 () Unit!37021)

(assert (=> d!131401 (= lt!502934 e!644336)))

(declare-fun c!110294 () Bool)

(assert (=> d!131401 (= c!110294 lt!502933)))

(assert (=> d!131401 (= lt!502933 (containsKey!586 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!131401 (= (contains!6547 lt!502729 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) lt!502932)))

(declare-fun b!1132103 () Bool)

(declare-fun lt!502935 () Unit!37021)

(assert (=> b!1132103 (= e!644336 lt!502935)))

(assert (=> b!1132103 (= lt!502935 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> b!1132103 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun b!1132104 () Bool)

(declare-fun Unit!37036 () Unit!37021)

(assert (=> b!1132104 (= e!644336 Unit!37036)))

(declare-fun b!1132105 () Bool)

(assert (=> b!1132105 (= e!644335 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502729) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(assert (= (and d!131401 c!110294) b!1132103))

(assert (= (and d!131401 (not c!110294)) b!1132104))

(assert (= (and d!131401 (not res!756232)) b!1132105))

(declare-fun m!1045317 () Bool)

(assert (=> d!131401 m!1045317))

(declare-fun m!1045319 () Bool)

(assert (=> b!1132103 m!1045319))

(assert (=> b!1132103 m!1044777))

(assert (=> b!1132103 m!1044777))

(declare-fun m!1045321 () Bool)

(assert (=> b!1132103 m!1045321))

(assert (=> b!1132105 m!1044777))

(assert (=> b!1132105 m!1044777))

(assert (=> b!1132105 m!1045321))

(assert (=> d!131249 d!131401))

(declare-fun d!131403 () Bool)

(declare-fun c!110295 () Bool)

(assert (=> d!131403 (= c!110295 (and ((_ is Cons!24912) lt!502731) (= (_1!9061 (h!26121 lt!502731)) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun e!644337 () Option!682)

(assert (=> d!131403 (= (getValueByKey!631 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) e!644337)))

(declare-fun b!1132108 () Bool)

(declare-fun e!644338 () Option!682)

(assert (=> b!1132108 (= e!644338 (getValueByKey!631 (t!35852 lt!502731) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun b!1132109 () Bool)

(assert (=> b!1132109 (= e!644338 None!680)))

(declare-fun b!1132106 () Bool)

(assert (=> b!1132106 (= e!644337 (Some!681 (_2!9061 (h!26121 lt!502731))))))

(declare-fun b!1132107 () Bool)

(assert (=> b!1132107 (= e!644337 e!644338)))

(declare-fun c!110296 () Bool)

(assert (=> b!1132107 (= c!110296 (and ((_ is Cons!24912) lt!502731) (not (= (_1!9061 (h!26121 lt!502731)) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))))

(assert (= (and d!131403 c!110295) b!1132106))

(assert (= (and d!131403 (not c!110295)) b!1132107))

(assert (= (and b!1132107 c!110296) b!1132108))

(assert (= (and b!1132107 (not c!110296)) b!1132109))

(declare-fun m!1045323 () Bool)

(assert (=> b!1132108 m!1045323))

(assert (=> d!131249 d!131403))

(declare-fun d!131405 () Bool)

(assert (=> d!131405 (= (getValueByKey!631 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!681 (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!502938 () Unit!37021)

(declare-fun choose!1786 (List!24916 (_ BitVec 64) V!43083) Unit!37021)

(assert (=> d!131405 (= lt!502938 (choose!1786 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun e!644341 () Bool)

(assert (=> d!131405 e!644341))

(declare-fun res!756237 () Bool)

(assert (=> d!131405 (=> (not res!756237) (not e!644341))))

(assert (=> d!131405 (= res!756237 (isStrictlySorted!723 lt!502731))))

(assert (=> d!131405 (= (lemmaContainsTupThenGetReturnValue!306 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) lt!502938)))

(declare-fun b!1132114 () Bool)

(declare-fun res!756238 () Bool)

(assert (=> b!1132114 (=> (not res!756238) (not e!644341))))

(assert (=> b!1132114 (= res!756238 (containsKey!586 lt!502731 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun b!1132115 () Bool)

(assert (=> b!1132115 (= e!644341 (contains!6548 lt!502731 (tuple2!18103 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(assert (= (and d!131405 res!756237) b!1132114))

(assert (= (and b!1132114 res!756238) b!1132115))

(assert (=> d!131405 m!1044771))

(declare-fun m!1045325 () Bool)

(assert (=> d!131405 m!1045325))

(declare-fun m!1045327 () Bool)

(assert (=> d!131405 m!1045327))

(declare-fun m!1045329 () Bool)

(assert (=> b!1132114 m!1045329))

(declare-fun m!1045331 () Bool)

(assert (=> b!1132115 m!1045331))

(assert (=> d!131249 d!131405))

(declare-fun b!1132137 () Bool)

(declare-fun e!644354 () List!24916)

(declare-fun call!48782 () List!24916)

(assert (=> b!1132137 (= e!644354 call!48782)))

(declare-fun bm!48778 () Bool)

(declare-fun call!48783 () List!24916)

(declare-fun call!48781 () List!24916)

(assert (=> bm!48778 (= call!48783 call!48781)))

(declare-fun bm!48779 () Bool)

(assert (=> bm!48779 (= call!48781 call!48782)))

(declare-fun b!1132138 () Bool)

(declare-fun e!644355 () List!24916)

(assert (=> b!1132138 (= e!644355 (insertStrictlySorted!398 (t!35852 (toList!8057 lt!502664)) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun b!1132139 () Bool)

(declare-fun e!644352 () List!24916)

(assert (=> b!1132139 (= e!644352 call!48783)))

(declare-fun c!110307 () Bool)

(declare-fun c!110305 () Bool)

(declare-fun b!1132140 () Bool)

(assert (=> b!1132140 (= e!644355 (ite c!110305 (t!35852 (toList!8057 lt!502664)) (ite c!110307 (Cons!24912 (h!26121 (toList!8057 lt!502664)) (t!35852 (toList!8057 lt!502664))) Nil!24913)))))

(declare-fun b!1132141 () Bool)

(declare-fun e!644356 () List!24916)

(assert (=> b!1132141 (= e!644356 call!48781)))

(declare-fun b!1132142 () Bool)

(assert (=> b!1132142 (= c!110307 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (bvsgt (_1!9061 (h!26121 (toList!8057 lt!502664))) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(assert (=> b!1132142 (= e!644356 e!644352)))

(declare-fun b!1132143 () Bool)

(declare-fun e!644353 () Bool)

(declare-fun lt!502941 () List!24916)

(assert (=> b!1132143 (= e!644353 (contains!6548 lt!502941 (tuple2!18103 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun d!131407 () Bool)

(assert (=> d!131407 e!644353))

(declare-fun res!756244 () Bool)

(assert (=> d!131407 (=> (not res!756244) (not e!644353))))

(assert (=> d!131407 (= res!756244 (isStrictlySorted!723 lt!502941))))

(assert (=> d!131407 (= lt!502941 e!644354)))

(declare-fun c!110306 () Bool)

(assert (=> d!131407 (= c!110306 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (bvslt (_1!9061 (h!26121 (toList!8057 lt!502664))) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(assert (=> d!131407 (isStrictlySorted!723 (toList!8057 lt!502664))))

(assert (=> d!131407 (= (insertStrictlySorted!398 (toList!8057 lt!502664) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) lt!502941)))

(declare-fun b!1132136 () Bool)

(assert (=> b!1132136 (= e!644354 e!644356)))

(assert (=> b!1132136 (= c!110305 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (= (_1!9061 (h!26121 (toList!8057 lt!502664))) (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun bm!48780 () Bool)

(declare-fun $colon$colon!611 (List!24916 tuple2!18102) List!24916)

(assert (=> bm!48780 (= call!48782 ($colon$colon!611 e!644355 (ite c!110306 (h!26121 (toList!8057 lt!502664)) (tuple2!18103 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))))

(declare-fun c!110308 () Bool)

(assert (=> bm!48780 (= c!110308 c!110306)))

(declare-fun b!1132144 () Bool)

(assert (=> b!1132144 (= e!644352 call!48783)))

(declare-fun b!1132145 () Bool)

(declare-fun res!756243 () Bool)

(assert (=> b!1132145 (=> (not res!756243) (not e!644353))))

(assert (=> b!1132145 (= res!756243 (containsKey!586 lt!502941 (_1!9061 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (= (and d!131407 c!110306) b!1132137))

(assert (= (and d!131407 (not c!110306)) b!1132136))

(assert (= (and b!1132136 c!110305) b!1132141))

(assert (= (and b!1132136 (not c!110305)) b!1132142))

(assert (= (and b!1132142 c!110307) b!1132139))

(assert (= (and b!1132142 (not c!110307)) b!1132144))

(assert (= (or b!1132139 b!1132144) bm!48778))

(assert (= (or b!1132141 bm!48778) bm!48779))

(assert (= (or b!1132137 bm!48779) bm!48780))

(assert (= (and bm!48780 c!110308) b!1132138))

(assert (= (and bm!48780 (not c!110308)) b!1132140))

(assert (= (and d!131407 res!756244) b!1132145))

(assert (= (and b!1132145 res!756243) b!1132143))

(declare-fun m!1045333 () Bool)

(assert (=> b!1132143 m!1045333))

(declare-fun m!1045335 () Bool)

(assert (=> b!1132138 m!1045335))

(declare-fun m!1045337 () Bool)

(assert (=> bm!48780 m!1045337))

(declare-fun m!1045339 () Bool)

(assert (=> b!1132145 m!1045339))

(declare-fun m!1045341 () Bool)

(assert (=> d!131407 m!1045341))

(assert (=> d!131407 m!1045203))

(assert (=> d!131249 d!131407))

(declare-fun d!131409 () Bool)

(declare-fun res!756245 () Bool)

(declare-fun e!644357 () Bool)

(assert (=> d!131409 (=> res!756245 e!644357)))

(assert (=> d!131409 (= res!756245 (and ((_ is Cons!24912) (toList!8057 call!48720)) (= (_1!9061 (h!26121 (toList!8057 call!48720))) k0!934)))))

(assert (=> d!131409 (= (containsKey!586 (toList!8057 call!48720) k0!934) e!644357)))

(declare-fun b!1132146 () Bool)

(declare-fun e!644358 () Bool)

(assert (=> b!1132146 (= e!644357 e!644358)))

(declare-fun res!756246 () Bool)

(assert (=> b!1132146 (=> (not res!756246) (not e!644358))))

(assert (=> b!1132146 (= res!756246 (and (or (not ((_ is Cons!24912) (toList!8057 call!48720))) (bvsle (_1!9061 (h!26121 (toList!8057 call!48720))) k0!934)) ((_ is Cons!24912) (toList!8057 call!48720)) (bvslt (_1!9061 (h!26121 (toList!8057 call!48720))) k0!934)))))

(declare-fun b!1132147 () Bool)

(assert (=> b!1132147 (= e!644358 (containsKey!586 (t!35852 (toList!8057 call!48720)) k0!934))))

(assert (= (and d!131409 (not res!756245)) b!1132146))

(assert (= (and b!1132146 res!756246) b!1132147))

(declare-fun m!1045343 () Bool)

(assert (=> b!1132147 m!1045343))

(assert (=> d!131253 d!131409))

(declare-fun d!131411 () Bool)

(declare-fun lt!502944 () Bool)

(declare-fun content!545 (List!24916) (InoxSet tuple2!18102))

(assert (=> d!131411 (= lt!502944 (select (content!545 (toList!8057 lt!502770)) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!644364 () Bool)

(assert (=> d!131411 (= lt!502944 e!644364)))

(declare-fun res!756251 () Bool)

(assert (=> d!131411 (=> (not res!756251) (not e!644364))))

(assert (=> d!131411 (= res!756251 ((_ is Cons!24912) (toList!8057 lt!502770)))))

(assert (=> d!131411 (= (contains!6548 (toList!8057 lt!502770) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!502944)))

(declare-fun b!1132152 () Bool)

(declare-fun e!644363 () Bool)

(assert (=> b!1132152 (= e!644364 e!644363)))

(declare-fun res!756252 () Bool)

(assert (=> b!1132152 (=> res!756252 e!644363)))

(assert (=> b!1132152 (= res!756252 (= (h!26121 (toList!8057 lt!502770)) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1132153 () Bool)

(assert (=> b!1132153 (= e!644363 (contains!6548 (t!35852 (toList!8057 lt!502770)) (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!131411 res!756251) b!1132152))

(assert (= (and b!1132152 (not res!756252)) b!1132153))

(declare-fun m!1045345 () Bool)

(assert (=> d!131411 m!1045345))

(declare-fun m!1045347 () Bool)

(assert (=> d!131411 m!1045347))

(declare-fun m!1045349 () Bool)

(assert (=> b!1132153 m!1045349))

(assert (=> b!1131848 d!131411))

(declare-fun d!131413 () Bool)

(declare-fun e!644365 () Bool)

(assert (=> d!131413 e!644365))

(declare-fun res!756253 () Bool)

(assert (=> d!131413 (=> res!756253 e!644365)))

(declare-fun lt!502945 () Bool)

(assert (=> d!131413 (= res!756253 (not lt!502945))))

(declare-fun lt!502946 () Bool)

(assert (=> d!131413 (= lt!502945 lt!502946)))

(declare-fun lt!502947 () Unit!37021)

(declare-fun e!644366 () Unit!37021)

(assert (=> d!131413 (= lt!502947 e!644366)))

(declare-fun c!110309 () Bool)

(assert (=> d!131413 (= c!110309 lt!502946)))

(assert (=> d!131413 (= lt!502946 (containsKey!586 (toList!8057 lt!502787) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!131413 (= (contains!6547 lt!502787 (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))) lt!502945)))

(declare-fun b!1132154 () Bool)

(declare-fun lt!502948 () Unit!37021)

(assert (=> b!1132154 (= e!644366 lt!502948)))

(assert (=> b!1132154 (= lt!502948 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502787) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132154 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1132155 () Bool)

(declare-fun Unit!37037 () Unit!37021)

(assert (=> b!1132155 (= e!644366 Unit!37037)))

(declare-fun b!1132156 () Bool)

(assert (=> b!1132156 (= e!644365 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) (select (arr!35526 lt!502669) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!131413 c!110309) b!1132154))

(assert (= (and d!131413 (not c!110309)) b!1132155))

(assert (= (and d!131413 (not res!756253)) b!1132156))

(assert (=> d!131413 m!1044859))

(declare-fun m!1045351 () Bool)

(assert (=> d!131413 m!1045351))

(assert (=> b!1132154 m!1044859))

(declare-fun m!1045353 () Bool)

(assert (=> b!1132154 m!1045353))

(assert (=> b!1132154 m!1044859))

(assert (=> b!1132154 m!1045101))

(assert (=> b!1132154 m!1045101))

(declare-fun m!1045355 () Bool)

(assert (=> b!1132154 m!1045355))

(assert (=> b!1132156 m!1044859))

(assert (=> b!1132156 m!1045101))

(assert (=> b!1132156 m!1045101))

(assert (=> b!1132156 m!1045355))

(assert (=> b!1131875 d!131413))

(assert (=> b!1131873 d!131301))

(declare-fun d!131415 () Bool)

(declare-fun e!644367 () Bool)

(assert (=> d!131415 e!644367))

(declare-fun res!756254 () Bool)

(assert (=> d!131415 (=> res!756254 e!644367)))

(declare-fun lt!502949 () Bool)

(assert (=> d!131415 (= res!756254 (not lt!502949))))

(declare-fun lt!502950 () Bool)

(assert (=> d!131415 (= lt!502949 lt!502950)))

(declare-fun lt!502951 () Unit!37021)

(declare-fun e!644368 () Unit!37021)

(assert (=> d!131415 (= lt!502951 e!644368)))

(declare-fun c!110310 () Bool)

(assert (=> d!131415 (= c!110310 lt!502950)))

(assert (=> d!131415 (= lt!502950 (containsKey!586 (toList!8057 lt!502787) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131415 (= (contains!6547 lt!502787 #b0000000000000000000000000000000000000000000000000000000000000000) lt!502949)))

(declare-fun b!1132157 () Bool)

(declare-fun lt!502952 () Unit!37021)

(assert (=> b!1132157 (= e!644368 lt!502952)))

(assert (=> b!1132157 (= lt!502952 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502787) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132157 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132158 () Bool)

(declare-fun Unit!37038 () Unit!37021)

(assert (=> b!1132158 (= e!644368 Unit!37038)))

(declare-fun b!1132159 () Bool)

(assert (=> b!1132159 (= e!644367 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131415 c!110310) b!1132157))

(assert (= (and d!131415 (not c!110310)) b!1132158))

(assert (= (and d!131415 (not res!756254)) b!1132159))

(declare-fun m!1045357 () Bool)

(assert (=> d!131415 m!1045357))

(declare-fun m!1045359 () Bool)

(assert (=> b!1132157 m!1045359))

(declare-fun m!1045361 () Bool)

(assert (=> b!1132157 m!1045361))

(assert (=> b!1132157 m!1045361))

(declare-fun m!1045363 () Bool)

(assert (=> b!1132157 m!1045363))

(assert (=> b!1132159 m!1045361))

(assert (=> b!1132159 m!1045361))

(assert (=> b!1132159 m!1045363))

(assert (=> d!131285 d!131415))

(assert (=> d!131285 d!131261))

(declare-fun d!131417 () Bool)

(declare-fun e!644369 () Bool)

(assert (=> d!131417 e!644369))

(declare-fun res!756255 () Bool)

(assert (=> d!131417 (=> res!756255 e!644369)))

(declare-fun lt!502953 () Bool)

(assert (=> d!131417 (= res!756255 (not lt!502953))))

(declare-fun lt!502954 () Bool)

(assert (=> d!131417 (= lt!502953 lt!502954)))

(declare-fun lt!502955 () Unit!37021)

(declare-fun e!644370 () Unit!37021)

(assert (=> d!131417 (= lt!502955 e!644370)))

(declare-fun c!110311 () Bool)

(assert (=> d!131417 (= c!110311 lt!502954)))

(assert (=> d!131417 (= lt!502954 (containsKey!586 (toList!8057 lt!502798) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131417 (= (contains!6547 lt!502798 #b1000000000000000000000000000000000000000000000000000000000000000) lt!502953)))

(declare-fun b!1132160 () Bool)

(declare-fun lt!502956 () Unit!37021)

(assert (=> b!1132160 (= e!644370 lt!502956)))

(assert (=> b!1132160 (= lt!502956 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502798) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132160 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132161 () Bool)

(declare-fun Unit!37039 () Unit!37021)

(assert (=> b!1132161 (= e!644370 Unit!37039)))

(declare-fun b!1132162 () Bool)

(assert (=> b!1132162 (= e!644369 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131417 c!110311) b!1132160))

(assert (= (and d!131417 (not c!110311)) b!1132161))

(assert (= (and d!131417 (not res!756255)) b!1132162))

(declare-fun m!1045365 () Bool)

(assert (=> d!131417 m!1045365))

(declare-fun m!1045367 () Bool)

(assert (=> b!1132160 m!1045367))

(declare-fun m!1045369 () Bool)

(assert (=> b!1132160 m!1045369))

(assert (=> b!1132160 m!1045369))

(declare-fun m!1045371 () Bool)

(assert (=> b!1132160 m!1045371))

(assert (=> b!1132162 m!1045369))

(assert (=> b!1132162 m!1045369))

(assert (=> b!1132162 m!1045371))

(assert (=> b!1131899 d!131417))

(declare-fun d!131419 () Bool)

(declare-fun c!110312 () Bool)

(assert (=> d!131419 (= c!110312 ((_ is ValueCellFull!13524) (select (arr!35525 lt!502663) from!1455)))))

(declare-fun e!644371 () V!43083)

(assert (=> d!131419 (= (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!644371)))

(declare-fun b!1132163 () Bool)

(assert (=> b!1132163 (= e!644371 (get!18085 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1132164 () Bool)

(assert (=> b!1132164 (= e!644371 (get!18086 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131419 c!110312) b!1132163))

(assert (= (and d!131419 (not c!110312)) b!1132164))

(assert (=> b!1132163 m!1044943))

(assert (=> b!1132163 m!1044681))

(declare-fun m!1045373 () Bool)

(assert (=> b!1132163 m!1045373))

(assert (=> b!1132164 m!1044943))

(assert (=> b!1132164 m!1044681))

(declare-fun m!1045375 () Bool)

(assert (=> b!1132164 m!1045375))

(assert (=> b!1131906 d!131419))

(declare-fun d!131421 () Bool)

(assert (=> d!131421 (not (contains!6547 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814)) lt!502813))))

(declare-fun lt!502957 () Unit!37021)

(assert (=> d!131421 (= lt!502957 (choose!1785 lt!502815 lt!502812 lt!502814 lt!502813))))

(declare-fun e!644372 () Bool)

(assert (=> d!131421 e!644372))

(declare-fun res!756256 () Bool)

(assert (=> d!131421 (=> (not res!756256) (not e!644372))))

(assert (=> d!131421 (= res!756256 (not (contains!6547 lt!502815 lt!502813)))))

(assert (=> d!131421 (= (addStillNotContains!285 lt!502815 lt!502812 lt!502814 lt!502813) lt!502957)))

(declare-fun b!1132165 () Bool)

(assert (=> b!1132165 (= e!644372 (not (= lt!502812 lt!502813)))))

(assert (= (and d!131421 res!756256) b!1132165))

(assert (=> d!131421 m!1044951))

(assert (=> d!131421 m!1044951))

(assert (=> d!131421 m!1044953))

(declare-fun m!1045377 () Bool)

(assert (=> d!131421 m!1045377))

(declare-fun m!1045379 () Bool)

(assert (=> d!131421 m!1045379))

(assert (=> b!1131906 d!131421))

(declare-fun d!131423 () Bool)

(declare-fun e!644373 () Bool)

(assert (=> d!131423 e!644373))

(declare-fun res!756258 () Bool)

(assert (=> d!131423 (=> (not res!756258) (not e!644373))))

(declare-fun lt!502959 () ListLongMap!16083)

(assert (=> d!131423 (= res!756258 (contains!6547 lt!502959 (_1!9061 (tuple2!18103 lt!502812 lt!502814))))))

(declare-fun lt!502961 () List!24916)

(assert (=> d!131423 (= lt!502959 (ListLongMap!16084 lt!502961))))

(declare-fun lt!502960 () Unit!37021)

(declare-fun lt!502958 () Unit!37021)

(assert (=> d!131423 (= lt!502960 lt!502958)))

(assert (=> d!131423 (= (getValueByKey!631 lt!502961 (_1!9061 (tuple2!18103 lt!502812 lt!502814))) (Some!681 (_2!9061 (tuple2!18103 lt!502812 lt!502814))))))

(assert (=> d!131423 (= lt!502958 (lemmaContainsTupThenGetReturnValue!306 lt!502961 (_1!9061 (tuple2!18103 lt!502812 lt!502814)) (_2!9061 (tuple2!18103 lt!502812 lt!502814))))))

(assert (=> d!131423 (= lt!502961 (insertStrictlySorted!398 (toList!8057 lt!502815) (_1!9061 (tuple2!18103 lt!502812 lt!502814)) (_2!9061 (tuple2!18103 lt!502812 lt!502814))))))

(assert (=> d!131423 (= (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814)) lt!502959)))

(declare-fun b!1132166 () Bool)

(declare-fun res!756257 () Bool)

(assert (=> b!1132166 (=> (not res!756257) (not e!644373))))

(assert (=> b!1132166 (= res!756257 (= (getValueByKey!631 (toList!8057 lt!502959) (_1!9061 (tuple2!18103 lt!502812 lt!502814))) (Some!681 (_2!9061 (tuple2!18103 lt!502812 lt!502814)))))))

(declare-fun b!1132167 () Bool)

(assert (=> b!1132167 (= e!644373 (contains!6548 (toList!8057 lt!502959) (tuple2!18103 lt!502812 lt!502814)))))

(assert (= (and d!131423 res!756258) b!1132166))

(assert (= (and b!1132166 res!756257) b!1132167))

(declare-fun m!1045381 () Bool)

(assert (=> d!131423 m!1045381))

(declare-fun m!1045383 () Bool)

(assert (=> d!131423 m!1045383))

(declare-fun m!1045385 () Bool)

(assert (=> d!131423 m!1045385))

(declare-fun m!1045387 () Bool)

(assert (=> d!131423 m!1045387))

(declare-fun m!1045389 () Bool)

(assert (=> b!1132166 m!1045389))

(declare-fun m!1045391 () Bool)

(assert (=> b!1132167 m!1045391))

(assert (=> b!1131906 d!131423))

(declare-fun d!131425 () Bool)

(declare-fun e!644374 () Bool)

(assert (=> d!131425 e!644374))

(declare-fun res!756259 () Bool)

(assert (=> d!131425 (=> res!756259 e!644374)))

(declare-fun lt!502962 () Bool)

(assert (=> d!131425 (= res!756259 (not lt!502962))))

(declare-fun lt!502963 () Bool)

(assert (=> d!131425 (= lt!502962 lt!502963)))

(declare-fun lt!502964 () Unit!37021)

(declare-fun e!644375 () Unit!37021)

(assert (=> d!131425 (= lt!502964 e!644375)))

(declare-fun c!110313 () Bool)

(assert (=> d!131425 (= c!110313 lt!502963)))

(assert (=> d!131425 (= lt!502963 (containsKey!586 (toList!8057 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814))) lt!502813))))

(assert (=> d!131425 (= (contains!6547 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814)) lt!502813) lt!502962)))

(declare-fun b!1132168 () Bool)

(declare-fun lt!502965 () Unit!37021)

(assert (=> b!1132168 (= e!644375 lt!502965)))

(assert (=> b!1132168 (= lt!502965 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814))) lt!502813))))

(assert (=> b!1132168 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814))) lt!502813))))

(declare-fun b!1132169 () Bool)

(declare-fun Unit!37040 () Unit!37021)

(assert (=> b!1132169 (= e!644375 Unit!37040)))

(declare-fun b!1132170 () Bool)

(assert (=> b!1132170 (= e!644374 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502815 (tuple2!18103 lt!502812 lt!502814))) lt!502813)))))

(assert (= (and d!131425 c!110313) b!1132168))

(assert (= (and d!131425 (not c!110313)) b!1132169))

(assert (= (and d!131425 (not res!756259)) b!1132170))

(declare-fun m!1045393 () Bool)

(assert (=> d!131425 m!1045393))

(declare-fun m!1045395 () Bool)

(assert (=> b!1132168 m!1045395))

(declare-fun m!1045397 () Bool)

(assert (=> b!1132168 m!1045397))

(assert (=> b!1132168 m!1045397))

(declare-fun m!1045399 () Bool)

(assert (=> b!1132168 m!1045399))

(assert (=> b!1132170 m!1045397))

(assert (=> b!1132170 m!1045397))

(assert (=> b!1132170 m!1045399))

(assert (=> b!1131906 d!131425))

(declare-fun d!131427 () Bool)

(declare-fun e!644376 () Bool)

(assert (=> d!131427 e!644376))

(declare-fun res!756261 () Bool)

(assert (=> d!131427 (=> (not res!756261) (not e!644376))))

(declare-fun lt!502967 () ListLongMap!16083)

(assert (=> d!131427 (= res!756261 (contains!6547 lt!502967 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!502969 () List!24916)

(assert (=> d!131427 (= lt!502967 (ListLongMap!16084 lt!502969))))

(declare-fun lt!502968 () Unit!37021)

(declare-fun lt!502966 () Unit!37021)

(assert (=> d!131427 (= lt!502968 lt!502966)))

(assert (=> d!131427 (= (getValueByKey!631 lt!502969 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131427 (= lt!502966 (lemmaContainsTupThenGetReturnValue!306 lt!502969 (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131427 (= lt!502969 (insertStrictlySorted!398 (toList!8057 call!48767) (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131427 (= (+!3420 call!48767 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!502967)))

(declare-fun b!1132171 () Bool)

(declare-fun res!756260 () Bool)

(assert (=> b!1132171 (=> (not res!756260) (not e!644376))))

(assert (=> b!1132171 (= res!756260 (= (getValueByKey!631 (toList!8057 lt!502967) (_1!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1132172 () Bool)

(assert (=> b!1132172 (= e!644376 (contains!6548 (toList!8057 lt!502967) (tuple2!18103 (select (arr!35526 lt!502669) from!1455) (get!18084 (select (arr!35525 lt!502663) from!1455) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!131427 res!756261) b!1132171))

(assert (= (and b!1132171 res!756260) b!1132172))

(declare-fun m!1045401 () Bool)

(assert (=> d!131427 m!1045401))

(declare-fun m!1045403 () Bool)

(assert (=> d!131427 m!1045403))

(declare-fun m!1045405 () Bool)

(assert (=> d!131427 m!1045405))

(declare-fun m!1045407 () Bool)

(assert (=> d!131427 m!1045407))

(declare-fun m!1045409 () Bool)

(assert (=> b!1132171 m!1045409))

(declare-fun m!1045411 () Bool)

(assert (=> b!1132172 m!1045411))

(assert (=> b!1131906 d!131427))

(assert (=> b!1131887 d!131371))

(assert (=> b!1131887 d!131373))

(declare-fun call!48789 () ListLongMap!16083)

(declare-fun bm!48786 () Bool)

(assert (=> bm!48786 (= call!48789 (getCurrentListMapNoExtraKeys!4508 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)) (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!644379 () Bool)

(declare-fun call!48788 () ListLongMap!16083)

(declare-fun b!1132177 () Bool)

(assert (=> b!1132177 (= e!644379 (= call!48789 (-!1179 call!48788 k0!934)))))

(declare-fun bm!48785 () Bool)

(assert (=> bm!48785 (= call!48788 (getCurrentListMapNoExtraKeys!4508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132178 () Bool)

(assert (=> b!1132178 (= e!644379 (= call!48789 call!48788))))

(declare-fun d!131429 () Bool)

(assert (=> d!131429 e!644379))

(declare-fun c!110316 () Bool)

(assert (=> d!131429 (= c!110316 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (=> d!131429 true))

(declare-fun _$12!462 () Unit!37021)

(assert (=> d!131429 (= (choose!1782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) _$12!462)))

(assert (= (and d!131429 c!110316) b!1132177))

(assert (= (and d!131429 (not c!110316)) b!1132178))

(assert (= (or b!1132177 b!1132178) bm!48785))

(assert (= (or b!1132177 b!1132178) bm!48786))

(declare-fun b_lambda!18995 () Bool)

(assert (=> (not b_lambda!18995) (not bm!48786)))

(assert (=> bm!48786 t!35851))

(declare-fun b_and!38717 () Bool)

(assert (= b_and!38715 (and (=> t!35851 result!18067) b_and!38717)))

(assert (=> bm!48786 m!1044697))

(assert (=> bm!48786 m!1044681))

(assert (=> bm!48786 m!1044683))

(assert (=> bm!48786 m!1044835))

(declare-fun m!1045413 () Bool)

(assert (=> b!1132177 m!1045413))

(assert (=> bm!48785 m!1044645))

(assert (=> d!131271 d!131429))

(declare-fun d!131431 () Bool)

(declare-fun res!756262 () Bool)

(declare-fun e!644380 () Bool)

(assert (=> d!131431 (=> res!756262 e!644380)))

(assert (=> d!131431 (= res!756262 (and ((_ is Cons!24912) (toList!8057 lt!502664)) (= (_1!9061 (h!26121 (toList!8057 lt!502664))) k0!934)))))

(assert (=> d!131431 (= (containsKey!586 (toList!8057 lt!502664) k0!934) e!644380)))

(declare-fun b!1132179 () Bool)

(declare-fun e!644381 () Bool)

(assert (=> b!1132179 (= e!644380 e!644381)))

(declare-fun res!756263 () Bool)

(assert (=> b!1132179 (=> (not res!756263) (not e!644381))))

(assert (=> b!1132179 (= res!756263 (and (or (not ((_ is Cons!24912) (toList!8057 lt!502664))) (bvsle (_1!9061 (h!26121 (toList!8057 lt!502664))) k0!934)) ((_ is Cons!24912) (toList!8057 lt!502664)) (bvslt (_1!9061 (h!26121 (toList!8057 lt!502664))) k0!934)))))

(declare-fun b!1132180 () Bool)

(assert (=> b!1132180 (= e!644381 (containsKey!586 (t!35852 (toList!8057 lt!502664)) k0!934))))

(assert (= (and d!131431 (not res!756262)) b!1132179))

(assert (= (and b!1132179 res!756263) b!1132180))

(declare-fun m!1045415 () Bool)

(assert (=> b!1132180 m!1045415))

(assert (=> d!131287 d!131431))

(declare-fun d!131433 () Bool)

(declare-fun e!644382 () Bool)

(assert (=> d!131433 e!644382))

(declare-fun res!756264 () Bool)

(assert (=> d!131433 (=> res!756264 e!644382)))

(declare-fun lt!502970 () Bool)

(assert (=> d!131433 (= res!756264 (not lt!502970))))

(declare-fun lt!502971 () Bool)

(assert (=> d!131433 (= lt!502970 lt!502971)))

(declare-fun lt!502972 () Unit!37021)

(declare-fun e!644383 () Unit!37021)

(assert (=> d!131433 (= lt!502972 e!644383)))

(declare-fun c!110317 () Bool)

(assert (=> d!131433 (= c!110317 lt!502971)))

(assert (=> d!131433 (= lt!502971 (containsKey!586 (toList!8057 lt!502798) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131433 (= (contains!6547 lt!502798 #b0000000000000000000000000000000000000000000000000000000000000000) lt!502970)))

(declare-fun b!1132181 () Bool)

(declare-fun lt!502973 () Unit!37021)

(assert (=> b!1132181 (= e!644383 lt!502973)))

(assert (=> b!1132181 (= lt!502973 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502798) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132181 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132182 () Bool)

(declare-fun Unit!37041 () Unit!37021)

(assert (=> b!1132182 (= e!644383 Unit!37041)))

(declare-fun b!1132183 () Bool)

(assert (=> b!1132183 (= e!644382 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502798) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131433 c!110317) b!1132181))

(assert (= (and d!131433 (not c!110317)) b!1132182))

(assert (= (and d!131433 (not res!756264)) b!1132183))

(declare-fun m!1045417 () Bool)

(assert (=> d!131433 m!1045417))

(declare-fun m!1045419 () Bool)

(assert (=> b!1132181 m!1045419))

(declare-fun m!1045421 () Bool)

(assert (=> b!1132181 m!1045421))

(assert (=> b!1132181 m!1045421))

(declare-fun m!1045423 () Bool)

(assert (=> b!1132181 m!1045423))

(assert (=> b!1132183 m!1045421))

(assert (=> b!1132183 m!1045421))

(assert (=> b!1132183 m!1045423))

(assert (=> d!131289 d!131433))

(assert (=> d!131289 d!131261))

(declare-fun d!131435 () Bool)

(assert (=> d!131435 (= (apply!990 lt!502809 (select (arr!35526 lt!502669) from!1455)) (get!18087 (getValueByKey!631 (toList!8057 lt!502809) (select (arr!35526 lt!502669) from!1455))))))

(declare-fun bs!32967 () Bool)

(assert (= bs!32967 d!131435))

(assert (=> bs!32967 m!1044929))

(declare-fun m!1045425 () Bool)

(assert (=> bs!32967 m!1045425))

(assert (=> bs!32967 m!1045425))

(declare-fun m!1045427 () Bool)

(assert (=> bs!32967 m!1045427))

(assert (=> b!1131913 d!131435))

(assert (=> b!1131913 d!131419))

(declare-fun b!1132184 () Bool)

(declare-fun e!644385 () Bool)

(assert (=> b!1132184 (= e!644385 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132184 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1132185 () Bool)

(declare-fun e!644384 () ListLongMap!16083)

(assert (=> b!1132185 (= e!644384 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1132186 () Bool)

(declare-fun e!644388 () Bool)

(declare-fun e!644387 () Bool)

(assert (=> b!1132186 (= e!644388 e!644387)))

(assert (=> b!1132186 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun lt!502974 () ListLongMap!16083)

(declare-fun res!756265 () Bool)

(assert (=> b!1132186 (= res!756265 (contains!6547 lt!502974 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1132186 (=> (not res!756265) (not e!644387))))

(declare-fun b!1132187 () Bool)

(declare-fun lt!502976 () Unit!37021)

(declare-fun lt!502975 () Unit!37021)

(assert (=> b!1132187 (= lt!502976 lt!502975)))

(declare-fun lt!502978 () (_ BitVec 64))

(declare-fun lt!502979 () V!43083)

(declare-fun lt!502980 () ListLongMap!16083)

(declare-fun lt!502977 () (_ BitVec 64))

(assert (=> b!1132187 (not (contains!6547 (+!3420 lt!502980 (tuple2!18103 lt!502977 lt!502979)) lt!502978))))

(assert (=> b!1132187 (= lt!502975 (addStillNotContains!285 lt!502980 lt!502977 lt!502979 lt!502978))))

(assert (=> b!1132187 (= lt!502978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132187 (= lt!502979 (get!18084 (select (arr!35525 lt!502663) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132187 (= lt!502977 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!48790 () ListLongMap!16083)

(assert (=> b!1132187 (= lt!502980 call!48790)))

(declare-fun e!644390 () ListLongMap!16083)

(assert (=> b!1132187 (= e!644390 (+!3420 call!48790 (tuple2!18103 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001)) (get!18084 (select (arr!35525 lt!502663) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131437 () Bool)

(declare-fun e!644386 () Bool)

(assert (=> d!131437 e!644386))

(declare-fun res!756267 () Bool)

(assert (=> d!131437 (=> (not res!756267) (not e!644386))))

(assert (=> d!131437 (= res!756267 (not (contains!6547 lt!502974 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131437 (= lt!502974 e!644384)))

(declare-fun c!110318 () Bool)

(assert (=> d!131437 (= c!110318 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> d!131437 (validMask!0 mask!1564)))

(assert (=> d!131437 (= (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!502974)))

(declare-fun e!644389 () Bool)

(declare-fun b!1132188 () Bool)

(assert (=> b!1132188 (= e!644389 (= lt!502974 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1132189 () Bool)

(assert (=> b!1132189 (= e!644390 call!48790)))

(declare-fun b!1132190 () Bool)

(assert (=> b!1132190 (= e!644389 (isEmpty!976 lt!502974))))

(declare-fun b!1132191 () Bool)

(assert (=> b!1132191 (= e!644384 e!644390)))

(declare-fun c!110319 () Bool)

(assert (=> b!1132191 (= c!110319 (validKeyInArray!0 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1132192 () Bool)

(assert (=> b!1132192 (= e!644386 e!644388)))

(declare-fun c!110321 () Bool)

(assert (=> b!1132192 (= c!110321 e!644385)))

(declare-fun res!756268 () Bool)

(assert (=> b!1132192 (=> (not res!756268) (not e!644385))))

(assert (=> b!1132192 (= res!756268 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun bm!48787 () Bool)

(assert (=> bm!48787 (= call!48790 (getCurrentListMapNoExtraKeys!4508 lt!502669 lt!502663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132193 () Bool)

(assert (=> b!1132193 (= e!644388 e!644389)))

(declare-fun c!110320 () Bool)

(assert (=> b!1132193 (= c!110320 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun b!1132194 () Bool)

(assert (=> b!1132194 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(assert (=> b!1132194 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!36062 lt!502663)))))

(assert (=> b!1132194 (= e!644387 (= (apply!990 lt!502974 (select (arr!35526 lt!502669) (bvadd from!1455 #b00000000000000000000000000000001))) (get!18084 (select (arr!35525 lt!502663) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132195 () Bool)

(declare-fun res!756266 () Bool)

(assert (=> b!1132195 (=> (not res!756266) (not e!644386))))

(assert (=> b!1132195 (= res!756266 (not (contains!6547 lt!502974 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131437 c!110318) b!1132185))

(assert (= (and d!131437 (not c!110318)) b!1132191))

(assert (= (and b!1132191 c!110319) b!1132187))

(assert (= (and b!1132191 (not c!110319)) b!1132189))

(assert (= (or b!1132187 b!1132189) bm!48787))

(assert (= (and d!131437 res!756267) b!1132195))

(assert (= (and b!1132195 res!756266) b!1132192))

(assert (= (and b!1132192 res!756268) b!1132184))

(assert (= (and b!1132192 c!110321) b!1132186))

(assert (= (and b!1132192 (not c!110321)) b!1132193))

(assert (= (and b!1132186 res!756265) b!1132194))

(assert (= (and b!1132193 c!110320) b!1132188))

(assert (= (and b!1132193 (not c!110320)) b!1132190))

(declare-fun b_lambda!18997 () Bool)

(assert (=> (not b_lambda!18997) (not b!1132187)))

(assert (=> b!1132187 t!35851))

(declare-fun b_and!38719 () Bool)

(assert (= b_and!38717 (and (=> t!35851 result!18067) b_and!38719)))

(declare-fun b_lambda!18999 () Bool)

(assert (=> (not b_lambda!18999) (not b!1132194)))

(assert (=> b!1132194 t!35851))

(declare-fun b_and!38721 () Bool)

(assert (= b_and!38719 (and (=> t!35851 result!18067) b_and!38721)))

(declare-fun m!1045429 () Bool)

(assert (=> b!1132186 m!1045429))

(assert (=> b!1132186 m!1045429))

(declare-fun m!1045431 () Bool)

(assert (=> b!1132186 m!1045431))

(declare-fun m!1045433 () Bool)

(assert (=> bm!48787 m!1045433))

(assert (=> b!1132191 m!1045429))

(assert (=> b!1132191 m!1045429))

(declare-fun m!1045435 () Bool)

(assert (=> b!1132191 m!1045435))

(declare-fun m!1045437 () Bool)

(assert (=> b!1132195 m!1045437))

(declare-fun m!1045439 () Bool)

(assert (=> d!131437 m!1045439))

(assert (=> d!131437 m!1044703))

(declare-fun m!1045441 () Bool)

(assert (=> b!1132190 m!1045441))

(assert (=> b!1132184 m!1045429))

(assert (=> b!1132184 m!1045429))

(assert (=> b!1132184 m!1045435))

(declare-fun m!1045443 () Bool)

(assert (=> b!1132187 m!1045443))

(declare-fun m!1045445 () Bool)

(assert (=> b!1132187 m!1045445))

(assert (=> b!1132187 m!1045443))

(assert (=> b!1132187 m!1044681))

(declare-fun m!1045447 () Bool)

(assert (=> b!1132187 m!1045447))

(declare-fun m!1045449 () Bool)

(assert (=> b!1132187 m!1045449))

(declare-fun m!1045451 () Bool)

(assert (=> b!1132187 m!1045451))

(assert (=> b!1132187 m!1044681))

(assert (=> b!1132187 m!1045429))

(assert (=> b!1132187 m!1045451))

(declare-fun m!1045453 () Bool)

(assert (=> b!1132187 m!1045453))

(assert (=> b!1132188 m!1045433))

(assert (=> b!1132194 m!1044681))

(assert (=> b!1132194 m!1045429))

(declare-fun m!1045455 () Bool)

(assert (=> b!1132194 m!1045455))

(assert (=> b!1132194 m!1045443))

(assert (=> b!1132194 m!1045443))

(assert (=> b!1132194 m!1044681))

(assert (=> b!1132194 m!1045447))

(assert (=> b!1132194 m!1045429))

(assert (=> bm!48764 d!131437))

(declare-fun d!131439 () Bool)

(assert (=> d!131439 (arrayContainsKey!0 lt!502669 lt!502756 #b00000000000000000000000000000000)))

(declare-fun lt!502981 () Unit!37021)

(assert (=> d!131439 (= lt!502981 (choose!13 lt!502669 lt!502756 #b00000000000000000000000000000000))))

(assert (=> d!131439 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!131439 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!502669 lt!502756 #b00000000000000000000000000000000) lt!502981)))

(declare-fun bs!32968 () Bool)

(assert (= bs!32968 d!131439))

(assert (=> bs!32968 m!1044811))

(declare-fun m!1045457 () Bool)

(assert (=> bs!32968 m!1045457))

(assert (=> b!1131806 d!131439))

(declare-fun d!131441 () Bool)

(declare-fun res!756269 () Bool)

(declare-fun e!644391 () Bool)

(assert (=> d!131441 (=> res!756269 e!644391)))

(assert (=> d!131441 (= res!756269 (= (select (arr!35526 lt!502669) #b00000000000000000000000000000000) lt!502756))))

(assert (=> d!131441 (= (arrayContainsKey!0 lt!502669 lt!502756 #b00000000000000000000000000000000) e!644391)))

(declare-fun b!1132196 () Bool)

(declare-fun e!644392 () Bool)

(assert (=> b!1132196 (= e!644391 e!644392)))

(declare-fun res!756270 () Bool)

(assert (=> b!1132196 (=> (not res!756270) (not e!644392))))

(assert (=> b!1132196 (= res!756270 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 lt!502669)))))

(declare-fun b!1132197 () Bool)

(assert (=> b!1132197 (= e!644392 (arrayContainsKey!0 lt!502669 lt!502756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!131441 (not res!756269)) b!1132196))

(assert (= (and b!1132196 res!756270) b!1132197))

(assert (=> d!131441 m!1044807))

(declare-fun m!1045459 () Bool)

(assert (=> b!1132197 m!1045459))

(assert (=> b!1131806 d!131441))

(declare-fun b!1132198 () Bool)

(declare-fun c!110324 () Bool)

(declare-fun lt!502982 () (_ BitVec 64))

(assert (=> b!1132198 (= c!110324 (= lt!502982 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!644393 () SeekEntryResult!9922)

(declare-fun e!644395 () SeekEntryResult!9922)

(assert (=> b!1132198 (= e!644393 e!644395)))

(declare-fun b!1132199 () Bool)

(declare-fun lt!502983 () SeekEntryResult!9922)

(assert (=> b!1132199 (= e!644395 (MissingZero!9922 (index!42060 lt!502983)))))

(declare-fun b!1132200 () Bool)

(assert (=> b!1132200 (= e!644395 (seekKeyOrZeroReturnVacant!0 (x!101483 lt!502983) (index!42060 lt!502983) (index!42060 lt!502983) (select (arr!35526 lt!502669) #b00000000000000000000000000000000) lt!502669 mask!1564))))

(declare-fun b!1132201 () Bool)

(assert (=> b!1132201 (= e!644393 (Found!9922 (index!42060 lt!502983)))))

(declare-fun b!1132202 () Bool)

(declare-fun e!644394 () SeekEntryResult!9922)

(assert (=> b!1132202 (= e!644394 e!644393)))

(assert (=> b!1132202 (= lt!502982 (select (arr!35526 lt!502669) (index!42060 lt!502983)))))

(declare-fun c!110323 () Bool)

(assert (=> b!1132202 (= c!110323 (= lt!502982 (select (arr!35526 lt!502669) #b00000000000000000000000000000000)))))

(declare-fun d!131443 () Bool)

(declare-fun lt!502984 () SeekEntryResult!9922)

(assert (=> d!131443 (and (or ((_ is Undefined!9922) lt!502984) (not ((_ is Found!9922) lt!502984)) (and (bvsge (index!42059 lt!502984) #b00000000000000000000000000000000) (bvslt (index!42059 lt!502984) (size!36063 lt!502669)))) (or ((_ is Undefined!9922) lt!502984) ((_ is Found!9922) lt!502984) (not ((_ is MissingZero!9922) lt!502984)) (and (bvsge (index!42058 lt!502984) #b00000000000000000000000000000000) (bvslt (index!42058 lt!502984) (size!36063 lt!502669)))) (or ((_ is Undefined!9922) lt!502984) ((_ is Found!9922) lt!502984) ((_ is MissingZero!9922) lt!502984) (not ((_ is MissingVacant!9922) lt!502984)) (and (bvsge (index!42061 lt!502984) #b00000000000000000000000000000000) (bvslt (index!42061 lt!502984) (size!36063 lt!502669)))) (or ((_ is Undefined!9922) lt!502984) (ite ((_ is Found!9922) lt!502984) (= (select (arr!35526 lt!502669) (index!42059 lt!502984)) (select (arr!35526 lt!502669) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9922) lt!502984) (= (select (arr!35526 lt!502669) (index!42058 lt!502984)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9922) lt!502984) (= (select (arr!35526 lt!502669) (index!42061 lt!502984)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131443 (= lt!502984 e!644394)))

(declare-fun c!110322 () Bool)

(assert (=> d!131443 (= c!110322 (and ((_ is Intermediate!9922) lt!502983) (undefined!10734 lt!502983)))))

(assert (=> d!131443 (= lt!502983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) mask!1564) (select (arr!35526 lt!502669) #b00000000000000000000000000000000) lt!502669 mask!1564))))

(assert (=> d!131443 (validMask!0 mask!1564)))

(assert (=> d!131443 (= (seekEntryOrOpen!0 (select (arr!35526 lt!502669) #b00000000000000000000000000000000) lt!502669 mask!1564) lt!502984)))

(declare-fun b!1132203 () Bool)

(assert (=> b!1132203 (= e!644394 Undefined!9922)))

(assert (= (and d!131443 c!110322) b!1132203))

(assert (= (and d!131443 (not c!110322)) b!1132202))

(assert (= (and b!1132202 c!110323) b!1132201))

(assert (= (and b!1132202 (not c!110323)) b!1132198))

(assert (= (and b!1132198 c!110324) b!1132199))

(assert (= (and b!1132198 (not c!110324)) b!1132200))

(assert (=> b!1132200 m!1044807))

(declare-fun m!1045461 () Bool)

(assert (=> b!1132200 m!1045461))

(declare-fun m!1045463 () Bool)

(assert (=> b!1132202 m!1045463))

(declare-fun m!1045465 () Bool)

(assert (=> d!131443 m!1045465))

(declare-fun m!1045467 () Bool)

(assert (=> d!131443 m!1045467))

(declare-fun m!1045469 () Bool)

(assert (=> d!131443 m!1045469))

(assert (=> d!131443 m!1044807))

(declare-fun m!1045471 () Bool)

(assert (=> d!131443 m!1045471))

(assert (=> d!131443 m!1045471))

(assert (=> d!131443 m!1044807))

(declare-fun m!1045473 () Bool)

(assert (=> d!131443 m!1045473))

(assert (=> d!131443 m!1044703))

(assert (=> b!1131806 d!131443))

(declare-fun d!131445 () Bool)

(assert (=> d!131445 (= (isEmpty!976 lt!502787) (isEmpty!978 (toList!8057 lt!502787)))))

(declare-fun bs!32969 () Bool)

(assert (= bs!32969 d!131445))

(declare-fun m!1045475 () Bool)

(assert (=> bs!32969 m!1045475))

(assert (=> b!1131879 d!131445))

(assert (=> b!1131915 d!131383))

(assert (=> b!1131877 d!131341))

(declare-fun d!131447 () Bool)

(assert (=> d!131447 (= (validKeyInArray!0 (select (arr!35526 lt!502669) from!1455)) (and (not (= (select (arr!35526 lt!502669) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!35526 lt!502669) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1131910 d!131447))

(declare-fun d!131449 () Bool)

(declare-fun e!644396 () Bool)

(assert (=> d!131449 e!644396))

(declare-fun res!756271 () Bool)

(assert (=> d!131449 (=> res!756271 e!644396)))

(declare-fun lt!502985 () Bool)

(assert (=> d!131449 (= res!756271 (not lt!502985))))

(declare-fun lt!502986 () Bool)

(assert (=> d!131449 (= lt!502985 lt!502986)))

(declare-fun lt!502987 () Unit!37021)

(declare-fun e!644397 () Unit!37021)

(assert (=> d!131449 (= lt!502987 e!644397)))

(declare-fun c!110325 () Bool)

(assert (=> d!131449 (= c!110325 lt!502986)))

(assert (=> d!131449 (= lt!502986 (containsKey!586 (toList!8057 lt!502787) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131449 (= (contains!6547 lt!502787 #b1000000000000000000000000000000000000000000000000000000000000000) lt!502985)))

(declare-fun b!1132204 () Bool)

(declare-fun lt!502988 () Unit!37021)

(assert (=> b!1132204 (= e!644397 lt!502988)))

(assert (=> b!1132204 (= lt!502988 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502787) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132204 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132205 () Bool)

(declare-fun Unit!37042 () Unit!37021)

(assert (=> b!1132205 (= e!644397 Unit!37042)))

(declare-fun b!1132206 () Bool)

(assert (=> b!1132206 (= e!644396 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502787) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131449 c!110325) b!1132204))

(assert (= (and d!131449 (not c!110325)) b!1132205))

(assert (= (and d!131449 (not res!756271)) b!1132206))

(declare-fun m!1045477 () Bool)

(assert (=> d!131449 m!1045477))

(declare-fun m!1045479 () Bool)

(assert (=> b!1132204 m!1045479))

(declare-fun m!1045481 () Bool)

(assert (=> b!1132204 m!1045481))

(assert (=> b!1132204 m!1045481))

(declare-fun m!1045483 () Bool)

(assert (=> b!1132204 m!1045483))

(assert (=> b!1132206 m!1045481))

(assert (=> b!1132206 m!1045481))

(assert (=> b!1132206 m!1045483))

(assert (=> b!1131884 d!131449))

(declare-fun d!131451 () Bool)

(assert (=> d!131451 (= (isEmpty!976 lt!502816) (isEmpty!978 (toList!8057 lt!502816)))))

(declare-fun bs!32970 () Bool)

(assert (= bs!32970 d!131451))

(declare-fun m!1045485 () Bool)

(assert (=> bs!32970 m!1045485))

(assert (=> b!1131921 d!131451))

(declare-fun d!131453 () Bool)

(declare-fun lt!502989 () Bool)

(assert (=> d!131453 (= lt!502989 (select (content!544 Nil!24914) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun e!644399 () Bool)

(assert (=> d!131453 (= lt!502989 e!644399)))

(declare-fun res!756273 () Bool)

(assert (=> d!131453 (=> (not res!756273) (not e!644399))))

(assert (=> d!131453 (= res!756273 ((_ is Cons!24913) Nil!24914))))

(assert (=> d!131453 (= (contains!6549 Nil!24914 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)) lt!502989)))

(declare-fun b!1132207 () Bool)

(declare-fun e!644398 () Bool)

(assert (=> b!1132207 (= e!644399 e!644398)))

(declare-fun res!756272 () Bool)

(assert (=> b!1132207 (=> res!756272 e!644398)))

(assert (=> b!1132207 (= res!756272 (= (h!26122 Nil!24914) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1132208 () Bool)

(assert (=> b!1132208 (= e!644398 (contains!6549 (t!35853 Nil!24914) (select (arr!35526 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!131453 res!756273) b!1132207))

(assert (= (and b!1132207 (not res!756272)) b!1132208))

(assert (=> d!131453 m!1045217))

(assert (=> d!131453 m!1044823))

(declare-fun m!1045487 () Bool)

(assert (=> d!131453 m!1045487))

(assert (=> b!1132208 m!1044823))

(declare-fun m!1045489 () Bool)

(assert (=> b!1132208 m!1045489))

(assert (=> b!1131820 d!131453))

(declare-fun d!131455 () Bool)

(declare-fun c!110326 () Bool)

(assert (=> d!131455 (= c!110326 ((_ is ValueCellFull!13524) (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!644400 () V!43083)

(assert (=> d!131455 (= (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!644400)))

(declare-fun b!1132209 () Bool)

(assert (=> b!1132209 (= e!644400 (get!18085 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1132210 () Bool)

(assert (=> b!1132210 (= e!644400 (get!18086 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131455 c!110326) b!1132209))

(assert (= (and d!131455 (not c!110326)) b!1132210))

(assert (=> b!1132209 m!1044907))

(assert (=> b!1132209 m!1044681))

(declare-fun m!1045491 () Bool)

(assert (=> b!1132209 m!1045491))

(assert (=> b!1132210 m!1044907))

(assert (=> b!1132210 m!1044681))

(declare-fun m!1045493 () Bool)

(assert (=> b!1132210 m!1045493))

(assert (=> b!1131891 d!131455))

(declare-fun d!131457 () Bool)

(declare-fun e!644401 () Bool)

(assert (=> d!131457 e!644401))

(declare-fun res!756274 () Bool)

(assert (=> d!131457 (=> res!756274 e!644401)))

(declare-fun lt!502990 () Bool)

(assert (=> d!131457 (= res!756274 (not lt!502990))))

(declare-fun lt!502991 () Bool)

(assert (=> d!131457 (= lt!502990 lt!502991)))

(declare-fun lt!502992 () Unit!37021)

(declare-fun e!644402 () Unit!37021)

(assert (=> d!131457 (= lt!502992 e!644402)))

(declare-fun c!110327 () Bool)

(assert (=> d!131457 (= c!110327 lt!502991)))

(assert (=> d!131457 (= lt!502991 (containsKey!586 (toList!8057 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803))) lt!502802))))

(assert (=> d!131457 (= (contains!6547 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803)) lt!502802) lt!502990)))

(declare-fun b!1132211 () Bool)

(declare-fun lt!502993 () Unit!37021)

(assert (=> b!1132211 (= e!644402 lt!502993)))

(assert (=> b!1132211 (= lt!502993 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803))) lt!502802))))

(assert (=> b!1132211 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803))) lt!502802))))

(declare-fun b!1132212 () Bool)

(declare-fun Unit!37043 () Unit!37021)

(assert (=> b!1132212 (= e!644402 Unit!37043)))

(declare-fun b!1132213 () Bool)

(assert (=> b!1132213 (= e!644401 (isDefined!455 (getValueByKey!631 (toList!8057 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803))) lt!502802)))))

(assert (= (and d!131457 c!110327) b!1132211))

(assert (= (and d!131457 (not c!110327)) b!1132212))

(assert (= (and d!131457 (not res!756274)) b!1132213))

(declare-fun m!1045495 () Bool)

(assert (=> d!131457 m!1045495))

(declare-fun m!1045497 () Bool)

(assert (=> b!1132211 m!1045497))

(declare-fun m!1045499 () Bool)

(assert (=> b!1132211 m!1045499))

(assert (=> b!1132211 m!1045499))

(declare-fun m!1045501 () Bool)

(assert (=> b!1132211 m!1045501))

(assert (=> b!1132213 m!1045499))

(assert (=> b!1132213 m!1045499))

(assert (=> b!1132213 m!1045501))

(assert (=> b!1131891 d!131457))

(declare-fun d!131459 () Bool)

(declare-fun e!644403 () Bool)

(assert (=> d!131459 e!644403))

(declare-fun res!756276 () Bool)

(assert (=> d!131459 (=> (not res!756276) (not e!644403))))

(declare-fun lt!502995 () ListLongMap!16083)

(assert (=> d!131459 (= res!756276 (contains!6547 lt!502995 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!502997 () List!24916)

(assert (=> d!131459 (= lt!502995 (ListLongMap!16084 lt!502997))))

(declare-fun lt!502996 () Unit!37021)

(declare-fun lt!502994 () Unit!37021)

(assert (=> d!131459 (= lt!502996 lt!502994)))

(assert (=> d!131459 (= (getValueByKey!631 lt!502997 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131459 (= lt!502994 (lemmaContainsTupThenGetReturnValue!306 lt!502997 (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131459 (= lt!502997 (insertStrictlySorted!398 (toList!8057 call!48766) (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!131459 (= (+!3420 call!48766 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!502995)))

(declare-fun b!1132214 () Bool)

(declare-fun res!756275 () Bool)

(assert (=> b!1132214 (=> (not res!756275) (not e!644403))))

(assert (=> b!1132214 (= res!756275 (= (getValueByKey!631 (toList!8057 lt!502995) (_1!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!681 (_2!9061 (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1132215 () Bool)

(assert (=> b!1132215 (= e!644403 (contains!6548 (toList!8057 lt!502995) (tuple2!18103 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!131459 res!756276) b!1132214))

(assert (= (and b!1132214 res!756275) b!1132215))

(declare-fun m!1045503 () Bool)

(assert (=> d!131459 m!1045503))

(declare-fun m!1045505 () Bool)

(assert (=> d!131459 m!1045505))

(declare-fun m!1045507 () Bool)

(assert (=> d!131459 m!1045507))

(declare-fun m!1045509 () Bool)

(assert (=> d!131459 m!1045509))

(declare-fun m!1045511 () Bool)

(assert (=> b!1132214 m!1045511))

(declare-fun m!1045513 () Bool)

(assert (=> b!1132215 m!1045513))

(assert (=> b!1131891 d!131459))

(declare-fun d!131461 () Bool)

(declare-fun e!644404 () Bool)

(assert (=> d!131461 e!644404))

(declare-fun res!756278 () Bool)

(assert (=> d!131461 (=> (not res!756278) (not e!644404))))

(declare-fun lt!502999 () ListLongMap!16083)

(assert (=> d!131461 (= res!756278 (contains!6547 lt!502999 (_1!9061 (tuple2!18103 lt!502801 lt!502803))))))

(declare-fun lt!503001 () List!24916)

(assert (=> d!131461 (= lt!502999 (ListLongMap!16084 lt!503001))))

(declare-fun lt!503000 () Unit!37021)

(declare-fun lt!502998 () Unit!37021)

(assert (=> d!131461 (= lt!503000 lt!502998)))

(assert (=> d!131461 (= (getValueByKey!631 lt!503001 (_1!9061 (tuple2!18103 lt!502801 lt!502803))) (Some!681 (_2!9061 (tuple2!18103 lt!502801 lt!502803))))))

(assert (=> d!131461 (= lt!502998 (lemmaContainsTupThenGetReturnValue!306 lt!503001 (_1!9061 (tuple2!18103 lt!502801 lt!502803)) (_2!9061 (tuple2!18103 lt!502801 lt!502803))))))

(assert (=> d!131461 (= lt!503001 (insertStrictlySorted!398 (toList!8057 lt!502804) (_1!9061 (tuple2!18103 lt!502801 lt!502803)) (_2!9061 (tuple2!18103 lt!502801 lt!502803))))))

(assert (=> d!131461 (= (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803)) lt!502999)))

(declare-fun b!1132216 () Bool)

(declare-fun res!756277 () Bool)

(assert (=> b!1132216 (=> (not res!756277) (not e!644404))))

(assert (=> b!1132216 (= res!756277 (= (getValueByKey!631 (toList!8057 lt!502999) (_1!9061 (tuple2!18103 lt!502801 lt!502803))) (Some!681 (_2!9061 (tuple2!18103 lt!502801 lt!502803)))))))

(declare-fun b!1132217 () Bool)

(assert (=> b!1132217 (= e!644404 (contains!6548 (toList!8057 lt!502999) (tuple2!18103 lt!502801 lt!502803)))))

(assert (= (and d!131461 res!756278) b!1132216))

(assert (= (and b!1132216 res!756277) b!1132217))

(declare-fun m!1045515 () Bool)

(assert (=> d!131461 m!1045515))

(declare-fun m!1045517 () Bool)

(assert (=> d!131461 m!1045517))

(declare-fun m!1045519 () Bool)

(assert (=> d!131461 m!1045519))

(declare-fun m!1045521 () Bool)

(assert (=> d!131461 m!1045521))

(declare-fun m!1045523 () Bool)

(assert (=> b!1132216 m!1045523))

(declare-fun m!1045525 () Bool)

(assert (=> b!1132217 m!1045525))

(assert (=> b!1131891 d!131461))

(declare-fun d!131463 () Bool)

(assert (=> d!131463 (not (contains!6547 (+!3420 lt!502804 (tuple2!18103 lt!502801 lt!502803)) lt!502802))))

(declare-fun lt!503002 () Unit!37021)

(assert (=> d!131463 (= lt!503002 (choose!1785 lt!502804 lt!502801 lt!502803 lt!502802))))

(declare-fun e!644405 () Bool)

(assert (=> d!131463 e!644405))

(declare-fun res!756279 () Bool)

(assert (=> d!131463 (=> (not res!756279) (not e!644405))))

(assert (=> d!131463 (= res!756279 (not (contains!6547 lt!502804 lt!502802)))))

(assert (=> d!131463 (= (addStillNotContains!285 lt!502804 lt!502801 lt!502803 lt!502802) lt!503002)))

(declare-fun b!1132218 () Bool)

(assert (=> b!1132218 (= e!644405 (not (= lt!502801 lt!502802)))))

(assert (= (and d!131463 res!756279) b!1132218))

(assert (=> d!131463 m!1044915))

(assert (=> d!131463 m!1044915))

(assert (=> d!131463 m!1044917))

(declare-fun m!1045527 () Bool)

(assert (=> d!131463 m!1045527))

(declare-fun m!1045529 () Bool)

(assert (=> d!131463 m!1045529))

(assert (=> b!1131891 d!131463))

(declare-fun d!131465 () Bool)

(declare-fun lt!503003 () Bool)

(assert (=> d!131465 (= lt!503003 (select (content!545 (toList!8057 lt!502729)) (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun e!644407 () Bool)

(assert (=> d!131465 (= lt!503003 e!644407)))

(declare-fun res!756280 () Bool)

(assert (=> d!131465 (=> (not res!756280) (not e!644407))))

(assert (=> d!131465 (= res!756280 ((_ is Cons!24912) (toList!8057 lt!502729)))))

(assert (=> d!131465 (= (contains!6548 (toList!8057 lt!502729) (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!503003)))

(declare-fun b!1132219 () Bool)

(declare-fun e!644406 () Bool)

(assert (=> b!1132219 (= e!644407 e!644406)))

(declare-fun res!756281 () Bool)

(assert (=> b!1132219 (=> res!756281 e!644406)))

(assert (=> b!1132219 (= res!756281 (= (h!26121 (toList!8057 lt!502729)) (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun b!1132220 () Bool)

(assert (=> b!1132220 (= e!644406 (contains!6548 (t!35852 (toList!8057 lt!502729)) (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!131465 res!756280) b!1132219))

(assert (= (and b!1132219 (not res!756281)) b!1132220))

(declare-fun m!1045531 () Bool)

(assert (=> d!131465 m!1045531))

(declare-fun m!1045533 () Bool)

(assert (=> d!131465 m!1045533))

(declare-fun m!1045535 () Bool)

(assert (=> b!1132220 m!1045535))

(assert (=> b!1131781 d!131465))

(assert (=> b!1131919 d!131381))

(assert (=> bm!48757 d!131289))

(declare-fun d!131467 () Bool)

(declare-fun e!644408 () Bool)

(assert (=> d!131467 e!644408))

(declare-fun res!756282 () Bool)

(assert (=> d!131467 (=> res!756282 e!644408)))

(declare-fun lt!503004 () Bool)

(assert (=> d!131467 (= res!756282 (not lt!503004))))

(declare-fun lt!503005 () Bool)

(assert (=> d!131467 (= lt!503004 lt!503005)))

(declare-fun lt!503006 () Unit!37021)

(declare-fun e!644409 () Unit!37021)

(assert (=> d!131467 (= lt!503006 e!644409)))

(declare-fun c!110328 () Bool)

(assert (=> d!131467 (= c!110328 lt!503005)))

(assert (=> d!131467 (= lt!503005 (containsKey!586 (toList!8057 lt!502816) (select (arr!35526 _keys!1208) from!1455)))))

(assert (=> d!131467 (= (contains!6547 lt!502816 (select (arr!35526 _keys!1208) from!1455)) lt!503004)))

(declare-fun b!1132221 () Bool)

(declare-fun lt!503007 () Unit!37021)

(assert (=> b!1132221 (= e!644409 lt!503007)))

(assert (=> b!1132221 (= lt!503007 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502816) (select (arr!35526 _keys!1208) from!1455)))))

(assert (=> b!1132221 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) (select (arr!35526 _keys!1208) from!1455)))))

(declare-fun b!1132222 () Bool)

(declare-fun Unit!37044 () Unit!37021)

(assert (=> b!1132222 (= e!644409 Unit!37044)))

(declare-fun b!1132223 () Bool)

(assert (=> b!1132223 (= e!644408 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) (select (arr!35526 _keys!1208) from!1455))))))

(assert (= (and d!131467 c!110328) b!1132221))

(assert (= (and d!131467 (not c!110328)) b!1132222))

(assert (= (and d!131467 (not res!756282)) b!1132223))

(assert (=> d!131467 m!1044691))

(declare-fun m!1045537 () Bool)

(assert (=> d!131467 m!1045537))

(assert (=> b!1132221 m!1044691))

(declare-fun m!1045539 () Bool)

(assert (=> b!1132221 m!1045539))

(assert (=> b!1132221 m!1044691))

(assert (=> b!1132221 m!1045191))

(assert (=> b!1132221 m!1045191))

(declare-fun m!1045541 () Bool)

(assert (=> b!1132221 m!1045541))

(assert (=> b!1132223 m!1044691))

(assert (=> b!1132223 m!1045191))

(assert (=> b!1132223 m!1045191))

(assert (=> b!1132223 m!1045541))

(assert (=> b!1131917 d!131467))

(assert (=> b!1131836 d!131339))

(assert (=> b!1131903 d!131447))

(declare-fun d!131469 () Bool)

(declare-fun e!644410 () Bool)

(assert (=> d!131469 e!644410))

(declare-fun res!756283 () Bool)

(assert (=> d!131469 (=> res!756283 e!644410)))

(declare-fun lt!503008 () Bool)

(assert (=> d!131469 (= res!756283 (not lt!503008))))

(declare-fun lt!503009 () Bool)

(assert (=> d!131469 (= lt!503008 lt!503009)))

(declare-fun lt!503010 () Unit!37021)

(declare-fun e!644411 () Unit!37021)

(assert (=> d!131469 (= lt!503010 e!644411)))

(declare-fun c!110329 () Bool)

(assert (=> d!131469 (= c!110329 lt!503009)))

(assert (=> d!131469 (= lt!503009 (containsKey!586 (toList!8057 lt!502816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!131469 (= (contains!6547 lt!502816 #b1000000000000000000000000000000000000000000000000000000000000000) lt!503008)))

(declare-fun b!1132224 () Bool)

(declare-fun lt!503011 () Unit!37021)

(assert (=> b!1132224 (= e!644411 lt!503011)))

(assert (=> b!1132224 (= lt!503011 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1132224 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1132225 () Bool)

(declare-fun Unit!37045 () Unit!37021)

(assert (=> b!1132225 (= e!644411 Unit!37045)))

(declare-fun b!1132226 () Bool)

(assert (=> b!1132226 (= e!644410 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502816) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131469 c!110329) b!1132224))

(assert (= (and d!131469 (not c!110329)) b!1132225))

(assert (= (and d!131469 (not res!756283)) b!1132226))

(declare-fun m!1045543 () Bool)

(assert (=> d!131469 m!1045543))

(declare-fun m!1045545 () Bool)

(assert (=> b!1132224 m!1045545))

(declare-fun m!1045547 () Bool)

(assert (=> b!1132224 m!1045547))

(assert (=> b!1132224 m!1045547))

(declare-fun m!1045549 () Bool)

(assert (=> b!1132224 m!1045549))

(assert (=> b!1132226 m!1045547))

(assert (=> b!1132226 m!1045547))

(assert (=> b!1132226 m!1045549))

(assert (=> b!1131926 d!131469))

(declare-fun d!131471 () Bool)

(assert (=> d!131471 (= (isDefined!455 (getValueByKey!631 (toList!8057 call!48720) k0!934)) (not (isEmpty!977 (getValueByKey!631 (toList!8057 call!48720) k0!934))))))

(declare-fun bs!32971 () Bool)

(assert (= bs!32971 d!131471))

(assert (=> bs!32971 m!1044793))

(declare-fun m!1045551 () Bool)

(assert (=> bs!32971 m!1045551))

(assert (=> b!1131791 d!131471))

(declare-fun d!131473 () Bool)

(declare-fun c!110330 () Bool)

(assert (=> d!131473 (= c!110330 (and ((_ is Cons!24912) (toList!8057 call!48720)) (= (_1!9061 (h!26121 (toList!8057 call!48720))) k0!934)))))

(declare-fun e!644412 () Option!682)

(assert (=> d!131473 (= (getValueByKey!631 (toList!8057 call!48720) k0!934) e!644412)))

(declare-fun b!1132229 () Bool)

(declare-fun e!644413 () Option!682)

(assert (=> b!1132229 (= e!644413 (getValueByKey!631 (t!35852 (toList!8057 call!48720)) k0!934))))

(declare-fun b!1132230 () Bool)

(assert (=> b!1132230 (= e!644413 None!680)))

(declare-fun b!1132227 () Bool)

(assert (=> b!1132227 (= e!644412 (Some!681 (_2!9061 (h!26121 (toList!8057 call!48720)))))))

(declare-fun b!1132228 () Bool)

(assert (=> b!1132228 (= e!644412 e!644413)))

(declare-fun c!110331 () Bool)

(assert (=> b!1132228 (= c!110331 (and ((_ is Cons!24912) (toList!8057 call!48720)) (not (= (_1!9061 (h!26121 (toList!8057 call!48720))) k0!934))))))

(assert (= (and d!131473 c!110330) b!1132227))

(assert (= (and d!131473 (not c!110330)) b!1132228))

(assert (= (and b!1132228 c!110331) b!1132229))

(assert (= (and b!1132228 (not c!110331)) b!1132230))

(declare-fun m!1045553 () Bool)

(assert (=> b!1132229 m!1045553))

(assert (=> b!1131791 d!131473))

(declare-fun d!131475 () Bool)

(declare-fun e!644414 () Bool)

(assert (=> d!131475 e!644414))

(declare-fun res!756284 () Bool)

(assert (=> d!131475 (=> res!756284 e!644414)))

(declare-fun lt!503012 () Bool)

(assert (=> d!131475 (= res!756284 (not lt!503012))))

(declare-fun lt!503013 () Bool)

(assert (=> d!131475 (= lt!503012 lt!503013)))

(declare-fun lt!503014 () Unit!37021)

(declare-fun e!644415 () Unit!37021)

(assert (=> d!131475 (= lt!503014 e!644415)))

(declare-fun c!110332 () Bool)

(assert (=> d!131475 (= c!110332 lt!503013)))

(assert (=> d!131475 (= lt!503013 (containsKey!586 (toList!8057 lt!502759) k0!934))))

(assert (=> d!131475 (= (contains!6547 lt!502759 k0!934) lt!503012)))

(declare-fun b!1132231 () Bool)

(declare-fun lt!503015 () Unit!37021)

(assert (=> b!1132231 (= e!644415 lt!503015)))

(assert (=> b!1132231 (= lt!503015 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502759) k0!934))))

(assert (=> b!1132231 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502759) k0!934))))

(declare-fun b!1132232 () Bool)

(declare-fun Unit!37046 () Unit!37021)

(assert (=> b!1132232 (= e!644415 Unit!37046)))

(declare-fun b!1132233 () Bool)

(assert (=> b!1132233 (= e!644414 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502759) k0!934)))))

(assert (= (and d!131475 c!110332) b!1132231))

(assert (= (and d!131475 (not c!110332)) b!1132232))

(assert (= (and d!131475 (not res!756284)) b!1132233))

(declare-fun m!1045555 () Bool)

(assert (=> d!131475 m!1045555))

(declare-fun m!1045557 () Bool)

(assert (=> b!1132231 m!1045557))

(declare-fun m!1045559 () Bool)

(assert (=> b!1132231 m!1045559))

(assert (=> b!1132231 m!1045559))

(declare-fun m!1045561 () Bool)

(assert (=> b!1132231 m!1045561))

(assert (=> b!1132233 m!1045559))

(assert (=> b!1132233 m!1045559))

(assert (=> b!1132233 m!1045561))

(assert (=> d!131267 d!131475))

(declare-fun b!1132244 () Bool)

(declare-fun e!644422 () List!24916)

(assert (=> b!1132244 (= e!644422 (t!35852 (toList!8057 call!48725)))))

(declare-fun d!131477 () Bool)

(declare-fun e!644423 () Bool)

(assert (=> d!131477 e!644423))

(declare-fun res!756287 () Bool)

(assert (=> d!131477 (=> (not res!756287) (not e!644423))))

(declare-fun lt!503018 () List!24916)

(assert (=> d!131477 (= res!756287 (isStrictlySorted!723 lt!503018))))

(assert (=> d!131477 (= lt!503018 e!644422)))

(declare-fun c!110338 () Bool)

(assert (=> d!131477 (= c!110338 (and ((_ is Cons!24912) (toList!8057 call!48725)) (= (_1!9061 (h!26121 (toList!8057 call!48725))) k0!934)))))

(assert (=> d!131477 (isStrictlySorted!723 (toList!8057 call!48725))))

(assert (=> d!131477 (= (removeStrictlySorted!90 (toList!8057 call!48725) k0!934) lt!503018)))

(declare-fun b!1132245 () Bool)

(assert (=> b!1132245 (= e!644423 (not (containsKey!586 lt!503018 k0!934)))))

(declare-fun b!1132246 () Bool)

(declare-fun e!644424 () List!24916)

(assert (=> b!1132246 (= e!644424 ($colon$colon!611 (removeStrictlySorted!90 (t!35852 (toList!8057 call!48725)) k0!934) (h!26121 (toList!8057 call!48725))))))

(declare-fun b!1132247 () Bool)

(assert (=> b!1132247 (= e!644422 e!644424)))

(declare-fun c!110337 () Bool)

(assert (=> b!1132247 (= c!110337 (and ((_ is Cons!24912) (toList!8057 call!48725)) (not (= (_1!9061 (h!26121 (toList!8057 call!48725))) k0!934))))))

(declare-fun b!1132248 () Bool)

(assert (=> b!1132248 (= e!644424 Nil!24913)))

(assert (= (and d!131477 c!110338) b!1132244))

(assert (= (and d!131477 (not c!110338)) b!1132247))

(assert (= (and b!1132247 c!110337) b!1132246))

(assert (= (and b!1132247 (not c!110337)) b!1132248))

(assert (= (and d!131477 res!756287) b!1132245))

(declare-fun m!1045563 () Bool)

(assert (=> d!131477 m!1045563))

(declare-fun m!1045565 () Bool)

(assert (=> d!131477 m!1045565))

(declare-fun m!1045567 () Bool)

(assert (=> b!1132245 m!1045567))

(declare-fun m!1045569 () Bool)

(assert (=> b!1132246 m!1045569))

(assert (=> b!1132246 m!1045569))

(declare-fun m!1045571 () Bool)

(assert (=> b!1132246 m!1045571))

(assert (=> d!131267 d!131477))

(declare-fun d!131479 () Bool)

(assert (=> d!131479 (isDefined!455 (getValueByKey!631 (toList!8057 call!48720) k0!934))))

(declare-fun lt!503019 () Unit!37021)

(assert (=> d!131479 (= lt!503019 (choose!1784 (toList!8057 call!48720) k0!934))))

(declare-fun e!644425 () Bool)

(assert (=> d!131479 e!644425))

(declare-fun res!756288 () Bool)

(assert (=> d!131479 (=> (not res!756288) (not e!644425))))

(assert (=> d!131479 (= res!756288 (isStrictlySorted!723 (toList!8057 call!48720)))))

(assert (=> d!131479 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 call!48720) k0!934) lt!503019)))

(declare-fun b!1132249 () Bool)

(assert (=> b!1132249 (= e!644425 (containsKey!586 (toList!8057 call!48720) k0!934))))

(assert (= (and d!131479 res!756288) b!1132249))

(assert (=> d!131479 m!1044793))

(assert (=> d!131479 m!1044793))

(assert (=> d!131479 m!1044795))

(declare-fun m!1045573 () Bool)

(assert (=> d!131479 m!1045573))

(declare-fun m!1045575 () Bool)

(assert (=> d!131479 m!1045575))

(assert (=> b!1132249 m!1044789))

(assert (=> b!1131789 d!131479))

(assert (=> b!1131789 d!131471))

(assert (=> b!1131789 d!131473))

(assert (=> b!1131895 d!131357))

(declare-fun b!1132250 () Bool)

(declare-fun e!644428 () Bool)

(assert (=> b!1132250 (= e!644428 (contains!6549 (ite c!110210 (Cons!24913 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) Nil!24914) Nil!24914) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1132251 () Bool)

(declare-fun e!644426 () Bool)

(declare-fun call!48791 () Bool)

(assert (=> b!1132251 (= e!644426 call!48791)))

(declare-fun c!110339 () Bool)

(declare-fun bm!48788 () Bool)

(assert (=> bm!48788 (= call!48791 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!110339 (Cons!24913 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!110210 (Cons!24913 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) Nil!24914) Nil!24914)) (ite c!110210 (Cons!24913 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) Nil!24914) Nil!24914))))))

(declare-fun b!1132252 () Bool)

(declare-fun e!644429 () Bool)

(declare-fun e!644427 () Bool)

(assert (=> b!1132252 (= e!644429 e!644427)))

(declare-fun res!756291 () Bool)

(assert (=> b!1132252 (=> (not res!756291) (not e!644427))))

(assert (=> b!1132252 (= res!756291 (not e!644428))))

(declare-fun res!756289 () Bool)

(assert (=> b!1132252 (=> (not res!756289) (not e!644428))))

(assert (=> b!1132252 (= res!756289 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1132253 () Bool)

(assert (=> b!1132253 (= e!644426 call!48791)))

(declare-fun d!131481 () Bool)

(declare-fun res!756290 () Bool)

(assert (=> d!131481 (=> res!756290 e!644429)))

(assert (=> d!131481 (= res!756290 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> d!131481 (= (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110210 (Cons!24913 (select (arr!35526 _keys!1208) #b00000000000000000000000000000000) Nil!24914) Nil!24914)) e!644429)))

(declare-fun b!1132254 () Bool)

(assert (=> b!1132254 (= e!644427 e!644426)))

(assert (=> b!1132254 (= c!110339 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!131481 (not res!756290)) b!1132252))

(assert (= (and b!1132252 res!756289) b!1132250))

(assert (= (and b!1132252 res!756291) b!1132254))

(assert (= (and b!1132254 c!110339) b!1132251))

(assert (= (and b!1132254 (not c!110339)) b!1132253))

(assert (= (or b!1132251 b!1132253) bm!48788))

(assert (=> b!1132250 m!1045173))

(assert (=> b!1132250 m!1045173))

(declare-fun m!1045577 () Bool)

(assert (=> b!1132250 m!1045577))

(assert (=> bm!48788 m!1045173))

(declare-fun m!1045579 () Bool)

(assert (=> bm!48788 m!1045579))

(assert (=> b!1132252 m!1045173))

(assert (=> b!1132252 m!1045173))

(declare-fun m!1045581 () Bool)

(assert (=> b!1132252 m!1045581))

(assert (=> b!1132254 m!1045173))

(assert (=> b!1132254 m!1045173))

(assert (=> b!1132254 m!1045581))

(assert (=> bm!48752 d!131481))

(declare-fun d!131483 () Bool)

(declare-fun e!644430 () Bool)

(assert (=> d!131483 e!644430))

(declare-fun res!756292 () Bool)

(assert (=> d!131483 (=> res!756292 e!644430)))

(declare-fun lt!503020 () Bool)

(assert (=> d!131483 (= res!756292 (not lt!503020))))

(declare-fun lt!503021 () Bool)

(assert (=> d!131483 (= lt!503020 lt!503021)))

(declare-fun lt!503022 () Unit!37021)

(declare-fun e!644431 () Unit!37021)

(assert (=> d!131483 (= lt!503022 e!644431)))

(declare-fun c!110340 () Bool)

(assert (=> d!131483 (= c!110340 lt!503021)))

(assert (=> d!131483 (= lt!503021 (containsKey!586 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!131483 (= (contains!6547 lt!502770 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) lt!503020)))

(declare-fun b!1132255 () Bool)

(declare-fun lt!503023 () Unit!37021)

(assert (=> b!1132255 (= e!644431 lt!503023)))

(assert (=> b!1132255 (= lt!503023 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> b!1132255 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1132256 () Bool)

(declare-fun Unit!37047 () Unit!37021)

(assert (=> b!1132256 (= e!644431 Unit!37047)))

(declare-fun b!1132257 () Bool)

(assert (=> b!1132257 (= e!644430 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(assert (= (and d!131483 c!110340) b!1132255))

(assert (= (and d!131483 (not c!110340)) b!1132256))

(assert (= (and d!131483 (not res!756292)) b!1132257))

(declare-fun m!1045583 () Bool)

(assert (=> d!131483 m!1045583))

(declare-fun m!1045585 () Bool)

(assert (=> b!1132255 m!1045585))

(assert (=> b!1132255 m!1044855))

(assert (=> b!1132255 m!1044855))

(declare-fun m!1045587 () Bool)

(assert (=> b!1132255 m!1045587))

(assert (=> b!1132257 m!1044855))

(assert (=> b!1132257 m!1044855))

(assert (=> b!1132257 m!1045587))

(assert (=> d!131281 d!131483))

(declare-fun c!110341 () Bool)

(declare-fun d!131485 () Bool)

(assert (=> d!131485 (= c!110341 (and ((_ is Cons!24912) lt!502772) (= (_1!9061 (h!26121 lt!502772)) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun e!644432 () Option!682)

(assert (=> d!131485 (= (getValueByKey!631 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) e!644432)))

(declare-fun e!644433 () Option!682)

(declare-fun b!1132260 () Bool)

(assert (=> b!1132260 (= e!644433 (getValueByKey!631 (t!35852 lt!502772) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1132261 () Bool)

(assert (=> b!1132261 (= e!644433 None!680)))

(declare-fun b!1132258 () Bool)

(assert (=> b!1132258 (= e!644432 (Some!681 (_2!9061 (h!26121 lt!502772))))))

(declare-fun b!1132259 () Bool)

(assert (=> b!1132259 (= e!644432 e!644433)))

(declare-fun c!110342 () Bool)

(assert (=> b!1132259 (= c!110342 (and ((_ is Cons!24912) lt!502772) (not (= (_1!9061 (h!26121 lt!502772)) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))))

(assert (= (and d!131485 c!110341) b!1132258))

(assert (= (and d!131485 (not c!110341)) b!1132259))

(assert (= (and b!1132259 c!110342) b!1132260))

(assert (= (and b!1132259 (not c!110342)) b!1132261))

(declare-fun m!1045589 () Bool)

(assert (=> b!1132260 m!1045589))

(assert (=> d!131281 d!131485))

(declare-fun d!131487 () Bool)

(assert (=> d!131487 (= (getValueByKey!631 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!681 (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!503024 () Unit!37021)

(assert (=> d!131487 (= lt!503024 (choose!1786 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun e!644434 () Bool)

(assert (=> d!131487 e!644434))

(declare-fun res!756293 () Bool)

(assert (=> d!131487 (=> (not res!756293) (not e!644434))))

(assert (=> d!131487 (= res!756293 (isStrictlySorted!723 lt!502772))))

(assert (=> d!131487 (= (lemmaContainsTupThenGetReturnValue!306 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) lt!503024)))

(declare-fun b!1132262 () Bool)

(declare-fun res!756294 () Bool)

(assert (=> b!1132262 (=> (not res!756294) (not e!644434))))

(assert (=> b!1132262 (= res!756294 (containsKey!586 lt!502772 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1132263 () Bool)

(assert (=> b!1132263 (= e!644434 (contains!6548 lt!502772 (tuple2!18103 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(assert (= (and d!131487 res!756293) b!1132262))

(assert (= (and b!1132262 res!756294) b!1132263))

(assert (=> d!131487 m!1044849))

(declare-fun m!1045591 () Bool)

(assert (=> d!131487 m!1045591))

(declare-fun m!1045593 () Bool)

(assert (=> d!131487 m!1045593))

(declare-fun m!1045595 () Bool)

(assert (=> b!1132262 m!1045595))

(declare-fun m!1045597 () Bool)

(assert (=> b!1132263 m!1045597))

(assert (=> d!131281 d!131487))

(declare-fun b!1132265 () Bool)

(declare-fun e!644437 () List!24916)

(declare-fun call!48793 () List!24916)

(assert (=> b!1132265 (= e!644437 call!48793)))

(declare-fun bm!48789 () Bool)

(declare-fun call!48794 () List!24916)

(declare-fun call!48792 () List!24916)

(assert (=> bm!48789 (= call!48794 call!48792)))

(declare-fun bm!48790 () Bool)

(assert (=> bm!48790 (= call!48792 call!48793)))

(declare-fun e!644438 () List!24916)

(declare-fun b!1132266 () Bool)

(assert (=> b!1132266 (= e!644438 (insertStrictlySorted!398 (t!35852 (toList!8057 (ite c!110183 lt!502672 lt!502664))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1132267 () Bool)

(declare-fun e!644435 () List!24916)

(assert (=> b!1132267 (= e!644435 call!48794)))

(declare-fun b!1132268 () Bool)

(declare-fun c!110345 () Bool)

(declare-fun c!110343 () Bool)

(assert (=> b!1132268 (= e!644438 (ite c!110343 (t!35852 (toList!8057 (ite c!110183 lt!502672 lt!502664))) (ite c!110345 (Cons!24912 (h!26121 (toList!8057 (ite c!110183 lt!502672 lt!502664))) (t!35852 (toList!8057 (ite c!110183 lt!502672 lt!502664)))) Nil!24913)))))

(declare-fun b!1132269 () Bool)

(declare-fun e!644439 () List!24916)

(assert (=> b!1132269 (= e!644439 call!48792)))

(declare-fun b!1132270 () Bool)

(assert (=> b!1132270 (= c!110345 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 lt!502664))) (bvsgt (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 lt!502664)))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(assert (=> b!1132270 (= e!644439 e!644435)))

(declare-fun b!1132271 () Bool)

(declare-fun e!644436 () Bool)

(declare-fun lt!503025 () List!24916)

(assert (=> b!1132271 (= e!644436 (contains!6548 lt!503025 (tuple2!18103 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun d!131489 () Bool)

(assert (=> d!131489 e!644436))

(declare-fun res!756296 () Bool)

(assert (=> d!131489 (=> (not res!756296) (not e!644436))))

(assert (=> d!131489 (= res!756296 (isStrictlySorted!723 lt!503025))))

(assert (=> d!131489 (= lt!503025 e!644437)))

(declare-fun c!110344 () Bool)

(assert (=> d!131489 (= c!110344 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 lt!502664))) (bvslt (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 lt!502664)))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(assert (=> d!131489 (isStrictlySorted!723 (toList!8057 (ite c!110183 lt!502672 lt!502664)))))

(assert (=> d!131489 (= (insertStrictlySorted!398 (toList!8057 (ite c!110183 lt!502672 lt!502664)) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) lt!503025)))

(declare-fun b!1132264 () Bool)

(assert (=> b!1132264 (= e!644437 e!644439)))

(assert (=> b!1132264 (= c!110343 (and ((_ is Cons!24912) (toList!8057 (ite c!110183 lt!502672 lt!502664))) (= (_1!9061 (h!26121 (toList!8057 (ite c!110183 lt!502672 lt!502664)))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun bm!48791 () Bool)

(assert (=> bm!48791 (= call!48793 ($colon$colon!611 e!644438 (ite c!110344 (h!26121 (toList!8057 (ite c!110183 lt!502672 lt!502664))) (tuple2!18103 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))))

(declare-fun c!110346 () Bool)

(assert (=> bm!48791 (= c!110346 c!110344)))

(declare-fun b!1132272 () Bool)

(assert (=> b!1132272 (= e!644435 call!48794)))

(declare-fun b!1132273 () Bool)

(declare-fun res!756295 () Bool)

(assert (=> b!1132273 (=> (not res!756295) (not e!644436))))

(assert (=> b!1132273 (= res!756295 (containsKey!586 lt!503025 (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (= (and d!131489 c!110344) b!1132265))

(assert (= (and d!131489 (not c!110344)) b!1132264))

(assert (= (and b!1132264 c!110343) b!1132269))

(assert (= (and b!1132264 (not c!110343)) b!1132270))

(assert (= (and b!1132270 c!110345) b!1132267))

(assert (= (and b!1132270 (not c!110345)) b!1132272))

(assert (= (or b!1132267 b!1132272) bm!48789))

(assert (= (or b!1132269 bm!48789) bm!48790))

(assert (= (or b!1132265 bm!48790) bm!48791))

(assert (= (and bm!48791 c!110346) b!1132266))

(assert (= (and bm!48791 (not c!110346)) b!1132268))

(assert (= (and d!131489 res!756296) b!1132273))

(assert (= (and b!1132273 res!756295) b!1132271))

(declare-fun m!1045599 () Bool)

(assert (=> b!1132271 m!1045599))

(declare-fun m!1045601 () Bool)

(assert (=> b!1132266 m!1045601))

(declare-fun m!1045603 () Bool)

(assert (=> bm!48791 m!1045603))

(declare-fun m!1045605 () Bool)

(assert (=> b!1132273 m!1045605))

(declare-fun m!1045607 () Bool)

(assert (=> d!131489 m!1045607))

(declare-fun m!1045609 () Bool)

(assert (=> d!131489 m!1045609))

(assert (=> d!131281 d!131489))

(declare-fun e!644441 () Bool)

(declare-fun b!1132274 () Bool)

(assert (=> b!1132274 (= e!644441 (validKeyInArray!0 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132274 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1132275 () Bool)

(declare-fun e!644440 () ListLongMap!16083)

(assert (=> b!1132275 (= e!644440 (ListLongMap!16084 Nil!24913))))

(declare-fun b!1132276 () Bool)

(declare-fun e!644444 () Bool)

(declare-fun e!644443 () Bool)

(assert (=> b!1132276 (= e!644444 e!644443)))

(assert (=> b!1132276 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))))

(declare-fun res!756297 () Bool)

(declare-fun lt!503026 () ListLongMap!16083)

(assert (=> b!1132276 (= res!756297 (contains!6547 lt!503026 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132276 (=> (not res!756297) (not e!644443))))

(declare-fun b!1132277 () Bool)

(declare-fun lt!503028 () Unit!37021)

(declare-fun lt!503027 () Unit!37021)

(assert (=> b!1132277 (= lt!503028 lt!503027)))

(declare-fun lt!503029 () (_ BitVec 64))

(declare-fun lt!503030 () (_ BitVec 64))

(declare-fun lt!503031 () V!43083)

(declare-fun lt!503032 () ListLongMap!16083)

(assert (=> b!1132277 (not (contains!6547 (+!3420 lt!503032 (tuple2!18103 lt!503029 lt!503031)) lt!503030))))

(assert (=> b!1132277 (= lt!503027 (addStillNotContains!285 lt!503032 lt!503029 lt!503031 lt!503030))))

(assert (=> b!1132277 (= lt!503030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132277 (= lt!503031 (get!18084 (select (arr!35525 (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132277 (= lt!503029 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!48795 () ListLongMap!16083)

(assert (=> b!1132277 (= lt!503032 call!48795)))

(declare-fun e!644446 () ListLongMap!16083)

(assert (=> b!1132277 (= e!644446 (+!3420 call!48795 (tuple2!18103 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18084 (select (arr!35525 (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!131491 () Bool)

(declare-fun e!644442 () Bool)

(assert (=> d!131491 e!644442))

(declare-fun res!756299 () Bool)

(assert (=> d!131491 (=> (not res!756299) (not e!644442))))

(assert (=> d!131491 (= res!756299 (not (contains!6547 lt!503026 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131491 (= lt!503026 e!644440)))

(declare-fun c!110347 () Bool)

(assert (=> d!131491 (= c!110347 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))))

(assert (=> d!131491 (validMask!0 mask!1564)))

(assert (=> d!131491 (= (getCurrentListMapNoExtraKeys!4508 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)) (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!503026)))

(declare-fun e!644445 () Bool)

(declare-fun b!1132278 () Bool)

(assert (=> b!1132278 (= e!644445 (= lt!503026 (getCurrentListMapNoExtraKeys!4508 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)) (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1132279 () Bool)

(assert (=> b!1132279 (= e!644446 call!48795)))

(declare-fun b!1132280 () Bool)

(assert (=> b!1132280 (= e!644445 (isEmpty!976 lt!503026))))

(declare-fun b!1132281 () Bool)

(assert (=> b!1132281 (= e!644440 e!644446)))

(declare-fun c!110348 () Bool)

(assert (=> b!1132281 (= c!110348 (validKeyInArray!0 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1132282 () Bool)

(assert (=> b!1132282 (= e!644442 e!644444)))

(declare-fun c!110350 () Bool)

(assert (=> b!1132282 (= c!110350 e!644441)))

(declare-fun res!756300 () Bool)

(assert (=> b!1132282 (=> (not res!756300) (not e!644441))))

(assert (=> b!1132282 (= res!756300 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))))

(declare-fun bm!48792 () Bool)

(assert (=> bm!48792 (= call!48795 (getCurrentListMapNoExtraKeys!4508 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)) (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132283 () Bool)

(assert (=> b!1132283 (= e!644444 e!644445)))

(declare-fun c!110349 () Bool)

(assert (=> b!1132283 (= c!110349 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))))

(declare-fun b!1132284 () Bool)

(assert (=> b!1132284 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36063 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208)))))))

(assert (=> b!1132284 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36062 (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996)))))))

(assert (=> b!1132284 (= e!644443 (= (apply!990 lt!503026 (select (arr!35526 (array!73755 (store (arr!35526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36063 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18084 (select (arr!35525 (array!73753 (store (arr!35525 _values!996) i!673 (ValueCellFull!13524 (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36062 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2580 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132285 () Bool)

(declare-fun res!756298 () Bool)

(assert (=> b!1132285 (=> (not res!756298) (not e!644442))))

(assert (=> b!1132285 (= res!756298 (not (contains!6547 lt!503026 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!131491 c!110347) b!1132275))

(assert (= (and d!131491 (not c!110347)) b!1132281))

(assert (= (and b!1132281 c!110348) b!1132277))

(assert (= (and b!1132281 (not c!110348)) b!1132279))

(assert (= (or b!1132277 b!1132279) bm!48792))

(assert (= (and d!131491 res!756299) b!1132285))

(assert (= (and b!1132285 res!756298) b!1132282))

(assert (= (and b!1132282 res!756300) b!1132274))

(assert (= (and b!1132282 c!110350) b!1132276))

(assert (= (and b!1132282 (not c!110350)) b!1132283))

(assert (= (and b!1132276 res!756297) b!1132284))

(assert (= (and b!1132283 c!110349) b!1132278))

(assert (= (and b!1132283 (not c!110349)) b!1132280))

(declare-fun b_lambda!19001 () Bool)

(assert (=> (not b_lambda!19001) (not b!1132277)))

(assert (=> b!1132277 t!35851))

(declare-fun b_and!38723 () Bool)

(assert (= b_and!38721 (and (=> t!35851 result!18067) b_and!38723)))

(declare-fun b_lambda!19003 () Bool)

(assert (=> (not b_lambda!19003) (not b!1132284)))

(assert (=> b!1132284 t!35851))

(declare-fun b_and!38725 () Bool)

(assert (= b_and!38723 (and (=> t!35851 result!18067) b_and!38725)))

(declare-fun m!1045611 () Bool)

(assert (=> b!1132276 m!1045611))

(assert (=> b!1132276 m!1045611))

(declare-fun m!1045613 () Bool)

(assert (=> b!1132276 m!1045613))

(declare-fun m!1045615 () Bool)

(assert (=> bm!48792 m!1045615))

(assert (=> b!1132281 m!1045611))

(assert (=> b!1132281 m!1045611))

(declare-fun m!1045617 () Bool)

(assert (=> b!1132281 m!1045617))

(declare-fun m!1045619 () Bool)

(assert (=> b!1132285 m!1045619))

(declare-fun m!1045621 () Bool)

(assert (=> d!131491 m!1045621))

(assert (=> d!131491 m!1044703))

(declare-fun m!1045623 () Bool)

(assert (=> b!1132280 m!1045623))

(assert (=> b!1132274 m!1045611))

(assert (=> b!1132274 m!1045611))

(assert (=> b!1132274 m!1045617))

(declare-fun m!1045625 () Bool)

(assert (=> b!1132277 m!1045625))

(declare-fun m!1045627 () Bool)

(assert (=> b!1132277 m!1045627))

(assert (=> b!1132277 m!1045625))

(assert (=> b!1132277 m!1044681))

(declare-fun m!1045629 () Bool)

(assert (=> b!1132277 m!1045629))

(declare-fun m!1045631 () Bool)

(assert (=> b!1132277 m!1045631))

(declare-fun m!1045633 () Bool)

(assert (=> b!1132277 m!1045633))

(assert (=> b!1132277 m!1044681))

(assert (=> b!1132277 m!1045611))

(assert (=> b!1132277 m!1045633))

(declare-fun m!1045635 () Bool)

(assert (=> b!1132277 m!1045635))

(assert (=> b!1132278 m!1045615))

(assert (=> b!1132284 m!1044681))

(assert (=> b!1132284 m!1045611))

(declare-fun m!1045637 () Bool)

(assert (=> b!1132284 m!1045637))

(assert (=> b!1132284 m!1045625))

(assert (=> b!1132284 m!1045625))

(assert (=> b!1132284 m!1044681))

(assert (=> b!1132284 m!1045629))

(assert (=> b!1132284 m!1045611))

(assert (=> bm!48758 d!131491))

(declare-fun c!110351 () Bool)

(declare-fun d!131493 () Bool)

(assert (=> d!131493 (= c!110351 (and ((_ is Cons!24912) (toList!8057 lt!502770)) (= (_1!9061 (h!26121 (toList!8057 lt!502770))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun e!644447 () Option!682)

(assert (=> d!131493 (= (getValueByKey!631 (toList!8057 lt!502770) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) e!644447)))

(declare-fun e!644448 () Option!682)

(declare-fun b!1132288 () Bool)

(assert (=> b!1132288 (= e!644448 (getValueByKey!631 (t!35852 (toList!8057 lt!502770)) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1132289 () Bool)

(assert (=> b!1132289 (= e!644448 None!680)))

(declare-fun b!1132286 () Bool)

(assert (=> b!1132286 (= e!644447 (Some!681 (_2!9061 (h!26121 (toList!8057 lt!502770)))))))

(declare-fun b!1132287 () Bool)

(assert (=> b!1132287 (= e!644447 e!644448)))

(declare-fun c!110352 () Bool)

(assert (=> b!1132287 (= c!110352 (and ((_ is Cons!24912) (toList!8057 lt!502770)) (not (= (_1!9061 (h!26121 (toList!8057 lt!502770))) (_1!9061 (ite c!110183 (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110185 (tuple2!18103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))))

(assert (= (and d!131493 c!110351) b!1132286))

(assert (= (and d!131493 (not c!110351)) b!1132287))

(assert (= (and b!1132287 c!110352) b!1132288))

(assert (= (and b!1132287 (not c!110352)) b!1132289))

(declare-fun m!1045639 () Bool)

(assert (=> b!1132288 m!1045639))

(assert (=> b!1131847 d!131493))

(declare-fun d!131495 () Bool)

(assert (=> d!131495 (= (isEmpty!976 lt!502809) (isEmpty!978 (toList!8057 lt!502809)))))

(declare-fun bs!32972 () Bool)

(assert (= bs!32972 d!131495))

(declare-fun m!1045641 () Bool)

(assert (=> bs!32972 m!1045641))

(assert (=> b!1131909 d!131495))

(declare-fun b!1132290 () Bool)

(declare-fun e!644449 () Bool)

(declare-fun e!644450 () Bool)

(assert (=> b!1132290 (= e!644449 e!644450)))

(declare-fun lt!503035 () (_ BitVec 64))

(assert (=> b!1132290 (= lt!503035 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!503033 () Unit!37021)

(assert (=> b!1132290 (= lt!503033 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!503035 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1132290 (arrayContainsKey!0 _keys!1208 lt!503035 #b00000000000000000000000000000000)))

(declare-fun lt!503034 () Unit!37021)

(assert (=> b!1132290 (= lt!503034 lt!503033)))

(declare-fun res!756302 () Bool)

(assert (=> b!1132290 (= res!756302 (= (seekEntryOrOpen!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1208 mask!1564) (Found!9922 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1132290 (=> (not res!756302) (not e!644450))))

(declare-fun bm!48793 () Bool)

(declare-fun call!48796 () Bool)

(assert (=> bm!48793 (= call!48796 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1132291 () Bool)

(assert (=> b!1132291 (= e!644449 call!48796)))

(declare-fun d!131497 () Bool)

(declare-fun res!756301 () Bool)

(declare-fun e!644451 () Bool)

(assert (=> d!131497 (=> res!756301 e!644451)))

(assert (=> d!131497 (= res!756301 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36063 _keys!1208)))))

(assert (=> d!131497 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564) e!644451)))

(declare-fun b!1132292 () Bool)

(assert (=> b!1132292 (= e!644451 e!644449)))

(declare-fun c!110353 () Bool)

(assert (=> b!1132292 (= c!110353 (validKeyInArray!0 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1132293 () Bool)

(assert (=> b!1132293 (= e!644450 call!48796)))

(assert (= (and d!131497 (not res!756301)) b!1132292))

(assert (= (and b!1132292 c!110353) b!1132290))

(assert (= (and b!1132292 (not c!110353)) b!1132291))

(assert (= (and b!1132290 res!756302) b!1132293))

(assert (= (or b!1132293 b!1132291) bm!48793))

(assert (=> b!1132290 m!1045173))

(declare-fun m!1045643 () Bool)

(assert (=> b!1132290 m!1045643))

(declare-fun m!1045645 () Bool)

(assert (=> b!1132290 m!1045645))

(assert (=> b!1132290 m!1045173))

(declare-fun m!1045647 () Bool)

(assert (=> b!1132290 m!1045647))

(declare-fun m!1045649 () Bool)

(assert (=> bm!48793 m!1045649))

(assert (=> b!1132292 m!1045173))

(assert (=> b!1132292 m!1045173))

(assert (=> b!1132292 m!1045581))

(assert (=> bm!48766 d!131497))

(assert (=> b!1131907 d!131437))

(declare-fun d!131499 () Bool)

(assert (=> d!131499 (= (apply!990 lt!502798 (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18087 (getValueByKey!631 (toList!8057 lt!502798) (select (arr!35526 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!32973 () Bool)

(assert (= bs!32973 d!131499))

(assert (=> bs!32973 m!1044797))

(assert (=> bs!32973 m!1045093))

(assert (=> bs!32973 m!1045093))

(declare-fun m!1045651 () Bool)

(assert (=> bs!32973 m!1045651))

(assert (=> b!1131898 d!131499))

(assert (=> b!1131898 d!131455))

(assert (=> bm!48763 d!131393))

(assert (=> b!1131838 d!131339))

(declare-fun d!131501 () Bool)

(declare-fun e!644452 () Bool)

(assert (=> d!131501 e!644452))

(declare-fun res!756303 () Bool)

(assert (=> d!131501 (=> res!756303 e!644452)))

(declare-fun lt!503036 () Bool)

(assert (=> d!131501 (= res!756303 (not lt!503036))))

(declare-fun lt!503037 () Bool)

(assert (=> d!131501 (= lt!503036 lt!503037)))

(declare-fun lt!503038 () Unit!37021)

(declare-fun e!644453 () Unit!37021)

(assert (=> d!131501 (= lt!503038 e!644453)))

(declare-fun c!110354 () Bool)

(assert (=> d!131501 (= c!110354 lt!503037)))

(assert (=> d!131501 (= lt!503037 (containsKey!586 (toList!8057 lt!502809) (select (arr!35526 lt!502669) from!1455)))))

(assert (=> d!131501 (= (contains!6547 lt!502809 (select (arr!35526 lt!502669) from!1455)) lt!503036)))

(declare-fun b!1132294 () Bool)

(declare-fun lt!503039 () Unit!37021)

(assert (=> b!1132294 (= e!644453 lt!503039)))

(assert (=> b!1132294 (= lt!503039 (lemmaContainsKeyImpliesGetValueByKeyDefined!415 (toList!8057 lt!502809) (select (arr!35526 lt!502669) from!1455)))))

(assert (=> b!1132294 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) (select (arr!35526 lt!502669) from!1455)))))

(declare-fun b!1132295 () Bool)

(declare-fun Unit!37048 () Unit!37021)

(assert (=> b!1132295 (= e!644453 Unit!37048)))

(declare-fun b!1132296 () Bool)

(assert (=> b!1132296 (= e!644452 (isDefined!455 (getValueByKey!631 (toList!8057 lt!502809) (select (arr!35526 lt!502669) from!1455))))))

(assert (= (and d!131501 c!110354) b!1132294))

(assert (= (and d!131501 (not c!110354)) b!1132295))

(assert (= (and d!131501 (not res!756303)) b!1132296))

(assert (=> d!131501 m!1044929))

(declare-fun m!1045653 () Bool)

(assert (=> d!131501 m!1045653))

(assert (=> b!1132294 m!1044929))

(declare-fun m!1045655 () Bool)

(assert (=> b!1132294 m!1045655))

(assert (=> b!1132294 m!1044929))

(assert (=> b!1132294 m!1045425))

(assert (=> b!1132294 m!1045425))

(declare-fun m!1045657 () Bool)

(assert (=> b!1132294 m!1045657))

(assert (=> b!1132296 m!1044929))

(assert (=> b!1132296 m!1045425))

(assert (=> b!1132296 m!1045425))

(assert (=> b!1132296 m!1045657))

(assert (=> b!1131905 d!131501))

(declare-fun mapNonEmpty!44525 () Bool)

(declare-fun mapRes!44525 () Bool)

(declare-fun tp!84526 () Bool)

(declare-fun e!644454 () Bool)

(assert (=> mapNonEmpty!44525 (= mapRes!44525 (and tp!84526 e!644454))))

(declare-fun mapKey!44525 () (_ BitVec 32))

(declare-fun mapValue!44525 () ValueCell!13524)

(declare-fun mapRest!44525 () (Array (_ BitVec 32) ValueCell!13524))

(assert (=> mapNonEmpty!44525 (= mapRest!44524 (store mapRest!44525 mapKey!44525 mapValue!44525))))

(declare-fun condMapEmpty!44525 () Bool)

(declare-fun mapDefault!44525 () ValueCell!13524)

(assert (=> mapNonEmpty!44524 (= condMapEmpty!44525 (= mapRest!44524 ((as const (Array (_ BitVec 32) ValueCell!13524)) mapDefault!44525)))))

(declare-fun e!644455 () Bool)

(assert (=> mapNonEmpty!44524 (= tp!84525 (and e!644455 mapRes!44525))))

(declare-fun mapIsEmpty!44525 () Bool)

(assert (=> mapIsEmpty!44525 mapRes!44525))

(declare-fun b!1132297 () Bool)

(assert (=> b!1132297 (= e!644454 tp_is_empty!28467)))

(declare-fun b!1132298 () Bool)

(assert (=> b!1132298 (= e!644455 tp_is_empty!28467)))

(assert (= (and mapNonEmpty!44524 condMapEmpty!44525) mapIsEmpty!44525))

(assert (= (and mapNonEmpty!44524 (not condMapEmpty!44525)) mapNonEmpty!44525))

(assert (= (and mapNonEmpty!44525 ((_ is ValueCellFull!13524) mapValue!44525)) b!1132297))

(assert (= (and mapNonEmpty!44524 ((_ is ValueCellFull!13524) mapDefault!44525)) b!1132298))

(declare-fun m!1045659 () Bool)

(assert (=> mapNonEmpty!44525 m!1045659))

(declare-fun b_lambda!19005 () Bool)

(assert (= b_lambda!18985 (or (and start!98272 b_free!23937) b_lambda!19005)))

(declare-fun b_lambda!19007 () Bool)

(assert (= b_lambda!18999 (or (and start!98272 b_free!23937) b_lambda!19007)))

(declare-fun b_lambda!19009 () Bool)

(assert (= b_lambda!18989 (or (and start!98272 b_free!23937) b_lambda!19009)))

(declare-fun b_lambda!19011 () Bool)

(assert (= b_lambda!18983 (or (and start!98272 b_free!23937) b_lambda!19011)))

(declare-fun b_lambda!19013 () Bool)

(assert (= b_lambda!18993 (or (and start!98272 b_free!23937) b_lambda!19013)))

(declare-fun b_lambda!19015 () Bool)

(assert (= b_lambda!18991 (or (and start!98272 b_free!23937) b_lambda!19015)))

(declare-fun b_lambda!19017 () Bool)

(assert (= b_lambda!19001 (or (and start!98272 b_free!23937) b_lambda!19017)))

(declare-fun b_lambda!19019 () Bool)

(assert (= b_lambda!18995 (or (and start!98272 b_free!23937) b_lambda!19019)))

(declare-fun b_lambda!19021 () Bool)

(assert (= b_lambda!18997 (or (and start!98272 b_free!23937) b_lambda!19021)))

(declare-fun b_lambda!19023 () Bool)

(assert (= b_lambda!18987 (or (and start!98272 b_free!23937) b_lambda!19023)))

(declare-fun b_lambda!19025 () Bool)

(assert (= b_lambda!19003 (or (and start!98272 b_free!23937) b_lambda!19025)))

(check-sat (not b_lambda!18975) (not b!1132006) tp_is_empty!28467 (not d!131321) (not b!1132281) (not b_lambda!19015) (not bm!48791) (not d!131377) (not b!1131996) (not d!131483) (not bm!48786) (not d!131451) (not b!1132011) (not b!1132026) (not b!1132277) (not d!131471) (not b_lambda!19025) (not bm!48771) (not d!131479) (not b!1132250) (not b!1132271) (not b!1132252) (not d!131311) (not b!1131964) (not b!1132211) (not b!1132143) (not d!131315) (not d!131415) (not b!1132000) (not b!1132170) (not d!131439) (not b!1132197) (not b!1132223) (not d!131489) (not d!131469) (not d!131385) (not bm!48780) (not b!1132210) (not b!1132028) (not d!131501) (not b_lambda!18967) (not b!1132071) (not b!1132002) (not b!1132153) (not d!131387) (not b!1131939) (not b!1132047) (not d!131307) (not d!131495) (not b!1132010) (not b!1132288) (not b!1132061) (not b!1132254) (not b!1132167) (not b!1132168) (not d!131407) (not b!1131970) (not d!131421) (not b!1132003) (not d!131365) (not b!1131990) (not d!131375) (not b!1132284) (not bm!48769) (not bm!48792) (not b!1132292) (not b!1132138) (not b!1132195) (not d!131453) (not b!1131973) (not b!1132260) (not b!1132249) (not d!131323) (not d!131333) (not d!131445) (not b!1132145) (not b!1131981) (not b!1132070) (not b!1132215) (not d!131363) (not b!1132016) (not b!1132273) (not b!1132156) (not b!1132229) (not b!1132184) (not d!131351) (not b!1132054) (not b_next!23937) (not b!1131980) (not b!1131967) (not d!131435) (not bm!48768) (not b!1132075) (not b_lambda!19021) (not b!1132263) (not b_lambda!19019) (not b!1132233) (not b!1132204) (not b!1132154) (not b!1132022) (not b!1132069) (not b!1132025) (not d!131371) (not b!1132164) (not d!131317) (not b!1132108) (not b!1132190) (not b!1132008) (not b_lambda!18979) (not b!1132290) (not b!1131988) (not b_lambda!19011) (not b!1132037) (not d!131425) (not d!131325) (not d!131461) (not d!131427) (not b!1132220) (not b!1132224) (not b!1132200) (not d!131457) (not b!1132257) (not b!1132231) b_and!38725 (not d!131329) (not d!131423) (not b!1132217) (not b!1132160) (not b!1132039) (not b!1131998) (not b_lambda!19013) (not b!1132041) (not b!1132147) (not b!1131986) (not b!1132214) (not b!1132171) (not d!131433) (not b_lambda!19009) (not bm!48770) (not b!1131963) (not b!1132262) (not b!1131999) (not b!1132186) (not b_lambda!18965) (not b!1132162) (not bm!48785) (not b!1132019) (not bm!48787) (not b!1132057) (not d!131417) (not d!131477) (not d!131459) (not mapNonEmpty!44525) (not b!1132194) (not d!131499) (not b!1132255) (not b!1132294) (not b!1132226) (not b_lambda!18977) (not b!1132073) (not b!1132245) (not d!131467) (not b!1132188) (not b!1132181) (not b!1132014) (not b_lambda!18945) (not d!131331) (not d!131391) (not d!131475) (not b!1132082) (not b_lambda!19007) (not b!1131989) (not b!1132056) (not d!131401) (not b!1132246) (not b!1132266) (not b!1132166) (not b!1132206) (not b!1132084) (not d!131405) (not b!1131966) (not b!1131975) (not b!1132114) (not b!1131995) (not d!131413) (not bm!48788) (not b!1132081) (not b!1132187) (not b_lambda!18969) (not b!1132078) (not b!1132216) (not b!1132033) (not d!131395) (not b_lambda!18973) (not b!1131992) (not b!1132066) (not d!131369) (not b!1132064) (not b!1132278) (not b!1132007) (not b!1132209) (not b!1132060) (not b!1132077) (not b!1132280) (not d!131487) (not b!1132159) (not d!131465) (not d!131361) (not d!131381) (not d!131347) (not b!1131959) (not b!1132296) (not d!131345) (not b!1131993) (not d!131449) (not b!1132183) (not b!1131941) (not d!131337) (not b!1132274) (not b_lambda!18981) (not d!131399) (not b!1132191) (not b!1131968) (not b!1132034) (not b!1132208) (not b!1132015) (not b!1132012) (not b!1132031) (not d!131393) (not b!1132213) (not d!131463) (not b!1132180) (not b!1132029) (not d!131349) (not b_lambda!19023) (not b!1132099) (not b_lambda!19005) (not b!1132285) (not d!131437) (not b!1132103) (not d!131335) (not b!1132053) (not d!131319) (not b_lambda!19017) (not d!131313) (not b!1132115) (not d!131491) (not b!1131947) (not b!1132105) (not b!1132058) (not b!1131987) (not d!131411) (not b!1132276) (not b!1132068) (not b!1132074) (not d!131389) (not b!1132009) (not b!1132172) (not bm!48767) (not b!1132157) (not b!1131972) (not d!131443) (not d!131341) (not b!1132221) (not b!1132065) (not b!1132163) (not b!1132177) (not bm!48793) (not b_lambda!18971))
(check-sat b_and!38725 (not b_next!23937))
