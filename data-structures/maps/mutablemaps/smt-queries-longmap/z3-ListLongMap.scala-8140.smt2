; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99744 () Bool)

(assert start!99744)

(declare-fun b_free!25287 () Bool)

(declare-fun b_next!25287 () Bool)

(assert (=> start!99744 (= b_free!25287 (not b_next!25287))))

(declare-fun tp!88575 () Bool)

(declare-fun b_and!41455 () Bool)

(assert (=> start!99744 (= tp!88575 b_and!41455)))

(declare-fun b!1183119 () Bool)

(declare-fun e!672707 () Bool)

(declare-fun e!672702 () Bool)

(assert (=> b!1183119 (= e!672707 e!672702)))

(declare-fun res!786417 () Bool)

(assert (=> b!1183119 (=> res!786417 e!672702)))

(declare-datatypes ((array!76402 0))(
  ( (array!76403 (arr!36847 (Array (_ BitVec 32) (_ BitVec 64))) (size!37384 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76402)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1183119 (= res!786417 (not (= (select (arr!36847 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!46553 () Bool)

(declare-fun mapRes!46553 () Bool)

(declare-fun tp!88576 () Bool)

(declare-fun e!672698 () Bool)

(assert (=> mapNonEmpty!46553 (= mapRes!46553 (and tp!88576 e!672698))))

(declare-datatypes ((V!44883 0))(
  ( (V!44884 (val!14965 Int)) )
))
(declare-datatypes ((ValueCell!14199 0))(
  ( (ValueCellFull!14199 (v!17604 V!44883)) (EmptyCell!14199) )
))
(declare-fun mapValue!46553 () ValueCell!14199)

(declare-datatypes ((array!76404 0))(
  ( (array!76405 (arr!36848 (Array (_ BitVec 32) ValueCell!14199)) (size!37385 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76404)

(declare-fun mapKey!46553 () (_ BitVec 32))

(declare-fun mapRest!46553 () (Array (_ BitVec 32) ValueCell!14199))

(assert (=> mapNonEmpty!46553 (= (arr!36848 _values!996) (store mapRest!46553 mapKey!46553 mapValue!46553))))

(declare-fun b!1183120 () Bool)

(declare-fun res!786408 () Bool)

(declare-fun e!672708 () Bool)

(assert (=> b!1183120 (=> (not res!786408) (not e!672708))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183120 (= res!786408 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37384 _keys!1208))))))

(declare-fun b!1183121 () Bool)

(declare-fun res!786418 () Bool)

(assert (=> b!1183121 (=> (not res!786418) (not e!672708))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76402 (_ BitVec 32)) Bool)

(assert (=> b!1183121 (= res!786418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183122 () Bool)

(declare-fun e!672703 () Bool)

(declare-fun tp_is_empty!29817 () Bool)

(assert (=> b!1183122 (= e!672703 tp_is_empty!29817)))

(declare-fun b!1183123 () Bool)

(declare-fun e!672705 () Bool)

(assert (=> b!1183123 (= e!672708 e!672705)))

(declare-fun res!786409 () Bool)

(assert (=> b!1183123 (=> (not res!786409) (not e!672705))))

(declare-fun lt!535896 () array!76402)

(assert (=> b!1183123 (= res!786409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535896 mask!1564))))

(assert (=> b!1183123 (= lt!535896 (array!76403 (store (arr!36847 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37384 _keys!1208)))))

(declare-fun b!1183124 () Bool)

(declare-fun res!786413 () Bool)

(assert (=> b!1183124 (=> (not res!786413) (not e!672708))))

(declare-datatypes ((List!26063 0))(
  ( (Nil!26060) (Cons!26059 (h!27268 (_ BitVec 64)) (t!38349 List!26063)) )
))
(declare-fun arrayNoDuplicates!0 (array!76402 (_ BitVec 32) List!26063) Bool)

(assert (=> b!1183124 (= res!786413 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26060))))

(declare-fun b!1183125 () Bool)

(declare-fun e!672701 () Bool)

(assert (=> b!1183125 (= e!672701 true)))

(declare-datatypes ((tuple2!19300 0))(
  ( (tuple2!19301 (_1!9660 (_ BitVec 64)) (_2!9660 V!44883)) )
))
(declare-datatypes ((List!26064 0))(
  ( (Nil!26061) (Cons!26060 (h!27269 tuple2!19300) (t!38350 List!26064)) )
))
(declare-datatypes ((ListLongMap!17281 0))(
  ( (ListLongMap!17282 (toList!8656 List!26064)) )
))
(declare-fun lt!535883 () ListLongMap!17281)

(declare-fun lt!535894 () ListLongMap!17281)

(declare-fun -!1644 (ListLongMap!17281 (_ BitVec 64)) ListLongMap!17281)

(assert (=> b!1183125 (= (-!1644 lt!535883 k0!934) lt!535894)))

(declare-fun lt!535879 () ListLongMap!17281)

(declare-datatypes ((Unit!39079 0))(
  ( (Unit!39080) )
))
(declare-fun lt!535885 () Unit!39079)

(declare-fun lt!535886 () V!44883)

(declare-fun addRemoveCommutativeForDiffKeys!162 (ListLongMap!17281 (_ BitVec 64) V!44883 (_ BitVec 64)) Unit!39079)

(assert (=> b!1183125 (= lt!535885 (addRemoveCommutativeForDiffKeys!162 lt!535879 (select (arr!36847 _keys!1208) from!1455) lt!535886 k0!934))))

(declare-fun lt!535880 () ListLongMap!17281)

(declare-fun lt!535888 () ListLongMap!17281)

(declare-fun lt!535887 () ListLongMap!17281)

(assert (=> b!1183125 (and (= lt!535887 lt!535883) (= lt!535880 lt!535888))))

(declare-fun lt!535893 () tuple2!19300)

(declare-fun +!3872 (ListLongMap!17281 tuple2!19300) ListLongMap!17281)

(assert (=> b!1183125 (= lt!535883 (+!3872 lt!535879 lt!535893))))

(assert (=> b!1183125 (not (= (select (arr!36847 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535892 () Unit!39079)

(declare-fun e!672700 () Unit!39079)

(assert (=> b!1183125 (= lt!535892 e!672700)))

(declare-fun c!117002 () Bool)

(assert (=> b!1183125 (= c!117002 (= (select (arr!36847 _keys!1208) from!1455) k0!934))))

(assert (=> b!1183125 e!672707))

(declare-fun res!786404 () Bool)

(assert (=> b!1183125 (=> (not res!786404) (not e!672707))))

(declare-fun lt!535895 () ListLongMap!17281)

(assert (=> b!1183125 (= res!786404 (= lt!535895 lt!535894))))

(assert (=> b!1183125 (= lt!535894 (+!3872 lt!535880 lt!535893))))

(assert (=> b!1183125 (= lt!535893 (tuple2!19301 (select (arr!36847 _keys!1208) from!1455) lt!535886))))

(declare-fun lt!535890 () V!44883)

(declare-fun get!18890 (ValueCell!14199 V!44883) V!44883)

(assert (=> b!1183125 (= lt!535886 (get!18890 (select (arr!36848 _values!996) from!1455) lt!535890))))

(declare-fun b!1183127 () Bool)

(declare-fun e!672706 () Bool)

(assert (=> b!1183127 (= e!672706 (and e!672703 mapRes!46553))))

(declare-fun condMapEmpty!46553 () Bool)

(declare-fun mapDefault!46553 () ValueCell!14199)

(assert (=> b!1183127 (= condMapEmpty!46553 (= (arr!36848 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14199)) mapDefault!46553)))))

(declare-fun b!1183128 () Bool)

(declare-fun e!672704 () Bool)

(assert (=> b!1183128 (= e!672704 e!672701)))

(declare-fun res!786414 () Bool)

(assert (=> b!1183128 (=> res!786414 e!672701)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183128 (= res!786414 (not (validKeyInArray!0 (select (arr!36847 _keys!1208) from!1455))))))

(assert (=> b!1183128 (= lt!535888 lt!535880)))

(assert (=> b!1183128 (= lt!535880 (-!1644 lt!535879 k0!934))))

(declare-fun zeroValue!944 () V!44883)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44883)

(declare-fun lt!535881 () array!76404)

(declare-fun getCurrentListMapNoExtraKeys!5078 (array!76402 array!76404 (_ BitVec 32) (_ BitVec 32) V!44883 V!44883 (_ BitVec 32) Int) ListLongMap!17281)

(assert (=> b!1183128 (= lt!535888 (getCurrentListMapNoExtraKeys!5078 lt!535896 lt!535881 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183128 (= lt!535879 (getCurrentListMapNoExtraKeys!5078 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535891 () Unit!39079)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!864 (array!76402 array!76404 (_ BitVec 32) (_ BitVec 32) V!44883 V!44883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39079)

(assert (=> b!1183128 (= lt!535891 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!864 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46553 () Bool)

(assert (=> mapIsEmpty!46553 mapRes!46553))

(declare-fun b!1183129 () Bool)

(declare-fun arrayContainsKey!0 (array!76402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183129 (= e!672702 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183130 () Bool)

(declare-fun e!672709 () Bool)

(assert (=> b!1183130 (= e!672705 (not e!672709))))

(declare-fun res!786410 () Bool)

(assert (=> b!1183130 (=> res!786410 e!672709)))

(assert (=> b!1183130 (= res!786410 (bvsgt from!1455 i!673))))

(assert (=> b!1183130 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535884 () Unit!39079)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76402 (_ BitVec 64) (_ BitVec 32)) Unit!39079)

(assert (=> b!1183130 (= lt!535884 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183131 () Bool)

(declare-fun res!786412 () Bool)

(assert (=> b!1183131 (=> (not res!786412) (not e!672708))))

(assert (=> b!1183131 (= res!786412 (validKeyInArray!0 k0!934))))

(declare-fun b!1183132 () Bool)

(declare-fun res!786406 () Bool)

(assert (=> b!1183132 (=> (not res!786406) (not e!672708))))

(assert (=> b!1183132 (= res!786406 (and (= (size!37385 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37384 _keys!1208) (size!37385 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183133 () Bool)

(assert (=> b!1183133 (= e!672709 e!672704)))

(declare-fun res!786407 () Bool)

(assert (=> b!1183133 (=> res!786407 e!672704)))

(assert (=> b!1183133 (= res!786407 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1183133 (= lt!535895 (getCurrentListMapNoExtraKeys!5078 lt!535896 lt!535881 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1183133 (= lt!535881 (array!76405 (store (arr!36848 _values!996) i!673 (ValueCellFull!14199 lt!535890)) (size!37385 _values!996)))))

(declare-fun dynLambda!3045 (Int (_ BitVec 64)) V!44883)

(assert (=> b!1183133 (= lt!535890 (dynLambda!3045 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1183133 (= lt!535887 (getCurrentListMapNoExtraKeys!5078 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!786405 () Bool)

(assert (=> start!99744 (=> (not res!786405) (not e!672708))))

(assert (=> start!99744 (= res!786405 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37384 _keys!1208))))))

(assert (=> start!99744 e!672708))

(assert (=> start!99744 tp_is_empty!29817))

(declare-fun array_inv!28006 (array!76402) Bool)

(assert (=> start!99744 (array_inv!28006 _keys!1208)))

(assert (=> start!99744 true))

(assert (=> start!99744 tp!88575))

(declare-fun array_inv!28007 (array!76404) Bool)

(assert (=> start!99744 (and (array_inv!28007 _values!996) e!672706)))

(declare-fun b!1183126 () Bool)

(declare-fun Unit!39081 () Unit!39079)

(assert (=> b!1183126 (= e!672700 Unit!39081)))

(declare-fun lt!535889 () Unit!39079)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76402 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39079)

(assert (=> b!1183126 (= lt!535889 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183126 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535878 () Unit!39079)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76402 (_ BitVec 32) (_ BitVec 32)) Unit!39079)

(assert (=> b!1183126 (= lt!535878 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183126 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26060)))

(declare-fun lt!535882 () Unit!39079)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76402 (_ BitVec 64) (_ BitVec 32) List!26063) Unit!39079)

(assert (=> b!1183126 (= lt!535882 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26060))))

(assert (=> b!1183126 false))

(declare-fun b!1183134 () Bool)

(declare-fun Unit!39082 () Unit!39079)

(assert (=> b!1183134 (= e!672700 Unit!39082)))

(declare-fun b!1183135 () Bool)

(declare-fun res!786411 () Bool)

(assert (=> b!1183135 (=> (not res!786411) (not e!672708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183135 (= res!786411 (validMask!0 mask!1564))))

(declare-fun b!1183136 () Bool)

(declare-fun res!786416 () Bool)

(assert (=> b!1183136 (=> (not res!786416) (not e!672708))))

(assert (=> b!1183136 (= res!786416 (= (select (arr!36847 _keys!1208) i!673) k0!934))))

(declare-fun b!1183137 () Bool)

(declare-fun res!786415 () Bool)

(assert (=> b!1183137 (=> (not res!786415) (not e!672705))))

(assert (=> b!1183137 (= res!786415 (arrayNoDuplicates!0 lt!535896 #b00000000000000000000000000000000 Nil!26060))))

(declare-fun b!1183138 () Bool)

(assert (=> b!1183138 (= e!672698 tp_is_empty!29817)))

(assert (= (and start!99744 res!786405) b!1183135))

(assert (= (and b!1183135 res!786411) b!1183132))

(assert (= (and b!1183132 res!786406) b!1183121))

(assert (= (and b!1183121 res!786418) b!1183124))

(assert (= (and b!1183124 res!786413) b!1183120))

(assert (= (and b!1183120 res!786408) b!1183131))

(assert (= (and b!1183131 res!786412) b!1183136))

(assert (= (and b!1183136 res!786416) b!1183123))

(assert (= (and b!1183123 res!786409) b!1183137))

(assert (= (and b!1183137 res!786415) b!1183130))

(assert (= (and b!1183130 (not res!786410)) b!1183133))

(assert (= (and b!1183133 (not res!786407)) b!1183128))

(assert (= (and b!1183128 (not res!786414)) b!1183125))

(assert (= (and b!1183125 res!786404) b!1183119))

(assert (= (and b!1183119 (not res!786417)) b!1183129))

(assert (= (and b!1183125 c!117002) b!1183126))

(assert (= (and b!1183125 (not c!117002)) b!1183134))

(assert (= (and b!1183127 condMapEmpty!46553) mapIsEmpty!46553))

(assert (= (and b!1183127 (not condMapEmpty!46553)) mapNonEmpty!46553))

(get-info :version)

(assert (= (and mapNonEmpty!46553 ((_ is ValueCellFull!14199) mapValue!46553)) b!1183138))

(assert (= (and b!1183127 ((_ is ValueCellFull!14199) mapDefault!46553)) b!1183122))

(assert (= start!99744 b!1183127))

(declare-fun b_lambda!20449 () Bool)

(assert (=> (not b_lambda!20449) (not b!1183133)))

(declare-fun t!38348 () Bool)

(declare-fun tb!10107 () Bool)

(assert (=> (and start!99744 (= defaultEntry!1004 defaultEntry!1004) t!38348) tb!10107))

(declare-fun result!20773 () Bool)

(assert (=> tb!10107 (= result!20773 tp_is_empty!29817)))

(assert (=> b!1183133 t!38348))

(declare-fun b_and!41457 () Bool)

(assert (= b_and!41455 (and (=> t!38348 result!20773) b_and!41457)))

(declare-fun m!1091295 () Bool)

(assert (=> b!1183124 m!1091295))

(declare-fun m!1091297 () Bool)

(assert (=> b!1183128 m!1091297))

(declare-fun m!1091299 () Bool)

(assert (=> b!1183128 m!1091299))

(declare-fun m!1091301 () Bool)

(assert (=> b!1183128 m!1091301))

(declare-fun m!1091303 () Bool)

(assert (=> b!1183128 m!1091303))

(declare-fun m!1091305 () Bool)

(assert (=> b!1183128 m!1091305))

(declare-fun m!1091307 () Bool)

(assert (=> b!1183128 m!1091307))

(assert (=> b!1183128 m!1091305))

(assert (=> b!1183119 m!1091305))

(declare-fun m!1091309 () Bool)

(assert (=> b!1183131 m!1091309))

(declare-fun m!1091311 () Bool)

(assert (=> b!1183123 m!1091311))

(declare-fun m!1091313 () Bool)

(assert (=> b!1183123 m!1091313))

(declare-fun m!1091315 () Bool)

(assert (=> b!1183130 m!1091315))

(declare-fun m!1091317 () Bool)

(assert (=> b!1183130 m!1091317))

(declare-fun m!1091319 () Bool)

(assert (=> b!1183137 m!1091319))

(declare-fun m!1091321 () Bool)

(assert (=> start!99744 m!1091321))

(declare-fun m!1091323 () Bool)

(assert (=> start!99744 m!1091323))

(declare-fun m!1091325 () Bool)

(assert (=> b!1183135 m!1091325))

(declare-fun m!1091327 () Bool)

(assert (=> b!1183121 m!1091327))

(declare-fun m!1091329 () Bool)

(assert (=> b!1183125 m!1091329))

(declare-fun m!1091331 () Bool)

(assert (=> b!1183125 m!1091331))

(declare-fun m!1091333 () Bool)

(assert (=> b!1183125 m!1091333))

(assert (=> b!1183125 m!1091305))

(declare-fun m!1091335 () Bool)

(assert (=> b!1183125 m!1091335))

(assert (=> b!1183125 m!1091331))

(declare-fun m!1091337 () Bool)

(assert (=> b!1183125 m!1091337))

(assert (=> b!1183125 m!1091305))

(declare-fun m!1091339 () Bool)

(assert (=> b!1183125 m!1091339))

(declare-fun m!1091341 () Bool)

(assert (=> b!1183133 m!1091341))

(declare-fun m!1091343 () Bool)

(assert (=> b!1183133 m!1091343))

(declare-fun m!1091345 () Bool)

(assert (=> b!1183133 m!1091345))

(declare-fun m!1091347 () Bool)

(assert (=> b!1183133 m!1091347))

(declare-fun m!1091349 () Bool)

(assert (=> b!1183126 m!1091349))

(declare-fun m!1091351 () Bool)

(assert (=> b!1183126 m!1091351))

(declare-fun m!1091353 () Bool)

(assert (=> b!1183126 m!1091353))

(declare-fun m!1091355 () Bool)

(assert (=> b!1183126 m!1091355))

(declare-fun m!1091357 () Bool)

(assert (=> b!1183126 m!1091357))

(declare-fun m!1091359 () Bool)

(assert (=> b!1183136 m!1091359))

(declare-fun m!1091361 () Bool)

(assert (=> mapNonEmpty!46553 m!1091361))

(declare-fun m!1091363 () Bool)

(assert (=> b!1183129 m!1091363))

(check-sat (not b!1183130) (not b!1183128) (not b!1183129) b_and!41457 (not b!1183125) (not b!1183133) (not b!1183124) (not start!99744) (not mapNonEmpty!46553) (not b!1183123) (not b!1183121) (not b!1183131) (not b!1183135) (not b_next!25287) (not b!1183137) (not b_lambda!20449) tp_is_empty!29817 (not b!1183126))
(check-sat b_and!41457 (not b_next!25287))
