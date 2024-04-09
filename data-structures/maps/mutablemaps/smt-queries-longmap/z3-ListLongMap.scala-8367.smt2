; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101822 () Bool)

(assert start!101822)

(declare-fun b_free!26475 () Bool)

(declare-fun b_next!26475 () Bool)

(assert (=> start!101822 (= b_free!26475 (not b_next!26475))))

(declare-fun tp!92471 () Bool)

(declare-fun b_and!44221 () Bool)

(assert (=> start!101822 (= tp!92471 b_and!44221)))

(declare-fun b!1225960 () Bool)

(declare-fun res!814862 () Bool)

(declare-fun e!696314 () Bool)

(assert (=> b!1225960 (=> (not res!814862) (not e!696314))))

(declare-datatypes ((array!79116 0))(
  ( (array!79117 (arr!38181 (Array (_ BitVec 32) (_ BitVec 64))) (size!38718 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79116)

(declare-datatypes ((List!27132 0))(
  ( (Nil!27129) (Cons!27128 (h!28337 (_ BitVec 64)) (t!40594 List!27132)) )
))
(declare-fun arrayNoDuplicates!0 (array!79116 (_ BitVec 32) List!27132) Bool)

(assert (=> b!1225960 (= res!814862 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27129))))

(declare-fun b!1225961 () Bool)

(declare-fun res!814863 () Bool)

(assert (=> b!1225961 (=> (not res!814863) (not e!696314))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79116 (_ BitVec 32)) Bool)

(assert (=> b!1225961 (= res!814863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225962 () Bool)

(declare-fun res!814859 () Bool)

(declare-fun e!696317 () Bool)

(assert (=> b!1225962 (=> (not res!814859) (not e!696317))))

(declare-fun lt!558612 () array!79116)

(assert (=> b!1225962 (= res!814859 (arrayNoDuplicates!0 lt!558612 #b00000000000000000000000000000000 Nil!27129))))

(declare-fun b!1225963 () Bool)

(declare-fun e!696320 () Bool)

(declare-fun tp_is_empty!31179 () Bool)

(assert (=> b!1225963 (= e!696320 tp_is_empty!31179)))

(declare-fun mapIsEmpty!48667 () Bool)

(declare-fun mapRes!48667 () Bool)

(assert (=> mapIsEmpty!48667 mapRes!48667))

(declare-fun b!1225964 () Bool)

(declare-fun res!814860 () Bool)

(assert (=> b!1225964 (=> (not res!814860) (not e!696314))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225964 (= res!814860 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38718 _keys!1208))))))

(declare-fun b!1225965 () Bool)

(declare-fun e!696319 () Bool)

(assert (=> b!1225965 (= e!696319 true)))

(declare-datatypes ((V!46699 0))(
  ( (V!46700 (val!15646 Int)) )
))
(declare-fun zeroValue!944 () V!46699)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14880 0))(
  ( (ValueCellFull!14880 (v!18309 V!46699)) (EmptyCell!14880) )
))
(declare-datatypes ((array!79118 0))(
  ( (array!79119 (arr!38182 (Array (_ BitVec 32) ValueCell!14880)) (size!38719 (_ BitVec 32))) )
))
(declare-fun lt!558613 () array!79118)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!79118)

(declare-fun minValue!944 () V!46699)

(declare-datatypes ((tuple2!20320 0))(
  ( (tuple2!20321 (_1!10170 (_ BitVec 64)) (_2!10170 V!46699)) )
))
(declare-datatypes ((List!27133 0))(
  ( (Nil!27130) (Cons!27129 (h!28338 tuple2!20320) (t!40595 List!27133)) )
))
(declare-datatypes ((ListLongMap!18301 0))(
  ( (ListLongMap!18302 (toList!9166 List!27133)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5562 (array!79116 array!79118 (_ BitVec 32) (_ BitVec 32) V!46699 V!46699 (_ BitVec 32) Int) ListLongMap!18301)

(declare-fun -!2001 (ListLongMap!18301 (_ BitVec 64)) ListLongMap!18301)

(assert (=> b!1225965 (= (getCurrentListMapNoExtraKeys!5562 lt!558612 lt!558613 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!2001 (getCurrentListMapNoExtraKeys!5562 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!40578 0))(
  ( (Unit!40579) )
))
(declare-fun lt!558610 () Unit!40578)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1201 (array!79116 array!79118 (_ BitVec 32) (_ BitVec 32) V!46699 V!46699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40578)

(assert (=> b!1225965 (= lt!558610 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1201 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225966 () Bool)

(declare-fun res!814852 () Bool)

(assert (=> b!1225966 (=> (not res!814852) (not e!696314))))

(assert (=> b!1225966 (= res!814852 (= (select (arr!38181 _keys!1208) i!673) k0!934))))

(declare-fun res!814857 () Bool)

(assert (=> start!101822 (=> (not res!814857) (not e!696314))))

(assert (=> start!101822 (= res!814857 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38718 _keys!1208))))))

(assert (=> start!101822 e!696314))

(assert (=> start!101822 tp_is_empty!31179))

(declare-fun array_inv!28958 (array!79116) Bool)

(assert (=> start!101822 (array_inv!28958 _keys!1208)))

(assert (=> start!101822 true))

(assert (=> start!101822 tp!92471))

(declare-fun e!696316 () Bool)

(declare-fun array_inv!28959 (array!79118) Bool)

(assert (=> start!101822 (and (array_inv!28959 _values!996) e!696316)))

(declare-fun b!1225967 () Bool)

(declare-fun res!814853 () Bool)

(assert (=> b!1225967 (=> (not res!814853) (not e!696314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225967 (= res!814853 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!48667 () Bool)

(declare-fun tp!92472 () Bool)

(assert (=> mapNonEmpty!48667 (= mapRes!48667 (and tp!92472 e!696320))))

(declare-fun mapKey!48667 () (_ BitVec 32))

(declare-fun mapRest!48667 () (Array (_ BitVec 32) ValueCell!14880))

(declare-fun mapValue!48667 () ValueCell!14880)

(assert (=> mapNonEmpty!48667 (= (arr!38182 _values!996) (store mapRest!48667 mapKey!48667 mapValue!48667))))

(declare-fun b!1225968 () Bool)

(declare-fun e!696318 () Bool)

(assert (=> b!1225968 (= e!696316 (and e!696318 mapRes!48667))))

(declare-fun condMapEmpty!48667 () Bool)

(declare-fun mapDefault!48667 () ValueCell!14880)

(assert (=> b!1225968 (= condMapEmpty!48667 (= (arr!38182 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14880)) mapDefault!48667)))))

(declare-fun b!1225969 () Bool)

(declare-fun e!696321 () Bool)

(assert (=> b!1225969 (= e!696321 e!696319)))

(declare-fun res!814855 () Bool)

(assert (=> b!1225969 (=> res!814855 e!696319)))

(assert (=> b!1225969 (= res!814855 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!558608 () ListLongMap!18301)

(assert (=> b!1225969 (= lt!558608 (getCurrentListMapNoExtraKeys!5562 lt!558612 lt!558613 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3455 (Int (_ BitVec 64)) V!46699)

(assert (=> b!1225969 (= lt!558613 (array!79119 (store (arr!38182 _values!996) i!673 (ValueCellFull!14880 (dynLambda!3455 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38719 _values!996)))))

(declare-fun lt!558611 () ListLongMap!18301)

(assert (=> b!1225969 (= lt!558611 (getCurrentListMapNoExtraKeys!5562 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225970 () Bool)

(declare-fun res!814854 () Bool)

(assert (=> b!1225970 (=> (not res!814854) (not e!696314))))

(assert (=> b!1225970 (= res!814854 (and (= (size!38719 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38718 _keys!1208) (size!38719 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225971 () Bool)

(assert (=> b!1225971 (= e!696317 (not e!696321))))

(declare-fun res!814856 () Bool)

(assert (=> b!1225971 (=> res!814856 e!696321)))

(assert (=> b!1225971 (= res!814856 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225971 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558609 () Unit!40578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79116 (_ BitVec 64) (_ BitVec 32)) Unit!40578)

(assert (=> b!1225971 (= lt!558609 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225972 () Bool)

(assert (=> b!1225972 (= e!696314 e!696317)))

(declare-fun res!814861 () Bool)

(assert (=> b!1225972 (=> (not res!814861) (not e!696317))))

(assert (=> b!1225972 (= res!814861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558612 mask!1564))))

(assert (=> b!1225972 (= lt!558612 (array!79117 (store (arr!38181 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38718 _keys!1208)))))

(declare-fun b!1225973 () Bool)

(assert (=> b!1225973 (= e!696318 tp_is_empty!31179)))

(declare-fun b!1225974 () Bool)

(declare-fun res!814858 () Bool)

(assert (=> b!1225974 (=> (not res!814858) (not e!696314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225974 (= res!814858 (validKeyInArray!0 k0!934))))

(assert (= (and start!101822 res!814857) b!1225967))

(assert (= (and b!1225967 res!814853) b!1225970))

(assert (= (and b!1225970 res!814854) b!1225961))

(assert (= (and b!1225961 res!814863) b!1225960))

(assert (= (and b!1225960 res!814862) b!1225964))

(assert (= (and b!1225964 res!814860) b!1225974))

(assert (= (and b!1225974 res!814858) b!1225966))

(assert (= (and b!1225966 res!814852) b!1225972))

(assert (= (and b!1225972 res!814861) b!1225962))

(assert (= (and b!1225962 res!814859) b!1225971))

(assert (= (and b!1225971 (not res!814856)) b!1225969))

(assert (= (and b!1225969 (not res!814855)) b!1225965))

(assert (= (and b!1225968 condMapEmpty!48667) mapIsEmpty!48667))

(assert (= (and b!1225968 (not condMapEmpty!48667)) mapNonEmpty!48667))

(get-info :version)

(assert (= (and mapNonEmpty!48667 ((_ is ValueCellFull!14880) mapValue!48667)) b!1225963))

(assert (= (and b!1225968 ((_ is ValueCellFull!14880) mapDefault!48667)) b!1225973))

(assert (= start!101822 b!1225968))

(declare-fun b_lambda!22465 () Bool)

(assert (=> (not b_lambda!22465) (not b!1225969)))

(declare-fun t!40593 () Bool)

(declare-fun tb!11283 () Bool)

(assert (=> (and start!101822 (= defaultEntry!1004 defaultEntry!1004) t!40593) tb!11283))

(declare-fun result!23171 () Bool)

(assert (=> tb!11283 (= result!23171 tp_is_empty!31179)))

(assert (=> b!1225969 t!40593))

(declare-fun b_and!44223 () Bool)

(assert (= b_and!44221 (and (=> t!40593 result!23171) b_and!44223)))

(declare-fun m!1131091 () Bool)

(assert (=> b!1225974 m!1131091))

(declare-fun m!1131093 () Bool)

(assert (=> mapNonEmpty!48667 m!1131093))

(declare-fun m!1131095 () Bool)

(assert (=> b!1225972 m!1131095))

(declare-fun m!1131097 () Bool)

(assert (=> b!1225972 m!1131097))

(declare-fun m!1131099 () Bool)

(assert (=> b!1225966 m!1131099))

(declare-fun m!1131101 () Bool)

(assert (=> b!1225962 m!1131101))

(declare-fun m!1131103 () Bool)

(assert (=> b!1225969 m!1131103))

(declare-fun m!1131105 () Bool)

(assert (=> b!1225969 m!1131105))

(declare-fun m!1131107 () Bool)

(assert (=> b!1225969 m!1131107))

(declare-fun m!1131109 () Bool)

(assert (=> b!1225969 m!1131109))

(declare-fun m!1131111 () Bool)

(assert (=> b!1225961 m!1131111))

(declare-fun m!1131113 () Bool)

(assert (=> b!1225967 m!1131113))

(declare-fun m!1131115 () Bool)

(assert (=> start!101822 m!1131115))

(declare-fun m!1131117 () Bool)

(assert (=> start!101822 m!1131117))

(declare-fun m!1131119 () Bool)

(assert (=> b!1225971 m!1131119))

(declare-fun m!1131121 () Bool)

(assert (=> b!1225971 m!1131121))

(declare-fun m!1131123 () Bool)

(assert (=> b!1225960 m!1131123))

(declare-fun m!1131125 () Bool)

(assert (=> b!1225965 m!1131125))

(declare-fun m!1131127 () Bool)

(assert (=> b!1225965 m!1131127))

(assert (=> b!1225965 m!1131127))

(declare-fun m!1131129 () Bool)

(assert (=> b!1225965 m!1131129))

(declare-fun m!1131131 () Bool)

(assert (=> b!1225965 m!1131131))

(check-sat (not b!1225974) b_and!44223 (not b!1225961) (not b!1225965) (not b_lambda!22465) (not b!1225960) (not b!1225972) (not b_next!26475) tp_is_empty!31179 (not start!101822) (not b!1225971) (not mapNonEmpty!48667) (not b!1225962) (not b!1225967) (not b!1225969))
(check-sat b_and!44223 (not b_next!26475))
