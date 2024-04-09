; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99780 () Bool)

(assert start!99780)

(declare-fun b_free!25323 () Bool)

(declare-fun b_next!25323 () Bool)

(assert (=> start!99780 (= b_free!25323 (not b_next!25323))))

(declare-fun tp!88683 () Bool)

(declare-fun b_and!41527 () Bool)

(assert (=> start!99780 (= tp!88683 b_and!41527)))

(declare-fun b!1184235 () Bool)

(declare-fun e!673354 () Bool)

(declare-fun tp_is_empty!29853 () Bool)

(assert (=> b!1184235 (= e!673354 tp_is_empty!29853)))

(declare-fun mapNonEmpty!46607 () Bool)

(declare-fun mapRes!46607 () Bool)

(declare-fun tp!88684 () Bool)

(declare-fun e!673346 () Bool)

(assert (=> mapNonEmpty!46607 (= mapRes!46607 (and tp!88684 e!673346))))

(declare-datatypes ((V!44931 0))(
  ( (V!44932 (val!14983 Int)) )
))
(declare-datatypes ((ValueCell!14217 0))(
  ( (ValueCellFull!14217 (v!17622 V!44931)) (EmptyCell!14217) )
))
(declare-fun mapRest!46607 () (Array (_ BitVec 32) ValueCell!14217))

(declare-fun mapValue!46607 () ValueCell!14217)

(declare-fun mapKey!46607 () (_ BitVec 32))

