; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98212 () Bool)

(assert start!98212)

(declare-fun b_free!23877 () Bool)

(declare-fun b_next!23877 () Bool)

(assert (=> start!98212 (= b_free!23877 (not b_next!23877))))

(declare-fun tp!84335 () Bool)

(declare-fun b_and!38559 () Bool)

(assert (=> start!98212 (= tp!84335 b_and!38559)))

(declare-datatypes ((V!43003 0))(
  ( (V!43004 (val!14260 Int)) )
))
(declare-datatypes ((tuple2!18044 0))(
  ( (tuple2!18045 (_1!9032 (_ BitVec 64)) (_2!9032 V!43003)) )
))
(declare-datatypes ((List!24863 0))(
  ( (Nil!24860) (Cons!24859 (h!26068 tuple2!18044) (t!35739 List!24863)) )
))
(declare-datatypes ((ListLongMap!16025 0))(
  ( (ListLongMap!16026 (toList!8028 List!24863)) )
))
(declare-fun call!48005 () ListLongMap!16025)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1129250 () Bool)

(declare-fun call!47998 () ListLongMap!16025)

(declare-fun e!642725 () Bool)

(declare-fun -!1160 (ListLongMap!16025 (_ BitVec 64)) ListLongMap!16025)

(assert (=> b!1129250 (= e!642725 (= call!47998 (-!1160 call!48005 k0!934)))))

(declare-fun b!1129251 () Bool)

(declare-fun e!642719 () Bool)

(declare-fun e!642720 () Bool)

(declare-fun mapRes!44428 () Bool)

(assert (=> b!1129251 (= e!642719 (and e!642720 mapRes!44428))))

(declare-fun condMapEmpty!44428 () Bool)

(declare-datatypes ((ValueCell!13494 0))(
  ( (ValueCellFull!13494 (v!16894 V!43003)) (EmptyCell!13494) )
))
(declare-datatypes ((array!73632 0))(
  ( (array!73633 (arr!35465 (Array (_ BitVec 32) ValueCell!13494)) (size!36002 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73632)

(declare-fun mapDefault!44428 () ValueCell!13494)

(assert (=> b!1129251 (= condMapEmpty!44428 (= (arr!35465 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13494)) mapDefault!44428)))))

(declare-fun mapNonEmpty!44428 () Bool)

(declare-fun tp!84336 () Bool)

(declare-fun e!642714 () Bool)

(assert (=> mapNonEmpty!44428 (= mapRes!44428 (and tp!84336 e!642714))))

(declare-fun mapKey!44428 () (_ BitVec 32))

(declare-fun mapValue!44428 () ValueCell!13494)

(declare-fun mapRest!44428 () (Array (_ BitVec 32) ValueCell!13494))

(assert (=> mapNonEmpty!44428 (= (arr!35465 _values!996) (store mapRest!44428 mapKey!44428 mapValue!44428))))

(declare-fun bm!47995 () Bool)

(declare-fun call!48000 () Bool)

(declare-fun call!48001 () Bool)

(assert (=> bm!47995 (= call!48000 call!48001)))

(declare-fun b!1129252 () Bool)

(declare-datatypes ((Unit!36943 0))(
  ( (Unit!36944) )
))
(declare-fun e!642715 () Unit!36943)

(declare-fun Unit!36945 () Unit!36943)

(assert (=> b!1129252 (= e!642715 Unit!36945)))

(declare-fun b!1129253 () Bool)

(declare-fun res!754710 () Bool)

(declare-fun e!642718 () Bool)

(assert (=> b!1129253 (=> (not res!754710) (not e!642718))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73634 0))(
  ( (array!73635 (arr!35466 (Array (_ BitVec 32) (_ BitVec 64))) (size!36003 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73634)

(assert (=> b!1129253 (= res!754710 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36003 _keys!1208))))))

(declare-fun b!1129254 () Bool)

(declare-fun c!109808 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!501321 () Bool)

(assert (=> b!1129254 (= c!109808 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501321))))

(declare-fun e!642723 () Unit!36943)

(assert (=> b!1129254 (= e!642723 e!642715)))

(declare-fun b!1129255 () Bool)

(declare-fun res!754716 () Bool)

(assert (=> b!1129255 (=> (not res!754716) (not e!642718))))

(declare-datatypes ((List!24864 0))(
  ( (Nil!24861) (Cons!24860 (h!26069 (_ BitVec 64)) (t!35740 List!24864)) )
))
(declare-fun arrayNoDuplicates!0 (array!73634 (_ BitVec 32) List!24864) Bool)

(assert (=> b!1129255 (= res!754716 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24861))))

