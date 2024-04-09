; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99196 () Bool)

(assert start!99196)

(declare-fun b_free!24765 () Bool)

(declare-fun b_next!24765 () Bool)

(assert (=> start!99196 (= b_free!24765 (not b_next!24765))))

(declare-fun tp!87007 () Bool)

(declare-fun b_and!40393 () Bool)

(assert (=> start!99196 (= tp!87007 b_and!40393)))

(declare-fun b!1166967 () Bool)

(declare-fun e!663348 () Bool)

(declare-fun tp_is_empty!29295 () Bool)

(assert (=> b!1166967 (= e!663348 tp_is_empty!29295)))

(declare-fun b!1166968 () Bool)

(declare-fun res!774192 () Bool)

(declare-fun e!663347 () Bool)

(assert (=> b!1166968 (=> (not res!774192) (not e!663347))))

(declare-datatypes ((array!75368 0))(
  ( (array!75369 (arr!36331 (Array (_ BitVec 32) (_ BitVec 64))) (size!36868 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75368)

(declare-datatypes ((List!25613 0))(
  ( (Nil!25610) (Cons!25609 (h!26818 (_ BitVec 64)) (t!37377 List!25613)) )
))
(declare-fun arrayNoDuplicates!0 (array!75368 (_ BitVec 32) List!25613) Bool)

(assert (=> b!1166968 (= res!774192 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25610))))

(declare-fun b!1166969 () Bool)

(declare-fun e!663346 () Bool)

(assert (=> b!1166969 (= e!663346 true)))

(declare-datatypes ((V!44187 0))(
  ( (V!44188 (val!14704 Int)) )
))
(declare-fun zeroValue!944 () V!44187)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13938 0))(
  ( (ValueCellFull!13938 (v!17342 V!44187)) (EmptyCell!13938) )
))
(declare-datatypes ((array!75370 0))(
  ( (array!75371 (arr!36332 (Array (_ BitVec 32) ValueCell!13938)) (size!36869 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75370)

(declare-fun lt!525428 () array!75368)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!525425 () array!75370)

(declare-fun minValue!944 () V!44187)

(declare-datatypes ((tuple2!18838 0))(
  ( (tuple2!18839 (_1!9429 (_ BitVec 64)) (_2!9429 V!44187)) )
))
(declare-datatypes ((List!25614 0))(
  ( (Nil!25611) (Cons!25610 (h!26819 tuple2!18838) (t!37378 List!25614)) )
))
(declare-datatypes ((ListLongMap!16819 0))(
  ( (ListLongMap!16820 (toList!8425 List!25614)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4858 (array!75368 array!75370 (_ BitVec 32) (_ BitVec 32) V!44187 V!44187 (_ BitVec 32) Int) ListLongMap!16819)

(declare-fun -!1460 (ListLongMap!16819 (_ BitVec 64)) ListLongMap!16819)

(assert (=> b!1166969 (= (getCurrentListMapNoExtraKeys!4858 lt!525428 lt!525425 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1460 (getCurrentListMapNoExtraKeys!4858 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38402 0))(
  ( (Unit!38403) )
))
(declare-fun lt!525426 () Unit!38402)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!684 (array!75368 array!75370 (_ BitVec 32) (_ BitVec 32) V!44187 V!44187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38402)

(assert (=> b!1166969 (= lt!525426 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!684 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166970 () Bool)

(declare-fun res!774198 () Bool)

(assert (=> b!1166970 (=> (not res!774198) (not e!663347))))

(assert (=> b!1166970 (= res!774198 (= (select (arr!36331 _keys!1208) i!673) k0!934))))

(declare-fun b!1166971 () Bool)

(declare-fun e!663344 () Bool)

(assert (=> b!1166971 (= e!663344 tp_is_empty!29295)))

(declare-fun res!774191 () Bool)

(assert (=> start!99196 (=> (not res!774191) (not e!663347))))

(assert (=> start!99196 (= res!774191 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36868 _keys!1208))))))

(assert (=> start!99196 e!663347))

(assert (=> start!99196 tp_is_empty!29295))

(declare-fun array_inv!27660 (array!75368) Bool)

(assert (=> start!99196 (array_inv!27660 _keys!1208)))

(assert (=> start!99196 true))

(assert (=> start!99196 tp!87007))

(declare-fun e!663345 () Bool)

(declare-fun array_inv!27661 (array!75370) Bool)

(assert (=> start!99196 (and (array_inv!27661 _values!996) e!663345)))

(declare-fun b!1166972 () Bool)

(declare-fun res!774193 () Bool)

(assert (=> b!1166972 (=> (not res!774193) (not e!663347))))

(assert (=> b!1166972 (= res!774193 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36868 _keys!1208))))))

(declare-fun b!1166973 () Bool)

(declare-fun res!774194 () Bool)

(assert (=> b!1166973 (=> (not res!774194) (not e!663347))))

(assert (=> b!1166973 (= res!774194 (and (= (size!36869 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36868 _keys!1208) (size!36869 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166974 () Bool)

(declare-fun res!774195 () Bool)

(declare-fun e!663341 () Bool)

(assert (=> b!1166974 (=> (not res!774195) (not e!663341))))

(assert (=> b!1166974 (= res!774195 (arrayNoDuplicates!0 lt!525428 #b00000000000000000000000000000000 Nil!25610))))

(declare-fun b!1166975 () Bool)

(declare-fun res!774196 () Bool)

(assert (=> b!1166975 (=> (not res!774196) (not e!663347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166975 (= res!774196 (validMask!0 mask!1564))))

(declare-fun b!1166976 () Bool)

(declare-fun e!663343 () Bool)

(assert (=> b!1166976 (= e!663343 e!663346)))

(declare-fun res!774200 () Bool)

(assert (=> b!1166976 (=> res!774200 e!663346)))

(assert (=> b!1166976 (= res!774200 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525429 () ListLongMap!16819)

(assert (=> b!1166976 (= lt!525429 (getCurrentListMapNoExtraKeys!4858 lt!525428 lt!525425 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2852 (Int (_ BitVec 64)) V!44187)

(assert (=> b!1166976 (= lt!525425 (array!75371 (store (arr!36332 _values!996) i!673 (ValueCellFull!13938 (dynLambda!2852 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36869 _values!996)))))

(declare-fun lt!525427 () ListLongMap!16819)

(assert (=> b!1166976 (= lt!525427 (getCurrentListMapNoExtraKeys!4858 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166977 () Bool)

(assert (=> b!1166977 (= e!663341 (not e!663343))))

(declare-fun res!774197 () Bool)

(assert (=> b!1166977 (=> res!774197 e!663343)))

(assert (=> b!1166977 (= res!774197 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166977 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525424 () Unit!38402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75368 (_ BitVec 64) (_ BitVec 32)) Unit!38402)

(assert (=> b!1166977 (= lt!525424 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166978 () Bool)

(declare-fun mapRes!45767 () Bool)

(assert (=> b!1166978 (= e!663345 (and e!663348 mapRes!45767))))

(declare-fun condMapEmpty!45767 () Bool)

(declare-fun mapDefault!45767 () ValueCell!13938)

(assert (=> b!1166978 (= condMapEmpty!45767 (= (arr!36332 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13938)) mapDefault!45767)))))

(declare-fun mapNonEmpty!45767 () Bool)

(declare-fun tp!87006 () Bool)

(assert (=> mapNonEmpty!45767 (= mapRes!45767 (and tp!87006 e!663344))))

(declare-fun mapValue!45767 () ValueCell!13938)

(declare-fun mapRest!45767 () (Array (_ BitVec 32) ValueCell!13938))

(declare-fun mapKey!45767 () (_ BitVec 32))

(assert (=> mapNonEmpty!45767 (= (arr!36332 _values!996) (store mapRest!45767 mapKey!45767 mapValue!45767))))

(declare-fun b!1166979 () Bool)

(declare-fun res!774189 () Bool)

(assert (=> b!1166979 (=> (not res!774189) (not e!663347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166979 (= res!774189 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45767 () Bool)

(assert (=> mapIsEmpty!45767 mapRes!45767))

(declare-fun b!1166980 () Bool)

(assert (=> b!1166980 (= e!663347 e!663341)))

(declare-fun res!774190 () Bool)

(assert (=> b!1166980 (=> (not res!774190) (not e!663341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75368 (_ BitVec 32)) Bool)

(assert (=> b!1166980 (= res!774190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525428 mask!1564))))

(assert (=> b!1166980 (= lt!525428 (array!75369 (store (arr!36331 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36868 _keys!1208)))))

(declare-fun b!1166981 () Bool)

(declare-fun res!774199 () Bool)

(assert (=> b!1166981 (=> (not res!774199) (not e!663347))))

(assert (=> b!1166981 (= res!774199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99196 res!774191) b!1166975))

(assert (= (and b!1166975 res!774196) b!1166973))

(assert (= (and b!1166973 res!774194) b!1166981))

(assert (= (and b!1166981 res!774199) b!1166968))

(assert (= (and b!1166968 res!774192) b!1166972))

(assert (= (and b!1166972 res!774193) b!1166979))

(assert (= (and b!1166979 res!774189) b!1166970))

(assert (= (and b!1166970 res!774198) b!1166980))

(assert (= (and b!1166980 res!774190) b!1166974))

(assert (= (and b!1166974 res!774195) b!1166977))

(assert (= (and b!1166977 (not res!774197)) b!1166976))

(assert (= (and b!1166976 (not res!774200)) b!1166969))

(assert (= (and b!1166978 condMapEmpty!45767) mapIsEmpty!45767))

(assert (= (and b!1166978 (not condMapEmpty!45767)) mapNonEmpty!45767))

(get-info :version)

(assert (= (and mapNonEmpty!45767 ((_ is ValueCellFull!13938) mapValue!45767)) b!1166971))

(assert (= (and b!1166978 ((_ is ValueCellFull!13938) mapDefault!45767)) b!1166967))

(assert (= start!99196 b!1166978))

(declare-fun b_lambda!19889 () Bool)

(assert (=> (not b_lambda!19889) (not b!1166976)))

(declare-fun t!37376 () Bool)

(declare-fun tb!9585 () Bool)

(assert (=> (and start!99196 (= defaultEntry!1004 defaultEntry!1004) t!37376) tb!9585))

(declare-fun result!19727 () Bool)

(assert (=> tb!9585 (= result!19727 tp_is_empty!29295)))

(assert (=> b!1166976 t!37376))

(declare-fun b_and!40395 () Bool)

(assert (= b_and!40393 (and (=> t!37376 result!19727) b_and!40395)))

(declare-fun m!1074997 () Bool)

(assert (=> b!1166977 m!1074997))

(declare-fun m!1074999 () Bool)

(assert (=> b!1166977 m!1074999))

(declare-fun m!1075001 () Bool)

(assert (=> b!1166976 m!1075001))

(declare-fun m!1075003 () Bool)

(assert (=> b!1166976 m!1075003))

(declare-fun m!1075005 () Bool)

(assert (=> b!1166976 m!1075005))

(declare-fun m!1075007 () Bool)

(assert (=> b!1166976 m!1075007))

(declare-fun m!1075009 () Bool)

(assert (=> b!1166969 m!1075009))

(declare-fun m!1075011 () Bool)

(assert (=> b!1166969 m!1075011))

(assert (=> b!1166969 m!1075011))

(declare-fun m!1075013 () Bool)

(assert (=> b!1166969 m!1075013))

(declare-fun m!1075015 () Bool)

(assert (=> b!1166969 m!1075015))

(declare-fun m!1075017 () Bool)

(assert (=> b!1166975 m!1075017))

(declare-fun m!1075019 () Bool)

(assert (=> b!1166980 m!1075019))

(declare-fun m!1075021 () Bool)

(assert (=> b!1166980 m!1075021))

(declare-fun m!1075023 () Bool)

(assert (=> b!1166979 m!1075023))

(declare-fun m!1075025 () Bool)

(assert (=> start!99196 m!1075025))

(declare-fun m!1075027 () Bool)

(assert (=> start!99196 m!1075027))

(declare-fun m!1075029 () Bool)

(assert (=> b!1166970 m!1075029))

(declare-fun m!1075031 () Bool)

(assert (=> mapNonEmpty!45767 m!1075031))

(declare-fun m!1075033 () Bool)

(assert (=> b!1166968 m!1075033))

(declare-fun m!1075035 () Bool)

(assert (=> b!1166974 m!1075035))

(declare-fun m!1075037 () Bool)

(assert (=> b!1166981 m!1075037))

(check-sat (not b!1166977) (not b_lambda!19889) (not b!1166976) (not b!1166968) (not b!1166981) (not mapNonEmpty!45767) b_and!40395 (not start!99196) tp_is_empty!29295 (not b!1166980) (not b!1166974) (not b!1166975) (not b_next!24765) (not b!1166969) (not b!1166979))
(check-sat b_and!40395 (not b_next!24765))
