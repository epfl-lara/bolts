; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99244 () Bool)

(assert start!99244)

(declare-fun b_free!24813 () Bool)

(declare-fun b_next!24813 () Bool)

(assert (=> start!99244 (= b_free!24813 (not b_next!24813))))

(declare-fun tp!87151 () Bool)

(declare-fun b_and!40489 () Bool)

(assert (=> start!99244 (= tp!87151 b_and!40489)))

(declare-fun b!1168095 () Bool)

(declare-fun e!663917 () Bool)

(declare-fun e!663918 () Bool)

(declare-fun mapRes!45839 () Bool)

(assert (=> b!1168095 (= e!663917 (and e!663918 mapRes!45839))))

(declare-fun condMapEmpty!45839 () Bool)

(declare-datatypes ((V!44251 0))(
  ( (V!44252 (val!14728 Int)) )
))
(declare-datatypes ((ValueCell!13962 0))(
  ( (ValueCellFull!13962 (v!17366 V!44251)) (EmptyCell!13962) )
))
(declare-datatypes ((array!75462 0))(
  ( (array!75463 (arr!36378 (Array (_ BitVec 32) ValueCell!13962)) (size!36915 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75462)

(declare-fun mapDefault!45839 () ValueCell!13962)

(assert (=> b!1168095 (= condMapEmpty!45839 (= (arr!36378 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13962)) mapDefault!45839)))))

(declare-fun b!1168096 () Bool)

(declare-fun res!775064 () Bool)

(declare-fun e!663923 () Bool)

(assert (=> b!1168096 (=> (not res!775064) (not e!663923))))

(declare-datatypes ((array!75464 0))(
  ( (array!75465 (arr!36379 (Array (_ BitVec 32) (_ BitVec 64))) (size!36916 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75464)

(declare-datatypes ((List!25652 0))(
  ( (Nil!25649) (Cons!25648 (h!26857 (_ BitVec 64)) (t!37464 List!25652)) )
))
(declare-fun arrayNoDuplicates!0 (array!75464 (_ BitVec 32) List!25652) Bool)

(assert (=> b!1168096 (= res!775064 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25649))))

(declare-fun b!1168097 () Bool)

(declare-fun res!775060 () Bool)

(assert (=> b!1168097 (=> (not res!775060) (not e!663923))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168097 (= res!775060 (validMask!0 mask!1564))))

(declare-fun b!1168098 () Bool)

(declare-fun res!775061 () Bool)

(assert (=> b!1168098 (=> (not res!775061) (not e!663923))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1168098 (= res!775061 (= (select (arr!36379 _keys!1208) i!673) k0!934))))

(declare-fun b!1168099 () Bool)

(declare-fun e!663924 () Bool)

(declare-fun tp_is_empty!29343 () Bool)

(assert (=> b!1168099 (= e!663924 tp_is_empty!29343)))

(declare-fun b!1168100 () Bool)

(declare-fun res!775055 () Bool)

(assert (=> b!1168100 (=> (not res!775055) (not e!663923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168100 (= res!775055 (validKeyInArray!0 k0!934))))

(declare-fun res!775059 () Bool)

(assert (=> start!99244 (=> (not res!775059) (not e!663923))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99244 (= res!775059 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36916 _keys!1208))))))

(assert (=> start!99244 e!663923))

(assert (=> start!99244 tp_is_empty!29343))

(declare-fun array_inv!27686 (array!75464) Bool)

(assert (=> start!99244 (array_inv!27686 _keys!1208)))

(assert (=> start!99244 true))

(assert (=> start!99244 tp!87151))

(declare-fun array_inv!27687 (array!75462) Bool)

(assert (=> start!99244 (and (array_inv!27687 _values!996) e!663917)))

(declare-fun mapNonEmpty!45839 () Bool)

(declare-fun tp!87150 () Bool)

(assert (=> mapNonEmpty!45839 (= mapRes!45839 (and tp!87150 e!663924))))

(declare-fun mapRest!45839 () (Array (_ BitVec 32) ValueCell!13962))

(declare-fun mapValue!45839 () ValueCell!13962)

(declare-fun mapKey!45839 () (_ BitVec 32))

(assert (=> mapNonEmpty!45839 (= (arr!36378 _values!996) (store mapRest!45839 mapKey!45839 mapValue!45839))))

(declare-fun b!1168101 () Bool)

(declare-fun e!663922 () Bool)

(declare-fun e!663919 () Bool)

(assert (=> b!1168101 (= e!663922 (not e!663919))))

(declare-fun res!775053 () Bool)

(assert (=> b!1168101 (=> res!775053 e!663919)))

(assert (=> b!1168101 (= res!775053 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168101 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38436 0))(
  ( (Unit!38437) )
))
(declare-fun lt!525857 () Unit!38436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75464 (_ BitVec 64) (_ BitVec 32)) Unit!38436)

(assert (=> b!1168101 (= lt!525857 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168102 () Bool)

(declare-fun res!775054 () Bool)

(assert (=> b!1168102 (=> (not res!775054) (not e!663923))))

(assert (=> b!1168102 (= res!775054 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36916 _keys!1208))))))

(declare-fun b!1168103 () Bool)

(declare-fun e!663921 () Bool)

(assert (=> b!1168103 (= e!663919 e!663921)))

(declare-fun res!775056 () Bool)

(assert (=> b!1168103 (=> res!775056 e!663921)))

(assert (=> b!1168103 (= res!775056 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44251)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18876 0))(
  ( (tuple2!18877 (_1!9448 (_ BitVec 64)) (_2!9448 V!44251)) )
))
(declare-datatypes ((List!25653 0))(
  ( (Nil!25650) (Cons!25649 (h!26858 tuple2!18876) (t!37465 List!25653)) )
))
(declare-datatypes ((ListLongMap!16857 0))(
  ( (ListLongMap!16858 (toList!8444 List!25653)) )
))
(declare-fun lt!525858 () ListLongMap!16857)

(declare-fun lt!525856 () array!75462)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525861 () array!75464)

