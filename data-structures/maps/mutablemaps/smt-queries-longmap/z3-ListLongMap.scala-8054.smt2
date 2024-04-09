; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99202 () Bool)

(assert start!99202)

(declare-fun b_free!24771 () Bool)

(declare-fun b_next!24771 () Bool)

(assert (=> start!99202 (= b_free!24771 (not b_next!24771))))

(declare-fun tp!87024 () Bool)

(declare-fun b_and!40405 () Bool)

(assert (=> start!99202 (= tp!87024 b_and!40405)))

(declare-fun mapIsEmpty!45776 () Bool)

(declare-fun mapRes!45776 () Bool)

(assert (=> mapIsEmpty!45776 mapRes!45776))

(declare-fun res!774302 () Bool)

(declare-fun e!663414 () Bool)

(assert (=> start!99202 (=> (not res!774302) (not e!663414))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75380 0))(
  ( (array!75381 (arr!36337 (Array (_ BitVec 32) (_ BitVec 64))) (size!36874 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75380)

(assert (=> start!99202 (= res!774302 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36874 _keys!1208))))))

(assert (=> start!99202 e!663414))

(declare-fun tp_is_empty!29301 () Bool)

(assert (=> start!99202 tp_is_empty!29301))

(declare-fun array_inv!27662 (array!75380) Bool)

(assert (=> start!99202 (array_inv!27662 _keys!1208)))

(assert (=> start!99202 true))

(assert (=> start!99202 tp!87024))

(declare-datatypes ((V!44195 0))(
  ( (V!44196 (val!14707 Int)) )
))
(declare-datatypes ((ValueCell!13941 0))(
  ( (ValueCellFull!13941 (v!17345 V!44195)) (EmptyCell!13941) )
))
(declare-datatypes ((array!75382 0))(
  ( (array!75383 (arr!36338 (Array (_ BitVec 32) ValueCell!13941)) (size!36875 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75382)

(declare-fun e!663420 () Bool)

(declare-fun array_inv!27663 (array!75382) Bool)

(assert (=> start!99202 (and (array_inv!27663 _values!996) e!663420)))

(declare-fun b!1167108 () Bool)

(declare-fun res!774303 () Bool)

(assert (=> b!1167108 (=> (not res!774303) (not e!663414))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167108 (= res!774303 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36874 _keys!1208))))))

(declare-fun b!1167109 () Bool)

(declare-fun e!663417 () Bool)

(declare-fun e!663413 () Bool)

(assert (=> b!1167109 (= e!663417 (not e!663413))))

(declare-fun res!774298 () Bool)

(assert (=> b!1167109 (=> res!774298 e!663413)))

(assert (=> b!1167109 (= res!774298 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167109 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38406 0))(
  ( (Unit!38407) )
))
(declare-fun lt!525482 () Unit!38406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75380 (_ BitVec 64) (_ BitVec 32)) Unit!38406)

(assert (=> b!1167109 (= lt!525482 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!45776 () Bool)

(declare-fun tp!87025 () Bool)

(declare-fun e!663416 () Bool)

(assert (=> mapNonEmpty!45776 (= mapRes!45776 (and tp!87025 e!663416))))

(declare-fun mapKey!45776 () (_ BitVec 32))

(declare-fun mapValue!45776 () ValueCell!13941)

(declare-fun mapRest!45776 () (Array (_ BitVec 32) ValueCell!13941))

(assert (=> mapNonEmpty!45776 (= (arr!36338 _values!996) (store mapRest!45776 mapKey!45776 mapValue!45776))))

(declare-fun b!1167110 () Bool)

(assert (=> b!1167110 (= e!663416 tp_is_empty!29301)))

(declare-fun b!1167111 () Bool)

(assert (=> b!1167111 (= e!663414 e!663417)))

(declare-fun res!774307 () Bool)

(assert (=> b!1167111 (=> (not res!774307) (not e!663417))))

(declare-fun lt!525480 () array!75380)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75380 (_ BitVec 32)) Bool)

(assert (=> b!1167111 (= res!774307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525480 mask!1564))))

(assert (=> b!1167111 (= lt!525480 (array!75381 (store (arr!36337 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36874 _keys!1208)))))

(declare-fun b!1167112 () Bool)

(declare-fun res!774304 () Bool)

(assert (=> b!1167112 (=> (not res!774304) (not e!663414))))

(declare-datatypes ((List!25617 0))(
  ( (Nil!25614) (Cons!25613 (h!26822 (_ BitVec 64)) (t!37387 List!25617)) )
))
(declare-fun arrayNoDuplicates!0 (array!75380 (_ BitVec 32) List!25617) Bool)

(assert (=> b!1167112 (= res!774304 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25614))))

