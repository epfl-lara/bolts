; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99306 () Bool)

(assert start!99306)

(declare-fun b_free!24849 () Bool)

(declare-fun b_next!24849 () Bool)

(assert (=> start!99306 (= b_free!24849 (not b_next!24849))))

(declare-fun tp!87261 () Bool)

(declare-fun b_and!40579 () Bool)

(assert (=> start!99306 (= tp!87261 b_and!40579)))

(declare-fun b!1169162 () Bool)

(declare-fun res!775845 () Bool)

(declare-fun e!664529 () Bool)

(assert (=> b!1169162 (=> (not res!775845) (not e!664529))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169162 (= res!775845 (validMask!0 mask!1564))))

(declare-fun b!1169163 () Bool)

(declare-fun e!664527 () Bool)

(declare-fun tp_is_empty!29379 () Bool)

(assert (=> b!1169163 (= e!664527 tp_is_empty!29379)))

(declare-fun b!1169164 () Bool)

(declare-fun e!664526 () Bool)

(assert (=> b!1169164 (= e!664526 tp_is_empty!29379)))

(declare-fun b!1169165 () Bool)

(declare-fun res!775850 () Bool)

(declare-fun e!664531 () Bool)

(assert (=> b!1169165 (=> (not res!775850) (not e!664531))))

(declare-datatypes ((array!75534 0))(
  ( (array!75535 (arr!36413 (Array (_ BitVec 32) (_ BitVec 64))) (size!36950 (_ BitVec 32))) )
))
(declare-fun lt!526427 () array!75534)

(declare-datatypes ((List!25682 0))(
  ( (Nil!25679) (Cons!25678 (h!26887 (_ BitVec 64)) (t!37530 List!25682)) )
))
(declare-fun arrayNoDuplicates!0 (array!75534 (_ BitVec 32) List!25682) Bool)

(assert (=> b!1169165 (= res!775850 (arrayNoDuplicates!0 lt!526427 #b00000000000000000000000000000000 Nil!25679))))

(declare-fun b!1169166 () Bool)

(declare-fun res!775848 () Bool)

(assert (=> b!1169166 (=> (not res!775848) (not e!664529))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!75534)

(assert (=> b!1169166 (= res!775848 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36950 _keys!1208))))))

(declare-fun b!1169167 () Bool)

(declare-fun e!664522 () Bool)

(declare-fun e!664521 () Bool)

(assert (=> b!1169167 (= e!664522 e!664521)))

(declare-fun res!775852 () Bool)

(assert (=> b!1169167 (=> res!775852 e!664521)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169167 (= res!775852 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44299 0))(
  ( (V!44300 (val!14746 Int)) )
))
(declare-fun zeroValue!944 () V!44299)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13980 0))(
  ( (ValueCellFull!13980 (v!17385 V!44299)) (EmptyCell!13980) )
))
(declare-datatypes ((array!75536 0))(
  ( (array!75537 (arr!36414 (Array (_ BitVec 32) ValueCell!13980)) (size!36951 (_ BitVec 32))) )
))
(declare-fun lt!526421 () array!75536)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18910 0))(
  ( (tuple2!18911 (_1!9465 (_ BitVec 64)) (_2!9465 V!44299)) )
))
(declare-datatypes ((List!25683 0))(
  ( (Nil!25680) (Cons!25679 (h!26888 tuple2!18910) (t!37531 List!25683)) )
))
(declare-datatypes ((ListLongMap!16891 0))(
  ( (ListLongMap!16892 (toList!8461 List!25683)) )
))
(declare-fun lt!526425 () ListLongMap!16891)

(declare-fun minValue!944 () V!44299)

(declare-fun getCurrentListMapNoExtraKeys!4894 (array!75534 array!75536 (_ BitVec 32) (_ BitVec 32) V!44299 V!44299 (_ BitVec 32) Int) ListLongMap!16891)

