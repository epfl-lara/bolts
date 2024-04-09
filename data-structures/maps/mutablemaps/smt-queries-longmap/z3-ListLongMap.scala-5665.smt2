; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73804 () Bool)

(assert start!73804)

(declare-fun b_free!14691 () Bool)

(declare-fun b_next!14691 () Bool)

(assert (=> start!73804 (= b_free!14691 (not b_next!14691))))

(declare-fun tp!51578 () Bool)

(declare-fun b_and!24379 () Bool)

(assert (=> start!73804 (= tp!51578 b_and!24379)))

(declare-fun b!865375 () Bool)

(declare-fun res!588120 () Bool)

(declare-fun e!482108 () Bool)

(assert (=> b!865375 (=> (not res!588120) (not e!482108))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865375 (= res!588120 (validKeyInArray!0 k0!854))))

(declare-fun b!865376 () Bool)

(declare-fun e!482104 () Bool)

(declare-fun tp_is_empty!16827 () Bool)

(assert (=> b!865376 (= e!482104 tp_is_empty!16827)))

(declare-fun b!865377 () Bool)

(declare-fun res!588122 () Bool)

(assert (=> b!865377 (=> (not res!588122) (not e!482108))))

(declare-datatypes ((array!49798 0))(
  ( (array!49799 (arr!23926 (Array (_ BitVec 32) (_ BitVec 64))) (size!24367 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49798)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49798 (_ BitVec 32)) Bool)

(assert (=> b!865377 (= res!588122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26840 () Bool)

(declare-fun mapRes!26840 () Bool)

(declare-fun tp!51577 () Bool)

(assert (=> mapNonEmpty!26840 (= mapRes!26840 (and tp!51577 e!482104))))

(declare-datatypes ((V!27483 0))(
  ( (V!27484 (val!8461 Int)) )
))
(declare-datatypes ((ValueCell!7974 0))(
  ( (ValueCellFull!7974 (v!10882 V!27483)) (EmptyCell!7974) )
))
(declare-fun mapValue!26840 () ValueCell!7974)

(declare-fun mapKey!26840 () (_ BitVec 32))

(declare-fun mapRest!26840 () (Array (_ BitVec 32) ValueCell!7974))

(declare-datatypes ((array!49800 0))(
  ( (array!49801 (arr!23927 (Array (_ BitVec 32) ValueCell!7974)) (size!24368 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49800)

(assert (=> mapNonEmpty!26840 (= (arr!23927 _values!688) (store mapRest!26840 mapKey!26840 mapValue!26840))))

(declare-fun b!865378 () Bool)

(declare-fun e!482107 () Bool)

(declare-fun e!482101 () Bool)

(assert (=> b!865378 (= e!482107 (and e!482101 mapRes!26840))))

(declare-fun condMapEmpty!26840 () Bool)

(declare-fun mapDefault!26840 () ValueCell!7974)

(assert (=> b!865378 (= condMapEmpty!26840 (= (arr!23927 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7974)) mapDefault!26840)))))

(declare-fun b!865379 () Bool)

(declare-datatypes ((Unit!29615 0))(
  ( (Unit!29616) )
))
(declare-fun e!482109 () Unit!29615)

(declare-fun Unit!29617 () Unit!29615)

(assert (=> b!865379 (= e!482109 Unit!29617)))

(declare-fun lt!392186 () Unit!29615)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49798 (_ BitVec 32) (_ BitVec 32)) Unit!29615)

(assert (=> b!865379 (= lt!392186 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17080 0))(
  ( (Nil!17077) (Cons!17076 (h!18207 (_ BitVec 64)) (t!24045 List!17080)) )
))
(declare-fun arrayNoDuplicates!0 (array!49798 (_ BitVec 32) List!17080) Bool)

(assert (=> b!865379 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17077)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!392185 () Unit!29615)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49798 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29615)

(assert (=> b!865379 (= lt!392185 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865379 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392184 () Unit!29615)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49798 (_ BitVec 64) (_ BitVec 32) List!17080) Unit!29615)

(assert (=> b!865379 (= lt!392184 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17077))))

(assert (=> b!865379 false))

(declare-fun mapIsEmpty!26840 () Bool)

(assert (=> mapIsEmpty!26840 mapRes!26840))

(declare-fun b!865380 () Bool)

(declare-fun e!482105 () Bool)

(assert (=> b!865380 (= e!482105 true)))

(declare-datatypes ((tuple2!11216 0))(
  ( (tuple2!11217 (_1!5618 (_ BitVec 64)) (_2!5618 V!27483)) )
))
(declare-fun lt!392182 () tuple2!11216)

(declare-datatypes ((List!17081 0))(
  ( (Nil!17078) (Cons!17077 (h!18208 tuple2!11216) (t!24046 List!17081)) )
))
(declare-datatypes ((ListLongMap!9999 0))(
  ( (ListLongMap!10000 (toList!5015 List!17081)) )
))
(declare-fun lt!392193 () ListLongMap!9999)

(declare-fun lt!392191 () ListLongMap!9999)

(declare-fun lt!392178 () tuple2!11216)

(declare-fun +!2311 (ListLongMap!9999 tuple2!11216) ListLongMap!9999)

(assert (=> b!865380 (= lt!392191 (+!2311 (+!2311 lt!392193 lt!392182) lt!392178))))

(declare-fun lt!392179 () Unit!29615)

(declare-fun v!557 () V!27483)

(declare-fun lt!392183 () V!27483)

(declare-fun addCommutativeForDiffKeys!518 (ListLongMap!9999 (_ BitVec 64) V!27483 (_ BitVec 64) V!27483) Unit!29615)

(assert (=> b!865380 (= lt!392179 (addCommutativeForDiffKeys!518 lt!392193 k0!854 v!557 (select (arr!23926 _keys!868) from!1053) lt!392183))))

(declare-fun b!865381 () Bool)

(declare-fun res!588115 () Bool)

(assert (=> b!865381 (=> (not res!588115) (not e!482108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865381 (= res!588115 (validMask!0 mask!1196))))

(declare-fun b!865382 () Bool)

(declare-fun e!482106 () Bool)

(assert (=> b!865382 (= e!482106 e!482105)))

(declare-fun res!588117 () Bool)

(assert (=> b!865382 (=> res!588117 e!482105)))

(assert (=> b!865382 (= res!588117 (= k0!854 (select (arr!23926 _keys!868) from!1053)))))

(assert (=> b!865382 (not (= (select (arr!23926 _keys!868) from!1053) k0!854))))

(declare-fun lt!392187 () Unit!29615)

(assert (=> b!865382 (= lt!392187 e!482109)))

(declare-fun c!92175 () Bool)

(assert (=> b!865382 (= c!92175 (= (select (arr!23926 _keys!868) from!1053) k0!854))))

(declare-fun lt!392188 () ListLongMap!9999)

(assert (=> b!865382 (= lt!392188 lt!392191)))

(declare-fun lt!392189 () ListLongMap!9999)

(assert (=> b!865382 (= lt!392191 (+!2311 lt!392189 lt!392182))))

(assert (=> b!865382 (= lt!392182 (tuple2!11217 (select (arr!23926 _keys!868) from!1053) lt!392183))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12659 (ValueCell!7974 V!27483) V!27483)

(declare-fun dynLambda!1179 (Int (_ BitVec 64)) V!27483)

(assert (=> b!865382 (= lt!392183 (get!12659 (select (arr!23927 _values!688) from!1053) (dynLambda!1179 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865383 () Bool)

(declare-fun res!588114 () Bool)

(assert (=> b!865383 (=> (not res!588114) (not e!482108))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!865383 (= res!588114 (and (= (size!24368 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24367 _keys!868) (size!24368 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865384 () Bool)

(declare-fun res!588116 () Bool)

(assert (=> b!865384 (=> (not res!588116) (not e!482108))))

(assert (=> b!865384 (= res!588116 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24367 _keys!868))))))

(declare-fun b!865385 () Bool)

(declare-fun e!482102 () Bool)

(assert (=> b!865385 (= e!482102 (not e!482106))))

(declare-fun res!588118 () Bool)

(assert (=> b!865385 (=> res!588118 e!482106)))

(assert (=> b!865385 (= res!588118 (not (validKeyInArray!0 (select (arr!23926 _keys!868) from!1053))))))

(declare-fun lt!392180 () ListLongMap!9999)

(assert (=> b!865385 (= lt!392180 lt!392189)))

(assert (=> b!865385 (= lt!392189 (+!2311 lt!392193 lt!392178))))

(declare-fun lt!392190 () array!49800)

(declare-fun minValue!654 () V!27483)

(declare-fun zeroValue!654 () V!27483)

(declare-fun getCurrentListMapNoExtraKeys!2985 (array!49798 array!49800 (_ BitVec 32) (_ BitVec 32) V!27483 V!27483 (_ BitVec 32) Int) ListLongMap!9999)

(assert (=> b!865385 (= lt!392180 (getCurrentListMapNoExtraKeys!2985 _keys!868 lt!392190 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865385 (= lt!392178 (tuple2!11217 k0!854 v!557))))

(assert (=> b!865385 (= lt!392193 (getCurrentListMapNoExtraKeys!2985 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392181 () Unit!29615)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!551 (array!49798 array!49800 (_ BitVec 32) (_ BitVec 32) V!27483 V!27483 (_ BitVec 32) (_ BitVec 64) V!27483 (_ BitVec 32) Int) Unit!29615)

(assert (=> b!865385 (= lt!392181 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!551 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!588119 () Bool)

(assert (=> start!73804 (=> (not res!588119) (not e!482108))))

(assert (=> start!73804 (= res!588119 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24367 _keys!868))))))

(assert (=> start!73804 e!482108))

(assert (=> start!73804 tp_is_empty!16827))

(assert (=> start!73804 true))

(assert (=> start!73804 tp!51578))

(declare-fun array_inv!18898 (array!49798) Bool)

(assert (=> start!73804 (array_inv!18898 _keys!868)))

(declare-fun array_inv!18899 (array!49800) Bool)

(assert (=> start!73804 (and (array_inv!18899 _values!688) e!482107)))

(declare-fun b!865386 () Bool)

(assert (=> b!865386 (= e!482108 e!482102)))

(declare-fun res!588113 () Bool)

(assert (=> b!865386 (=> (not res!588113) (not e!482102))))

(assert (=> b!865386 (= res!588113 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!865386 (= lt!392188 (getCurrentListMapNoExtraKeys!2985 _keys!868 lt!392190 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865386 (= lt!392190 (array!49801 (store (arr!23927 _values!688) i!612 (ValueCellFull!7974 v!557)) (size!24368 _values!688)))))

(declare-fun lt!392192 () ListLongMap!9999)

(assert (=> b!865386 (= lt!392192 (getCurrentListMapNoExtraKeys!2985 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865387 () Bool)

(declare-fun res!588123 () Bool)

(assert (=> b!865387 (=> (not res!588123) (not e!482108))))

(assert (=> b!865387 (= res!588123 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17077))))

(declare-fun b!865388 () Bool)

(declare-fun Unit!29618 () Unit!29615)

(assert (=> b!865388 (= e!482109 Unit!29618)))

(declare-fun b!865389 () Bool)

(assert (=> b!865389 (= e!482101 tp_is_empty!16827)))

(declare-fun b!865390 () Bool)

(declare-fun res!588121 () Bool)

(assert (=> b!865390 (=> (not res!588121) (not e!482108))))

(assert (=> b!865390 (= res!588121 (and (= (select (arr!23926 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73804 res!588119) b!865381))

(assert (= (and b!865381 res!588115) b!865383))

(assert (= (and b!865383 res!588114) b!865377))

(assert (= (and b!865377 res!588122) b!865387))

(assert (= (and b!865387 res!588123) b!865384))

(assert (= (and b!865384 res!588116) b!865375))

(assert (= (and b!865375 res!588120) b!865390))

(assert (= (and b!865390 res!588121) b!865386))

(assert (= (and b!865386 res!588113) b!865385))

(assert (= (and b!865385 (not res!588118)) b!865382))

(assert (= (and b!865382 c!92175) b!865379))

(assert (= (and b!865382 (not c!92175)) b!865388))

(assert (= (and b!865382 (not res!588117)) b!865380))

(assert (= (and b!865378 condMapEmpty!26840) mapIsEmpty!26840))

(assert (= (and b!865378 (not condMapEmpty!26840)) mapNonEmpty!26840))

(get-info :version)

(assert (= (and mapNonEmpty!26840 ((_ is ValueCellFull!7974) mapValue!26840)) b!865376))

(assert (= (and b!865378 ((_ is ValueCellFull!7974) mapDefault!26840)) b!865389))

(assert (= start!73804 b!865378))

(declare-fun b_lambda!12073 () Bool)

(assert (=> (not b_lambda!12073) (not b!865382)))

(declare-fun t!24044 () Bool)

(declare-fun tb!4821 () Bool)

(assert (=> (and start!73804 (= defaultEntry!696 defaultEntry!696) t!24044) tb!4821))

(declare-fun result!9245 () Bool)

(assert (=> tb!4821 (= result!9245 tp_is_empty!16827)))

(assert (=> b!865382 t!24044))

(declare-fun b_and!24381 () Bool)

(assert (= b_and!24379 (and (=> t!24044 result!9245) b_and!24381)))

(declare-fun m!806993 () Bool)

(assert (=> b!865375 m!806993))

(declare-fun m!806995 () Bool)

(assert (=> mapNonEmpty!26840 m!806995))

(declare-fun m!806997 () Bool)

(assert (=> b!865377 m!806997))

(declare-fun m!806999 () Bool)

(assert (=> b!865380 m!806999))

(assert (=> b!865380 m!806999))

(declare-fun m!807001 () Bool)

(assert (=> b!865380 m!807001))

(declare-fun m!807003 () Bool)

(assert (=> b!865380 m!807003))

(assert (=> b!865380 m!807003))

(declare-fun m!807005 () Bool)

(assert (=> b!865380 m!807005))

(declare-fun m!807007 () Bool)

(assert (=> start!73804 m!807007))

(declare-fun m!807009 () Bool)

(assert (=> start!73804 m!807009))

(declare-fun m!807011 () Bool)

(assert (=> b!865386 m!807011))

(declare-fun m!807013 () Bool)

(assert (=> b!865386 m!807013))

(declare-fun m!807015 () Bool)

(assert (=> b!865386 m!807015))

(declare-fun m!807017 () Bool)

(assert (=> b!865381 m!807017))

(declare-fun m!807019 () Bool)

(assert (=> b!865390 m!807019))

(declare-fun m!807021 () Bool)

(assert (=> b!865387 m!807021))

(declare-fun m!807023 () Bool)

(assert (=> b!865385 m!807023))

(assert (=> b!865385 m!807003))

(declare-fun m!807025 () Bool)

(assert (=> b!865385 m!807025))

(assert (=> b!865385 m!807003))

(declare-fun m!807027 () Bool)

(assert (=> b!865385 m!807027))

(declare-fun m!807029 () Bool)

(assert (=> b!865385 m!807029))

(declare-fun m!807031 () Bool)

(assert (=> b!865385 m!807031))

(declare-fun m!807033 () Bool)

(assert (=> b!865379 m!807033))

(declare-fun m!807035 () Bool)

(assert (=> b!865379 m!807035))

(declare-fun m!807037 () Bool)

(assert (=> b!865379 m!807037))

(declare-fun m!807039 () Bool)

(assert (=> b!865379 m!807039))

(declare-fun m!807041 () Bool)

(assert (=> b!865379 m!807041))

(declare-fun m!807043 () Bool)

(assert (=> b!865382 m!807043))

(declare-fun m!807045 () Bool)

(assert (=> b!865382 m!807045))

(declare-fun m!807047 () Bool)

(assert (=> b!865382 m!807047))

(declare-fun m!807049 () Bool)

(assert (=> b!865382 m!807049))

(assert (=> b!865382 m!807045))

(assert (=> b!865382 m!807003))

(assert (=> b!865382 m!807047))

(check-sat (not b!865382) (not b!865380) (not b!865381) (not start!73804) (not b_next!14691) (not b!865386) (not b!865379) (not mapNonEmpty!26840) (not b_lambda!12073) b_and!24381 (not b!865387) (not b!865385) tp_is_empty!16827 (not b!865375) (not b!865377))
(check-sat b_and!24381 (not b_next!14691))
