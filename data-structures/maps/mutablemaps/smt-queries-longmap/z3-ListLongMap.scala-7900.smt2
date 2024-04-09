; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98182 () Bool)

(assert start!98182)

(declare-fun b_free!23847 () Bool)

(declare-fun b_next!23847 () Bool)

(assert (=> start!98182 (= b_free!23847 (not b_next!23847))))

(declare-fun tp!84246 () Bool)

(declare-fun b_and!38499 () Bool)

(assert (=> start!98182 (= tp!84246 b_and!38499)))

(declare-fun b!1128289 () Bool)

(declare-fun e!642196 () Bool)

(declare-fun e!642197 () Bool)

(assert (=> b!1128289 (= e!642196 e!642197)))

(declare-fun res!754093 () Bool)

(assert (=> b!1128289 (=> (not res!754093) (not e!642197))))

(declare-datatypes ((array!73574 0))(
  ( (array!73575 (arr!35436 (Array (_ BitVec 32) (_ BitVec 64))) (size!35973 (_ BitVec 32))) )
))
(declare-fun lt!500892 () array!73574)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73574 (_ BitVec 32)) Bool)

(assert (=> b!1128289 (= res!754093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500892 mask!1564))))

(declare-fun _keys!1208 () array!73574)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128289 (= lt!500892 (array!73575 (store (arr!35436 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35973 _keys!1208)))))

(declare-fun res!754090 () Bool)

(assert (=> start!98182 (=> (not res!754090) (not e!642196))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98182 (= res!754090 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35973 _keys!1208))))))

(assert (=> start!98182 e!642196))

(declare-fun tp_is_empty!28377 () Bool)

(assert (=> start!98182 tp_is_empty!28377))

(declare-fun array_inv!27054 (array!73574) Bool)

(assert (=> start!98182 (array_inv!27054 _keys!1208)))

(assert (=> start!98182 true))

(assert (=> start!98182 tp!84246))