(declare-fun minValue!944 () V!44251)

(declare-fun getCurrentListMapNoExtraKeys!4877 (array!75464 array!75462 (_ BitVec 32) (_ BitVec 32) V!44251 V!44251 (_ BitVec 32) Int) ListLongMap!16857)

(assert (=> b!1168103 (= lt!525858 (getCurrentListMapNoExtraKeys!4877 lt!525861 lt!525856 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2869 (Int (_ BitVec 64)) V!44251)

(assert (=> b!1168103 (= lt!525856 (array!75463 (store (arr!36378 _values!996) i!673 (ValueCellFull!13962 (dynLambda!2869 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36915 _values!996)))))

(declare-fun lt!525860 () ListLongMap!16857)

(assert (=> b!1168103 (= lt!525860 (getCurrentListMapNoExtraKeys!4877 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168104 () Bool)

(declare-fun res!775062 () Bool)

(assert (=> b!1168104 (=> (not res!775062) (not e!663923))))

(assert (=> b!1168104 (= res!775062 (and (= (size!36915 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36916 _keys!1208) (size!36915 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168105 () Bool)

(declare-fun res!775058 () Bool)

(assert (=> b!1168105 (=> (not res!775058) (not e!663922))))

(assert (=> b!1168105 (= res!775058 (arrayNoDuplicates!0 lt!525861 #b00000000000000000000000000000000 Nil!25649))))

(declare-fun b!1168106 () Bool)

(assert (=> b!1168106 (= e!663918 tp_is_empty!29343)))

(declare-fun b!1168107 () Bool)

(declare-fun res!775057 () Bool)

(assert (=> b!1168107 (=> (not res!775057) (not e!663923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75464 (_ BitVec 32)) Bool)

(assert (=> b!1168107 (= res!775057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168108 () Bool)

(assert (=> b!1168108 (= e!663921 true)))

(declare-fun -!1473 (ListLongMap!16857 (_ BitVec 64)) ListLongMap!16857)

(assert (=> b!1168108 (= (getCurrentListMapNoExtraKeys!4877 lt!525861 lt!525856 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1473 (getCurrentListMapNoExtraKeys!4877 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525859 () Unit!38436)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!697 (array!75464 array!75462 (_ BitVec 32) (_ BitVec 32) V!44251 V!44251 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38436)

(assert (=> b!1168108 (= lt!525859 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!697 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45839 () Bool)

(assert (=> mapIsEmpty!45839 mapRes!45839))

(declare-fun b!1168109 () Bool)

(assert (=> b!1168109 (= e!663923 e!663922)))

(declare-fun res!775063 () Bool)

(assert (=> b!1168109 (=> (not res!775063) (not e!663922))))

(assert (=> b!1168109 (= res!775063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525861 mask!1564))))

(assert (=> b!1168109 (= lt!525861 (array!75465 (store (arr!36379 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36916 _keys!1208)))))

(assert (= (and start!99244 res!775059) b!1168097))

(assert (= (and b!1168097 res!775060) b!1168104))

(assert (= (and b!1168104 res!775062) b!1168107))

(assert (= (and b!1168107 res!775057) b!1168096))

(assert (= (and b!1168096 res!775064) b!1168102))

(assert (= (and b!1168102 res!775054) b!1168100))

(assert (= (and b!1168100 res!775055) b!1168098))

(assert (= (and b!1168098 res!775061) b!1168109))

(assert (= (and b!1168109 res!775063) b!1168105))

(assert (= (and b!1168105 res!775058) b!1168101))

(assert (= (and b!1168101 (not res!775053)) b!1168103))

(assert (= (and b!1168103 (not res!775056)) b!1168108))

(assert (= (and b!1168095 condMapEmpty!45839) mapIsEmpty!45839))

(assert (= (and b!1168095 (not condMapEmpty!45839)) mapNonEmpty!45839))

(get-info :version)

(assert (= (and mapNonEmpty!45839 ((_ is ValueCellFull!13962) mapValue!45839)) b!1168099))

(assert (= (and b!1168095 ((_ is ValueCellFull!13962) mapDefault!45839)) b!1168106))

(assert (= start!99244 b!1168095))

(declare-fun b_lambda!19937 () Bool)

(assert (=> (not b_lambda!19937) (not b!1168103)))

(declare-fun t!37463 () Bool)

(declare-fun tb!9633 () Bool)

(assert (=> (and start!99244 (= defaultEntry!1004 defaultEntry!1004) t!37463) tb!9633))

(declare-fun result!19823 () Bool)

(assert (=> tb!9633 (= result!19823 tp_is_empty!29343)))

(assert (=> b!1168103 t!37463))

(declare-fun b_and!40491 () Bool)

(assert (= b_and!40489 (and (=> t!37463 result!19823) b_and!40491)))

(declare-fun m!1076005 () Bool)

(assert (=> b!1168098 m!1076005))

(declare-fun m!1076007 () Bool)

(assert (=> b!1168105 m!1076007))

(declare-fun m!1076009 () Bool)

(assert (=> b!1168108 m!1076009))

(declare-fun m!1076011 () Bool)

(assert (=> b!1168108 m!1076011))

(assert (=> b!1168108 m!1076011))

(declare-fun m!1076013 () Bool)

(assert (=> b!1168108 m!1076013))

(declare-fun m!1076015 () Bool)

(assert (=> b!1168108 m!1076015))

(declare-fun m!1076017 () Bool)

(assert (=> b!1168101 m!1076017))

(declare-fun m!1076019 () Bool)

(assert (=> b!1168101 m!1076019))

(declare-fun m!1076021 () Bool)

(assert (=> start!99244 m!1076021))

(declare-fun m!1076023 () Bool)

(assert (=> start!99244 m!1076023))

(declare-fun m!1076025 () Bool)

(assert (=> b!1168107 m!1076025))

(declare-fun m!1076027 () Bool)

(assert (=> b!1168109 m!1076027))

(declare-fun m!1076029 () Bool)

(assert (=> b!1168109 m!1076029))

(declare-fun m!1076031 () Bool)

(assert (=> b!1168103 m!1076031))

(declare-fun m!1076033 () Bool)

(assert (=> b!1168103 m!1076033))

(declare-fun m!1076035 () Bool)

(assert (=> b!1168103 m!1076035))

(declare-fun m!1076037 () Bool)

(assert (=> b!1168103 m!1076037))

(declare-fun m!1076039 () Bool)

(assert (=> mapNonEmpty!45839 m!1076039))

(declare-fun m!1076041 () Bool)

(assert (=> b!1168097 m!1076041))

(declare-fun m!1076043 () Bool)

(assert (=> b!1168096 m!1076043))

(declare-fun m!1076045 () Bool)

(assert (=> b!1168100 m!1076045))

(check-sat (not mapNonEmpty!45839) tp_is_empty!29343 (not b!1168108) (not b_next!24813) (not b!1168096) (not b_lambda!19937) (not b!1168105) b_and!40491 (not b!1168100) (not b!1168107) (not b!1168097) (not b!1168109) (not b!1168103) (not b!1168101) (not start!99244))
(check-sat b_and!40491 (not b_next!24813))