(declare-fun b!1167113 () Bool)

(declare-fun res!774300 () Bool)

(assert (=> b!1167113 (=> (not res!774300) (not e!663417))))

(assert (=> b!1167113 (= res!774300 (arrayNoDuplicates!0 lt!525480 #b00000000000000000000000000000000 Nil!25614))))

(declare-fun b!1167114 () Bool)

(declare-fun res!774308 () Bool)

(assert (=> b!1167114 (=> (not res!774308) (not e!663414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167114 (= res!774308 (validKeyInArray!0 k0!934))))

(declare-fun b!1167115 () Bool)

(declare-fun res!774297 () Bool)

(assert (=> b!1167115 (=> (not res!774297) (not e!663414))))

(assert (=> b!1167115 (= res!774297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167116 () Bool)

(declare-fun e!663418 () Bool)

(assert (=> b!1167116 (= e!663420 (and e!663418 mapRes!45776))))

(declare-fun condMapEmpty!45776 () Bool)

(declare-fun mapDefault!45776 () ValueCell!13941)

(assert (=> b!1167116 (= condMapEmpty!45776 (= (arr!36338 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13941)) mapDefault!45776)))))

(declare-fun b!1167117 () Bool)

(declare-fun e!663415 () Bool)

(assert (=> b!1167117 (= e!663415 true)))

(declare-fun zeroValue!944 () V!44195)

(declare-fun defaultEntry!1004 () Int)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525483 () array!75382)

(declare-fun minValue!944 () V!44195)

(declare-datatypes ((tuple2!18840 0))(
  ( (tuple2!18841 (_1!9430 (_ BitVec 64)) (_2!9430 V!44195)) )
))
(declare-datatypes ((List!25618 0))(
  ( (Nil!25615) (Cons!25614 (h!26823 tuple2!18840) (t!37388 List!25618)) )
))
(declare-datatypes ((ListLongMap!16821 0))(
  ( (ListLongMap!16822 (toList!8426 List!25618)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4859 (array!75380 array!75382 (_ BitVec 32) (_ BitVec 32) V!44195 V!44195 (_ BitVec 32) Int) ListLongMap!16821)

(declare-fun -!1461 (ListLongMap!16821 (_ BitVec 64)) ListLongMap!16821)

(assert (=> b!1167117 (= (getCurrentListMapNoExtraKeys!4859 lt!525480 lt!525483 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1461 (getCurrentListMapNoExtraKeys!4859 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525481 () Unit!38406)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!685 (array!75380 array!75382 (_ BitVec 32) (_ BitVec 32) V!44195 V!44195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38406)

(assert (=> b!1167117 (= lt!525481 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!685 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167118 () Bool)

(declare-fun res!774299 () Bool)

(assert (=> b!1167118 (=> (not res!774299) (not e!663414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167118 (= res!774299 (validMask!0 mask!1564))))

(declare-fun b!1167119 () Bool)

(assert (=> b!1167119 (= e!663413 e!663415)))

(declare-fun res!774301 () Bool)

(assert (=> b!1167119 (=> res!774301 e!663415)))

(assert (=> b!1167119 (= res!774301 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525478 () ListLongMap!16821)

(assert (=> b!1167119 (= lt!525478 (getCurrentListMapNoExtraKeys!4859 lt!525480 lt!525483 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2853 (Int (_ BitVec 64)) V!44195)

(assert (=> b!1167119 (= lt!525483 (array!75383 (store (arr!36338 _values!996) i!673 (ValueCellFull!13941 (dynLambda!2853 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36875 _values!996)))))

(declare-fun lt!525479 () ListLongMap!16821)

(assert (=> b!1167119 (= lt!525479 (getCurrentListMapNoExtraKeys!4859 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167120 () Bool)

(declare-fun res!774305 () Bool)

(assert (=> b!1167120 (=> (not res!774305) (not e!663414))))

(assert (=> b!1167120 (= res!774305 (= (select (arr!36337 _keys!1208) i!673) k0!934))))

(declare-fun b!1167121 () Bool)

(declare-fun res!774306 () Bool)

(assert (=> b!1167121 (=> (not res!774306) (not e!663414))))

(assert (=> b!1167121 (= res!774306 (and (= (size!36875 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36874 _keys!1208) (size!36875 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167122 () Bool)

(assert (=> b!1167122 (= e!663418 tp_is_empty!29301)))

(assert (= (and start!99202 res!774302) b!1167118))

(assert (= (and b!1167118 res!774299) b!1167121))

(assert (= (and b!1167121 res!774306) b!1167115))

(assert (= (and b!1167115 res!774297) b!1167112))

(assert (= (and b!1167112 res!774304) b!1167108))

(assert (= (and b!1167108 res!774303) b!1167114))

(assert (= (and b!1167114 res!774308) b!1167120))

(assert (= (and b!1167120 res!774305) b!1167111))

(assert (= (and b!1167111 res!774307) b!1167113))

(assert (= (and b!1167113 res!774300) b!1167109))

(assert (= (and b!1167109 (not res!774298)) b!1167119))

(assert (= (and b!1167119 (not res!774301)) b!1167117))

(assert (= (and b!1167116 condMapEmpty!45776) mapIsEmpty!45776))

(assert (= (and b!1167116 (not condMapEmpty!45776)) mapNonEmpty!45776))

(get-info :version)

(assert (= (and mapNonEmpty!45776 ((_ is ValueCellFull!13941) mapValue!45776)) b!1167110))

(assert (= (and b!1167116 ((_ is ValueCellFull!13941) mapDefault!45776)) b!1167122))

(assert (= start!99202 b!1167116))

(declare-fun b_lambda!19895 () Bool)

(assert (=> (not b_lambda!19895) (not b!1167119)))

(declare-fun t!37386 () Bool)

(declare-fun tb!9591 () Bool)

(assert (=> (and start!99202 (= defaultEntry!1004 defaultEntry!1004) t!37386) tb!9591))

(declare-fun result!19739 () Bool)

(assert (=> tb!9591 (= result!19739 tp_is_empty!29301)))

(assert (=> b!1167119 t!37386))

(declare-fun b_and!40407 () Bool)

(assert (= b_and!40405 (and (=> t!37386 result!19739) b_and!40407)))

(declare-fun m!1075123 () Bool)

(assert (=> b!1167111 m!1075123))

(declare-fun m!1075125 () Bool)

(assert (=> b!1167111 m!1075125))

(declare-fun m!1075127 () Bool)

(assert (=> b!1167118 m!1075127))

(declare-fun m!1075129 () Bool)

(assert (=> b!1167120 m!1075129))

(declare-fun m!1075131 () Bool)

(assert (=> b!1167117 m!1075131))

(declare-fun m!1075133 () Bool)

(assert (=> b!1167117 m!1075133))

(assert (=> b!1167117 m!1075133))

(declare-fun m!1075135 () Bool)

(assert (=> b!1167117 m!1075135))

(declare-fun m!1075137 () Bool)

(assert (=> b!1167117 m!1075137))

(declare-fun m!1075139 () Bool)

(assert (=> b!1167112 m!1075139))

(declare-fun m!1075141 () Bool)

(assert (=> b!1167115 m!1075141))

(declare-fun m!1075143 () Bool)

(assert (=> b!1167113 m!1075143))

(declare-fun m!1075145 () Bool)

(assert (=> b!1167114 m!1075145))

(declare-fun m!1075147 () Bool)

(assert (=> b!1167109 m!1075147))

(declare-fun m!1075149 () Bool)

(assert (=> b!1167109 m!1075149))

(declare-fun m!1075151 () Bool)

(assert (=> mapNonEmpty!45776 m!1075151))

(declare-fun m!1075153 () Bool)

(assert (=> start!99202 m!1075153))

(declare-fun m!1075155 () Bool)

(assert (=> start!99202 m!1075155))

(declare-fun m!1075157 () Bool)

(assert (=> b!1167119 m!1075157))

(declare-fun m!1075159 () Bool)

(assert (=> b!1167119 m!1075159))

(declare-fun m!1075161 () Bool)

(assert (=> b!1167119 m!1075161))

(declare-fun m!1075163 () Bool)

(assert (=> b!1167119 m!1075163))

(check-sat (not b!1167117) tp_is_empty!29301 (not b!1167119) (not b!1167115) (not mapNonEmpty!45776) (not b!1167111) (not b_lambda!19895) (not b!1167112) (not b!1167109) (not b_next!24771) (not start!99202) (not b!1167114) (not b!1167113) b_and!40407 (not b!1167118))
(check-sat b_and!40407 (not b_next!24771))