(declare-datatypes ((array!76474 0))(
  ( (array!76475 (arr!36883 (Array (_ BitVec 32) ValueCell!14217)) (size!37420 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76474)

(assert (=> mapNonEmpty!46607 (= (arr!36883 _values!996) (store mapRest!46607 mapKey!46607 mapValue!46607))))

(declare-fun b!1184236 () Bool)

(declare-fun e!673355 () Bool)

(assert (=> b!1184236 (= e!673355 true)))

(declare-datatypes ((tuple2!19334 0))(
  ( (tuple2!19335 (_1!9677 (_ BitVec 64)) (_2!9677 V!44931)) )
))
(declare-datatypes ((List!26097 0))(
  ( (Nil!26094) (Cons!26093 (h!27302 tuple2!19334) (t!38419 List!26097)) )
))
(declare-datatypes ((ListLongMap!17315 0))(
  ( (ListLongMap!17316 (toList!8673 List!26097)) )
))
(declare-fun lt!536905 () ListLongMap!17315)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!536913 () ListLongMap!17315)

(declare-fun -!1661 (ListLongMap!17315 (_ BitVec 64)) ListLongMap!17315)

(assert (=> b!1184236 (= (-!1661 lt!536905 k0!934) lt!536913)))

(declare-fun lt!536920 () ListLongMap!17315)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!536914 () V!44931)

(declare-datatypes ((Unit!39138 0))(
  ( (Unit!39139) )
))
(declare-fun lt!536915 () Unit!39138)

(declare-datatypes ((array!76476 0))(
  ( (array!76477 (arr!36884 (Array (_ BitVec 32) (_ BitVec 64))) (size!37421 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76476)

(declare-fun addRemoveCommutativeForDiffKeys!174 (ListLongMap!17315 (_ BitVec 64) V!44931 (_ BitVec 64)) Unit!39138)

(assert (=> b!1184236 (= lt!536915 (addRemoveCommutativeForDiffKeys!174 lt!536920 (select (arr!36884 _keys!1208) from!1455) lt!536914 k0!934))))

(declare-fun lt!536917 () ListLongMap!17315)

(declare-fun lt!536921 () ListLongMap!17315)

(declare-fun lt!536919 () ListLongMap!17315)

(assert (=> b!1184236 (and (= lt!536917 lt!536905) (= lt!536919 lt!536921))))

(declare-fun lt!536907 () tuple2!19334)

(declare-fun +!3884 (ListLongMap!17315 tuple2!19334) ListLongMap!17315)

(assert (=> b!1184236 (= lt!536905 (+!3884 lt!536920 lt!536907))))

(assert (=> b!1184236 (not (= (select (arr!36884 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536916 () Unit!39138)

(declare-fun e!673351 () Unit!39138)

(assert (=> b!1184236 (= lt!536916 e!673351)))

(declare-fun c!117056 () Bool)

(assert (=> b!1184236 (= c!117056 (= (select (arr!36884 _keys!1208) from!1455) k0!934))))

(declare-fun e!673357 () Bool)

(assert (=> b!1184236 e!673357))

(declare-fun res!787220 () Bool)

(assert (=> b!1184236 (=> (not res!787220) (not e!673357))))

(declare-fun lt!536918 () ListLongMap!17315)

(assert (=> b!1184236 (= res!787220 (= lt!536918 lt!536913))))

(assert (=> b!1184236 (= lt!536913 (+!3884 lt!536919 lt!536907))))

(assert (=> b!1184236 (= lt!536907 (tuple2!19335 (select (arr!36884 _keys!1208) from!1455) lt!536914))))

(declare-fun lt!536909 () V!44931)

(declare-fun get!18914 (ValueCell!14217 V!44931) V!44931)

(assert (=> b!1184236 (= lt!536914 (get!18914 (select (arr!36883 _values!996) from!1455) lt!536909))))

(declare-fun b!1184237 () Bool)

(declare-fun res!787221 () Bool)

(declare-fun e!673347 () Bool)

(assert (=> b!1184237 (=> (not res!787221) (not e!673347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184237 (= res!787221 (validKeyInArray!0 k0!934))))

(declare-fun b!1184238 () Bool)

(declare-fun res!787219 () Bool)

(assert (=> b!1184238 (=> (not res!787219) (not e!673347))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184238 (= res!787219 (= (select (arr!36884 _keys!1208) i!673) k0!934))))

(declare-fun b!1184239 () Bool)

(declare-fun e!673348 () Bool)

(assert (=> b!1184239 (= e!673347 e!673348)))

(declare-fun res!787224 () Bool)

(assert (=> b!1184239 (=> (not res!787224) (not e!673348))))

(declare-fun lt!536912 () array!76476)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76476 (_ BitVec 32)) Bool)

(assert (=> b!1184239 (= res!787224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536912 mask!1564))))

(assert (=> b!1184239 (= lt!536912 (array!76477 (store (arr!36884 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37421 _keys!1208)))))

(declare-fun b!1184240 () Bool)

(declare-fun Unit!39140 () Unit!39138)

(assert (=> b!1184240 (= e!673351 Unit!39140)))

(declare-fun b!1184241 () Bool)

(declare-fun e!673349 () Bool)

(declare-fun arrayContainsKey!0 (array!76476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184241 (= e!673349 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184242 () Bool)

(declare-fun res!787222 () Bool)

(assert (=> b!1184242 (=> (not res!787222) (not e!673347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184242 (= res!787222 (validMask!0 mask!1564))))

(declare-fun b!1184243 () Bool)

(assert (=> b!1184243 (= e!673357 e!673349)))

(declare-fun res!787217 () Bool)

(assert (=> b!1184243 (=> res!787217 e!673349)))

(assert (=> b!1184243 (= res!787217 (not (= (select (arr!36884 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1184244 () Bool)

(assert (=> b!1184244 (= e!673346 tp_is_empty!29853)))

(declare-fun b!1184245 () Bool)

(declare-fun e!673356 () Bool)

(assert (=> b!1184245 (= e!673348 (not e!673356))))

(declare-fun res!787227 () Bool)

(assert (=> b!1184245 (=> res!787227 e!673356)))

(assert (=> b!1184245 (= res!787227 (bvsgt from!1455 i!673))))

(assert (=> b!1184245 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!536922 () Unit!39138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76476 (_ BitVec 64) (_ BitVec 32)) Unit!39138)

(assert (=> b!1184245 (= lt!536922 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184246 () Bool)

(declare-fun res!787218 () Bool)

(assert (=> b!1184246 (=> (not res!787218) (not e!673348))))

(declare-datatypes ((List!26098 0))(
  ( (Nil!26095) (Cons!26094 (h!27303 (_ BitVec 64)) (t!38420 List!26098)) )
))
(declare-fun arrayNoDuplicates!0 (array!76476 (_ BitVec 32) List!26098) Bool)

(assert (=> b!1184246 (= res!787218 (arrayNoDuplicates!0 lt!536912 #b00000000000000000000000000000000 Nil!26095))))

(declare-fun b!1184247 () Bool)

(declare-fun e!673352 () Bool)

(assert (=> b!1184247 (= e!673352 (and e!673354 mapRes!46607))))

(declare-fun condMapEmpty!46607 () Bool)

(declare-fun mapDefault!46607 () ValueCell!14217)

(assert (=> b!1184247 (= condMapEmpty!46607 (= (arr!36883 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14217)) mapDefault!46607)))))

(declare-fun b!1184248 () Bool)

(declare-fun res!787215 () Bool)

(assert (=> b!1184248 (=> (not res!787215) (not e!673347))))

(assert (=> b!1184248 (= res!787215 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37421 _keys!1208))))))

(declare-fun b!1184249 () Bool)

(declare-fun e!673353 () Bool)

(assert (=> b!1184249 (= e!673356 e!673353)))

(declare-fun res!787225 () Bool)

(assert (=> b!1184249 (=> res!787225 e!673353)))

(assert (=> b!1184249 (= res!787225 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44931)

(declare-fun lt!536908 () array!76474)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44931)

(declare-fun getCurrentListMapNoExtraKeys!5093 (array!76476 array!76474 (_ BitVec 32) (_ BitVec 32) V!44931 V!44931 (_ BitVec 32) Int) ListLongMap!17315)

(assert (=> b!1184249 (= lt!536918 (getCurrentListMapNoExtraKeys!5093 lt!536912 lt!536908 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184249 (= lt!536908 (array!76475 (store (arr!36883 _values!996) i!673 (ValueCellFull!14217 lt!536909)) (size!37420 _values!996)))))

(declare-fun dynLambda!3057 (Int (_ BitVec 64)) V!44931)

(assert (=> b!1184249 (= lt!536909 (dynLambda!3057 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184249 (= lt!536917 (getCurrentListMapNoExtraKeys!5093 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184250 () Bool)

(assert (=> b!1184250 (= e!673353 e!673355)))

(declare-fun res!787216 () Bool)

(assert (=> b!1184250 (=> res!787216 e!673355)))

(assert (=> b!1184250 (= res!787216 (not (validKeyInArray!0 (select (arr!36884 _keys!1208) from!1455))))))

(assert (=> b!1184250 (= lt!536921 lt!536919)))

(assert (=> b!1184250 (= lt!536919 (-!1661 lt!536920 k0!934))))

(assert (=> b!1184250 (= lt!536921 (getCurrentListMapNoExtraKeys!5093 lt!536912 lt!536908 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184250 (= lt!536920 (getCurrentListMapNoExtraKeys!5093 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536906 () Unit!39138)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!877 (array!76476 array!76474 (_ BitVec 32) (_ BitVec 32) V!44931 V!44931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39138)

(assert (=> b!1184250 (= lt!536906 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!877 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46607 () Bool)

(assert (=> mapIsEmpty!46607 mapRes!46607))

(declare-fun b!1184251 () Bool)

(declare-fun res!787223 () Bool)

(assert (=> b!1184251 (=> (not res!787223) (not e!673347))))

(assert (=> b!1184251 (= res!787223 (and (= (size!37420 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37421 _keys!1208) (size!37420 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!787214 () Bool)

(assert (=> start!99780 (=> (not res!787214) (not e!673347))))

(assert (=> start!99780 (= res!787214 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37421 _keys!1208))))))

(assert (=> start!99780 e!673347))

(assert (=> start!99780 tp_is_empty!29853))

(declare-fun array_inv!28030 (array!76476) Bool)

(assert (=> start!99780 (array_inv!28030 _keys!1208)))

(assert (=> start!99780 true))

(assert (=> start!99780 tp!88683))

(declare-fun array_inv!28031 (array!76474) Bool)

(assert (=> start!99780 (and (array_inv!28031 _values!996) e!673352)))

(declare-fun b!1184252 () Bool)

(declare-fun res!787228 () Bool)

(assert (=> b!1184252 (=> (not res!787228) (not e!673347))))

(assert (=> b!1184252 (= res!787228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184253 () Bool)

(declare-fun res!787226 () Bool)

(assert (=> b!1184253 (=> (not res!787226) (not e!673347))))

(assert (=> b!1184253 (= res!787226 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26095))))

(declare-fun b!1184254 () Bool)

(declare-fun Unit!39141 () Unit!39138)

(assert (=> b!1184254 (= e!673351 Unit!39141)))

(declare-fun lt!536911 () Unit!39138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76476 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39138)

(assert (=> b!1184254 (= lt!536911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184254 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536910 () Unit!39138)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76476 (_ BitVec 32) (_ BitVec 32)) Unit!39138)

(assert (=> b!1184254 (= lt!536910 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1184254 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26095)))

(declare-fun lt!536904 () Unit!39138)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76476 (_ BitVec 64) (_ BitVec 32) List!26098) Unit!39138)

(assert (=> b!1184254 (= lt!536904 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26095))))

(assert (=> b!1184254 false))

(assert (= (and start!99780 res!787214) b!1184242))

(assert (= (and b!1184242 res!787222) b!1184251))

(assert (= (and b!1184251 res!787223) b!1184252))

(assert (= (and b!1184252 res!787228) b!1184253))

(assert (= (and b!1184253 res!787226) b!1184248))

(assert (= (and b!1184248 res!787215) b!1184237))

(assert (= (and b!1184237 res!787221) b!1184238))

(assert (= (and b!1184238 res!787219) b!1184239))

(assert (= (and b!1184239 res!787224) b!1184246))

(assert (= (and b!1184246 res!787218) b!1184245))

(assert (= (and b!1184245 (not res!787227)) b!1184249))

(assert (= (and b!1184249 (not res!787225)) b!1184250))

(assert (= (and b!1184250 (not res!787216)) b!1184236))

(assert (= (and b!1184236 res!787220) b!1184243))

(assert (= (and b!1184243 (not res!787217)) b!1184241))

(assert (= (and b!1184236 c!117056) b!1184254))

(assert (= (and b!1184236 (not c!117056)) b!1184240))

(assert (= (and b!1184247 condMapEmpty!46607) mapIsEmpty!46607))

(assert (= (and b!1184247 (not condMapEmpty!46607)) mapNonEmpty!46607))

(get-info :version)

(assert (= (and mapNonEmpty!46607 ((_ is ValueCellFull!14217) mapValue!46607)) b!1184244))

(assert (= (and b!1184247 ((_ is ValueCellFull!14217) mapDefault!46607)) b!1184235))

(assert (= start!99780 b!1184247))

(declare-fun b_lambda!20485 () Bool)

(assert (=> (not b_lambda!20485) (not b!1184249)))

(declare-fun t!38418 () Bool)

(declare-fun tb!10143 () Bool)

(assert (=> (and start!99780 (= defaultEntry!1004 defaultEntry!1004) t!38418) tb!10143))

(declare-fun result!20845 () Bool)

(assert (=> tb!10143 (= result!20845 tp_is_empty!29853)))

(assert (=> b!1184249 t!38418))

(declare-fun b_and!41529 () Bool)

(assert (= b_and!41527 (and (=> t!38418 result!20845) b_and!41529)))

(declare-fun m!1092555 () Bool)

(assert (=> start!99780 m!1092555))

(declare-fun m!1092557 () Bool)

(assert (=> start!99780 m!1092557))

(declare-fun m!1092559 () Bool)

(assert (=> mapNonEmpty!46607 m!1092559))

(declare-fun m!1092561 () Bool)

(assert (=> b!1184239 m!1092561))

(declare-fun m!1092563 () Bool)

(assert (=> b!1184239 m!1092563))

(declare-fun m!1092565 () Bool)

(assert (=> b!1184254 m!1092565))

(declare-fun m!1092567 () Bool)

(assert (=> b!1184254 m!1092567))

(declare-fun m!1092569 () Bool)

(assert (=> b!1184254 m!1092569))

(declare-fun m!1092571 () Bool)

(assert (=> b!1184254 m!1092571))

(declare-fun m!1092573 () Bool)

(assert (=> b!1184254 m!1092573))

(declare-fun m!1092575 () Bool)

(assert (=> b!1184252 m!1092575))

(declare-fun m!1092577 () Bool)

(assert (=> b!1184249 m!1092577))

(declare-fun m!1092579 () Bool)

(assert (=> b!1184249 m!1092579))

(declare-fun m!1092581 () Bool)

(assert (=> b!1184249 m!1092581))

(declare-fun m!1092583 () Bool)

(assert (=> b!1184249 m!1092583))

(declare-fun m!1092585 () Bool)

(assert (=> b!1184237 m!1092585))

(declare-fun m!1092587 () Bool)

(assert (=> b!1184253 m!1092587))

(declare-fun m!1092589 () Bool)

(assert (=> b!1184241 m!1092589))

(declare-fun m!1092591 () Bool)

(assert (=> b!1184246 m!1092591))

(declare-fun m!1092593 () Bool)

(assert (=> b!1184250 m!1092593))

(declare-fun m!1092595 () Bool)

(assert (=> b!1184250 m!1092595))

(declare-fun m!1092597 () Bool)

(assert (=> b!1184250 m!1092597))

(declare-fun m!1092599 () Bool)

(assert (=> b!1184250 m!1092599))

(declare-fun m!1092601 () Bool)

(assert (=> b!1184250 m!1092601))

(declare-fun m!1092603 () Bool)

(assert (=> b!1184250 m!1092603))

(assert (=> b!1184250 m!1092601))

(assert (=> b!1184243 m!1092601))

(declare-fun m!1092605 () Bool)

(assert (=> b!1184242 m!1092605))

(declare-fun m!1092607 () Bool)

(assert (=> b!1184245 m!1092607))

(declare-fun m!1092609 () Bool)

(assert (=> b!1184245 m!1092609))

(declare-fun m!1092611 () Bool)

(assert (=> b!1184238 m!1092611))

(declare-fun m!1092613 () Bool)

(assert (=> b!1184236 m!1092613))

(declare-fun m!1092615 () Bool)

(assert (=> b!1184236 m!1092615))

(assert (=> b!1184236 m!1092615))

(declare-fun m!1092617 () Bool)

(assert (=> b!1184236 m!1092617))

(declare-fun m!1092619 () Bool)

(assert (=> b!1184236 m!1092619))

(assert (=> b!1184236 m!1092601))

(declare-fun m!1092621 () Bool)

(assert (=> b!1184236 m!1092621))

(declare-fun m!1092623 () Bool)

(assert (=> b!1184236 m!1092623))

(assert (=> b!1184236 m!1092601))

(check-sat (not start!99780) (not b!1184246) (not b!1184254) (not mapNonEmpty!46607) (not b!1184250) tp_is_empty!29853 (not b!1184237) (not b!1184253) (not b!1184236) (not b_lambda!20485) (not b!1184249) (not b!1184245) (not b!1184252) (not b!1184242) b_and!41529 (not b_next!25323) (not b!1184241) (not b!1184239))
(check-sat b_and!41529 (not b_next!25323))
