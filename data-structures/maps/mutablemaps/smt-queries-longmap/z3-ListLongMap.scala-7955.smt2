; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98608 () Bool)

(assert start!98608)

(declare-fun b_free!24177 () Bool)

(declare-fun b_next!24177 () Bool)

(assert (=> start!98608 (= b_free!24177 (not b_next!24177))))

(declare-fun tp!85242 () Bool)

(declare-fun b_and!39217 () Bool)

(assert (=> start!98608 (= tp!85242 b_and!39217)))

(declare-fun res!761730 () Bool)

(declare-fun e!650339 () Bool)

(assert (=> start!98608 (=> (not res!761730) (not e!650339))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74224 0))(
  ( (array!74225 (arr!35759 (Array (_ BitVec 32) (_ BitVec 64))) (size!36296 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74224)

(assert (=> start!98608 (= res!761730 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36296 _keys!1208))))))

(assert (=> start!98608 e!650339))

(declare-fun tp_is_empty!28707 () Bool)

(assert (=> start!98608 tp_is_empty!28707))

(declare-fun array_inv!27278 (array!74224) Bool)

(assert (=> start!98608 (array_inv!27278 _keys!1208)))

(assert (=> start!98608 true))

(assert (=> start!98608 tp!85242))

(declare-datatypes ((V!43403 0))(
  ( (V!43404 (val!14410 Int)) )
))
(declare-datatypes ((ValueCell!13644 0))(
  ( (ValueCellFull!13644 (v!17048 V!43403)) (EmptyCell!13644) )
))
(declare-datatypes ((array!74226 0))(
  ( (array!74227 (arr!35760 (Array (_ BitVec 32) ValueCell!13644)) (size!36297 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74226)

(declare-fun e!650342 () Bool)

(declare-fun array_inv!27279 (array!74226) Bool)

(assert (=> start!98608 (and (array_inv!27279 _values!996) e!650342)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!650334 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1143121 () Bool)

(declare-fun lt!509721 () Bool)

(assert (=> b!1143121 (= e!650334 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509721) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1143122 () Bool)

(declare-fun e!650341 () Bool)

(assert (=> b!1143122 (= e!650341 tp_is_empty!28707)))

(declare-fun b!1143123 () Bool)

(declare-datatypes ((Unit!37437 0))(
  ( (Unit!37438) )
))
(declare-fun e!650344 () Unit!37437)

(declare-fun Unit!37439 () Unit!37437)

(assert (=> b!1143123 (= e!650344 Unit!37439)))

(assert (=> b!1143123 (= lt!509721 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112403 () Bool)

(assert (=> b!1143123 (= c!112403 (and (not lt!509721) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509724 () Unit!37437)

(declare-fun e!650333 () Unit!37437)

(assert (=> b!1143123 (= lt!509724 e!650333)))

(declare-fun zeroValue!944 () V!43403)

(declare-fun lt!509733 () Unit!37437)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43403)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!406 (array!74224 array!74226 (_ BitVec 32) (_ BitVec 32) V!43403 V!43403 (_ BitVec 64) (_ BitVec 32) Int) Unit!37437)

(assert (=> b!1143123 (= lt!509733 (lemmaListMapContainsThenArrayContainsFrom!406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112399 () Bool)

(assert (=> b!1143123 (= c!112399 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761728 () Bool)

(assert (=> b!1143123 (= res!761728 e!650334)))

(declare-fun e!650345 () Bool)

(assert (=> b!1143123 (=> (not res!761728) (not e!650345))))

(assert (=> b!1143123 e!650345))

(declare-fun lt!509723 () Unit!37437)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74224 (_ BitVec 32) (_ BitVec 32)) Unit!37437)

(assert (=> b!1143123 (= lt!509723 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25125 0))(
  ( (Nil!25122) (Cons!25121 (h!26330 (_ BitVec 64)) (t!36301 List!25125)) )
))
(declare-fun arrayNoDuplicates!0 (array!74224 (_ BitVec 32) List!25125) Bool)

(assert (=> b!1143123 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25122)))

(declare-fun lt!509732 () Unit!37437)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74224 (_ BitVec 64) (_ BitVec 32) List!25125) Unit!37437)

(assert (=> b!1143123 (= lt!509732 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25122))))

(assert (=> b!1143123 false))

(declare-fun b!1143124 () Bool)

(declare-fun e!650331 () Bool)

(assert (=> b!1143124 (= e!650331 true)))

(declare-fun lt!509730 () V!43403)

(declare-datatypes ((tuple2!18326 0))(
  ( (tuple2!18327 (_1!9173 (_ BitVec 64)) (_2!9173 V!43403)) )
))
(declare-datatypes ((List!25126 0))(
  ( (Nil!25123) (Cons!25122 (h!26331 tuple2!18326) (t!36302 List!25126)) )
))
(declare-datatypes ((ListLongMap!16307 0))(
  ( (ListLongMap!16308 (toList!8169 List!25126)) )
))
(declare-fun lt!509729 () ListLongMap!16307)

(declare-fun -!1263 (ListLongMap!16307 (_ BitVec 64)) ListLongMap!16307)

(declare-fun +!3513 (ListLongMap!16307 tuple2!18326) ListLongMap!16307)

(assert (=> b!1143124 (= (-!1263 (+!3513 lt!509729 (tuple2!18327 (select (arr!35759 _keys!1208) from!1455) lt!509730)) (select (arr!35759 _keys!1208) from!1455)) lt!509729)))

(declare-fun lt!509713 () Unit!37437)

(declare-fun addThenRemoveForNewKeyIsSame!118 (ListLongMap!16307 (_ BitVec 64) V!43403) Unit!37437)

(assert (=> b!1143124 (= lt!509713 (addThenRemoveForNewKeyIsSame!118 lt!509729 (select (arr!35759 _keys!1208) from!1455) lt!509730))))

(declare-fun lt!509731 () V!43403)

(declare-fun get!18198 (ValueCell!13644 V!43403) V!43403)

(assert (=> b!1143124 (= lt!509730 (get!18198 (select (arr!35760 _values!996) from!1455) lt!509731))))

(declare-fun lt!509716 () Unit!37437)

(assert (=> b!1143124 (= lt!509716 e!650344)))

(declare-fun c!112400 () Bool)

(declare-fun contains!6672 (ListLongMap!16307 (_ BitVec 64)) Bool)

(assert (=> b!1143124 (= c!112400 (contains!6672 lt!509729 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4612 (array!74224 array!74226 (_ BitVec 32) (_ BitVec 32) V!43403 V!43403 (_ BitVec 32) Int) ListLongMap!16307)

(assert (=> b!1143124 (= lt!509729 (getCurrentListMapNoExtraKeys!4612 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143125 () Bool)

(declare-fun res!761731 () Bool)

(assert (=> b!1143125 (=> (not res!761731) (not e!650339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74224 (_ BitVec 32)) Bool)

(assert (=> b!1143125 (= res!761731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51662 () Bool)

(declare-fun call!51670 () ListLongMap!16307)

(assert (=> bm!51662 (= call!51670 (getCurrentListMapNoExtraKeys!4612 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143126 () Bool)

(declare-fun e!650336 () Unit!37437)

(declare-fun e!650335 () Unit!37437)

(assert (=> b!1143126 (= e!650336 e!650335)))

(declare-fun c!112401 () Bool)

(assert (=> b!1143126 (= c!112401 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509721))))

(declare-fun b!1143127 () Bool)

(declare-fun Unit!37440 () Unit!37437)

(assert (=> b!1143127 (= e!650344 Unit!37440)))

(declare-fun mapNonEmpty!44885 () Bool)

(declare-fun mapRes!44885 () Bool)

(declare-fun tp!85243 () Bool)

(declare-fun e!650346 () Bool)

(assert (=> mapNonEmpty!44885 (= mapRes!44885 (and tp!85243 e!650346))))

(declare-fun mapRest!44885 () (Array (_ BitVec 32) ValueCell!13644))

(declare-fun mapValue!44885 () ValueCell!13644)

(declare-fun mapKey!44885 () (_ BitVec 32))

(assert (=> mapNonEmpty!44885 (= (arr!35760 _values!996) (store mapRest!44885 mapKey!44885 mapValue!44885))))

(declare-fun b!1143128 () Bool)

(declare-fun res!761729 () Bool)

(assert (=> b!1143128 (=> (not res!761729) (not e!650339))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143128 (= res!761729 (= (select (arr!35759 _keys!1208) i!673) k0!934))))

(declare-fun bm!51663 () Bool)

(declare-fun call!51667 () ListLongMap!16307)

(declare-fun lt!509725 () array!74224)

(declare-fun lt!509718 () array!74226)

(assert (=> bm!51663 (= call!51667 (getCurrentListMapNoExtraKeys!4612 lt!509725 lt!509718 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44885 () Bool)

(assert (=> mapIsEmpty!44885 mapRes!44885))

(declare-fun b!1143129 () Bool)

(declare-fun call!51666 () Bool)

(assert (=> b!1143129 call!51666))

(declare-fun lt!509720 () Unit!37437)

(declare-fun call!51665 () Unit!37437)

(assert (=> b!1143129 (= lt!509720 call!51665)))

(assert (=> b!1143129 (= e!650335 lt!509720)))

(declare-fun b!1143130 () Bool)

(assert (=> b!1143130 (= e!650342 (and e!650341 mapRes!44885))))

(declare-fun condMapEmpty!44885 () Bool)

(declare-fun mapDefault!44885 () ValueCell!13644)

(assert (=> b!1143130 (= condMapEmpty!44885 (= (arr!35760 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13644)) mapDefault!44885)))))

(declare-fun b!1143131 () Bool)

(declare-fun e!650337 () Bool)

(assert (=> b!1143131 (= e!650337 e!650331)))

(declare-fun res!761726 () Bool)

(assert (=> b!1143131 (=> res!761726 e!650331)))

(assert (=> b!1143131 (= res!761726 (not (= (select (arr!35759 _keys!1208) from!1455) k0!934)))))

(declare-fun e!650343 () Bool)

(assert (=> b!1143131 e!650343))

(declare-fun c!112404 () Bool)

(assert (=> b!1143131 (= c!112404 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509728 () Unit!37437)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!518 (array!74224 array!74226 (_ BitVec 32) (_ BitVec 32) V!43403 V!43403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37437)

(assert (=> b!1143131 (= lt!509728 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!518 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143132 () Bool)

(assert (=> b!1143132 (= e!650346 tp_is_empty!28707)))

(declare-fun b!1143133 () Bool)

(declare-fun res!761732 () Bool)

(assert (=> b!1143133 (=> (not res!761732) (not e!650339))))

(assert (=> b!1143133 (= res!761732 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36296 _keys!1208))))))

(declare-fun b!1143134 () Bool)

(declare-fun Unit!37441 () Unit!37437)

(assert (=> b!1143134 (= e!650335 Unit!37441)))

(declare-fun b!1143135 () Bool)

(declare-fun e!650332 () Bool)

(declare-fun e!650340 () Bool)

(assert (=> b!1143135 (= e!650332 (not e!650340))))

(declare-fun res!761734 () Bool)

(assert (=> b!1143135 (=> res!761734 e!650340)))

(assert (=> b!1143135 (= res!761734 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143135 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!509715 () Unit!37437)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74224 (_ BitVec 64) (_ BitVec 32)) Unit!37437)

(assert (=> b!1143135 (= lt!509715 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!51664 () Bool)

(declare-fun c!112402 () Bool)

(declare-fun call!51669 () ListLongMap!16307)

(assert (=> bm!51664 (= call!51669 (+!3513 lt!509729 (ite (or c!112403 c!112402) (tuple2!18327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!51668 () Unit!37437)

(declare-fun bm!51665 () Bool)

(declare-fun addStillContains!811 (ListLongMap!16307 (_ BitVec 64) V!43403 (_ BitVec 64)) Unit!37437)

(assert (=> bm!51665 (= call!51668 (addStillContains!811 lt!509729 (ite (or c!112403 c!112402) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112403 c!112402) zeroValue!944 minValue!944) k0!934))))

(declare-fun lt!509717 () ListLongMap!16307)

(declare-fun call!51671 () ListLongMap!16307)

(declare-fun call!51672 () Bool)

(declare-fun bm!51666 () Bool)

(assert (=> bm!51666 (= call!51672 (contains!6672 (ite c!112403 lt!509717 call!51671) k0!934))))

(declare-fun b!1143136 () Bool)

(assert (=> b!1143136 (contains!6672 (+!3513 lt!509717 (tuple2!18327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!509719 () Unit!37437)

(assert (=> b!1143136 (= lt!509719 (addStillContains!811 lt!509717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1143136 call!51672))

(assert (=> b!1143136 (= lt!509717 call!51669)))

(declare-fun lt!509726 () Unit!37437)

(assert (=> b!1143136 (= lt!509726 call!51668)))

(assert (=> b!1143136 (= e!650333 lt!509719)))

(declare-fun b!1143137 () Bool)

(assert (=> b!1143137 (= e!650343 (= call!51667 call!51670))))

(declare-fun bm!51667 () Bool)

(assert (=> bm!51667 (= call!51666 call!51672)))

(declare-fun b!1143138 () Bool)

(declare-fun res!761727 () Bool)

(assert (=> b!1143138 (=> (not res!761727) (not e!650339))))

(assert (=> b!1143138 (= res!761727 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25122))))

(declare-fun bm!51668 () Bool)

(assert (=> bm!51668 (= call!51665 call!51668)))

(declare-fun b!1143139 () Bool)

(assert (=> b!1143139 (= e!650339 e!650332)))

(declare-fun res!761733 () Bool)

(assert (=> b!1143139 (=> (not res!761733) (not e!650332))))

(assert (=> b!1143139 (= res!761733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509725 mask!1564))))

(assert (=> b!1143139 (= lt!509725 (array!74225 (store (arr!35759 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36296 _keys!1208)))))

(declare-fun b!1143140 () Bool)

(assert (=> b!1143140 (= c!112402 (and (not lt!509721) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1143140 (= e!650333 e!650336)))

(declare-fun b!1143141 () Bool)

(assert (=> b!1143141 (= e!650334 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143142 () Bool)

(declare-fun res!761736 () Bool)

(assert (=> b!1143142 (=> (not res!761736) (not e!650332))))

(assert (=> b!1143142 (= res!761736 (arrayNoDuplicates!0 lt!509725 #b00000000000000000000000000000000 Nil!25122))))

(declare-fun b!1143143 () Bool)

(assert (=> b!1143143 (= e!650340 e!650337)))

(declare-fun res!761725 () Bool)

(assert (=> b!1143143 (=> res!761725 e!650337)))

(assert (=> b!1143143 (= res!761725 (not (= from!1455 i!673)))))

(declare-fun lt!509722 () ListLongMap!16307)

(assert (=> b!1143143 (= lt!509722 (getCurrentListMapNoExtraKeys!4612 lt!509725 lt!509718 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1143143 (= lt!509718 (array!74227 (store (arr!35760 _values!996) i!673 (ValueCellFull!13644 lt!509731)) (size!36297 _values!996)))))

(declare-fun dynLambda!2659 (Int (_ BitVec 64)) V!43403)

(assert (=> b!1143143 (= lt!509731 (dynLambda!2659 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509714 () ListLongMap!16307)

(assert (=> b!1143143 (= lt!509714 (getCurrentListMapNoExtraKeys!4612 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1143144 () Bool)

(declare-fun res!761735 () Bool)

(assert (=> b!1143144 (=> (not res!761735) (not e!650339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1143144 (= res!761735 (validMask!0 mask!1564))))

(declare-fun b!1143145 () Bool)

(declare-fun res!761738 () Bool)

(assert (=> b!1143145 (=> (not res!761738) (not e!650339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143145 (= res!761738 (validKeyInArray!0 k0!934))))

(declare-fun bm!51669 () Bool)

(assert (=> bm!51669 (= call!51671 call!51669)))

(declare-fun b!1143146 () Bool)

(declare-fun lt!509727 () Unit!37437)

(assert (=> b!1143146 (= e!650336 lt!509727)))

(assert (=> b!1143146 (= lt!509727 call!51665)))

(assert (=> b!1143146 call!51666))

(declare-fun b!1143147 () Bool)

(assert (=> b!1143147 (= e!650345 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143148 () Bool)

(assert (=> b!1143148 (= e!650343 (= call!51667 (-!1263 call!51670 k0!934)))))

(declare-fun b!1143149 () Bool)

(declare-fun res!761737 () Bool)

(assert (=> b!1143149 (=> (not res!761737) (not e!650339))))

(assert (=> b!1143149 (= res!761737 (and (= (size!36297 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36296 _keys!1208) (size!36297 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!98608 res!761730) b!1143144))

(assert (= (and b!1143144 res!761735) b!1143149))

(assert (= (and b!1143149 res!761737) b!1143125))

(assert (= (and b!1143125 res!761731) b!1143138))

(assert (= (and b!1143138 res!761727) b!1143133))

(assert (= (and b!1143133 res!761732) b!1143145))

(assert (= (and b!1143145 res!761738) b!1143128))

(assert (= (and b!1143128 res!761729) b!1143139))

(assert (= (and b!1143139 res!761733) b!1143142))

(assert (= (and b!1143142 res!761736) b!1143135))

(assert (= (and b!1143135 (not res!761734)) b!1143143))

(assert (= (and b!1143143 (not res!761725)) b!1143131))

(assert (= (and b!1143131 c!112404) b!1143148))

(assert (= (and b!1143131 (not c!112404)) b!1143137))

(assert (= (or b!1143148 b!1143137) bm!51663))

(assert (= (or b!1143148 b!1143137) bm!51662))

(assert (= (and b!1143131 (not res!761726)) b!1143124))

(assert (= (and b!1143124 c!112400) b!1143123))

(assert (= (and b!1143124 (not c!112400)) b!1143127))

(assert (= (and b!1143123 c!112403) b!1143136))

(assert (= (and b!1143123 (not c!112403)) b!1143140))

(assert (= (and b!1143140 c!112402) b!1143146))

(assert (= (and b!1143140 (not c!112402)) b!1143126))

(assert (= (and b!1143126 c!112401) b!1143129))

(assert (= (and b!1143126 (not c!112401)) b!1143134))

(assert (= (or b!1143146 b!1143129) bm!51668))

(assert (= (or b!1143146 b!1143129) bm!51669))

(assert (= (or b!1143146 b!1143129) bm!51667))

(assert (= (or b!1143136 bm!51667) bm!51666))

(assert (= (or b!1143136 bm!51668) bm!51665))

(assert (= (or b!1143136 bm!51669) bm!51664))

(assert (= (and b!1143123 c!112399) b!1143141))

(assert (= (and b!1143123 (not c!112399)) b!1143121))

(assert (= (and b!1143123 res!761728) b!1143147))

(assert (= (and b!1143130 condMapEmpty!44885) mapIsEmpty!44885))

(assert (= (and b!1143130 (not condMapEmpty!44885)) mapNonEmpty!44885))

(get-info :version)

(assert (= (and mapNonEmpty!44885 ((_ is ValueCellFull!13644) mapValue!44885)) b!1143132))

(assert (= (and b!1143130 ((_ is ValueCellFull!13644) mapDefault!44885)) b!1143122))

(assert (= start!98608 b!1143130))

(declare-fun b_lambda!19301 () Bool)

(assert (=> (not b_lambda!19301) (not b!1143143)))

(declare-fun t!36300 () Bool)

(declare-fun tb!8997 () Bool)

(assert (=> (and start!98608 (= defaultEntry!1004 defaultEntry!1004) t!36300) tb!8997))

(declare-fun result!18551 () Bool)

(assert (=> tb!8997 (= result!18551 tp_is_empty!28707)))

(assert (=> b!1143143 t!36300))

(declare-fun b_and!39219 () Bool)

(assert (= b_and!39217 (and (=> t!36300 result!18551) b_and!39219)))

(declare-fun m!1054349 () Bool)

(assert (=> bm!51665 m!1054349))

(declare-fun m!1054351 () Bool)

(assert (=> b!1143142 m!1054351))

(declare-fun m!1054353 () Bool)

(assert (=> b!1143136 m!1054353))

(assert (=> b!1143136 m!1054353))

(declare-fun m!1054355 () Bool)

(assert (=> b!1143136 m!1054355))

(declare-fun m!1054357 () Bool)

(assert (=> b!1143136 m!1054357))

(declare-fun m!1054359 () Bool)

(assert (=> b!1143131 m!1054359))

(declare-fun m!1054361 () Bool)

(assert (=> b!1143131 m!1054361))

(declare-fun m!1054363 () Bool)

(assert (=> b!1143124 m!1054363))

(declare-fun m!1054365 () Bool)

(assert (=> b!1143124 m!1054365))

(assert (=> b!1143124 m!1054365))

(declare-fun m!1054367 () Bool)

(assert (=> b!1143124 m!1054367))

(assert (=> b!1143124 m!1054359))

(declare-fun m!1054369 () Bool)

(assert (=> b!1143124 m!1054369))

(declare-fun m!1054371 () Bool)

(assert (=> b!1143124 m!1054371))

(assert (=> b!1143124 m!1054359))

(declare-fun m!1054373 () Bool)

(assert (=> b!1143124 m!1054373))

(declare-fun m!1054375 () Bool)

(assert (=> b!1143124 m!1054375))

(assert (=> b!1143124 m!1054359))

(assert (=> b!1143124 m!1054371))

(declare-fun m!1054377 () Bool)

(assert (=> b!1143141 m!1054377))

(declare-fun m!1054379 () Bool)

(assert (=> mapNonEmpty!44885 m!1054379))

(declare-fun m!1054381 () Bool)

(assert (=> bm!51666 m!1054381))

(declare-fun m!1054383 () Bool)

(assert (=> b!1143123 m!1054383))

(declare-fun m!1054385 () Bool)

(assert (=> b!1143123 m!1054385))

(declare-fun m!1054387 () Bool)

(assert (=> b!1143123 m!1054387))

(declare-fun m!1054389 () Bool)

(assert (=> b!1143123 m!1054389))

(declare-fun m!1054391 () Bool)

(assert (=> b!1143139 m!1054391))

(declare-fun m!1054393 () Bool)

(assert (=> b!1143139 m!1054393))

(declare-fun m!1054395 () Bool)

(assert (=> bm!51663 m!1054395))

(declare-fun m!1054397 () Bool)

(assert (=> b!1143128 m!1054397))

(declare-fun m!1054399 () Bool)

(assert (=> b!1143148 m!1054399))

(declare-fun m!1054401 () Bool)

(assert (=> b!1143135 m!1054401))

(declare-fun m!1054403 () Bool)

(assert (=> b!1143135 m!1054403))

(declare-fun m!1054405 () Bool)

(assert (=> bm!51664 m!1054405))

(declare-fun m!1054407 () Bool)

(assert (=> b!1143145 m!1054407))

(declare-fun m!1054409 () Bool)

(assert (=> b!1143138 m!1054409))

(declare-fun m!1054411 () Bool)

(assert (=> b!1143125 m!1054411))

(declare-fun m!1054413 () Bool)

(assert (=> b!1143143 m!1054413))

(declare-fun m!1054415 () Bool)

(assert (=> b!1143143 m!1054415))

(declare-fun m!1054417 () Bool)

(assert (=> b!1143143 m!1054417))

(declare-fun m!1054419 () Bool)

(assert (=> b!1143143 m!1054419))

(assert (=> b!1143147 m!1054377))

(assert (=> bm!51662 m!1054363))

(declare-fun m!1054421 () Bool)

(assert (=> b!1143144 m!1054421))

(declare-fun m!1054423 () Bool)

(assert (=> start!98608 m!1054423))

(declare-fun m!1054425 () Bool)

(assert (=> start!98608 m!1054425))

(check-sat (not b!1143144) (not b!1143145) tp_is_empty!28707 (not b!1143136) (not bm!51664) (not b_lambda!19301) (not bm!51662) (not b!1143141) (not mapNonEmpty!44885) (not b!1143148) (not start!98608) (not b!1143138) b_and!39219 (not bm!51666) (not b!1143124) (not b!1143139) (not b!1143147) (not bm!51663) (not b!1143143) (not b!1143125) (not b_next!24177) (not b!1143142) (not b!1143135) (not b!1143131) (not bm!51665) (not b!1143123))
(check-sat b_and!39219 (not b_next!24177))
