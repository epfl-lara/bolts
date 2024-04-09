; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99432 () Bool)

(assert start!99432)

(declare-fun b_free!24975 () Bool)

(declare-fun b_next!24975 () Bool)

(assert (=> start!99432 (= b_free!24975 (not b_next!24975))))

(declare-fun tp!87639 () Bool)

(declare-fun b_and!40831 () Bool)

(assert (=> start!99432 (= tp!87639 b_and!40831)))

(declare-fun b!1173105 () Bool)

(declare-fun res!779053 () Bool)

(declare-fun e!666840 () Bool)

(assert (=> b!1173105 (=> (not res!779053) (not e!666840))))

(declare-datatypes ((array!75786 0))(
  ( (array!75787 (arr!36539 (Array (_ BitVec 32) (_ BitVec 64))) (size!37076 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75786)

(declare-datatypes ((List!25797 0))(
  ( (Nil!25794) (Cons!25793 (h!27002 (_ BitVec 64)) (t!37771 List!25797)) )
))
(declare-fun arrayNoDuplicates!0 (array!75786 (_ BitVec 32) List!25797) Bool)

(assert (=> b!1173105 (= res!779053 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25794))))

(declare-fun b!1173106 () Bool)

(declare-datatypes ((Unit!38591 0))(
  ( (Unit!38592) )
))
(declare-fun e!666839 () Unit!38591)

(declare-fun Unit!38593 () Unit!38591)

(assert (=> b!1173106 (= e!666839 Unit!38593)))

(declare-fun b!1173107 () Bool)

(declare-fun Unit!38594 () Unit!38591)

(assert (=> b!1173107 (= e!666839 Unit!38594)))

(declare-fun lt!528699 () Unit!38591)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75786 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38591)

(assert (=> b!1173107 (= lt!528699 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173107 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528694 () Unit!38591)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75786 (_ BitVec 32) (_ BitVec 32)) Unit!38591)

(assert (=> b!1173107 (= lt!528694 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1173107 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25794)))

(declare-fun lt!528696 () Unit!38591)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75786 (_ BitVec 64) (_ BitVec 32) List!25797) Unit!38591)

(assert (=> b!1173107 (= lt!528696 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25794))))

(assert (=> b!1173107 false))

(declare-fun mapNonEmpty!46085 () Bool)

(declare-fun mapRes!46085 () Bool)

(declare-fun tp!87640 () Bool)

(declare-fun e!666838 () Bool)

(assert (=> mapNonEmpty!46085 (= mapRes!46085 (and tp!87640 e!666838))))

(declare-datatypes ((V!44467 0))(
  ( (V!44468 (val!14809 Int)) )
))
(declare-datatypes ((ValueCell!14043 0))(
  ( (ValueCellFull!14043 (v!17448 V!44467)) (EmptyCell!14043) )
))
(declare-fun mapRest!46085 () (Array (_ BitVec 32) ValueCell!14043))

(declare-fun mapKey!46085 () (_ BitVec 32))

(declare-fun mapValue!46085 () ValueCell!14043)

