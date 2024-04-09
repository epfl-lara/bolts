; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99774 () Bool)

(assert start!99774)

(declare-fun b_free!25317 () Bool)

(declare-fun b_next!25317 () Bool)

(assert (=> start!99774 (= b_free!25317 (not b_next!25317))))

(declare-fun tp!88665 () Bool)

(declare-fun b_and!41515 () Bool)

(assert (=> start!99774 (= tp!88665 b_and!41515)))

(declare-fun b!1184049 () Bool)

(declare-fun e!673239 () Bool)

(declare-fun tp_is_empty!29847 () Bool)

(assert (=> b!1184049 (= e!673239 tp_is_empty!29847)))

(declare-fun b!1184050 () Bool)

(declare-fun res!787080 () Bool)

(declare-fun e!673247 () Bool)

(assert (=> b!1184050 (=> (not res!787080) (not e!673247))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184050 (= res!787080 (validMask!0 mask!1564))))

(declare-fun b!1184051 () Bool)

(declare-fun res!787092 () Bool)

(assert (=> b!1184051 (=> (not res!787092) (not e!673247))))

(declare-datatypes ((array!76462 0))(
  ( (array!76463 (arr!36877 (Array (_ BitVec 32) (_ BitVec 64))) (size!37414 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76462)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76462 (_ BitVec 32)) Bool)

(assert (=> b!1184051 (= res!787092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!787079 () Bool)

(assert (=> start!99774 (=> (not res!787079) (not e!673247))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99774 (= res!787079 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37414 _keys!1208))))))

(assert (=> start!99774 e!673247))

(assert (=> start!99774 tp_is_empty!29847))

(declare-fun array_inv!28026 (array!76462) Bool)

(assert (=> start!99774 (array_inv!28026 _keys!1208)))

(assert (=> start!99774 true))

(assert (=> start!99774 tp!88665))

(declare-datatypes ((V!44923 0))(
  ( (V!44924 (val!14980 Int)) )
))
(declare-datatypes ((ValueCell!14214 0))(
  ( (ValueCellFull!14214 (v!17619 V!44923)) (EmptyCell!14214) )
))
(declare-datatypes ((array!76464 0))(
  ( (array!76465 (arr!36878 (Array (_ BitVec 32) ValueCell!14214)) (size!37415 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76464)

(declare-fun e!673240 () Bool)

(declare-fun array_inv!28027 (array!76464) Bool)

(assert (=> start!99774 (and (array_inv!28027 _values!996) e!673240)))

(declare-fun b!1184052 () Bool)

(declare-fun res!787085 () Bool)

(assert (=> b!1184052 (=> (not res!787085) (not e!673247))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1184052 (= res!787085 (= (select (arr!36877 _keys!1208) i!673) k0!934))))

(declare-fun b!1184053 () Bool)

(declare-datatypes ((Unit!39128 0))(
  ( (Unit!39129) )
))
(declare-fun e!673246 () Unit!39128)

(declare-fun Unit!39130 () Unit!39128)

(assert (=> b!1184053 (= e!673246 Unit!39130)))

(declare-fun lt!536734 () Unit!39128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76462 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39128)

(assert (=> b!1184053 (= lt!536734 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184053 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536733 () Unit!39128)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76462 (_ BitVec 32) (_ BitVec 32)) Unit!39128)

(assert (=> b!1184053 (= lt!536733 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26091 0))(
  ( (Nil!26088) (Cons!26087 (h!27296 (_ BitVec 64)) (t!38407 List!26091)) )
))
(declare-fun arrayNoDuplicates!0 (array!76462 (_ BitVec 32) List!26091) Bool)

(assert (=> b!1184053 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26088)))

(declare-fun lt!536748 () Unit!39128)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76462 (_ BitVec 64) (_ BitVec 32) List!26091) Unit!39128)

(assert (=> b!1184053 (= lt!536748 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26088))))

(assert (=> b!1184053 false))

(declare-fun b!1184054 () Bool)

(declare-fun res!787081 () Bool)

(assert (=> b!1184054 (=> (not res!787081) (not e!673247))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1184054 (= res!787081 (and (= (size!37415 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37414 _keys!1208) (size!37415 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184055 () Bool)

(declare-fun e!673242 () Bool)

(declare-fun e!673238 () Bool)

(assert (=> b!1184055 (= e!673242 e!673238)))

(declare-fun res!787093 () Bool)

(assert (=> b!1184055 (=> res!787093 e!673238)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184055 (= res!787093 (not (validKeyInArray!0 (select (arr!36877 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19328 0))(
  ( (tuple2!19329 (_1!9674 (_ BitVec 64)) (_2!9674 V!44923)) )
))
(declare-datatypes ((List!26092 0))(
  ( (Nil!26089) (Cons!26088 (h!27297 tuple2!19328) (t!38408 List!26092)) )
))
(declare-datatypes ((ListLongMap!17309 0))(
  ( (ListLongMap!17310 (toList!8670 List!26092)) )
))
(declare-fun lt!536746 () ListLongMap!17309)

(declare-fun lt!536741 () ListLongMap!17309)

(assert (=> b!1184055 (= lt!536746 lt!536741)))

(declare-fun lt!536740 () ListLongMap!17309)

(declare-fun -!1658 (ListLongMap!17309 (_ BitVec 64)) ListLongMap!17309)

(assert (=> b!1184055 (= lt!536741 (-!1658 lt!536740 k0!934))))

(declare-fun lt!536744 () array!76464)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44923)

(declare-fun zeroValue!944 () V!44923)

(declare-fun lt!536749 () array!76462)

(declare-fun getCurrentListMapNoExtraKeys!5090 (array!76462 array!76464 (_ BitVec 32) (_ BitVec 32) V!44923 V!44923 (_ BitVec 32) Int) ListLongMap!17309)

(assert (=> b!1184055 (= lt!536746 (getCurrentListMapNoExtraKeys!5090 lt!536749 lt!536744 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184055 (= lt!536740 (getCurrentListMapNoExtraKeys!5090 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536747 () Unit!39128)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!874 (array!76462 array!76464 (_ BitVec 32) (_ BitVec 32) V!44923 V!44923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39128)

(assert (=> b!1184055 (= lt!536747 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!874 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!673248 () Bool)

(declare-fun b!1184056 () Bool)

(assert (=> b!1184056 (= e!673248 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184057 () Bool)

(declare-fun res!787089 () Bool)

(assert (=> b!1184057 (=> (not res!787089) (not e!673247))))

(assert (=> b!1184057 (= res!787089 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26088))))

(declare-fun mapIsEmpty!46598 () Bool)

(declare-fun mapRes!46598 () Bool)

(assert (=> mapIsEmpty!46598 mapRes!46598))

(declare-fun b!1184058 () Bool)

(declare-fun e!673241 () Bool)

(assert (=> b!1184058 (= e!673247 e!673241)))

(declare-fun res!787090 () Bool)

(assert (=> b!1184058 (=> (not res!787090) (not e!673241))))

(assert (=> b!1184058 (= res!787090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536749 mask!1564))))

(assert (=> b!1184058 (= lt!536749 (array!76463 (store (arr!36877 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37414 _keys!1208)))))

(declare-fun mapNonEmpty!46598 () Bool)

(declare-fun tp!88666 () Bool)

(assert (=> mapNonEmpty!46598 (= mapRes!46598 (and tp!88666 e!673239))))

(declare-fun mapValue!46598 () ValueCell!14214)

(declare-fun mapRest!46598 () (Array (_ BitVec 32) ValueCell!14214))

(declare-fun mapKey!46598 () (_ BitVec 32))

(assert (=> mapNonEmpty!46598 (= (arr!36878 _values!996) (store mapRest!46598 mapKey!46598 mapValue!46598))))

(declare-fun b!1184059 () Bool)

(declare-fun e!673244 () Bool)

(assert (=> b!1184059 (= e!673244 e!673248)))

(declare-fun res!787091 () Bool)

(assert (=> b!1184059 (=> res!787091 e!673248)))

(assert (=> b!1184059 (= res!787091 (not (= (select (arr!36877 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1184060 () Bool)

(declare-fun e!673243 () Bool)

(assert (=> b!1184060 (= e!673243 e!673242)))

(declare-fun res!787083 () Bool)

(assert (=> b!1184060 (=> res!787083 e!673242)))

(assert (=> b!1184060 (= res!787083 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!536736 () ListLongMap!17309)

(assert (=> b!1184060 (= lt!536736 (getCurrentListMapNoExtraKeys!5090 lt!536749 lt!536744 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!536743 () V!44923)

(assert (=> b!1184060 (= lt!536744 (array!76465 (store (arr!36878 _values!996) i!673 (ValueCellFull!14214 lt!536743)) (size!37415 _values!996)))))

(declare-fun dynLambda!3055 (Int (_ BitVec 64)) V!44923)

(assert (=> b!1184060 (= lt!536743 (dynLambda!3055 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!536745 () ListLongMap!17309)

(assert (=> b!1184060 (= lt!536745 (getCurrentListMapNoExtraKeys!5090 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184061 () Bool)

(declare-fun e!673249 () Bool)

(assert (=> b!1184061 (= e!673249 tp_is_empty!29847)))

(declare-fun b!1184062 () Bool)

(assert (=> b!1184062 (= e!673241 (not e!673243))))

(declare-fun res!787084 () Bool)

(assert (=> b!1184062 (=> res!787084 e!673243)))

(assert (=> b!1184062 (= res!787084 (bvsgt from!1455 i!673))))

(assert (=> b!1184062 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!536750 () Unit!39128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76462 (_ BitVec 64) (_ BitVec 32)) Unit!39128)

(assert (=> b!1184062 (= lt!536750 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184063 () Bool)

(declare-fun res!787086 () Bool)

(assert (=> b!1184063 (=> (not res!787086) (not e!673241))))

(assert (=> b!1184063 (= res!787086 (arrayNoDuplicates!0 lt!536749 #b00000000000000000000000000000000 Nil!26088))))

(declare-fun b!1184064 () Bool)

(declare-fun res!787082 () Bool)

(assert (=> b!1184064 (=> (not res!787082) (not e!673247))))

(assert (=> b!1184064 (= res!787082 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37414 _keys!1208))))))

(declare-fun b!1184065 () Bool)

(declare-fun Unit!39131 () Unit!39128)

(assert (=> b!1184065 (= e!673246 Unit!39131)))

(declare-fun b!1184066 () Bool)

(assert (=> b!1184066 (= e!673238 true)))

(declare-fun lt!536738 () ListLongMap!17309)

(declare-fun lt!536737 () ListLongMap!17309)

(assert (=> b!1184066 (= (-!1658 lt!536738 k0!934) lt!536737)))

(declare-fun lt!536735 () Unit!39128)

(declare-fun lt!536751 () V!44923)

(declare-fun addRemoveCommutativeForDiffKeys!172 (ListLongMap!17309 (_ BitVec 64) V!44923 (_ BitVec 64)) Unit!39128)

(assert (=> b!1184066 (= lt!536735 (addRemoveCommutativeForDiffKeys!172 lt!536740 (select (arr!36877 _keys!1208) from!1455) lt!536751 k0!934))))

(assert (=> b!1184066 (and (= lt!536745 lt!536738) (= lt!536741 lt!536746))))

(declare-fun lt!536739 () tuple2!19328)

(declare-fun +!3882 (ListLongMap!17309 tuple2!19328) ListLongMap!17309)

(assert (=> b!1184066 (= lt!536738 (+!3882 lt!536740 lt!536739))))

(assert (=> b!1184066 (not (= (select (arr!36877 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536742 () Unit!39128)

(assert (=> b!1184066 (= lt!536742 e!673246)))

(declare-fun c!117047 () Bool)

(assert (=> b!1184066 (= c!117047 (= (select (arr!36877 _keys!1208) from!1455) k0!934))))

(assert (=> b!1184066 e!673244))

(declare-fun res!787087 () Bool)

(assert (=> b!1184066 (=> (not res!787087) (not e!673244))))

(assert (=> b!1184066 (= res!787087 (= lt!536736 lt!536737))))

(assert (=> b!1184066 (= lt!536737 (+!3882 lt!536741 lt!536739))))

(assert (=> b!1184066 (= lt!536739 (tuple2!19329 (select (arr!36877 _keys!1208) from!1455) lt!536751))))

(declare-fun get!18910 (ValueCell!14214 V!44923) V!44923)

(assert (=> b!1184066 (= lt!536751 (get!18910 (select (arr!36878 _values!996) from!1455) lt!536743))))

(declare-fun b!1184067 () Bool)

(assert (=> b!1184067 (= e!673240 (and e!673249 mapRes!46598))))

(declare-fun condMapEmpty!46598 () Bool)

(declare-fun mapDefault!46598 () ValueCell!14214)

(assert (=> b!1184067 (= condMapEmpty!46598 (= (arr!36878 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14214)) mapDefault!46598)))))

(declare-fun b!1184068 () Bool)

(declare-fun res!787088 () Bool)

(assert (=> b!1184068 (=> (not res!787088) (not e!673247))))

(assert (=> b!1184068 (= res!787088 (validKeyInArray!0 k0!934))))

(assert (= (and start!99774 res!787079) b!1184050))

(assert (= (and b!1184050 res!787080) b!1184054))

(assert (= (and b!1184054 res!787081) b!1184051))

(assert (= (and b!1184051 res!787092) b!1184057))

(assert (= (and b!1184057 res!787089) b!1184064))

(assert (= (and b!1184064 res!787082) b!1184068))

(assert (= (and b!1184068 res!787088) b!1184052))

(assert (= (and b!1184052 res!787085) b!1184058))

(assert (= (and b!1184058 res!787090) b!1184063))

(assert (= (and b!1184063 res!787086) b!1184062))

(assert (= (and b!1184062 (not res!787084)) b!1184060))

(assert (= (and b!1184060 (not res!787083)) b!1184055))

(assert (= (and b!1184055 (not res!787093)) b!1184066))

(assert (= (and b!1184066 res!787087) b!1184059))

(assert (= (and b!1184059 (not res!787091)) b!1184056))

(assert (= (and b!1184066 c!117047) b!1184053))

(assert (= (and b!1184066 (not c!117047)) b!1184065))

(assert (= (and b!1184067 condMapEmpty!46598) mapIsEmpty!46598))

(assert (= (and b!1184067 (not condMapEmpty!46598)) mapNonEmpty!46598))

(get-info :version)

(assert (= (and mapNonEmpty!46598 ((_ is ValueCellFull!14214) mapValue!46598)) b!1184049))

(assert (= (and b!1184067 ((_ is ValueCellFull!14214) mapDefault!46598)) b!1184061))

(assert (= start!99774 b!1184067))

(declare-fun b_lambda!20479 () Bool)

(assert (=> (not b_lambda!20479) (not b!1184060)))

(declare-fun t!38406 () Bool)

(declare-fun tb!10137 () Bool)

(assert (=> (and start!99774 (= defaultEntry!1004 defaultEntry!1004) t!38406) tb!10137))

(declare-fun result!20833 () Bool)

(assert (=> tb!10137 (= result!20833 tp_is_empty!29847)))

(assert (=> b!1184060 t!38406))

(declare-fun b_and!41517 () Bool)

(assert (= b_and!41515 (and (=> t!38406 result!20833) b_and!41517)))

(declare-fun m!1092345 () Bool)

(assert (=> b!1184063 m!1092345))

(declare-fun m!1092347 () Bool)

(assert (=> b!1184060 m!1092347))

(declare-fun m!1092349 () Bool)

(assert (=> b!1184060 m!1092349))

(declare-fun m!1092351 () Bool)

(assert (=> b!1184060 m!1092351))

(declare-fun m!1092353 () Bool)

(assert (=> b!1184060 m!1092353))

(declare-fun m!1092355 () Bool)

(assert (=> start!99774 m!1092355))

(declare-fun m!1092357 () Bool)

(assert (=> start!99774 m!1092357))

(declare-fun m!1092359 () Bool)

(assert (=> b!1184056 m!1092359))

(declare-fun m!1092361 () Bool)

(assert (=> b!1184059 m!1092361))

(declare-fun m!1092363 () Bool)

(assert (=> b!1184062 m!1092363))

(declare-fun m!1092365 () Bool)

(assert (=> b!1184062 m!1092365))

(declare-fun m!1092367 () Bool)

(assert (=> b!1184058 m!1092367))

(declare-fun m!1092369 () Bool)

(assert (=> b!1184058 m!1092369))

(declare-fun m!1092371 () Bool)

(assert (=> b!1184057 m!1092371))

(declare-fun m!1092373 () Bool)

(assert (=> b!1184053 m!1092373))

(declare-fun m!1092375 () Bool)

(assert (=> b!1184053 m!1092375))

(declare-fun m!1092377 () Bool)

(assert (=> b!1184053 m!1092377))

(declare-fun m!1092379 () Bool)

(assert (=> b!1184053 m!1092379))

(declare-fun m!1092381 () Bool)

(assert (=> b!1184053 m!1092381))

(declare-fun m!1092383 () Bool)

(assert (=> b!1184055 m!1092383))

(declare-fun m!1092385 () Bool)

(assert (=> b!1184055 m!1092385))

(declare-fun m!1092387 () Bool)

(assert (=> b!1184055 m!1092387))

(declare-fun m!1092389 () Bool)

(assert (=> b!1184055 m!1092389))

(assert (=> b!1184055 m!1092361))

(declare-fun m!1092391 () Bool)

(assert (=> b!1184055 m!1092391))

(assert (=> b!1184055 m!1092361))

(declare-fun m!1092393 () Bool)

(assert (=> b!1184050 m!1092393))

(declare-fun m!1092395 () Bool)

(assert (=> b!1184066 m!1092395))

(assert (=> b!1184066 m!1092395))

(declare-fun m!1092397 () Bool)

(assert (=> b!1184066 m!1092397))

(assert (=> b!1184066 m!1092361))

(declare-fun m!1092399 () Bool)

(assert (=> b!1184066 m!1092399))

(declare-fun m!1092401 () Bool)

(assert (=> b!1184066 m!1092401))

(declare-fun m!1092403 () Bool)

(assert (=> b!1184066 m!1092403))

(declare-fun m!1092405 () Bool)

(assert (=> b!1184066 m!1092405))

(assert (=> b!1184066 m!1092361))

(declare-fun m!1092407 () Bool)

(assert (=> b!1184051 m!1092407))

(declare-fun m!1092409 () Bool)

(assert (=> b!1184052 m!1092409))

(declare-fun m!1092411 () Bool)

(assert (=> mapNonEmpty!46598 m!1092411))

(declare-fun m!1092413 () Bool)

(assert (=> b!1184068 m!1092413))

(check-sat (not b_lambda!20479) (not start!99774) (not b_next!25317) (not b!1184050) (not b!1184055) (not b!1184057) (not b!1184056) (not mapNonEmpty!46598) (not b!1184053) (not b!1184060) (not b!1184063) (not b!1184062) (not b!1184051) (not b!1184058) (not b!1184066) tp_is_empty!29847 (not b!1184068) b_and!41517)
(check-sat b_and!41517 (not b_next!25317))
