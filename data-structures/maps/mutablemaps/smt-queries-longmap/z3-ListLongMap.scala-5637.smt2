; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73636 () Bool)

(assert start!73636)

(declare-fun b_free!14523 () Bool)

(declare-fun b_next!14523 () Bool)

(assert (=> start!73636 (= b_free!14523 (not b_next!14523))))

(declare-fun tp!51073 () Bool)

(declare-fun b_and!24043 () Bool)

(assert (=> start!73636 (= tp!51073 b_and!24043)))

(declare-fun b!861224 () Bool)

(declare-fun e!479885 () Bool)

(declare-fun tp_is_empty!16659 () Bool)

(assert (=> b!861224 (= e!479885 tp_is_empty!16659)))

(declare-fun b!861225 () Bool)

(declare-fun e!479882 () Bool)

(declare-fun e!479889 () Bool)

(assert (=> b!861225 (= e!479882 e!479889)))

(declare-fun res!585395 () Bool)

(assert (=> b!861225 (=> (not res!585395) (not e!479889))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861225 (= res!585395 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49466 0))(
  ( (array!49467 (arr!23760 (Array (_ BitVec 32) (_ BitVec 64))) (size!24201 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49466)

(declare-datatypes ((V!27259 0))(
  ( (V!27260 (val!8377 Int)) )
))
(declare-fun minValue!654 () V!27259)

(declare-fun zeroValue!654 () V!27259)

(declare-datatypes ((tuple2!11064 0))(
  ( (tuple2!11065 (_1!5542 (_ BitVec 64)) (_2!5542 V!27259)) )
))
(declare-datatypes ((List!16934 0))(
  ( (Nil!16931) (Cons!16930 (h!18061 tuple2!11064) (t!23731 List!16934)) )
))
(declare-datatypes ((ListLongMap!9847 0))(
  ( (ListLongMap!9848 (toList!4939 List!16934)) )
))
(declare-fun lt!388395 () ListLongMap!9847)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7890 0))(
  ( (ValueCellFull!7890 (v!10798 V!27259)) (EmptyCell!7890) )
))
(declare-datatypes ((array!49468 0))(
  ( (array!49469 (arr!23761 (Array (_ BitVec 32) ValueCell!7890)) (size!24202 (_ BitVec 32))) )
))
(declare-fun lt!388397 () array!49468)

(declare-fun getCurrentListMapNoExtraKeys!2918 (array!49466 array!49468 (_ BitVec 32) (_ BitVec 32) V!27259 V!27259 (_ BitVec 32) Int) ListLongMap!9847)

(assert (=> b!861225 (= lt!388395 (getCurrentListMapNoExtraKeys!2918 _keys!868 lt!388397 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27259)

(declare-fun _values!688 () array!49468)

(assert (=> b!861225 (= lt!388397 (array!49469 (store (arr!23761 _values!688) i!612 (ValueCellFull!7890 v!557)) (size!24202 _values!688)))))

(declare-fun lt!388399 () ListLongMap!9847)

(assert (=> b!861225 (= lt!388399 (getCurrentListMapNoExtraKeys!2918 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861226 () Bool)

(declare-fun res!585399 () Bool)

(assert (=> b!861226 (=> (not res!585399) (not e!479882))))

(assert (=> b!861226 (= res!585399 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24201 _keys!868))))))

(declare-fun b!861227 () Bool)

(declare-fun e!479887 () Bool)

(assert (=> b!861227 (= e!479887 true)))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!861227 (not (= (select (arr!23760 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29338 0))(
  ( (Unit!29339) )
))
(declare-fun lt!388401 () Unit!29338)

(declare-fun e!479886 () Unit!29338)

(assert (=> b!861227 (= lt!388401 e!479886)))

(declare-fun c!91923 () Bool)

(assert (=> b!861227 (= c!91923 (= (select (arr!23760 _keys!868) from!1053) k0!854))))

(declare-fun lt!388398 () ListLongMap!9847)

(declare-fun +!2239 (ListLongMap!9847 tuple2!11064) ListLongMap!9847)

(declare-fun get!12545 (ValueCell!7890 V!27259) V!27259)

(declare-fun dynLambda!1121 (Int (_ BitVec 64)) V!27259)

(assert (=> b!861227 (= lt!388395 (+!2239 lt!388398 (tuple2!11065 (select (arr!23760 _keys!868) from!1053) (get!12545 (select (arr!23761 _values!688) from!1053) (dynLambda!1121 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861228 () Bool)

(declare-fun res!585392 () Bool)

(assert (=> b!861228 (=> (not res!585392) (not e!479882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861228 (= res!585392 (validKeyInArray!0 k0!854))))

(declare-fun b!861229 () Bool)

(assert (=> b!861229 (= e!479889 (not e!479887))))

(declare-fun res!585394 () Bool)

(assert (=> b!861229 (=> res!585394 e!479887)))

(assert (=> b!861229 (= res!585394 (not (validKeyInArray!0 (select (arr!23760 _keys!868) from!1053))))))

(declare-fun lt!388394 () ListLongMap!9847)

(assert (=> b!861229 (= lt!388394 lt!388398)))

(declare-fun lt!388396 () ListLongMap!9847)

(assert (=> b!861229 (= lt!388398 (+!2239 lt!388396 (tuple2!11065 k0!854 v!557)))))

(assert (=> b!861229 (= lt!388394 (getCurrentListMapNoExtraKeys!2918 _keys!868 lt!388397 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861229 (= lt!388396 (getCurrentListMapNoExtraKeys!2918 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388391 () Unit!29338)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!491 (array!49466 array!49468 (_ BitVec 32) (_ BitVec 32) V!27259 V!27259 (_ BitVec 32) (_ BitVec 64) V!27259 (_ BitVec 32) Int) Unit!29338)

(assert (=> b!861229 (= lt!388391 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!491 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861230 () Bool)

(declare-fun res!585397 () Bool)

(assert (=> b!861230 (=> (not res!585397) (not e!479882))))

(assert (=> b!861230 (= res!585397 (and (= (select (arr!23760 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!861231 () Bool)

(declare-fun Unit!29340 () Unit!29338)

(assert (=> b!861231 (= e!479886 Unit!29340)))

(declare-fun res!585390 () Bool)

(assert (=> start!73636 (=> (not res!585390) (not e!479882))))

(assert (=> start!73636 (= res!585390 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24201 _keys!868))))))

(assert (=> start!73636 e!479882))

(assert (=> start!73636 tp_is_empty!16659))

(assert (=> start!73636 true))

(assert (=> start!73636 tp!51073))

(declare-fun array_inv!18780 (array!49466) Bool)

(assert (=> start!73636 (array_inv!18780 _keys!868)))

(declare-fun e!479883 () Bool)

(declare-fun array_inv!18781 (array!49468) Bool)

(assert (=> start!73636 (and (array_inv!18781 _values!688) e!479883)))

(declare-fun b!861232 () Bool)

(declare-fun e!479884 () Bool)

(declare-fun mapRes!26588 () Bool)

(assert (=> b!861232 (= e!479883 (and e!479884 mapRes!26588))))

(declare-fun condMapEmpty!26588 () Bool)

(declare-fun mapDefault!26588 () ValueCell!7890)

(assert (=> b!861232 (= condMapEmpty!26588 (= (arr!23761 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7890)) mapDefault!26588)))))

(declare-fun b!861233 () Bool)

(declare-fun res!585391 () Bool)

(assert (=> b!861233 (=> (not res!585391) (not e!479882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49466 (_ BitVec 32)) Bool)

(assert (=> b!861233 (= res!585391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861234 () Bool)

(declare-fun res!585396 () Bool)

(assert (=> b!861234 (=> (not res!585396) (not e!479882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861234 (= res!585396 (validMask!0 mask!1196))))

(declare-fun b!861235 () Bool)

(declare-fun res!585393 () Bool)

(assert (=> b!861235 (=> (not res!585393) (not e!479882))))

(assert (=> b!861235 (= res!585393 (and (= (size!24202 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24201 _keys!868) (size!24202 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861236 () Bool)

(declare-fun Unit!29341 () Unit!29338)

(assert (=> b!861236 (= e!479886 Unit!29341)))

(declare-fun lt!388393 () Unit!29338)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49466 (_ BitVec 32) (_ BitVec 32)) Unit!29338)

(assert (=> b!861236 (= lt!388393 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16935 0))(
  ( (Nil!16932) (Cons!16931 (h!18062 (_ BitVec 64)) (t!23732 List!16935)) )
))
(declare-fun arrayNoDuplicates!0 (array!49466 (_ BitVec 32) List!16935) Bool)

(assert (=> b!861236 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16932)))

(declare-fun lt!388392 () Unit!29338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29338)

(assert (=> b!861236 (= lt!388392 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861236 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388400 () Unit!29338)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49466 (_ BitVec 64) (_ BitVec 32) List!16935) Unit!29338)

(assert (=> b!861236 (= lt!388400 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16932))))

(assert (=> b!861236 false))

(declare-fun b!861237 () Bool)

(assert (=> b!861237 (= e!479884 tp_is_empty!16659)))

(declare-fun mapIsEmpty!26588 () Bool)

(assert (=> mapIsEmpty!26588 mapRes!26588))

(declare-fun mapNonEmpty!26588 () Bool)

(declare-fun tp!51074 () Bool)

(assert (=> mapNonEmpty!26588 (= mapRes!26588 (and tp!51074 e!479885))))

(declare-fun mapRest!26588 () (Array (_ BitVec 32) ValueCell!7890))

(declare-fun mapKey!26588 () (_ BitVec 32))

(declare-fun mapValue!26588 () ValueCell!7890)

(assert (=> mapNonEmpty!26588 (= (arr!23761 _values!688) (store mapRest!26588 mapKey!26588 mapValue!26588))))

(declare-fun b!861238 () Bool)

(declare-fun res!585398 () Bool)

(assert (=> b!861238 (=> (not res!585398) (not e!479882))))

(assert (=> b!861238 (= res!585398 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16932))))

(assert (= (and start!73636 res!585390) b!861234))

(assert (= (and b!861234 res!585396) b!861235))

(assert (= (and b!861235 res!585393) b!861233))

(assert (= (and b!861233 res!585391) b!861238))

(assert (= (and b!861238 res!585398) b!861226))

(assert (= (and b!861226 res!585399) b!861228))

(assert (= (and b!861228 res!585392) b!861230))

(assert (= (and b!861230 res!585397) b!861225))

(assert (= (and b!861225 res!585395) b!861229))

(assert (= (and b!861229 (not res!585394)) b!861227))

(assert (= (and b!861227 c!91923) b!861236))

(assert (= (and b!861227 (not c!91923)) b!861231))

(assert (= (and b!861232 condMapEmpty!26588) mapIsEmpty!26588))

(assert (= (and b!861232 (not condMapEmpty!26588)) mapNonEmpty!26588))

(get-info :version)

(assert (= (and mapNonEmpty!26588 ((_ is ValueCellFull!7890) mapValue!26588)) b!861224))

(assert (= (and b!861232 ((_ is ValueCellFull!7890) mapDefault!26588)) b!861237))

(assert (= start!73636 b!861232))

(declare-fun b_lambda!11905 () Bool)

(assert (=> (not b_lambda!11905) (not b!861227)))

(declare-fun t!23730 () Bool)

(declare-fun tb!4653 () Bool)

(assert (=> (and start!73636 (= defaultEntry!696 defaultEntry!696) t!23730) tb!4653))

(declare-fun result!8909 () Bool)

(assert (=> tb!4653 (= result!8909 tp_is_empty!16659)))

(assert (=> b!861227 t!23730))

(declare-fun b_and!24045 () Bool)

(assert (= b_and!24043 (and (=> t!23730 result!8909) b_and!24045)))

(declare-fun m!802223 () Bool)

(assert (=> b!861236 m!802223))

(declare-fun m!802225 () Bool)

(assert (=> b!861236 m!802225))

(declare-fun m!802227 () Bool)

(assert (=> b!861236 m!802227))

(declare-fun m!802229 () Bool)

(assert (=> b!861236 m!802229))

(declare-fun m!802231 () Bool)

(assert (=> b!861236 m!802231))

(declare-fun m!802233 () Bool)

(assert (=> start!73636 m!802233))

(declare-fun m!802235 () Bool)

(assert (=> start!73636 m!802235))

(declare-fun m!802237 () Bool)

(assert (=> b!861230 m!802237))

(declare-fun m!802239 () Bool)

(assert (=> b!861227 m!802239))

(declare-fun m!802241 () Bool)

(assert (=> b!861227 m!802241))

(declare-fun m!802243 () Bool)

(assert (=> b!861227 m!802243))

(declare-fun m!802245 () Bool)

(assert (=> b!861227 m!802245))

(assert (=> b!861227 m!802241))

(declare-fun m!802247 () Bool)

(assert (=> b!861227 m!802247))

(assert (=> b!861227 m!802243))

(declare-fun m!802249 () Bool)

(assert (=> b!861233 m!802249))

(declare-fun m!802251 () Bool)

(assert (=> b!861225 m!802251))

(declare-fun m!802253 () Bool)

(assert (=> b!861225 m!802253))

(declare-fun m!802255 () Bool)

(assert (=> b!861225 m!802255))

(declare-fun m!802257 () Bool)

(assert (=> b!861238 m!802257))

(declare-fun m!802259 () Bool)

(assert (=> mapNonEmpty!26588 m!802259))

(declare-fun m!802261 () Bool)

(assert (=> b!861228 m!802261))

(declare-fun m!802263 () Bool)

(assert (=> b!861234 m!802263))

(declare-fun m!802265 () Bool)

(assert (=> b!861229 m!802265))

(declare-fun m!802267 () Bool)

(assert (=> b!861229 m!802267))

(assert (=> b!861229 m!802247))

(declare-fun m!802269 () Bool)

(assert (=> b!861229 m!802269))

(assert (=> b!861229 m!802247))

(declare-fun m!802271 () Bool)

(assert (=> b!861229 m!802271))

(declare-fun m!802273 () Bool)

(assert (=> b!861229 m!802273))

(check-sat (not b!861234) (not b!861236) b_and!24045 (not b!861233) (not b!861229) (not mapNonEmpty!26588) (not b!861238) (not b!861228) tp_is_empty!16659 (not b_lambda!11905) (not b!861225) (not start!73636) (not b!861227) (not b_next!14523))
(check-sat b_and!24045 (not b_next!14523))
