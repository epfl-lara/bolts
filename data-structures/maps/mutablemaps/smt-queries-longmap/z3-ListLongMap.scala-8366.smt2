; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101816 () Bool)

(assert start!101816)

(declare-fun b_free!26469 () Bool)

(declare-fun b_next!26469 () Bool)

(assert (=> start!101816 (= b_free!26469 (not b_next!26469))))

(declare-fun tp!92453 () Bool)

(declare-fun b_and!44209 () Bool)

(assert (=> start!101816 (= tp!92453 b_and!44209)))

(declare-fun b!1225819 () Bool)

(declare-fun e!696243 () Bool)

(assert (=> b!1225819 (= e!696243 true)))

(declare-datatypes ((V!46691 0))(
  ( (V!46692 (val!15643 Int)) )
))
(declare-fun zeroValue!944 () V!46691)

(declare-datatypes ((array!79104 0))(
  ( (array!79105 (arr!38175 (Array (_ BitVec 32) (_ BitVec 64))) (size!38712 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79104)

(declare-fun lt!558557 () array!79104)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14877 0))(
  ( (ValueCellFull!14877 (v!18306 V!46691)) (EmptyCell!14877) )
))
(declare-datatypes ((array!79106 0))(
  ( (array!79107 (arr!38176 (Array (_ BitVec 32) ValueCell!14877)) (size!38713 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79106)

(declare-fun minValue!944 () V!46691)

(declare-fun lt!558556 () array!79106)

(declare-datatypes ((tuple2!20314 0))(
  ( (tuple2!20315 (_1!10167 (_ BitVec 64)) (_2!10167 V!46691)) )
))
(declare-datatypes ((List!27126 0))(
  ( (Nil!27123) (Cons!27122 (h!28331 tuple2!20314) (t!40582 List!27126)) )
))
(declare-datatypes ((ListLongMap!18295 0))(
  ( (ListLongMap!18296 (toList!9163 List!27126)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5559 (array!79104 array!79106 (_ BitVec 32) (_ BitVec 32) V!46691 V!46691 (_ BitVec 32) Int) ListLongMap!18295)

(declare-fun -!1999 (ListLongMap!18295 (_ BitVec 64)) ListLongMap!18295)

(assert (=> b!1225819 (= (getCurrentListMapNoExtraKeys!5559 lt!558557 lt!558556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1999 (getCurrentListMapNoExtraKeys!5559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40572 0))(
  ( (Unit!40573) )
))
(declare-fun lt!558555 () Unit!40572)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1199 (array!79104 array!79106 (_ BitVec 32) (_ BitVec 32) V!46691 V!46691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40572)

(assert (=> b!1225819 (= lt!558555 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1199 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48658 () Bool)

(declare-fun mapRes!48658 () Bool)

(declare-fun tp!92454 () Bool)

(declare-fun e!696246 () Bool)

(assert (=> mapNonEmpty!48658 (= mapRes!48658 (and tp!92454 e!696246))))

(declare-fun mapKey!48658 () (_ BitVec 32))

(declare-fun mapValue!48658 () ValueCell!14877)

(declare-fun mapRest!48658 () (Array (_ BitVec 32) ValueCell!14877))

(assert (=> mapNonEmpty!48658 (= (arr!38176 _values!996) (store mapRest!48658 mapKey!48658 mapValue!48658))))

(declare-fun b!1225820 () Bool)

(declare-fun tp_is_empty!31173 () Bool)

(assert (=> b!1225820 (= e!696246 tp_is_empty!31173)))

(declare-fun b!1225821 () Bool)

(declare-fun res!814748 () Bool)

(declare-fun e!696242 () Bool)

(assert (=> b!1225821 (=> (not res!814748) (not e!696242))))

(assert (=> b!1225821 (= res!814748 (and (= (size!38713 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38712 _keys!1208) (size!38713 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225822 () Bool)

(declare-fun res!814747 () Bool)

(assert (=> b!1225822 (=> (not res!814747) (not e!696242))))

(assert (=> b!1225822 (= res!814747 (= (select (arr!38175 _keys!1208) i!673) k0!934))))

(declare-fun b!1225823 () Bool)

(declare-fun e!696245 () Bool)

(assert (=> b!1225823 (= e!696245 tp_is_empty!31173)))

(declare-fun b!1225824 () Bool)

(declare-fun res!814744 () Bool)

(assert (=> b!1225824 (=> (not res!814744) (not e!696242))))

(declare-datatypes ((List!27127 0))(
  ( (Nil!27124) (Cons!27123 (h!28332 (_ BitVec 64)) (t!40583 List!27127)) )
))
(declare-fun arrayNoDuplicates!0 (array!79104 (_ BitVec 32) List!27127) Bool)

(assert (=> b!1225824 (= res!814744 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27124))))

(declare-fun b!1225825 () Bool)

(declare-fun e!696249 () Bool)

(assert (=> b!1225825 (= e!696249 (and e!696245 mapRes!48658))))

(declare-fun condMapEmpty!48658 () Bool)

(declare-fun mapDefault!48658 () ValueCell!14877)

(assert (=> b!1225825 (= condMapEmpty!48658 (= (arr!38176 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14877)) mapDefault!48658)))))

(declare-fun b!1225826 () Bool)

(declare-fun res!814749 () Bool)

(assert (=> b!1225826 (=> (not res!814749) (not e!696242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79104 (_ BitVec 32)) Bool)

(assert (=> b!1225826 (= res!814749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225827 () Bool)

(declare-fun e!696248 () Bool)

(assert (=> b!1225827 (= e!696242 e!696248)))

(declare-fun res!814745 () Bool)

(assert (=> b!1225827 (=> (not res!814745) (not e!696248))))

(assert (=> b!1225827 (= res!814745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558557 mask!1564))))

(assert (=> b!1225827 (= lt!558557 (array!79105 (store (arr!38175 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38712 _keys!1208)))))

(declare-fun b!1225828 () Bool)

(declare-fun e!696244 () Bool)

(assert (=> b!1225828 (= e!696248 (not e!696244))))

(declare-fun res!814752 () Bool)

(assert (=> b!1225828 (=> res!814752 e!696244)))

(assert (=> b!1225828 (= res!814752 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225828 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558559 () Unit!40572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79104 (_ BitVec 64) (_ BitVec 32)) Unit!40572)

(assert (=> b!1225828 (= lt!558559 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225829 () Bool)

(declare-fun res!814746 () Bool)

(assert (=> b!1225829 (=> (not res!814746) (not e!696242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225829 (= res!814746 (validMask!0 mask!1564))))

(declare-fun b!1225831 () Bool)

(declare-fun res!814750 () Bool)

(assert (=> b!1225831 (=> (not res!814750) (not e!696242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225831 (= res!814750 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!48658 () Bool)

(assert (=> mapIsEmpty!48658 mapRes!48658))

(declare-fun b!1225830 () Bool)

(declare-fun res!814755 () Bool)

(assert (=> b!1225830 (=> (not res!814755) (not e!696242))))

(assert (=> b!1225830 (= res!814755 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38712 _keys!1208))))))

(declare-fun res!814753 () Bool)

(assert (=> start!101816 (=> (not res!814753) (not e!696242))))

(assert (=> start!101816 (= res!814753 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38712 _keys!1208))))))

(assert (=> start!101816 e!696242))

(assert (=> start!101816 tp_is_empty!31173))

(declare-fun array_inv!28952 (array!79104) Bool)

(assert (=> start!101816 (array_inv!28952 _keys!1208)))

(assert (=> start!101816 true))

(assert (=> start!101816 tp!92453))

(declare-fun array_inv!28953 (array!79106) Bool)

(assert (=> start!101816 (and (array_inv!28953 _values!996) e!696249)))

(declare-fun b!1225832 () Bool)

(declare-fun res!814751 () Bool)

(assert (=> b!1225832 (=> (not res!814751) (not e!696248))))

(assert (=> b!1225832 (= res!814751 (arrayNoDuplicates!0 lt!558557 #b00000000000000000000000000000000 Nil!27124))))

(declare-fun b!1225833 () Bool)

(assert (=> b!1225833 (= e!696244 e!696243)))

(declare-fun res!814754 () Bool)

(assert (=> b!1225833 (=> res!814754 e!696243)))

(assert (=> b!1225833 (= res!814754 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!558558 () ListLongMap!18295)

(assert (=> b!1225833 (= lt!558558 (getCurrentListMapNoExtraKeys!5559 lt!558557 lt!558556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3452 (Int (_ BitVec 64)) V!46691)

(assert (=> b!1225833 (= lt!558556 (array!79107 (store (arr!38176 _values!996) i!673 (ValueCellFull!14877 (dynLambda!3452 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38713 _values!996)))))

(declare-fun lt!558554 () ListLongMap!18295)

(assert (=> b!1225833 (= lt!558554 (getCurrentListMapNoExtraKeys!5559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!101816 res!814753) b!1225829))

(assert (= (and b!1225829 res!814746) b!1225821))

(assert (= (and b!1225821 res!814748) b!1225826))

(assert (= (and b!1225826 res!814749) b!1225824))

(assert (= (and b!1225824 res!814744) b!1225830))

(assert (= (and b!1225830 res!814755) b!1225831))

(assert (= (and b!1225831 res!814750) b!1225822))

(assert (= (and b!1225822 res!814747) b!1225827))

(assert (= (and b!1225827 res!814745) b!1225832))

(assert (= (and b!1225832 res!814751) b!1225828))

(assert (= (and b!1225828 (not res!814752)) b!1225833))

(assert (= (and b!1225833 (not res!814754)) b!1225819))

(assert (= (and b!1225825 condMapEmpty!48658) mapIsEmpty!48658))

(assert (= (and b!1225825 (not condMapEmpty!48658)) mapNonEmpty!48658))

(get-info :version)

(assert (= (and mapNonEmpty!48658 ((_ is ValueCellFull!14877) mapValue!48658)) b!1225820))

(assert (= (and b!1225825 ((_ is ValueCellFull!14877) mapDefault!48658)) b!1225823))

(assert (= start!101816 b!1225825))

(declare-fun b_lambda!22459 () Bool)

(assert (=> (not b_lambda!22459) (not b!1225833)))

(declare-fun t!40581 () Bool)

(declare-fun tb!11277 () Bool)

(assert (=> (and start!101816 (= defaultEntry!1004 defaultEntry!1004) t!40581) tb!11277))

(declare-fun result!23159 () Bool)

(assert (=> tb!11277 (= result!23159 tp_is_empty!31173)))

(assert (=> b!1225833 t!40581))

(declare-fun b_and!44211 () Bool)

(assert (= b_and!44209 (and (=> t!40581 result!23159) b_and!44211)))

(declare-fun m!1130965 () Bool)

(assert (=> b!1225828 m!1130965))

(declare-fun m!1130967 () Bool)

(assert (=> b!1225828 m!1130967))

(declare-fun m!1130969 () Bool)

(assert (=> b!1225829 m!1130969))

(declare-fun m!1130971 () Bool)

(assert (=> b!1225832 m!1130971))

(declare-fun m!1130973 () Bool)

(assert (=> b!1225824 m!1130973))

(declare-fun m!1130975 () Bool)

(assert (=> b!1225827 m!1130975))

(declare-fun m!1130977 () Bool)

(assert (=> b!1225827 m!1130977))

(declare-fun m!1130979 () Bool)

(assert (=> b!1225826 m!1130979))

(declare-fun m!1130981 () Bool)

(assert (=> b!1225831 m!1130981))

(declare-fun m!1130983 () Bool)

(assert (=> b!1225833 m!1130983))

(declare-fun m!1130985 () Bool)

(assert (=> b!1225833 m!1130985))

(declare-fun m!1130987 () Bool)

(assert (=> b!1225833 m!1130987))

(declare-fun m!1130989 () Bool)

(assert (=> b!1225833 m!1130989))

(declare-fun m!1130991 () Bool)

(assert (=> mapNonEmpty!48658 m!1130991))

(declare-fun m!1130993 () Bool)

(assert (=> start!101816 m!1130993))

(declare-fun m!1130995 () Bool)

(assert (=> start!101816 m!1130995))

(declare-fun m!1130997 () Bool)

(assert (=> b!1225819 m!1130997))

(declare-fun m!1130999 () Bool)

(assert (=> b!1225819 m!1130999))

(assert (=> b!1225819 m!1130999))

(declare-fun m!1131001 () Bool)

(assert (=> b!1225819 m!1131001))

(declare-fun m!1131003 () Bool)

(assert (=> b!1225819 m!1131003))

(declare-fun m!1131005 () Bool)

(assert (=> b!1225822 m!1131005))

(check-sat (not b!1225819) (not b!1225827) (not b_next!26469) (not start!101816) (not mapNonEmpty!48658) b_and!44211 (not b!1225833) (not b!1225831) (not b!1225829) (not b_lambda!22459) (not b!1225832) (not b!1225828) tp_is_empty!31173 (not b!1225826) (not b!1225824))
(check-sat b_and!44211 (not b_next!26469))
