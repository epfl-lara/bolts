; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99816 () Bool)

(assert start!99816)

(declare-fun b_free!25359 () Bool)

(declare-fun b_next!25359 () Bool)

(assert (=> start!99816 (= b_free!25359 (not b_next!25359))))

(declare-fun tp!88792 () Bool)

(declare-fun b_and!41599 () Bool)

(assert (=> start!99816 (= tp!88792 b_and!41599)))

(declare-fun b!1185351 () Bool)

(declare-fun e!673998 () Bool)

(declare-fun e!674001 () Bool)

(assert (=> b!1185351 (= e!673998 (not e!674001))))

(declare-fun res!788025 () Bool)

(assert (=> b!1185351 (=> res!788025 e!674001)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1185351 (= res!788025 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76546 0))(
  ( (array!76547 (arr!36919 (Array (_ BitVec 32) (_ BitVec 64))) (size!37456 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76546)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185351 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39189 0))(
  ( (Unit!39190) )
))
(declare-fun lt!537931 () Unit!39189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76546 (_ BitVec 64) (_ BitVec 32)) Unit!39189)

(assert (=> b!1185351 (= lt!537931 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185352 () Bool)

(declare-fun res!788030 () Bool)

(declare-fun e!673995 () Bool)

(assert (=> b!1185352 (=> (not res!788030) (not e!673995))))

(assert (=> b!1185352 (= res!788030 (= (select (arr!36919 _keys!1208) i!673) k0!934))))

(declare-fun b!1185353 () Bool)

(assert (=> b!1185353 (= e!673995 e!673998)))

(declare-fun res!788031 () Bool)

(assert (=> b!1185353 (=> (not res!788031) (not e!673998))))

(declare-fun lt!537932 () array!76546)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76546 (_ BitVec 32)) Bool)

(assert (=> b!1185353 (= res!788031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537932 mask!1564))))

