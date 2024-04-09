; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99960 () Bool)

(assert start!99960)

(declare-fun b_free!25503 () Bool)

(declare-fun b_next!25503 () Bool)

(assert (=> start!99960 (= b_free!25503 (not b_next!25503))))

(declare-fun tp!89223 () Bool)

(declare-fun b_and!41887 () Bool)

(assert (=> start!99960 (= tp!89223 b_and!41887)))

(declare-fun b!1189430 () Bool)

(declare-fun res!791033 () Bool)

(declare-fun e!676285 () Bool)

(assert (=> b!1189430 (=> (not res!791033) (not e!676285))))

(declare-datatypes ((array!76832 0))(
  ( (array!76833 (arr!37062 (Array (_ BitVec 32) (_ BitVec 64))) (size!37599 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76832)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45171 0))(
  ( (V!45172 (val!15073 Int)) )
))
(declare-datatypes ((ValueCell!14307 0))(
  ( (ValueCellFull!14307 (v!17712 V!45171)) (EmptyCell!14307) )
))
(declare-datatypes ((array!76834 0))(
  ( (array!76835 (arr!37063 (Array (_ BitVec 32) ValueCell!14307)) (size!37600 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76834)

(assert (=> b!1189430 (= res!791033 (and (= (size!37600 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37599 _keys!1208) (size!37600 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189431 () Bool)

(declare-fun res!791043 () Bool)

(assert (=> b!1189431 (=> (not res!791043) (not e!676285))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1189431 (= res!791043 (= (select (arr!37062 _keys!1208) i!673) k0!934))))

(declare-fun b!1189432 () Bool)

(declare-fun e!676278 () Bool)

(declare-fun e!676281 () Bool)

(assert (=> b!1189432 (= e!676278 (not e!676281))))

(declare-fun res!791037 () Bool)

(assert (=> b!1189432 (=> res!791037 e!676281)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189432 (= res!791037 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189432 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39394 0))(
  ( (Unit!39395) )
))
(declare-fun lt!541033 () Unit!39394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76832 (_ BitVec 64) (_ BitVec 32)) Unit!39394)

(assert (=> b!1189432 (= lt!541033 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1189433 () Bool)

(declare-fun res!791038 () Bool)

(assert (=> b!1189433 (=> (not res!791038) (not e!676278))))

(declare-fun lt!541038 () array!76832)

(declare-datatypes ((List!26250 0))(
  ( (Nil!26247) (Cons!26246 (h!27455 (_ BitVec 64)) (t!38752 List!26250)) )
))
(declare-fun arrayNoDuplicates!0 (array!76832 (_ BitVec 32) List!26250) Bool)

(assert (=> b!1189433 (= res!791038 (arrayNoDuplicates!0 lt!541038 #b00000000000000000000000000000000 Nil!26247))))

(declare-fun b!1189434 () Bool)

(declare-fun res!791044 () Bool)

(assert (=> b!1189434 (=> (not res!791044) (not e!676285))))

(assert (=> b!1189434 (= res!791044 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26247))))

(declare-fun b!1189435 () Bool)

(declare-fun e!676282 () Bool)

(assert (=> b!1189435 (= e!676281 e!676282)))

(declare-fun res!791036 () Bool)

(assert (=> b!1189435 (=> res!791036 e!676282)))

(assert (=> b!1189435 (= res!791036 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45171)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541037 () array!76834)

(declare-datatypes ((tuple2!19490 0))(
  ( (tuple2!19491 (_1!9755 (_ BitVec 64)) (_2!9755 V!45171)) )
))
(declare-datatypes ((List!26251 0))(
  ( (Nil!26248) (Cons!26247 (h!27456 tuple2!19490) (t!38753 List!26251)) )
))
(declare-datatypes ((ListLongMap!17471 0))(
  ( (ListLongMap!17472 (toList!8751 List!26251)) )
))
(declare-fun lt!541034 () ListLongMap!17471)

(declare-fun minValue!944 () V!45171)

(declare-fun getCurrentListMapNoExtraKeys!5165 (array!76832 array!76834 (_ BitVec 32) (_ BitVec 32) V!45171 V!45171 (_ BitVec 32) Int) ListLongMap!17471)

(assert (=> b!1189435 (= lt!541034 (getCurrentListMapNoExtraKeys!5165 lt!541038 lt!541037 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3117 (Int (_ BitVec 64)) V!45171)

(assert (=> b!1189435 (= lt!541037 (array!76835 (store (arr!37063 _values!996) i!673 (ValueCellFull!14307 (dynLambda!3117 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37600 _values!996)))))

(declare-fun lt!541035 () ListLongMap!17471)

(assert (=> b!1189435 (= lt!541035 (getCurrentListMapNoExtraKeys!5165 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46877 () Bool)

(declare-fun mapRes!46877 () Bool)

(declare-fun tp!89224 () Bool)

(declare-fun e!676280 () Bool)

(assert (=> mapNonEmpty!46877 (= mapRes!46877 (and tp!89224 e!676280))))

(declare-fun mapValue!46877 () ValueCell!14307)

(declare-fun mapKey!46877 () (_ BitVec 32))

(declare-fun mapRest!46877 () (Array (_ BitVec 32) ValueCell!14307))

(assert (=> mapNonEmpty!46877 (= (arr!37063 _values!996) (store mapRest!46877 mapKey!46877 mapValue!46877))))

(declare-fun b!1189436 () Bool)

(declare-fun res!791035 () Bool)

(assert (=> b!1189436 (=> (not res!791035) (not e!676285))))

(assert (=> b!1189436 (= res!791035 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37599 _keys!1208))))))

(declare-fun b!1189437 () Bool)

(declare-fun tp_is_empty!30033 () Bool)

(assert (=> b!1189437 (= e!676280 tp_is_empty!30033)))

(declare-fun res!791040 () Bool)

(assert (=> start!99960 (=> (not res!791040) (not e!676285))))

(assert (=> start!99960 (= res!791040 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37599 _keys!1208))))))

(assert (=> start!99960 e!676285))

(assert (=> start!99960 tp_is_empty!30033))

(declare-fun array_inv!28160 (array!76832) Bool)

(assert (=> start!99960 (array_inv!28160 _keys!1208)))

(assert (=> start!99960 true))

(assert (=> start!99960 tp!89223))

(declare-fun e!676283 () Bool)

(declare-fun array_inv!28161 (array!76834) Bool)

(assert (=> start!99960 (and (array_inv!28161 _values!996) e!676283)))

(declare-fun b!1189438 () Bool)

(declare-fun res!791039 () Bool)

(assert (=> b!1189438 (=> (not res!791039) (not e!676285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189438 (= res!791039 (validKeyInArray!0 k0!934))))

(declare-fun b!1189439 () Bool)

(declare-fun e!676279 () Bool)

(assert (=> b!1189439 (= e!676279 tp_is_empty!30033)))

(declare-fun b!1189440 () Bool)

(declare-fun res!791034 () Bool)

(assert (=> b!1189440 (=> (not res!791034) (not e!676285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76832 (_ BitVec 32)) Bool)

(assert (=> b!1189440 (= res!791034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46877 () Bool)

(assert (=> mapIsEmpty!46877 mapRes!46877))

(declare-fun b!1189441 () Bool)

(assert (=> b!1189441 (= e!676285 e!676278)))

(declare-fun res!791041 () Bool)

(assert (=> b!1189441 (=> (not res!791041) (not e!676278))))

(assert (=> b!1189441 (= res!791041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541038 mask!1564))))

(assert (=> b!1189441 (= lt!541038 (array!76833 (store (arr!37062 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37599 _keys!1208)))))

(declare-fun b!1189442 () Bool)

(assert (=> b!1189442 (= e!676282 true)))

(declare-fun -!1733 (ListLongMap!17471 (_ BitVec 64)) ListLongMap!17471)

(assert (=> b!1189442 (= (getCurrentListMapNoExtraKeys!5165 lt!541038 lt!541037 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1733 (getCurrentListMapNoExtraKeys!5165 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541036 () Unit!39394)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!939 (array!76832 array!76834 (_ BitVec 32) (_ BitVec 32) V!45171 V!45171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39394)

(assert (=> b!1189442 (= lt!541036 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!939 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189443 () Bool)

(declare-fun res!791042 () Bool)

(assert (=> b!1189443 (=> (not res!791042) (not e!676285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189443 (= res!791042 (validMask!0 mask!1564))))

(declare-fun b!1189444 () Bool)

(assert (=> b!1189444 (= e!676283 (and e!676279 mapRes!46877))))

(declare-fun condMapEmpty!46877 () Bool)

(declare-fun mapDefault!46877 () ValueCell!14307)

(assert (=> b!1189444 (= condMapEmpty!46877 (= (arr!37063 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14307)) mapDefault!46877)))))

(assert (= (and start!99960 res!791040) b!1189443))

(assert (= (and b!1189443 res!791042) b!1189430))

(assert (= (and b!1189430 res!791033) b!1189440))

(assert (= (and b!1189440 res!791034) b!1189434))

(assert (= (and b!1189434 res!791044) b!1189436))

(assert (= (and b!1189436 res!791035) b!1189438))

(assert (= (and b!1189438 res!791039) b!1189431))

(assert (= (and b!1189431 res!791043) b!1189441))

(assert (= (and b!1189441 res!791041) b!1189433))

(assert (= (and b!1189433 res!791038) b!1189432))

(assert (= (and b!1189432 (not res!791037)) b!1189435))

(assert (= (and b!1189435 (not res!791036)) b!1189442))

(assert (= (and b!1189444 condMapEmpty!46877) mapIsEmpty!46877))

(assert (= (and b!1189444 (not condMapEmpty!46877)) mapNonEmpty!46877))

(get-info :version)

(assert (= (and mapNonEmpty!46877 ((_ is ValueCellFull!14307) mapValue!46877)) b!1189437))

(assert (= (and b!1189444 ((_ is ValueCellFull!14307) mapDefault!46877)) b!1189439))

(assert (= start!99960 b!1189444))

(declare-fun b_lambda!20665 () Bool)

(assert (=> (not b_lambda!20665) (not b!1189435)))

(declare-fun t!38751 () Bool)

(declare-fun tb!10323 () Bool)

(assert (=> (and start!99960 (= defaultEntry!1004 defaultEntry!1004) t!38751) tb!10323))

(declare-fun result!21205 () Bool)

(assert (=> tb!10323 (= result!21205 tp_is_empty!30033)))

(assert (=> b!1189435 t!38751))

(declare-fun b_and!41889 () Bool)

(assert (= b_and!41887 (and (=> t!38751 result!21205) b_and!41889)))

(declare-fun m!1098155 () Bool)

(assert (=> b!1189438 m!1098155))

(declare-fun m!1098157 () Bool)

(assert (=> b!1189432 m!1098157))

(declare-fun m!1098159 () Bool)

(assert (=> b!1189432 m!1098159))

(declare-fun m!1098161 () Bool)

(assert (=> b!1189443 m!1098161))

(declare-fun m!1098163 () Bool)

(assert (=> b!1189442 m!1098163))

(declare-fun m!1098165 () Bool)

(assert (=> b!1189442 m!1098165))

(assert (=> b!1189442 m!1098165))

(declare-fun m!1098167 () Bool)

(assert (=> b!1189442 m!1098167))

(declare-fun m!1098169 () Bool)

(assert (=> b!1189442 m!1098169))

(declare-fun m!1098171 () Bool)

(assert (=> mapNonEmpty!46877 m!1098171))

(declare-fun m!1098173 () Bool)

(assert (=> b!1189433 m!1098173))

(declare-fun m!1098175 () Bool)

(assert (=> start!99960 m!1098175))

(declare-fun m!1098177 () Bool)

(assert (=> start!99960 m!1098177))

(declare-fun m!1098179 () Bool)

(assert (=> b!1189431 m!1098179))

(declare-fun m!1098181 () Bool)

(assert (=> b!1189435 m!1098181))

(declare-fun m!1098183 () Bool)

(assert (=> b!1189435 m!1098183))

(declare-fun m!1098185 () Bool)

(assert (=> b!1189435 m!1098185))

(declare-fun m!1098187 () Bool)

(assert (=> b!1189435 m!1098187))

(declare-fun m!1098189 () Bool)

(assert (=> b!1189434 m!1098189))

(declare-fun m!1098191 () Bool)

(assert (=> b!1189440 m!1098191))

(declare-fun m!1098193 () Bool)

(assert (=> b!1189441 m!1098193))

(declare-fun m!1098195 () Bool)

(assert (=> b!1189441 m!1098195))

(check-sat (not b_lambda!20665) (not b!1189435) (not b!1189443) (not b!1189433) (not mapNonEmpty!46877) (not start!99960) (not b!1189441) (not b!1189438) b_and!41889 (not b!1189432) (not b!1189434) (not b_next!25503) (not b!1189442) (not b!1189440) tp_is_empty!30033)
(check-sat b_and!41889 (not b_next!25503))
