; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99238 () Bool)

(assert start!99238)

(declare-fun b_free!24807 () Bool)

(declare-fun b_next!24807 () Bool)

(assert (=> start!99238 (= b_free!24807 (not b_next!24807))))

(declare-fun tp!87133 () Bool)

(declare-fun b_and!40477 () Bool)

(assert (=> start!99238 (= tp!87133 b_and!40477)))

(declare-fun mapNonEmpty!45830 () Bool)

(declare-fun mapRes!45830 () Bool)

(declare-fun tp!87132 () Bool)

(declare-fun e!663848 () Bool)

(assert (=> mapNonEmpty!45830 (= mapRes!45830 (and tp!87132 e!663848))))

(declare-fun mapKey!45830 () (_ BitVec 32))

(declare-datatypes ((V!44243 0))(
  ( (V!44244 (val!14725 Int)) )
))
(declare-datatypes ((ValueCell!13959 0))(
  ( (ValueCellFull!13959 (v!17363 V!44243)) (EmptyCell!13959) )
))
(declare-fun mapValue!45830 () ValueCell!13959)

(declare-datatypes ((array!75450 0))(
  ( (array!75451 (arr!36372 (Array (_ BitVec 32) ValueCell!13959)) (size!36909 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75450)

(declare-fun mapRest!45830 () (Array (_ BitVec 32) ValueCell!13959))

(assert (=> mapNonEmpty!45830 (= (arr!36372 _values!996) (store mapRest!45830 mapKey!45830 mapValue!45830))))

(declare-fun b!1167954 () Bool)

(declare-fun e!663852 () Bool)

(declare-fun tp_is_empty!29337 () Bool)

(assert (=> b!1167954 (= e!663852 tp_is_empty!29337)))

(declare-fun b!1167955 () Bool)

(declare-fun res!774956 () Bool)

(declare-fun e!663847 () Bool)

(assert (=> b!1167955 (=> (not res!774956) (not e!663847))))

(declare-datatypes ((array!75452 0))(
  ( (array!75453 (arr!36373 (Array (_ BitVec 32) (_ BitVec 64))) (size!36910 (_ BitVec 32))) )
))
(declare-fun lt!525803 () array!75452)

(declare-datatypes ((List!25646 0))(
  ( (Nil!25643) (Cons!25642 (h!26851 (_ BitVec 64)) (t!37452 List!25646)) )
))
(declare-fun arrayNoDuplicates!0 (array!75452 (_ BitVec 32) List!25646) Bool)

(assert (=> b!1167955 (= res!774956 (arrayNoDuplicates!0 lt!525803 #b00000000000000000000000000000000 Nil!25643))))

(declare-fun b!1167956 () Bool)

(declare-fun res!774950 () Bool)

(declare-fun e!663845 () Bool)

(assert (=> b!1167956 (=> (not res!774950) (not e!663845))))

(declare-fun _keys!1208 () array!75452)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167956 (= res!774950 (= (select (arr!36373 _keys!1208) i!673) k0!934))))

(declare-fun b!1167957 () Bool)

(assert (=> b!1167957 (= e!663845 e!663847)))

(declare-fun res!774952 () Bool)

(assert (=> b!1167957 (=> (not res!774952) (not e!663847))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75452 (_ BitVec 32)) Bool)

(assert (=> b!1167957 (= res!774952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525803 mask!1564))))

(assert (=> b!1167957 (= lt!525803 (array!75453 (store (arr!36373 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36910 _keys!1208)))))

(declare-fun mapIsEmpty!45830 () Bool)

(assert (=> mapIsEmpty!45830 mapRes!45830))

(declare-fun b!1167958 () Bool)

(declare-fun res!774953 () Bool)

(assert (=> b!1167958 (=> (not res!774953) (not e!663845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167958 (= res!774953 (validKeyInArray!0 k0!934))))

(declare-fun b!1167959 () Bool)

(declare-fun e!663850 () Bool)

(declare-fun e!663846 () Bool)

(assert (=> b!1167959 (= e!663850 e!663846)))

(declare-fun res!774951 () Bool)

(assert (=> b!1167959 (=> res!774951 e!663846)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1167959 (= res!774951 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44243)

(declare-fun lt!525804 () array!75450)

(declare-datatypes ((tuple2!18870 0))(
  ( (tuple2!18871 (_1!9445 (_ BitVec 64)) (_2!9445 V!44243)) )
))
(declare-datatypes ((List!25647 0))(
  ( (Nil!25644) (Cons!25643 (h!26852 tuple2!18870) (t!37453 List!25647)) )
))
(declare-datatypes ((ListLongMap!16851 0))(
  ( (ListLongMap!16852 (toList!8441 List!25647)) )
))
(declare-fun lt!525807 () ListLongMap!16851)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44243)

(declare-fun getCurrentListMapNoExtraKeys!4874 (array!75452 array!75450 (_ BitVec 32) (_ BitVec 32) V!44243 V!44243 (_ BitVec 32) Int) ListLongMap!16851)

(assert (=> b!1167959 (= lt!525807 (getCurrentListMapNoExtraKeys!4874 lt!525803 lt!525804 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2866 (Int (_ BitVec 64)) V!44243)

(assert (=> b!1167959 (= lt!525804 (array!75451 (store (arr!36372 _values!996) i!673 (ValueCellFull!13959 (dynLambda!2866 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36909 _values!996)))))

(declare-fun lt!525802 () ListLongMap!16851)

(assert (=> b!1167959 (= lt!525802 (getCurrentListMapNoExtraKeys!4874 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167960 () Bool)

(declare-fun res!774954 () Bool)

(assert (=> b!1167960 (=> (not res!774954) (not e!663845))))

(assert (=> b!1167960 (= res!774954 (and (= (size!36909 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36910 _keys!1208) (size!36909 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167961 () Bool)

(assert (=> b!1167961 (= e!663847 (not e!663850))))

(declare-fun res!774946 () Bool)

(assert (=> b!1167961 (=> res!774946 e!663850)))

(assert (=> b!1167961 (= res!774946 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167961 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38432 0))(
  ( (Unit!38433) )
))
(declare-fun lt!525805 () Unit!38432)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75452 (_ BitVec 64) (_ BitVec 32)) Unit!38432)

(assert (=> b!1167961 (= lt!525805 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167962 () Bool)

(assert (=> b!1167962 (= e!663846 true)))

(declare-fun -!1472 (ListLongMap!16851 (_ BitVec 64)) ListLongMap!16851)

(assert (=> b!1167962 (= (getCurrentListMapNoExtraKeys!4874 lt!525803 lt!525804 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1472 (getCurrentListMapNoExtraKeys!4874 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525806 () Unit!38432)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!696 (array!75452 array!75450 (_ BitVec 32) (_ BitVec 32) V!44243 V!44243 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38432)

(assert (=> b!1167962 (= lt!525806 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!696 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167963 () Bool)

(declare-fun res!774947 () Bool)

(assert (=> b!1167963 (=> (not res!774947) (not e!663845))))

(assert (=> b!1167963 (= res!774947 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25643))))

(declare-fun b!1167964 () Bool)

(declare-fun e!663849 () Bool)

(assert (=> b!1167964 (= e!663849 (and e!663852 mapRes!45830))))

(declare-fun condMapEmpty!45830 () Bool)

(declare-fun mapDefault!45830 () ValueCell!13959)

(assert (=> b!1167964 (= condMapEmpty!45830 (= (arr!36372 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13959)) mapDefault!45830)))))

(declare-fun res!774945 () Bool)

(assert (=> start!99238 (=> (not res!774945) (not e!663845))))

(assert (=> start!99238 (= res!774945 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36910 _keys!1208))))))

(assert (=> start!99238 e!663845))

(assert (=> start!99238 tp_is_empty!29337))

(declare-fun array_inv!27682 (array!75452) Bool)

(assert (=> start!99238 (array_inv!27682 _keys!1208)))

(assert (=> start!99238 true))

(assert (=> start!99238 tp!87133))

(declare-fun array_inv!27683 (array!75450) Bool)

(assert (=> start!99238 (and (array_inv!27683 _values!996) e!663849)))

(declare-fun b!1167965 () Bool)

(declare-fun res!774949 () Bool)

(assert (=> b!1167965 (=> (not res!774949) (not e!663845))))

(assert (=> b!1167965 (= res!774949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167966 () Bool)

(assert (=> b!1167966 (= e!663848 tp_is_empty!29337)))

(declare-fun b!1167967 () Bool)

(declare-fun res!774948 () Bool)

(assert (=> b!1167967 (=> (not res!774948) (not e!663845))))

(assert (=> b!1167967 (= res!774948 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36910 _keys!1208))))))

(declare-fun b!1167968 () Bool)

(declare-fun res!774955 () Bool)

(assert (=> b!1167968 (=> (not res!774955) (not e!663845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167968 (= res!774955 (validMask!0 mask!1564))))

(assert (= (and start!99238 res!774945) b!1167968))

(assert (= (and b!1167968 res!774955) b!1167960))

(assert (= (and b!1167960 res!774954) b!1167965))

(assert (= (and b!1167965 res!774949) b!1167963))

(assert (= (and b!1167963 res!774947) b!1167967))

(assert (= (and b!1167967 res!774948) b!1167958))

(assert (= (and b!1167958 res!774953) b!1167956))

(assert (= (and b!1167956 res!774950) b!1167957))

(assert (= (and b!1167957 res!774952) b!1167955))

(assert (= (and b!1167955 res!774956) b!1167961))

(assert (= (and b!1167961 (not res!774946)) b!1167959))

(assert (= (and b!1167959 (not res!774951)) b!1167962))

(assert (= (and b!1167964 condMapEmpty!45830) mapIsEmpty!45830))

(assert (= (and b!1167964 (not condMapEmpty!45830)) mapNonEmpty!45830))

(get-info :version)

(assert (= (and mapNonEmpty!45830 ((_ is ValueCellFull!13959) mapValue!45830)) b!1167966))

(assert (= (and b!1167964 ((_ is ValueCellFull!13959) mapDefault!45830)) b!1167954))

(assert (= start!99238 b!1167964))

(declare-fun b_lambda!19931 () Bool)

(assert (=> (not b_lambda!19931) (not b!1167959)))

(declare-fun t!37451 () Bool)

(declare-fun tb!9627 () Bool)

(assert (=> (and start!99238 (= defaultEntry!1004 defaultEntry!1004) t!37451) tb!9627))

(declare-fun result!19811 () Bool)

(assert (=> tb!9627 (= result!19811 tp_is_empty!29337)))

(assert (=> b!1167959 t!37451))

(declare-fun b_and!40479 () Bool)

(assert (= b_and!40477 (and (=> t!37451 result!19811) b_and!40479)))

(declare-fun m!1075879 () Bool)

(assert (=> b!1167955 m!1075879))

(declare-fun m!1075881 () Bool)

(assert (=> b!1167956 m!1075881))

(declare-fun m!1075883 () Bool)

(assert (=> b!1167957 m!1075883))

(declare-fun m!1075885 () Bool)

(assert (=> b!1167957 m!1075885))

(declare-fun m!1075887 () Bool)

(assert (=> start!99238 m!1075887))

(declare-fun m!1075889 () Bool)

(assert (=> start!99238 m!1075889))

(declare-fun m!1075891 () Bool)

(assert (=> b!1167968 m!1075891))

(declare-fun m!1075893 () Bool)

(assert (=> b!1167962 m!1075893))

(declare-fun m!1075895 () Bool)

(assert (=> b!1167962 m!1075895))

(assert (=> b!1167962 m!1075895))

(declare-fun m!1075897 () Bool)

(assert (=> b!1167962 m!1075897))

(declare-fun m!1075899 () Bool)

(assert (=> b!1167962 m!1075899))

(declare-fun m!1075901 () Bool)

(assert (=> b!1167965 m!1075901))

(declare-fun m!1075903 () Bool)

(assert (=> b!1167963 m!1075903))

(declare-fun m!1075905 () Bool)

(assert (=> b!1167958 m!1075905))

(declare-fun m!1075907 () Bool)

(assert (=> b!1167959 m!1075907))

(declare-fun m!1075909 () Bool)

(assert (=> b!1167959 m!1075909))

(declare-fun m!1075911 () Bool)

(assert (=> b!1167959 m!1075911))

(declare-fun m!1075913 () Bool)

(assert (=> b!1167959 m!1075913))

(declare-fun m!1075915 () Bool)

(assert (=> b!1167961 m!1075915))

(declare-fun m!1075917 () Bool)

(assert (=> b!1167961 m!1075917))

(declare-fun m!1075919 () Bool)

(assert (=> mapNonEmpty!45830 m!1075919))

(check-sat (not b!1167961) tp_is_empty!29337 (not b!1167963) (not mapNonEmpty!45830) (not start!99238) (not b_lambda!19931) (not b!1167958) (not b!1167962) b_and!40479 (not b!1167968) (not b!1167957) (not b!1167955) (not b_next!24807) (not b!1167959) (not b!1167965))
(check-sat b_and!40479 (not b_next!24807))