(declare-datatypes ((V!42963 0))(
  ( (V!42964 (val!14245 Int)) )
))
(declare-datatypes ((ValueCell!13479 0))(
  ( (ValueCellFull!13479 (v!16879 V!42963)) (EmptyCell!13479) )
))
(declare-datatypes ((array!73576 0))(
  ( (array!73577 (arr!35437 (Array (_ BitVec 32) ValueCell!13479)) (size!35974 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73576)

(declare-fun e!642198 () Bool)

(declare-fun array_inv!27055 (array!73576) Bool)

(assert (=> start!98182 (and (array_inv!27055 _values!996) e!642198)))

(declare-fun b!1128290 () Bool)

(declare-fun e!642199 () Bool)

(declare-fun e!642194 () Bool)

(assert (=> b!1128290 (= e!642199 e!642194)))

(declare-fun res!754095 () Bool)

(assert (=> b!1128290 (=> res!754095 e!642194)))

(assert (=> b!1128290 (= res!754095 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42963)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42963)

(declare-datatypes ((tuple2!18016 0))(
  ( (tuple2!18017 (_1!9018 (_ BitVec 64)) (_2!9018 V!42963)) )
))
(declare-datatypes ((List!24837 0))(
  ( (Nil!24834) (Cons!24833 (h!26042 tuple2!18016) (t!35683 List!24837)) )
))
(declare-datatypes ((ListLongMap!15997 0))(
  ( (ListLongMap!15998 (toList!8014 List!24837)) )
))
(declare-fun lt!500897 () ListLongMap!15997)

(declare-fun lt!500894 () array!73576)

(declare-fun getCurrentListMapNoExtraKeys!4469 (array!73574 array!73576 (_ BitVec 32) (_ BitVec 32) V!42963 V!42963 (_ BitVec 32) Int) ListLongMap!15997)

(assert (=> b!1128290 (= lt!500897 (getCurrentListMapNoExtraKeys!4469 lt!500892 lt!500894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2547 (Int (_ BitVec 64)) V!42963)

(assert (=> b!1128290 (= lt!500894 (array!73577 (store (arr!35437 _values!996) i!673 (ValueCellFull!13479 (dynLambda!2547 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35974 _values!996)))))

(declare-fun lt!500898 () ListLongMap!15997)

(assert (=> b!1128290 (= lt!500898 (getCurrentListMapNoExtraKeys!4469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!642195 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!47824 () ListLongMap!15997)

(declare-fun call!47825 () ListLongMap!15997)

(declare-fun b!1128291 () Bool)

(declare-fun -!1149 (ListLongMap!15997 (_ BitVec 64)) ListLongMap!15997)

(assert (=> b!1128291 (= e!642195 (= call!47825 (-!1149 call!47824 k0!934)))))

(declare-fun b!1128292 () Bool)

(assert (=> b!1128292 (= e!642195 (= call!47825 call!47824))))

(declare-fun b!1128293 () Bool)

(declare-fun res!754091 () Bool)

(assert (=> b!1128293 (=> (not res!754091) (not e!642197))))

(declare-datatypes ((List!24838 0))(
  ( (Nil!24835) (Cons!24834 (h!26043 (_ BitVec 64)) (t!35684 List!24838)) )
))
(declare-fun arrayNoDuplicates!0 (array!73574 (_ BitVec 32) List!24838) Bool)

(assert (=> b!1128293 (= res!754091 (arrayNoDuplicates!0 lt!500892 #b00000000000000000000000000000000 Nil!24835))))

(declare-fun b!1128294 () Bool)

(declare-fun res!754088 () Bool)

(assert (=> b!1128294 (=> (not res!754088) (not e!642196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128294 (= res!754088 (validKeyInArray!0 k0!934))))

(declare-fun b!1128295 () Bool)

(declare-fun res!754089 () Bool)

(assert (=> b!1128295 (=> (not res!754089) (not e!642196))))

(assert (=> b!1128295 (= res!754089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!44383 () Bool)

(declare-fun mapRes!44383 () Bool)

(declare-fun tp!84245 () Bool)

(declare-fun e!642200 () Bool)

(assert (=> mapNonEmpty!44383 (= mapRes!44383 (and tp!84245 e!642200))))

(declare-fun mapKey!44383 () (_ BitVec 32))

(declare-fun mapRest!44383 () (Array (_ BitVec 32) ValueCell!13479))

(declare-fun mapValue!44383 () ValueCell!13479)

(assert (=> mapNonEmpty!44383 (= (arr!35437 _values!996) (store mapRest!44383 mapKey!44383 mapValue!44383))))

(declare-fun b!1128296 () Bool)

(declare-fun e!642201 () Bool)

(assert (=> b!1128296 (= e!642194 e!642201)))

(declare-fun res!754097 () Bool)

(assert (=> b!1128296 (=> res!754097 e!642201)))

(assert (=> b!1128296 (= res!754097 (not (= (select (arr!35436 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1128296 e!642195))

(declare-fun c!109721 () Bool)

(assert (=> b!1128296 (= c!109721 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36915 0))(
  ( (Unit!36916) )
))
(declare-fun lt!500893 () Unit!36915)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!403 (array!73574 array!73576 (_ BitVec 32) (_ BitVec 32) V!42963 V!42963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36915)

(assert (=> b!1128296 (= lt!500893 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128297 () Bool)

(declare-fun res!754096 () Bool)

(assert (=> b!1128297 (=> (not res!754096) (not e!642196))))

(assert (=> b!1128297 (= res!754096 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35973 _keys!1208))))))

(declare-fun b!1128298 () Bool)

(assert (=> b!1128298 (= e!642197 (not e!642199))))

(declare-fun res!754092 () Bool)

(assert (=> b!1128298 (=> res!754092 e!642199)))

(assert (=> b!1128298 (= res!754092 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128298 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500895 () Unit!36915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73574 (_ BitVec 64) (_ BitVec 32)) Unit!36915)

(assert (=> b!1128298 (= lt!500895 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1128299 () Bool)

(assert (=> b!1128299 (= e!642201 true)))

(declare-fun lt!500896 () Bool)

(declare-fun contains!6511 (ListLongMap!15997 (_ BitVec 64)) Bool)

(assert (=> b!1128299 (= lt!500896 (contains!6511 (getCurrentListMapNoExtraKeys!4469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1128300 () Bool)

(declare-fun res!754087 () Bool)

(assert (=> b!1128300 (=> (not res!754087) (not e!642196))))

(assert (=> b!1128300 (= res!754087 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24835))))

(declare-fun b!1128301 () Bool)

(declare-fun e!642203 () Bool)

(assert (=> b!1128301 (= e!642198 (and e!642203 mapRes!44383))))

(declare-fun condMapEmpty!44383 () Bool)

(declare-fun mapDefault!44383 () ValueCell!13479)

(assert (=> b!1128301 (= condMapEmpty!44383 (= (arr!35437 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13479)) mapDefault!44383)))))

(declare-fun bm!47821 () Bool)

(assert (=> bm!47821 (= call!47824 (getCurrentListMapNoExtraKeys!4469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47822 () Bool)

(assert (=> bm!47822 (= call!47825 (getCurrentListMapNoExtraKeys!4469 lt!500892 lt!500894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128302 () Bool)

(declare-fun res!754098 () Bool)

(assert (=> b!1128302 (=> (not res!754098) (not e!642196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128302 (= res!754098 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44383 () Bool)

(assert (=> mapIsEmpty!44383 mapRes!44383))

(declare-fun b!1128303 () Bool)

(declare-fun res!754086 () Bool)

(assert (=> b!1128303 (=> (not res!754086) (not e!642196))))

(assert (=> b!1128303 (= res!754086 (and (= (size!35974 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35973 _keys!1208) (size!35974 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128304 () Bool)

(assert (=> b!1128304 (= e!642203 tp_is_empty!28377)))

(declare-fun b!1128305 () Bool)

(assert (=> b!1128305 (= e!642200 tp_is_empty!28377)))

(declare-fun b!1128306 () Bool)

(declare-fun res!754094 () Bool)

(assert (=> b!1128306 (=> (not res!754094) (not e!642196))))

(assert (=> b!1128306 (= res!754094 (= (select (arr!35436 _keys!1208) i!673) k0!934))))

(assert (= (and start!98182 res!754090) b!1128302))

(assert (= (and b!1128302 res!754098) b!1128303))

(assert (= (and b!1128303 res!754086) b!1128295))

(assert (= (and b!1128295 res!754089) b!1128300))

(assert (= (and b!1128300 res!754087) b!1128297))

(assert (= (and b!1128297 res!754096) b!1128294))

(assert (= (and b!1128294 res!754088) b!1128306))

(assert (= (and b!1128306 res!754094) b!1128289))

(assert (= (and b!1128289 res!754093) b!1128293))

(assert (= (and b!1128293 res!754091) b!1128298))

(assert (= (and b!1128298 (not res!754092)) b!1128290))

(assert (= (and b!1128290 (not res!754095)) b!1128296))

(assert (= (and b!1128296 c!109721) b!1128291))

(assert (= (and b!1128296 (not c!109721)) b!1128292))

(assert (= (or b!1128291 b!1128292) bm!47822))

(assert (= (or b!1128291 b!1128292) bm!47821))

(assert (= (and b!1128296 (not res!754097)) b!1128299))

(assert (= (and b!1128301 condMapEmpty!44383) mapIsEmpty!44383))

(assert (= (and b!1128301 (not condMapEmpty!44383)) mapNonEmpty!44383))

(get-info :version)

(assert (= (and mapNonEmpty!44383 ((_ is ValueCellFull!13479) mapValue!44383)) b!1128305))

(assert (= (and b!1128301 ((_ is ValueCellFull!13479) mapDefault!44383)) b!1128304))

(assert (= start!98182 b!1128301))

(declare-fun b_lambda!18851 () Bool)

(assert (=> (not b_lambda!18851) (not b!1128290)))

(declare-fun t!35682 () Bool)

(declare-fun tb!8667 () Bool)

(assert (=> (and start!98182 (= defaultEntry!1004 defaultEntry!1004) t!35682) tb!8667))

(declare-fun result!17887 () Bool)

(assert (=> tb!8667 (= result!17887 tp_is_empty!28377)))

(assert (=> b!1128290 t!35682))

(declare-fun b_and!38501 () Bool)

(assert (= b_and!38499 (and (=> t!35682 result!17887) b_and!38501)))

(declare-fun m!1042031 () Bool)

(assert (=> b!1128290 m!1042031))

(declare-fun m!1042033 () Bool)

(assert (=> b!1128290 m!1042033))

(declare-fun m!1042035 () Bool)

(assert (=> b!1128290 m!1042035))

(declare-fun m!1042037 () Bool)

(assert (=> b!1128290 m!1042037))

(declare-fun m!1042039 () Bool)

(assert (=> b!1128293 m!1042039))

(declare-fun m!1042041 () Bool)

(assert (=> bm!47821 m!1042041))

(declare-fun m!1042043 () Bool)

(assert (=> b!1128300 m!1042043))

(declare-fun m!1042045 () Bool)

(assert (=> bm!47822 m!1042045))

(declare-fun m!1042047 () Bool)

(assert (=> start!98182 m!1042047))

(declare-fun m!1042049 () Bool)

(assert (=> start!98182 m!1042049))

(declare-fun m!1042051 () Bool)

(assert (=> b!1128291 m!1042051))

(declare-fun m!1042053 () Bool)

(assert (=> b!1128294 m!1042053))

(assert (=> b!1128299 m!1042041))

(assert (=> b!1128299 m!1042041))

(declare-fun m!1042055 () Bool)

(assert (=> b!1128299 m!1042055))

(declare-fun m!1042057 () Bool)

(assert (=> b!1128306 m!1042057))

(declare-fun m!1042059 () Bool)

(assert (=> b!1128298 m!1042059))

(declare-fun m!1042061 () Bool)

(assert (=> b!1128298 m!1042061))

(declare-fun m!1042063 () Bool)

(assert (=> b!1128289 m!1042063))

(declare-fun m!1042065 () Bool)

(assert (=> b!1128289 m!1042065))

(declare-fun m!1042067 () Bool)

(assert (=> b!1128302 m!1042067))

(declare-fun m!1042069 () Bool)

(assert (=> b!1128295 m!1042069))

(declare-fun m!1042071 () Bool)

(assert (=> mapNonEmpty!44383 m!1042071))

(declare-fun m!1042073 () Bool)

(assert (=> b!1128296 m!1042073))

(declare-fun m!1042075 () Bool)

(assert (=> b!1128296 m!1042075))

(check-sat (not b!1128291) b_and!38501 (not b_next!23847) (not b!1128296) (not b!1128290) (not b!1128289) (not b!1128295) (not start!98182) (not b!1128300) (not bm!47822) (not b!1128299) (not b!1128293) (not b!1128294) (not bm!47821) (not b_lambda!18851) tp_is_empty!28377 (not b!1128302) (not mapNonEmpty!44383) (not b!1128298))
(check-sat b_and!38501 (not b_next!23847))