(declare-datatypes ((array!75788 0))(
  ( (array!75789 (arr!36540 (Array (_ BitVec 32) ValueCell!14043)) (size!37077 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75788)

(assert (=> mapNonEmpty!46085 (= (arr!36540 _values!996) (store mapRest!46085 mapKey!46085 mapValue!46085))))

(declare-fun b!1173108 () Bool)

(declare-fun e!666834 () Bool)

(declare-fun e!666832 () Bool)

(assert (=> b!1173108 (= e!666834 (not e!666832))))

(declare-fun res!779049 () Bool)

(assert (=> b!1173108 (=> res!779049 e!666832)))

(assert (=> b!1173108 (= res!779049 (bvsgt from!1455 i!673))))

(assert (=> b!1173108 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!528698 () Unit!38591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75786 (_ BitVec 64) (_ BitVec 32)) Unit!38591)

(assert (=> b!1173108 (= lt!528698 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173109 () Bool)

(declare-fun res!779048 () Bool)

(assert (=> b!1173109 (=> (not res!779048) (not e!666840))))

(assert (=> b!1173109 (= res!779048 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37076 _keys!1208))))))

(declare-fun b!1173110 () Bool)

(declare-fun res!779055 () Bool)

(assert (=> b!1173110 (=> (not res!779055) (not e!666834))))

(declare-fun lt!528692 () array!75786)

(assert (=> b!1173110 (= res!779055 (arrayNoDuplicates!0 lt!528692 #b00000000000000000000000000000000 Nil!25794))))

(declare-fun b!1173111 () Bool)

(declare-fun res!779052 () Bool)

(assert (=> b!1173111 (=> (not res!779052) (not e!666840))))

(assert (=> b!1173111 (= res!779052 (= (select (arr!36539 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46085 () Bool)

(assert (=> mapIsEmpty!46085 mapRes!46085))

(declare-fun b!1173112 () Bool)

(declare-fun e!666831 () Bool)

(declare-fun e!666836 () Bool)

(assert (=> b!1173112 (= e!666831 e!666836)))

(declare-fun res!779042 () Bool)

(assert (=> b!1173112 (=> res!779042 e!666836)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173112 (= res!779042 (not (validKeyInArray!0 (select (arr!36539 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19024 0))(
  ( (tuple2!19025 (_1!9522 (_ BitVec 64)) (_2!9522 V!44467)) )
))
(declare-datatypes ((List!25798 0))(
  ( (Nil!25795) (Cons!25794 (h!27003 tuple2!19024) (t!37772 List!25798)) )
))
(declare-datatypes ((ListLongMap!17005 0))(
  ( (ListLongMap!17006 (toList!8518 List!25798)) )
))
(declare-fun lt!528689 () ListLongMap!17005)

(declare-fun lt!528701 () ListLongMap!17005)

(assert (=> b!1173112 (= lt!528689 lt!528701)))

(declare-fun lt!528690 () ListLongMap!17005)

(declare-fun -!1531 (ListLongMap!17005 (_ BitVec 64)) ListLongMap!17005)

(assert (=> b!1173112 (= lt!528701 (-!1531 lt!528690 k0!934))))

(declare-fun zeroValue!944 () V!44467)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528693 () array!75788)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44467)

(declare-fun getCurrentListMapNoExtraKeys!4950 (array!75786 array!75788 (_ BitVec 32) (_ BitVec 32) V!44467 V!44467 (_ BitVec 32) Int) ListLongMap!17005)

(assert (=> b!1173112 (= lt!528689 (getCurrentListMapNoExtraKeys!4950 lt!528692 lt!528693 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173112 (= lt!528690 (getCurrentListMapNoExtraKeys!4950 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528700 () Unit!38591)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!755 (array!75786 array!75788 (_ BitVec 32) (_ BitVec 32) V!44467 V!44467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38591)

(assert (=> b!1173112 (= lt!528700 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!755 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!666830 () Bool)

(declare-fun b!1173113 () Bool)

(assert (=> b!1173113 (= e!666830 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173114 () Bool)

(declare-fun tp_is_empty!29505 () Bool)

(assert (=> b!1173114 (= e!666838 tp_is_empty!29505)))

(declare-fun b!1173115 () Bool)

(declare-fun res!779056 () Bool)

(assert (=> b!1173115 (=> (not res!779056) (not e!666840))))

(assert (=> b!1173115 (= res!779056 (and (= (size!37077 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37076 _keys!1208) (size!37077 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173116 () Bool)

(declare-fun res!779047 () Bool)

(assert (=> b!1173116 (=> (not res!779047) (not e!666840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173116 (= res!779047 (validMask!0 mask!1564))))

(declare-fun b!1173117 () Bool)

(assert (=> b!1173117 (= e!666832 e!666831)))

(declare-fun res!779046 () Bool)

(assert (=> b!1173117 (=> res!779046 e!666831)))

(assert (=> b!1173117 (= res!779046 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!528697 () ListLongMap!17005)

(assert (=> b!1173117 (= lt!528697 (getCurrentListMapNoExtraKeys!4950 lt!528692 lt!528693 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528702 () V!44467)

(assert (=> b!1173117 (= lt!528693 (array!75789 (store (arr!36540 _values!996) i!673 (ValueCellFull!14043 lt!528702)) (size!37077 _values!996)))))

(declare-fun dynLambda!2935 (Int (_ BitVec 64)) V!44467)

(assert (=> b!1173117 (= lt!528702 (dynLambda!2935 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528695 () ListLongMap!17005)

(assert (=> b!1173117 (= lt!528695 (getCurrentListMapNoExtraKeys!4950 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173118 () Bool)

(assert (=> b!1173118 (= e!666840 e!666834)))

(declare-fun res!779043 () Bool)

(assert (=> b!1173118 (=> (not res!779043) (not e!666834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75786 (_ BitVec 32)) Bool)

(assert (=> b!1173118 (= res!779043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528692 mask!1564))))

(assert (=> b!1173118 (= lt!528692 (array!75787 (store (arr!36539 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37076 _keys!1208)))))

(declare-fun b!1173119 () Bool)

(declare-fun e!666833 () Bool)

(assert (=> b!1173119 (= e!666833 e!666830)))

(declare-fun res!779051 () Bool)

(assert (=> b!1173119 (=> res!779051 e!666830)))

(assert (=> b!1173119 (= res!779051 (not (= (select (arr!36539 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1173120 () Bool)

(declare-fun e!666841 () Bool)

(assert (=> b!1173120 (= e!666841 tp_is_empty!29505)))

(declare-fun b!1173121 () Bool)

(declare-fun res!779054 () Bool)

(assert (=> b!1173121 (=> (not res!779054) (not e!666840))))

(assert (=> b!1173121 (= res!779054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173122 () Bool)

(declare-fun e!666837 () Bool)

(assert (=> b!1173122 (= e!666837 (and e!666841 mapRes!46085))))

(declare-fun condMapEmpty!46085 () Bool)

(declare-fun mapDefault!46085 () ValueCell!14043)

(assert (=> b!1173122 (= condMapEmpty!46085 (= (arr!36540 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14043)) mapDefault!46085)))))

(declare-fun res!779050 () Bool)

(assert (=> start!99432 (=> (not res!779050) (not e!666840))))

(assert (=> start!99432 (= res!779050 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37076 _keys!1208))))))

(assert (=> start!99432 e!666840))

(assert (=> start!99432 tp_is_empty!29505))

(declare-fun array_inv!27804 (array!75786) Bool)

(assert (=> start!99432 (array_inv!27804 _keys!1208)))

(assert (=> start!99432 true))

(assert (=> start!99432 tp!87639))

(declare-fun array_inv!27805 (array!75788) Bool)

(assert (=> start!99432 (and (array_inv!27805 _values!996) e!666837)))

(declare-fun b!1173123 () Bool)

(declare-fun res!779044 () Bool)

(assert (=> b!1173123 (=> (not res!779044) (not e!666840))))

(assert (=> b!1173123 (= res!779044 (validKeyInArray!0 k0!934))))

(declare-fun b!1173124 () Bool)

(assert (=> b!1173124 (= e!666836 true)))

(assert (=> b!1173124 (not (= (select (arr!36539 _keys!1208) from!1455) k0!934))))

(declare-fun lt!528691 () Unit!38591)

(assert (=> b!1173124 (= lt!528691 e!666839)))

(declare-fun c!116534 () Bool)

(assert (=> b!1173124 (= c!116534 (= (select (arr!36539 _keys!1208) from!1455) k0!934))))

(assert (=> b!1173124 e!666833))

(declare-fun res!779045 () Bool)

(assert (=> b!1173124 (=> (not res!779045) (not e!666833))))

(declare-fun +!3752 (ListLongMap!17005 tuple2!19024) ListLongMap!17005)

(declare-fun get!18677 (ValueCell!14043 V!44467) V!44467)

(assert (=> b!1173124 (= res!779045 (= lt!528697 (+!3752 lt!528701 (tuple2!19025 (select (arr!36539 _keys!1208) from!1455) (get!18677 (select (arr!36540 _values!996) from!1455) lt!528702)))))))

(assert (= (and start!99432 res!779050) b!1173116))

(assert (= (and b!1173116 res!779047) b!1173115))

(assert (= (and b!1173115 res!779056) b!1173121))

(assert (= (and b!1173121 res!779054) b!1173105))

(assert (= (and b!1173105 res!779053) b!1173109))

(assert (= (and b!1173109 res!779048) b!1173123))

(assert (= (and b!1173123 res!779044) b!1173111))

(assert (= (and b!1173111 res!779052) b!1173118))

(assert (= (and b!1173118 res!779043) b!1173110))

(assert (= (and b!1173110 res!779055) b!1173108))

(assert (= (and b!1173108 (not res!779049)) b!1173117))

(assert (= (and b!1173117 (not res!779046)) b!1173112))

(assert (= (and b!1173112 (not res!779042)) b!1173124))

(assert (= (and b!1173124 res!779045) b!1173119))

(assert (= (and b!1173119 (not res!779051)) b!1173113))

(assert (= (and b!1173124 c!116534) b!1173107))

(assert (= (and b!1173124 (not c!116534)) b!1173106))

(assert (= (and b!1173122 condMapEmpty!46085) mapIsEmpty!46085))

(assert (= (and b!1173122 (not condMapEmpty!46085)) mapNonEmpty!46085))

(get-info :version)

(assert (= (and mapNonEmpty!46085 ((_ is ValueCellFull!14043) mapValue!46085)) b!1173114))

(assert (= (and b!1173122 ((_ is ValueCellFull!14043) mapDefault!46085)) b!1173120))

(assert (= start!99432 b!1173122))

(declare-fun b_lambda!20137 () Bool)

(assert (=> (not b_lambda!20137) (not b!1173117)))

(declare-fun t!37770 () Bool)

(declare-fun tb!9795 () Bool)

(assert (=> (and start!99432 (= defaultEntry!1004 defaultEntry!1004) t!37770) tb!9795))

(declare-fun result!20149 () Bool)

(assert (=> tb!9795 (= result!20149 tp_is_empty!29505)))

(assert (=> b!1173117 t!37770))

(declare-fun b_and!40833 () Bool)

(assert (= b_and!40831 (and (=> t!37770 result!20149) b_and!40833)))

(declare-fun m!1080993 () Bool)

(assert (=> start!99432 m!1080993))

(declare-fun m!1080995 () Bool)

(assert (=> start!99432 m!1080995))

(declare-fun m!1080997 () Bool)

(assert (=> b!1173113 m!1080997))

(declare-fun m!1080999 () Bool)

(assert (=> b!1173119 m!1080999))

(assert (=> b!1173124 m!1080999))

(declare-fun m!1081001 () Bool)

(assert (=> b!1173124 m!1081001))

(assert (=> b!1173124 m!1081001))

(declare-fun m!1081003 () Bool)

(assert (=> b!1173124 m!1081003))

(declare-fun m!1081005 () Bool)

(assert (=> b!1173124 m!1081005))

(declare-fun m!1081007 () Bool)

(assert (=> b!1173118 m!1081007))

(declare-fun m!1081009 () Bool)

(assert (=> b!1173118 m!1081009))

(declare-fun m!1081011 () Bool)

(assert (=> mapNonEmpty!46085 m!1081011))

(declare-fun m!1081013 () Bool)

(assert (=> b!1173116 m!1081013))

(declare-fun m!1081015 () Bool)

(assert (=> b!1173105 m!1081015))

(declare-fun m!1081017 () Bool)

(assert (=> b!1173107 m!1081017))

(declare-fun m!1081019 () Bool)

(assert (=> b!1173107 m!1081019))

(declare-fun m!1081021 () Bool)

(assert (=> b!1173107 m!1081021))

(declare-fun m!1081023 () Bool)

(assert (=> b!1173107 m!1081023))

(declare-fun m!1081025 () Bool)

(assert (=> b!1173107 m!1081025))

(declare-fun m!1081027 () Bool)

(assert (=> b!1173108 m!1081027))

(declare-fun m!1081029 () Bool)

(assert (=> b!1173108 m!1081029))

(declare-fun m!1081031 () Bool)

(assert (=> b!1173123 m!1081031))

(declare-fun m!1081033 () Bool)

(assert (=> b!1173110 m!1081033))

(declare-fun m!1081035 () Bool)

(assert (=> b!1173112 m!1081035))

(declare-fun m!1081037 () Bool)

(assert (=> b!1173112 m!1081037))

(declare-fun m!1081039 () Bool)

(assert (=> b!1173112 m!1081039))

(declare-fun m!1081041 () Bool)

(assert (=> b!1173112 m!1081041))

(assert (=> b!1173112 m!1080999))

(declare-fun m!1081043 () Bool)

(assert (=> b!1173112 m!1081043))

(assert (=> b!1173112 m!1080999))

(declare-fun m!1081045 () Bool)

(assert (=> b!1173111 m!1081045))

(declare-fun m!1081047 () Bool)

(assert (=> b!1173117 m!1081047))

(declare-fun m!1081049 () Bool)

(assert (=> b!1173117 m!1081049))

(declare-fun m!1081051 () Bool)

(assert (=> b!1173117 m!1081051))

(declare-fun m!1081053 () Bool)

(assert (=> b!1173117 m!1081053))

(declare-fun m!1081055 () Bool)

(assert (=> b!1173121 m!1081055))

(check-sat (not b_next!24975) (not b!1173110) (not b!1173123) (not b!1173113) (not b!1173105) (not b!1173116) (not b!1173112) (not mapNonEmpty!46085) (not b_lambda!20137) b_and!40833 (not b!1173118) (not b!1173108) (not start!99432) (not b!1173117) (not b!1173124) (not b!1173121) tp_is_empty!29505 (not b!1173107))
(check-sat b_and!40833 (not b_next!24975))