(assert (=> b!1185353 (= lt!537932 (array!76547 (store (arr!36919 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37456 _keys!1208)))))

(declare-fun b!1185354 () Bool)

(declare-fun e!674005 () Bool)

(assert (=> b!1185354 (= e!674005 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185355 () Bool)

(declare-fun e!674003 () Unit!39189)

(declare-fun Unit!39191 () Unit!39189)

(assert (=> b!1185355 (= e!674003 Unit!39191)))

(declare-fun b!1185356 () Bool)

(declare-fun res!788027 () Bool)

(assert (=> b!1185356 (=> (not res!788027) (not e!673995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185356 (= res!788027 (validMask!0 mask!1564))))

(declare-fun b!1185357 () Bool)

(declare-fun e!673999 () Bool)

(declare-fun e!673994 () Bool)

(assert (=> b!1185357 (= e!673999 e!673994)))

(declare-fun res!788032 () Bool)

(assert (=> b!1185357 (=> res!788032 e!673994)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185357 (= res!788032 (not (validKeyInArray!0 (select (arr!36919 _keys!1208) from!1455))))))

(declare-datatypes ((V!44979 0))(
  ( (V!44980 (val!15001 Int)) )
))
(declare-datatypes ((tuple2!19366 0))(
  ( (tuple2!19367 (_1!9693 (_ BitVec 64)) (_2!9693 V!44979)) )
))
(declare-datatypes ((List!26127 0))(
  ( (Nil!26124) (Cons!26123 (h!27332 tuple2!19366) (t!38485 List!26127)) )
))
(declare-datatypes ((ListLongMap!17347 0))(
  ( (ListLongMap!17348 (toList!8689 List!26127)) )
))
(declare-fun lt!537945 () ListLongMap!17347)

(declare-fun lt!537933 () ListLongMap!17347)

(assert (=> b!1185357 (= lt!537945 lt!537933)))

(declare-fun lt!537947 () ListLongMap!17347)

(declare-fun -!1674 (ListLongMap!17347 (_ BitVec 64)) ListLongMap!17347)

(assert (=> b!1185357 (= lt!537933 (-!1674 lt!537947 k0!934))))

(declare-fun zeroValue!944 () V!44979)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14235 0))(
  ( (ValueCellFull!14235 (v!17640 V!44979)) (EmptyCell!14235) )
))
(declare-datatypes ((array!76548 0))(
  ( (array!76549 (arr!36920 (Array (_ BitVec 32) ValueCell!14235)) (size!37457 (_ BitVec 32))) )
))
(declare-fun lt!537946 () array!76548)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44979)

(declare-fun getCurrentListMapNoExtraKeys!5108 (array!76546 array!76548 (_ BitVec 32) (_ BitVec 32) V!44979 V!44979 (_ BitVec 32) Int) ListLongMap!17347)

(assert (=> b!1185357 (= lt!537945 (getCurrentListMapNoExtraKeys!5108 lt!537932 lt!537946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76548)

(assert (=> b!1185357 (= lt!537947 (getCurrentListMapNoExtraKeys!5108 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537941 () Unit!39189)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!889 (array!76546 array!76548 (_ BitVec 32) (_ BitVec 32) V!44979 V!44979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39189)

(assert (=> b!1185357 (= lt!537941 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!889 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185358 () Bool)

(declare-fun res!788037 () Bool)

(assert (=> b!1185358 (=> (not res!788037) (not e!673995))))

(assert (=> b!1185358 (= res!788037 (validKeyInArray!0 k0!934))))

(declare-fun b!1185359 () Bool)

(declare-fun res!788035 () Bool)

(assert (=> b!1185359 (=> (not res!788035) (not e!673998))))

(declare-datatypes ((List!26128 0))(
  ( (Nil!26125) (Cons!26124 (h!27333 (_ BitVec 64)) (t!38486 List!26128)) )
))
(declare-fun arrayNoDuplicates!0 (array!76546 (_ BitVec 32) List!26128) Bool)

(assert (=> b!1185359 (= res!788035 (arrayNoDuplicates!0 lt!537932 #b00000000000000000000000000000000 Nil!26125))))

(declare-fun b!1185360 () Bool)

(declare-fun e!673996 () Bool)

(declare-fun tp_is_empty!29889 () Bool)

(assert (=> b!1185360 (= e!673996 tp_is_empty!29889)))

(declare-fun mapIsEmpty!46661 () Bool)

(declare-fun mapRes!46661 () Bool)

(assert (=> mapIsEmpty!46661 mapRes!46661))

(declare-fun b!1185361 () Bool)

(declare-fun res!788034 () Bool)

(assert (=> b!1185361 (=> (not res!788034) (not e!673995))))

(assert (=> b!1185361 (= res!788034 (and (= (size!37457 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37456 _keys!1208) (size!37457 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185362 () Bool)

(declare-fun res!788026 () Bool)

(assert (=> b!1185362 (=> (not res!788026) (not e!673995))))

(assert (=> b!1185362 (= res!788026 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26125))))

(declare-fun b!1185364 () Bool)

(declare-fun res!788036 () Bool)

(assert (=> b!1185364 (=> (not res!788036) (not e!673995))))

(assert (=> b!1185364 (= res!788036 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37456 _keys!1208))))))

(declare-fun mapNonEmpty!46661 () Bool)

(declare-fun tp!88791 () Bool)

(declare-fun e!674002 () Bool)

(assert (=> mapNonEmpty!46661 (= mapRes!46661 (and tp!88791 e!674002))))

(declare-fun mapKey!46661 () (_ BitVec 32))

(declare-fun mapValue!46661 () ValueCell!14235)

(declare-fun mapRest!46661 () (Array (_ BitVec 32) ValueCell!14235))

(assert (=> mapNonEmpty!46661 (= (arr!36920 _values!996) (store mapRest!46661 mapKey!46661 mapValue!46661))))

(declare-fun b!1185365 () Bool)

(declare-fun res!788028 () Bool)

(assert (=> b!1185365 (=> (not res!788028) (not e!673995))))

(assert (=> b!1185365 (= res!788028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185366 () Bool)

(assert (=> b!1185366 (= e!673994 true)))

(declare-fun lt!537940 () ListLongMap!17347)

(declare-fun lt!537937 () ListLongMap!17347)

(assert (=> b!1185366 (= (-!1674 lt!537940 k0!934) lt!537937)))

(declare-fun lt!537948 () Unit!39189)

(declare-fun lt!537936 () V!44979)

(declare-fun addRemoveCommutativeForDiffKeys!185 (ListLongMap!17347 (_ BitVec 64) V!44979 (_ BitVec 64)) Unit!39189)

(assert (=> b!1185366 (= lt!537948 (addRemoveCommutativeForDiffKeys!185 lt!537947 (select (arr!36919 _keys!1208) from!1455) lt!537936 k0!934))))

(declare-fun lt!537934 () ListLongMap!17347)

(assert (=> b!1185366 (and (= lt!537934 lt!537940) (= lt!537933 lt!537945))))

(declare-fun lt!537938 () tuple2!19366)

(declare-fun +!3895 (ListLongMap!17347 tuple2!19366) ListLongMap!17347)

(assert (=> b!1185366 (= lt!537940 (+!3895 lt!537947 lt!537938))))

(assert (=> b!1185366 (not (= (select (arr!36919 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537942 () Unit!39189)

(assert (=> b!1185366 (= lt!537942 e!674003)))

(declare-fun c!117110 () Bool)

(assert (=> b!1185366 (= c!117110 (= (select (arr!36919 _keys!1208) from!1455) k0!934))))

(declare-fun e!674004 () Bool)

(assert (=> b!1185366 e!674004))

(declare-fun res!788024 () Bool)

(assert (=> b!1185366 (=> (not res!788024) (not e!674004))))

(declare-fun lt!537939 () ListLongMap!17347)

(assert (=> b!1185366 (= res!788024 (= lt!537939 lt!537937))))

(assert (=> b!1185366 (= lt!537937 (+!3895 lt!537933 lt!537938))))

(assert (=> b!1185366 (= lt!537938 (tuple2!19367 (select (arr!36919 _keys!1208) from!1455) lt!537936))))

(declare-fun lt!537944 () V!44979)

(declare-fun get!18937 (ValueCell!14235 V!44979) V!44979)

(assert (=> b!1185366 (= lt!537936 (get!18937 (select (arr!36920 _values!996) from!1455) lt!537944))))

(declare-fun b!1185367 () Bool)

(declare-fun Unit!39192 () Unit!39189)

(assert (=> b!1185367 (= e!674003 Unit!39192)))

(declare-fun lt!537943 () Unit!39189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76546 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39189)

(assert (=> b!1185367 (= lt!537943 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185367 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537935 () Unit!39189)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76546 (_ BitVec 32) (_ BitVec 32)) Unit!39189)

(assert (=> b!1185367 (= lt!537935 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185367 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26125)))

(declare-fun lt!537930 () Unit!39189)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76546 (_ BitVec 64) (_ BitVec 32) List!26128) Unit!39189)

(assert (=> b!1185367 (= lt!537930 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26125))))

(assert (=> b!1185367 false))

(declare-fun b!1185368 () Bool)

(assert (=> b!1185368 (= e!674004 e!674005)))

(declare-fun res!788033 () Bool)

(assert (=> b!1185368 (=> res!788033 e!674005)))

(assert (=> b!1185368 (= res!788033 (not (= (select (arr!36919 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1185369 () Bool)

(assert (=> b!1185369 (= e!674001 e!673999)))

(declare-fun res!788038 () Bool)

(assert (=> b!1185369 (=> res!788038 e!673999)))

(assert (=> b!1185369 (= res!788038 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1185369 (= lt!537939 (getCurrentListMapNoExtraKeys!5108 lt!537932 lt!537946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185369 (= lt!537946 (array!76549 (store (arr!36920 _values!996) i!673 (ValueCellFull!14235 lt!537944)) (size!37457 _values!996)))))

(declare-fun dynLambda!3068 (Int (_ BitVec 64)) V!44979)

(assert (=> b!1185369 (= lt!537944 (dynLambda!3068 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185369 (= lt!537934 (getCurrentListMapNoExtraKeys!5108 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185370 () Bool)

(assert (=> b!1185370 (= e!674002 tp_is_empty!29889)))

(declare-fun res!788029 () Bool)

(assert (=> start!99816 (=> (not res!788029) (not e!673995))))

(assert (=> start!99816 (= res!788029 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37456 _keys!1208))))))

(assert (=> start!99816 e!673995))

(assert (=> start!99816 tp_is_empty!29889))

(declare-fun array_inv!28056 (array!76546) Bool)

(assert (=> start!99816 (array_inv!28056 _keys!1208)))

(assert (=> start!99816 true))

(assert (=> start!99816 tp!88792))

(declare-fun e!673997 () Bool)

(declare-fun array_inv!28057 (array!76548) Bool)

(assert (=> start!99816 (and (array_inv!28057 _values!996) e!673997)))

(declare-fun b!1185363 () Bool)

(assert (=> b!1185363 (= e!673997 (and e!673996 mapRes!46661))))

(declare-fun condMapEmpty!46661 () Bool)

(declare-fun mapDefault!46661 () ValueCell!14235)

(assert (=> b!1185363 (= condMapEmpty!46661 (= (arr!36920 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14235)) mapDefault!46661)))))

(assert (= (and start!99816 res!788029) b!1185356))

(assert (= (and b!1185356 res!788027) b!1185361))

(assert (= (and b!1185361 res!788034) b!1185365))

(assert (= (and b!1185365 res!788028) b!1185362))

(assert (= (and b!1185362 res!788026) b!1185364))

(assert (= (and b!1185364 res!788036) b!1185358))

(assert (= (and b!1185358 res!788037) b!1185352))

(assert (= (and b!1185352 res!788030) b!1185353))

(assert (= (and b!1185353 res!788031) b!1185359))

(assert (= (and b!1185359 res!788035) b!1185351))

(assert (= (and b!1185351 (not res!788025)) b!1185369))

(assert (= (and b!1185369 (not res!788038)) b!1185357))

(assert (= (and b!1185357 (not res!788032)) b!1185366))

(assert (= (and b!1185366 res!788024) b!1185368))

(assert (= (and b!1185368 (not res!788033)) b!1185354))

(assert (= (and b!1185366 c!117110) b!1185367))

(assert (= (and b!1185366 (not c!117110)) b!1185355))

(assert (= (and b!1185363 condMapEmpty!46661) mapIsEmpty!46661))

(assert (= (and b!1185363 (not condMapEmpty!46661)) mapNonEmpty!46661))

(get-info :version)

(assert (= (and mapNonEmpty!46661 ((_ is ValueCellFull!14235) mapValue!46661)) b!1185370))

(assert (= (and b!1185363 ((_ is ValueCellFull!14235) mapDefault!46661)) b!1185360))

(assert (= start!99816 b!1185363))

(declare-fun b_lambda!20521 () Bool)

(assert (=> (not b_lambda!20521) (not b!1185369)))

(declare-fun t!38484 () Bool)

(declare-fun tb!10179 () Bool)

(assert (=> (and start!99816 (= defaultEntry!1004 defaultEntry!1004) t!38484) tb!10179))

(declare-fun result!20917 () Bool)

(assert (=> tb!10179 (= result!20917 tp_is_empty!29889)))

(assert (=> b!1185369 t!38484))

(declare-fun b_and!41601 () Bool)

(assert (= b_and!41599 (and (=> t!38484 result!20917) b_and!41601)))

(declare-fun m!1093815 () Bool)

(assert (=> mapNonEmpty!46661 m!1093815))

(declare-fun m!1093817 () Bool)

(assert (=> b!1185352 m!1093817))

(declare-fun m!1093819 () Bool)

(assert (=> b!1185358 m!1093819))

(declare-fun m!1093821 () Bool)

(assert (=> b!1185369 m!1093821))

(declare-fun m!1093823 () Bool)

(assert (=> b!1185369 m!1093823))

(declare-fun m!1093825 () Bool)

(assert (=> b!1185369 m!1093825))

(declare-fun m!1093827 () Bool)

(assert (=> b!1185369 m!1093827))

(declare-fun m!1093829 () Bool)

(assert (=> b!1185362 m!1093829))

(declare-fun m!1093831 () Bool)

(assert (=> b!1185357 m!1093831))

(declare-fun m!1093833 () Bool)

(assert (=> b!1185357 m!1093833))

(declare-fun m!1093835 () Bool)

(assert (=> b!1185357 m!1093835))

(declare-fun m!1093837 () Bool)

(assert (=> b!1185357 m!1093837))

(declare-fun m!1093839 () Bool)

(assert (=> b!1185357 m!1093839))

(declare-fun m!1093841 () Bool)

(assert (=> b!1185357 m!1093841))

(assert (=> b!1185357 m!1093839))

(declare-fun m!1093843 () Bool)

(assert (=> b!1185367 m!1093843))

(declare-fun m!1093845 () Bool)

(assert (=> b!1185367 m!1093845))

(declare-fun m!1093847 () Bool)

(assert (=> b!1185367 m!1093847))

(declare-fun m!1093849 () Bool)

(assert (=> b!1185367 m!1093849))

(declare-fun m!1093851 () Bool)

(assert (=> b!1185367 m!1093851))

(declare-fun m!1093853 () Bool)

(assert (=> b!1185354 m!1093853))

(declare-fun m!1093855 () Bool)

(assert (=> b!1185366 m!1093855))

(assert (=> b!1185366 m!1093855))

(declare-fun m!1093857 () Bool)

(assert (=> b!1185366 m!1093857))

(declare-fun m!1093859 () Bool)

(assert (=> b!1185366 m!1093859))

(declare-fun m!1093861 () Bool)

(assert (=> b!1185366 m!1093861))

(declare-fun m!1093863 () Bool)

(assert (=> b!1185366 m!1093863))

(assert (=> b!1185366 m!1093839))

(declare-fun m!1093865 () Bool)

(assert (=> b!1185366 m!1093865))

(assert (=> b!1185366 m!1093839))

(declare-fun m!1093867 () Bool)

(assert (=> start!99816 m!1093867))

(declare-fun m!1093869 () Bool)

(assert (=> start!99816 m!1093869))

(declare-fun m!1093871 () Bool)

(assert (=> b!1185351 m!1093871))

(declare-fun m!1093873 () Bool)

(assert (=> b!1185351 m!1093873))

(declare-fun m!1093875 () Bool)

(assert (=> b!1185353 m!1093875))

(declare-fun m!1093877 () Bool)

(assert (=> b!1185353 m!1093877))

(declare-fun m!1093879 () Bool)

(assert (=> b!1185365 m!1093879))

(declare-fun m!1093881 () Bool)

(assert (=> b!1185359 m!1093881))

(declare-fun m!1093883 () Bool)

(assert (=> b!1185356 m!1093883))

(assert (=> b!1185368 m!1093839))

(check-sat (not b!1185359) (not b!1185353) (not b!1185366) (not b!1185365) (not b!1185358) tp_is_empty!29889 (not b!1185362) (not b!1185351) (not b!1185367) (not b!1185369) b_and!41601 (not mapNonEmpty!46661) (not b_lambda!20521) (not b!1185357) (not b!1185356) (not start!99816) (not b!1185354) (not b_next!25359))
(check-sat b_and!41601 (not b_next!25359))