(declare-fun b!1129256 () Bool)

(declare-fun e!642722 () Bool)

(assert (=> b!1129256 (= e!642722 true)))

(declare-fun zeroValue!944 () V!43003)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!501312 () Bool)

(declare-fun minValue!944 () V!43003)

(declare-fun contains!6522 (ListLongMap!16025 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4434 (array!73634 array!73632 (_ BitVec 32) (_ BitVec 32) V!43003 V!43003 (_ BitVec 32) Int) ListLongMap!16025)

(assert (=> b!1129256 (= lt!501312 (contains!6522 (getCurrentListMap!4434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!47996 () Bool)

(declare-fun call!48004 () ListLongMap!16025)

(declare-fun call!48002 () ListLongMap!16025)

(assert (=> bm!47996 (= call!48004 call!48002)))

(declare-fun bm!47997 () Bool)

(declare-fun call!47999 () Unit!36943)

(declare-fun call!48003 () Unit!36943)

(assert (=> bm!47997 (= call!47999 call!48003)))

(declare-fun b!1129257 () Bool)

(declare-fun res!754714 () Bool)

(assert (=> b!1129257 (=> (not res!754714) (not e!642718))))

(assert (=> b!1129257 (= res!754714 (= (select (arr!35466 _keys!1208) i!673) k0!934))))

(declare-fun b!1129258 () Bool)

(declare-fun res!754722 () Bool)

(assert (=> b!1129258 (=> (not res!754722) (not e!642718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129258 (= res!754722 (validMask!0 mask!1564))))

(declare-fun b!1129259 () Bool)

(declare-fun tp_is_empty!28407 () Bool)

(assert (=> b!1129259 (= e!642720 tp_is_empty!28407)))

(declare-fun mapIsEmpty!44428 () Bool)

(assert (=> mapIsEmpty!44428 mapRes!44428))

(declare-fun c!109810 () Bool)

(declare-fun c!109811 () Bool)

(declare-fun bm!47998 () Bool)

(declare-fun lt!501324 () ListLongMap!16025)

(declare-fun addStillContains!695 (ListLongMap!16025 (_ BitVec 64) V!43003 (_ BitVec 64)) Unit!36943)

(assert (=> bm!47998 (= call!48003 (addStillContains!695 lt!501324 (ite (or c!109810 c!109811) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109810 c!109811) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1129260 () Bool)

(declare-fun e!642724 () Bool)

(declare-fun e!642716 () Bool)

(assert (=> b!1129260 (= e!642724 e!642716)))

(declare-fun res!754717 () Bool)

(assert (=> b!1129260 (=> res!754717 e!642716)))

(assert (=> b!1129260 (= res!754717 (not (= from!1455 i!673)))))

(declare-fun lt!501313 () array!73634)

(declare-fun lt!501319 () ListLongMap!16025)

(declare-fun lt!501314 () array!73632)

(declare-fun getCurrentListMapNoExtraKeys!4481 (array!73634 array!73632 (_ BitVec 32) (_ BitVec 32) V!43003 V!43003 (_ BitVec 32) Int) ListLongMap!16025)

(assert (=> b!1129260 (= lt!501319 (getCurrentListMapNoExtraKeys!4481 lt!501313 lt!501314 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2558 (Int (_ BitVec 64)) V!43003)

(assert (=> b!1129260 (= lt!501314 (array!73633 (store (arr!35465 _values!996) i!673 (ValueCellFull!13494 (dynLambda!2558 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36002 _values!996)))))

(declare-fun lt!501320 () ListLongMap!16025)

(assert (=> b!1129260 (= lt!501320 (getCurrentListMapNoExtraKeys!4481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129261 () Bool)

(declare-fun e!642721 () Bool)

(assert (=> b!1129261 (= e!642721 (not e!642724))))

(declare-fun res!754713 () Bool)

(assert (=> b!1129261 (=> res!754713 e!642724)))

(assert (=> b!1129261 (= res!754713 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129261 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501317 () Unit!36943)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73634 (_ BitVec 64) (_ BitVec 32)) Unit!36943)

(assert (=> b!1129261 (= lt!501317 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1129262 () Bool)

(assert (=> b!1129262 call!48000))

(declare-fun lt!501311 () Unit!36943)

(assert (=> b!1129262 (= lt!501311 call!47999)))

(assert (=> b!1129262 (= e!642723 lt!501311)))

(declare-fun bm!47999 () Bool)

(assert (=> bm!47999 (= call!47998 (getCurrentListMapNoExtraKeys!4481 lt!501313 lt!501314 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129263 () Bool)

(declare-fun res!754711 () Bool)

(assert (=> b!1129263 (=> (not res!754711) (not e!642718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129263 (= res!754711 (validKeyInArray!0 k0!934))))

(declare-fun res!754718 () Bool)

(assert (=> start!98212 (=> (not res!754718) (not e!642718))))

(assert (=> start!98212 (= res!754718 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36003 _keys!1208))))))

(assert (=> start!98212 e!642718))

(assert (=> start!98212 tp_is_empty!28407))

(declare-fun array_inv!27078 (array!73634) Bool)

(assert (=> start!98212 (array_inv!27078 _keys!1208)))

(assert (=> start!98212 true))

(assert (=> start!98212 tp!84335))

(declare-fun array_inv!27079 (array!73632) Bool)

(assert (=> start!98212 (and (array_inv!27079 _values!996) e!642719)))

(declare-fun b!1129264 () Bool)

(declare-fun e!642727 () Unit!36943)

(assert (=> b!1129264 (= e!642727 e!642723)))

(assert (=> b!1129264 (= c!109811 (and (not lt!501321) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129265 () Bool)

(declare-fun res!754712 () Bool)

(assert (=> b!1129265 (=> (not res!754712) (not e!642718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73634 (_ BitVec 32)) Bool)

(assert (=> b!1129265 (= res!754712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129266 () Bool)

(declare-fun res!754709 () Bool)

(assert (=> b!1129266 (=> (not res!754709) (not e!642718))))

(assert (=> b!1129266 (= res!754709 (and (= (size!36002 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36003 _keys!1208) (size!36002 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129267 () Bool)

(assert (=> b!1129267 (= e!642725 (= call!47998 call!48005))))

(declare-fun b!1129268 () Bool)

(declare-fun res!754720 () Bool)

(assert (=> b!1129268 (=> (not res!754720) (not e!642721))))

(assert (=> b!1129268 (= res!754720 (arrayNoDuplicates!0 lt!501313 #b00000000000000000000000000000000 Nil!24861))))

(declare-fun bm!48000 () Bool)

(assert (=> bm!48000 (= call!48005 (getCurrentListMapNoExtraKeys!4481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129269 () Bool)

(declare-fun e!642728 () Bool)

(declare-fun e!642726 () Bool)

(assert (=> b!1129269 (= e!642728 e!642726)))

(declare-fun res!754719 () Bool)

(assert (=> b!1129269 (=> res!754719 e!642726)))

(assert (=> b!1129269 (= res!754719 (not (contains!6522 lt!501324 k0!934)))))

(assert (=> b!1129269 (= lt!501324 (getCurrentListMapNoExtraKeys!4481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48001 () Bool)

(declare-fun +!3396 (ListLongMap!16025 tuple2!18044) ListLongMap!16025)

(assert (=> bm!48001 (= call!48002 (+!3396 lt!501324 (ite (or c!109810 c!109811) (tuple2!18045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1129270 () Bool)

(declare-fun lt!501315 () Unit!36943)

(assert (=> b!1129270 (= e!642715 lt!501315)))

(assert (=> b!1129270 (= lt!501315 call!47999)))

(assert (=> b!1129270 call!48000))

(declare-fun b!1129271 () Bool)

(assert (=> b!1129271 (= e!642714 tp_is_empty!28407)))

(declare-fun b!1129272 () Bool)

(assert (=> b!1129272 (= e!642718 e!642721)))

(declare-fun res!754721 () Bool)

(assert (=> b!1129272 (=> (not res!754721) (not e!642721))))

(assert (=> b!1129272 (= res!754721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501313 mask!1564))))

(assert (=> b!1129272 (= lt!501313 (array!73635 (store (arr!35466 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36003 _keys!1208)))))

(declare-fun b!1129273 () Bool)

(declare-fun lt!501318 () Unit!36943)

(assert (=> b!1129273 (= e!642727 lt!501318)))

(declare-fun lt!501322 () Unit!36943)

(assert (=> b!1129273 (= lt!501322 call!48003)))

(declare-fun lt!501323 () ListLongMap!16025)

(assert (=> b!1129273 (= lt!501323 call!48002)))

(assert (=> b!1129273 call!48001))

(assert (=> b!1129273 (= lt!501318 (addStillContains!695 lt!501323 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1129273 (contains!6522 (+!3396 lt!501323 (tuple2!18045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1129274 () Bool)

(assert (=> b!1129274 (= e!642716 e!642728)))

(declare-fun res!754715 () Bool)

(assert (=> b!1129274 (=> res!754715 e!642728)))

(assert (=> b!1129274 (= res!754715 (not (= (select (arr!35466 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1129274 e!642725))

(declare-fun c!109809 () Bool)

(assert (=> b!1129274 (= c!109809 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501316 () Unit!36943)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!413 (array!73634 array!73632 (_ BitVec 32) (_ BitVec 32) V!43003 V!43003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36943)

(assert (=> b!1129274 (= lt!501316 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!413 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48002 () Bool)

(assert (=> bm!48002 (= call!48001 (contains!6522 (ite c!109810 lt!501323 call!48004) k0!934))))

(declare-fun b!1129275 () Bool)

(assert (=> b!1129275 (= e!642726 e!642722)))

(declare-fun res!754708 () Bool)

(assert (=> b!1129275 (=> res!754708 e!642722)))

(assert (=> b!1129275 (= res!754708 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36003 _keys!1208))))))

(declare-fun lt!501310 () Unit!36943)

(assert (=> b!1129275 (= lt!501310 e!642727)))

(assert (=> b!1129275 (= c!109810 (and (not lt!501321) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129275 (= lt!501321 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (= (and start!98212 res!754718) b!1129258))

(assert (= (and b!1129258 res!754722) b!1129266))

(assert (= (and b!1129266 res!754709) b!1129265))

(assert (= (and b!1129265 res!754712) b!1129255))

(assert (= (and b!1129255 res!754716) b!1129253))

(assert (= (and b!1129253 res!754710) b!1129263))

(assert (= (and b!1129263 res!754711) b!1129257))

(assert (= (and b!1129257 res!754714) b!1129272))

(assert (= (and b!1129272 res!754721) b!1129268))

(assert (= (and b!1129268 res!754720) b!1129261))

(assert (= (and b!1129261 (not res!754713)) b!1129260))

(assert (= (and b!1129260 (not res!754717)) b!1129274))

(assert (= (and b!1129274 c!109809) b!1129250))

(assert (= (and b!1129274 (not c!109809)) b!1129267))

(assert (= (or b!1129250 b!1129267) bm!47999))

(assert (= (or b!1129250 b!1129267) bm!48000))

(assert (= (and b!1129274 (not res!754715)) b!1129269))

(assert (= (and b!1129269 (not res!754719)) b!1129275))

(assert (= (and b!1129275 c!109810) b!1129273))

(assert (= (and b!1129275 (not c!109810)) b!1129264))

(assert (= (and b!1129264 c!109811) b!1129262))

(assert (= (and b!1129264 (not c!109811)) b!1129254))

(assert (= (and b!1129254 c!109808) b!1129270))

(assert (= (and b!1129254 (not c!109808)) b!1129252))

(assert (= (or b!1129262 b!1129270) bm!47997))

(assert (= (or b!1129262 b!1129270) bm!47996))

(assert (= (or b!1129262 b!1129270) bm!47995))

(assert (= (or b!1129273 bm!47995) bm!48002))

(assert (= (or b!1129273 bm!47997) bm!47998))

(assert (= (or b!1129273 bm!47996) bm!48001))

(assert (= (and b!1129275 (not res!754708)) b!1129256))

(assert (= (and b!1129251 condMapEmpty!44428) mapIsEmpty!44428))

(assert (= (and b!1129251 (not condMapEmpty!44428)) mapNonEmpty!44428))

(get-info :version)

(assert (= (and mapNonEmpty!44428 ((_ is ValueCellFull!13494) mapValue!44428)) b!1129271))

(assert (= (and b!1129251 ((_ is ValueCellFull!13494) mapDefault!44428)) b!1129259))

(assert (= start!98212 b!1129251))

(declare-fun b_lambda!18881 () Bool)

(assert (=> (not b_lambda!18881) (not b!1129260)))

(declare-fun t!35738 () Bool)

(declare-fun tb!8697 () Bool)

(assert (=> (and start!98212 (= defaultEntry!1004 defaultEntry!1004) t!35738) tb!8697))

(declare-fun result!17947 () Bool)

(assert (=> tb!8697 (= result!17947 tp_is_empty!28407)))

(assert (=> b!1129260 t!35738))

(declare-fun b_and!38561 () Bool)

(assert (= b_and!38559 (and (=> t!35738 result!17947) b_and!38561)))

(declare-fun m!1042785 () Bool)

(assert (=> b!1129255 m!1042785))

(declare-fun m!1042787 () Bool)

(assert (=> b!1129265 m!1042787))

(declare-fun m!1042789 () Bool)

(assert (=> b!1129272 m!1042789))

(declare-fun m!1042791 () Bool)

(assert (=> b!1129272 m!1042791))

(declare-fun m!1042793 () Bool)

(assert (=> bm!47999 m!1042793))

(declare-fun m!1042795 () Bool)

(assert (=> bm!47998 m!1042795))

(declare-fun m!1042797 () Bool)

(assert (=> start!98212 m!1042797))

(declare-fun m!1042799 () Bool)

(assert (=> start!98212 m!1042799))

(declare-fun m!1042801 () Bool)

(assert (=> b!1129274 m!1042801))

(declare-fun m!1042803 () Bool)

(assert (=> b!1129274 m!1042803))

(declare-fun m!1042805 () Bool)

(assert (=> b!1129273 m!1042805))

(declare-fun m!1042807 () Bool)

(assert (=> b!1129273 m!1042807))

(assert (=> b!1129273 m!1042807))

(declare-fun m!1042809 () Bool)

(assert (=> b!1129273 m!1042809))

(declare-fun m!1042811 () Bool)

(assert (=> bm!48002 m!1042811))

(declare-fun m!1042813 () Bool)

(assert (=> bm!48001 m!1042813))

(declare-fun m!1042815 () Bool)

(assert (=> b!1129250 m!1042815))

(declare-fun m!1042817 () Bool)

(assert (=> b!1129263 m!1042817))

(declare-fun m!1042819 () Bool)

(assert (=> mapNonEmpty!44428 m!1042819))

(declare-fun m!1042821 () Bool)

(assert (=> b!1129261 m!1042821))

(declare-fun m!1042823 () Bool)

(assert (=> b!1129261 m!1042823))

(declare-fun m!1042825 () Bool)

(assert (=> b!1129269 m!1042825))

(declare-fun m!1042827 () Bool)

(assert (=> b!1129269 m!1042827))

(declare-fun m!1042829 () Bool)

(assert (=> b!1129260 m!1042829))

(declare-fun m!1042831 () Bool)

(assert (=> b!1129260 m!1042831))

(declare-fun m!1042833 () Bool)

(assert (=> b!1129260 m!1042833))

(declare-fun m!1042835 () Bool)

(assert (=> b!1129260 m!1042835))

(declare-fun m!1042837 () Bool)

(assert (=> b!1129256 m!1042837))

(assert (=> b!1129256 m!1042837))

(declare-fun m!1042839 () Bool)

(assert (=> b!1129256 m!1042839))

(declare-fun m!1042841 () Bool)

(assert (=> b!1129268 m!1042841))

(assert (=> bm!48000 m!1042827))

(declare-fun m!1042843 () Bool)

(assert (=> b!1129258 m!1042843))

(declare-fun m!1042845 () Bool)

(assert (=> b!1129257 m!1042845))

(check-sat (not bm!48001) (not b!1129268) (not b!1129263) (not bm!48000) (not bm!48002) (not mapNonEmpty!44428) (not b!1129265) (not b!1129272) (not bm!47998) (not b!1129261) (not b!1129256) (not b!1129250) tp_is_empty!28407 (not b_next!23877) (not b!1129260) (not b!1129269) (not b!1129255) (not b!1129273) (not b_lambda!18881) (not b!1129274) (not b!1129258) (not bm!47999) b_and!38561 (not start!98212))
(check-sat b_and!38561 (not b_next!23877))