(assert (=> b!1169167 (= lt!526425 (getCurrentListMapNoExtraKeys!4894 lt!526427 lt!526421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75536)

(declare-fun lt!526426 () V!44299)

(assert (=> b!1169167 (= lt!526421 (array!75537 (store (arr!36414 _values!996) i!673 (ValueCellFull!13980 lt!526426)) (size!36951 _values!996)))))

(declare-fun dynLambda!2886 (Int (_ BitVec 64)) V!44299)

(assert (=> b!1169167 (= lt!526426 (dynLambda!2886 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526422 () ListLongMap!16891)

(assert (=> b!1169167 (= lt!526422 (getCurrentListMapNoExtraKeys!4894 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169168 () Bool)

(declare-fun e!664523 () Bool)

(assert (=> b!1169168 (= e!664523 true)))

(declare-fun e!664530 () Bool)

(assert (=> b!1169168 e!664530))

(declare-fun res!775840 () Bool)

(assert (=> b!1169168 (=> (not res!775840) (not e!664530))))

(declare-fun lt!526419 () ListLongMap!16891)

(declare-fun +!3710 (ListLongMap!16891 tuple2!18910) ListLongMap!16891)

(declare-fun get!18593 (ValueCell!13980 V!44299) V!44299)

(assert (=> b!1169168 (= res!775840 (= lt!526425 (+!3710 lt!526419 (tuple2!18911 (select (arr!36413 _keys!1208) from!1455) (get!18593 (select (arr!36414 _values!996) from!1455) lt!526426)))))))

(declare-fun b!1169169 () Bool)

(assert (=> b!1169169 (= e!664531 (not e!664522))))

(declare-fun res!775847 () Bool)

(assert (=> b!1169169 (=> res!775847 e!664522)))

(assert (=> b!1169169 (= res!775847 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169169 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38468 0))(
  ( (Unit!38469) )
))
(declare-fun lt!526420 () Unit!38468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75534 (_ BitVec 64) (_ BitVec 32)) Unit!38468)

(assert (=> b!1169169 (= lt!526420 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169171 () Bool)

(declare-fun res!775842 () Bool)

(assert (=> b!1169171 (=> (not res!775842) (not e!664529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75534 (_ BitVec 32)) Bool)

(assert (=> b!1169171 (= res!775842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169172 () Bool)

(declare-fun e!664525 () Bool)

(declare-fun mapRes!45896 () Bool)

(assert (=> b!1169172 (= e!664525 (and e!664526 mapRes!45896))))

(declare-fun condMapEmpty!45896 () Bool)

(declare-fun mapDefault!45896 () ValueCell!13980)

(assert (=> b!1169172 (= condMapEmpty!45896 (= (arr!36414 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13980)) mapDefault!45896)))))

(declare-fun b!1169173 () Bool)

(declare-fun res!775838 () Bool)

(assert (=> b!1169173 (=> (not res!775838) (not e!664529))))

(assert (=> b!1169173 (= res!775838 (and (= (size!36951 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36950 _keys!1208) (size!36951 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169174 () Bool)

(declare-fun res!775844 () Bool)

(assert (=> b!1169174 (=> (not res!775844) (not e!664529))))

(assert (=> b!1169174 (= res!775844 (= (select (arr!36413 _keys!1208) i!673) k0!934))))

(declare-fun b!1169175 () Bool)

(declare-fun e!664524 () Bool)

(assert (=> b!1169175 (= e!664530 e!664524)))

(declare-fun res!775839 () Bool)

(assert (=> b!1169175 (=> res!775839 e!664524)))

(assert (=> b!1169175 (= res!775839 (not (= (select (arr!36413 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1169176 () Bool)

(assert (=> b!1169176 (= e!664521 e!664523)))

(declare-fun res!775843 () Bool)

(assert (=> b!1169176 (=> res!775843 e!664523)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169176 (= res!775843 (not (validKeyInArray!0 (select (arr!36413 _keys!1208) from!1455))))))

(declare-fun lt!526428 () ListLongMap!16891)

(assert (=> b!1169176 (= lt!526428 lt!526419)))

(declare-fun lt!526423 () ListLongMap!16891)

(declare-fun -!1486 (ListLongMap!16891 (_ BitVec 64)) ListLongMap!16891)

(assert (=> b!1169176 (= lt!526419 (-!1486 lt!526423 k0!934))))

(assert (=> b!1169176 (= lt!526428 (getCurrentListMapNoExtraKeys!4894 lt!526427 lt!526421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169176 (= lt!526423 (getCurrentListMapNoExtraKeys!4894 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526424 () Unit!38468)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!710 (array!75534 array!75536 (_ BitVec 32) (_ BitVec 32) V!44299 V!44299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38468)

(assert (=> b!1169176 (= lt!526424 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!710 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169177 () Bool)

(assert (=> b!1169177 (= e!664524 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!775841 () Bool)

(assert (=> start!99306 (=> (not res!775841) (not e!664529))))

(assert (=> start!99306 (= res!775841 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36950 _keys!1208))))))

(assert (=> start!99306 e!664529))

(assert (=> start!99306 tp_is_empty!29379))

(declare-fun array_inv!27710 (array!75534) Bool)

(assert (=> start!99306 (array_inv!27710 _keys!1208)))

(assert (=> start!99306 true))

(assert (=> start!99306 tp!87261))

(declare-fun array_inv!27711 (array!75536) Bool)

(assert (=> start!99306 (and (array_inv!27711 _values!996) e!664525)))

(declare-fun b!1169170 () Bool)

(assert (=> b!1169170 (= e!664529 e!664531)))

(declare-fun res!775849 () Bool)

(assert (=> b!1169170 (=> (not res!775849) (not e!664531))))

(assert (=> b!1169170 (= res!775849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526427 mask!1564))))

(assert (=> b!1169170 (= lt!526427 (array!75535 (store (arr!36413 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36950 _keys!1208)))))

(declare-fun mapIsEmpty!45896 () Bool)

(assert (=> mapIsEmpty!45896 mapRes!45896))

(declare-fun b!1169178 () Bool)

(declare-fun res!775846 () Bool)

(assert (=> b!1169178 (=> (not res!775846) (not e!664529))))

(assert (=> b!1169178 (= res!775846 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25679))))

(declare-fun b!1169179 () Bool)

(declare-fun res!775851 () Bool)

(assert (=> b!1169179 (=> (not res!775851) (not e!664529))))

(assert (=> b!1169179 (= res!775851 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45896 () Bool)

(declare-fun tp!87262 () Bool)

(assert (=> mapNonEmpty!45896 (= mapRes!45896 (and tp!87262 e!664527))))

(declare-fun mapValue!45896 () ValueCell!13980)

(declare-fun mapRest!45896 () (Array (_ BitVec 32) ValueCell!13980))

(declare-fun mapKey!45896 () (_ BitVec 32))

(assert (=> mapNonEmpty!45896 (= (arr!36414 _values!996) (store mapRest!45896 mapKey!45896 mapValue!45896))))

(assert (= (and start!99306 res!775841) b!1169162))

(assert (= (and b!1169162 res!775845) b!1169173))

(assert (= (and b!1169173 res!775838) b!1169171))

(assert (= (and b!1169171 res!775842) b!1169178))

(assert (= (and b!1169178 res!775846) b!1169166))

(assert (= (and b!1169166 res!775848) b!1169179))

(assert (= (and b!1169179 res!775851) b!1169174))

(assert (= (and b!1169174 res!775844) b!1169170))

(assert (= (and b!1169170 res!775849) b!1169165))

(assert (= (and b!1169165 res!775850) b!1169169))

(assert (= (and b!1169169 (not res!775847)) b!1169167))

(assert (= (and b!1169167 (not res!775852)) b!1169176))

(assert (= (and b!1169176 (not res!775843)) b!1169168))

(assert (= (and b!1169168 res!775840) b!1169175))

(assert (= (and b!1169175 (not res!775839)) b!1169177))

(assert (= (and b!1169172 condMapEmpty!45896) mapIsEmpty!45896))

(assert (= (and b!1169172 (not condMapEmpty!45896)) mapNonEmpty!45896))

(get-info :version)

(assert (= (and mapNonEmpty!45896 ((_ is ValueCellFull!13980) mapValue!45896)) b!1169163))

(assert (= (and b!1169172 ((_ is ValueCellFull!13980) mapDefault!45896)) b!1169164))

(assert (= start!99306 b!1169172))

(declare-fun b_lambda!20011 () Bool)

(assert (=> (not b_lambda!20011) (not b!1169167)))

(declare-fun t!37529 () Bool)

(declare-fun tb!9669 () Bool)

(assert (=> (and start!99306 (= defaultEntry!1004 defaultEntry!1004) t!37529) tb!9669))

(declare-fun result!19897 () Bool)

(assert (=> tb!9669 (= result!19897 tp_is_empty!29379)))

(assert (=> b!1169167 t!37529))

(declare-fun b_and!40581 () Bool)

(assert (= b_and!40579 (and (=> t!37529 result!19897) b_and!40581)))

(declare-fun m!1077083 () Bool)

(assert (=> b!1169169 m!1077083))

(declare-fun m!1077085 () Bool)

(assert (=> b!1169169 m!1077085))

(declare-fun m!1077087 () Bool)

(assert (=> b!1169178 m!1077087))

(declare-fun m!1077089 () Bool)

(assert (=> b!1169177 m!1077089))

(declare-fun m!1077091 () Bool)

(assert (=> b!1169170 m!1077091))

(declare-fun m!1077093 () Bool)

(assert (=> b!1169170 m!1077093))

(declare-fun m!1077095 () Bool)

(assert (=> b!1169168 m!1077095))

(declare-fun m!1077097 () Bool)

(assert (=> b!1169168 m!1077097))

(assert (=> b!1169168 m!1077097))

(declare-fun m!1077099 () Bool)

(assert (=> b!1169168 m!1077099))

(declare-fun m!1077101 () Bool)

(assert (=> b!1169168 m!1077101))

(declare-fun m!1077103 () Bool)

(assert (=> b!1169167 m!1077103))

(declare-fun m!1077105 () Bool)

(assert (=> b!1169167 m!1077105))

(declare-fun m!1077107 () Bool)

(assert (=> b!1169167 m!1077107))

(declare-fun m!1077109 () Bool)

(assert (=> b!1169167 m!1077109))

(declare-fun m!1077111 () Bool)

(assert (=> b!1169176 m!1077111))

(declare-fun m!1077113 () Bool)

(assert (=> b!1169176 m!1077113))

(declare-fun m!1077115 () Bool)

(assert (=> b!1169176 m!1077115))

(assert (=> b!1169176 m!1077095))

(declare-fun m!1077117 () Bool)

(assert (=> b!1169176 m!1077117))

(assert (=> b!1169176 m!1077095))

(declare-fun m!1077119 () Bool)

(assert (=> b!1169176 m!1077119))

(declare-fun m!1077121 () Bool)

(assert (=> start!99306 m!1077121))

(declare-fun m!1077123 () Bool)

(assert (=> start!99306 m!1077123))

(declare-fun m!1077125 () Bool)

(assert (=> b!1169165 m!1077125))

(declare-fun m!1077127 () Bool)

(assert (=> b!1169174 m!1077127))

(assert (=> b!1169175 m!1077095))

(declare-fun m!1077129 () Bool)

(assert (=> b!1169179 m!1077129))

(declare-fun m!1077131 () Bool)

(assert (=> b!1169162 m!1077131))

(declare-fun m!1077133 () Bool)

(assert (=> b!1169171 m!1077133))

(declare-fun m!1077135 () Bool)

(assert (=> mapNonEmpty!45896 m!1077135))

(check-sat (not b!1169179) (not b_lambda!20011) (not b!1169168) (not b!1169177) (not mapNonEmpty!45896) (not start!99306) (not b!1169171) (not b!1169165) (not b!1169169) (not b_next!24849) (not b!1169178) (not b!1169176) tp_is_empty!29379 (not b!1169167) b_and!40581 (not b!1169170) (not b!1169162))
(check-sat b_and!40581 (not b_next!24849))
