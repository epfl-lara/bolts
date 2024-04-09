; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73684 () Bool)

(assert start!73684)

(declare-fun b_free!14571 () Bool)

(declare-fun b_next!14571 () Bool)

(assert (=> start!73684 (= b_free!14571 (not b_next!14571))))

(declare-fun tp!51218 () Bool)

(declare-fun b_and!24139 () Bool)

(assert (=> start!73684 (= tp!51218 b_and!24139)))

(declare-fun b!862375 () Bool)

(declare-datatypes ((Unit!29420 0))(
  ( (Unit!29421) )
))
(declare-fun e!480489 () Unit!29420)

(declare-fun Unit!29422 () Unit!29420)

(assert (=> b!862375 (= e!480489 Unit!29422)))

(declare-fun lt!389312 () Unit!29420)

(declare-datatypes ((array!49560 0))(
  ( (array!49561 (arr!23807 (Array (_ BitVec 32) (_ BitVec 64))) (size!24248 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49560)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49560 (_ BitVec 32) (_ BitVec 32)) Unit!29420)

(assert (=> b!862375 (= lt!389312 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16978 0))(
  ( (Nil!16975) (Cons!16974 (h!18105 (_ BitVec 64)) (t!23823 List!16978)) )
))
(declare-fun arrayNoDuplicates!0 (array!49560 (_ BitVec 32) List!16978) Bool)

(assert (=> b!862375 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16975)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!389311 () Unit!29420)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49560 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29420)

(assert (=> b!862375 (= lt!389311 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862375 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389301 () Unit!29420)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49560 (_ BitVec 64) (_ BitVec 32) List!16978) Unit!29420)

(assert (=> b!862375 (= lt!389301 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16975))))

(assert (=> b!862375 false))

(declare-fun b!862376 () Bool)

(declare-fun e!480483 () Bool)

(declare-fun e!480482 () Bool)

(assert (=> b!862376 (= e!480483 (not e!480482))))

(declare-fun res!586142 () Bool)

(assert (=> b!862376 (=> res!586142 e!480482)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862376 (= res!586142 (not (validKeyInArray!0 (select (arr!23807 _keys!868) from!1053))))))

(declare-datatypes ((V!27323 0))(
  ( (V!27324 (val!8401 Int)) )
))
(declare-datatypes ((tuple2!11108 0))(
  ( (tuple2!11109 (_1!5564 (_ BitVec 64)) (_2!5564 V!27323)) )
))
(declare-datatypes ((List!16979 0))(
  ( (Nil!16976) (Cons!16975 (h!18106 tuple2!11108) (t!23824 List!16979)) )
))
(declare-datatypes ((ListLongMap!9891 0))(
  ( (ListLongMap!9892 (toList!4961 List!16979)) )
))
(declare-fun lt!389308 () ListLongMap!9891)

(declare-fun lt!389303 () ListLongMap!9891)

(assert (=> b!862376 (= lt!389308 lt!389303)))

(declare-fun lt!389304 () ListLongMap!9891)

(declare-fun lt!389310 () tuple2!11108)

(declare-fun +!2258 (ListLongMap!9891 tuple2!11108) ListLongMap!9891)

(assert (=> b!862376 (= lt!389303 (+!2258 lt!389304 lt!389310))))

(declare-datatypes ((ValueCell!7914 0))(
  ( (ValueCellFull!7914 (v!10822 V!27323)) (EmptyCell!7914) )
))
(declare-datatypes ((array!49562 0))(
  ( (array!49563 (arr!23808 (Array (_ BitVec 32) ValueCell!7914)) (size!24249 (_ BitVec 32))) )
))
(declare-fun lt!389302 () array!49562)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27323)

(declare-fun zeroValue!654 () V!27323)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2937 (array!49560 array!49562 (_ BitVec 32) (_ BitVec 32) V!27323 V!27323 (_ BitVec 32) Int) ListLongMap!9891)

(assert (=> b!862376 (= lt!389308 (getCurrentListMapNoExtraKeys!2937 _keys!868 lt!389302 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27323)

(assert (=> b!862376 (= lt!389310 (tuple2!11109 k0!854 v!557))))

(declare-fun _values!688 () array!49562)

(assert (=> b!862376 (= lt!389304 (getCurrentListMapNoExtraKeys!2937 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389305 () Unit!29420)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!506 (array!49560 array!49562 (_ BitVec 32) (_ BitVec 32) V!27323 V!27323 (_ BitVec 32) (_ BitVec 64) V!27323 (_ BitVec 32) Int) Unit!29420)

(assert (=> b!862376 (= lt!389305 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!506 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862377 () Bool)

(declare-fun res!586135 () Bool)

(declare-fun e!480481 () Bool)

(assert (=> b!862377 (=> (not res!586135) (not e!480481))))

(assert (=> b!862377 (= res!586135 (validKeyInArray!0 k0!854))))

(declare-fun b!862378 () Bool)

(declare-fun res!586143 () Bool)

(assert (=> b!862378 (=> (not res!586143) (not e!480481))))

(assert (=> b!862378 (= res!586143 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16975))))

(declare-fun b!862379 () Bool)

(assert (=> b!862379 (= e!480481 e!480483)))

(declare-fun res!586137 () Bool)

(assert (=> b!862379 (=> (not res!586137) (not e!480483))))

(assert (=> b!862379 (= res!586137 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!389300 () ListLongMap!9891)

(assert (=> b!862379 (= lt!389300 (getCurrentListMapNoExtraKeys!2937 _keys!868 lt!389302 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862379 (= lt!389302 (array!49563 (store (arr!23808 _values!688) i!612 (ValueCellFull!7914 v!557)) (size!24249 _values!688)))))

(declare-fun lt!389309 () ListLongMap!9891)

(assert (=> b!862379 (= lt!389309 (getCurrentListMapNoExtraKeys!2937 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862380 () Bool)

(declare-fun res!586139 () Bool)

(assert (=> b!862380 (=> (not res!586139) (not e!480481))))

(assert (=> b!862380 (= res!586139 (and (= (size!24249 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24248 _keys!868) (size!24249 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!586136 () Bool)

(assert (=> start!73684 (=> (not res!586136) (not e!480481))))

(assert (=> start!73684 (= res!586136 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24248 _keys!868))))))

(assert (=> start!73684 e!480481))

(declare-fun tp_is_empty!16707 () Bool)

(assert (=> start!73684 tp_is_empty!16707))

(assert (=> start!73684 true))

(assert (=> start!73684 tp!51218))

(declare-fun array_inv!18812 (array!49560) Bool)

(assert (=> start!73684 (array_inv!18812 _keys!868)))

(declare-fun e!480488 () Bool)

(declare-fun array_inv!18813 (array!49562) Bool)

(assert (=> start!73684 (and (array_inv!18813 _values!688) e!480488)))

(declare-fun b!862381 () Bool)

(declare-fun e!480484 () Bool)

(assert (=> b!862381 (= e!480484 tp_is_empty!16707)))

(declare-fun b!862382 () Bool)

(declare-fun res!586133 () Bool)

(assert (=> b!862382 (=> (not res!586133) (not e!480481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862382 (= res!586133 (validMask!0 mask!1196))))

(declare-fun b!862383 () Bool)

(declare-fun e!480485 () Bool)

(assert (=> b!862383 (= e!480485 tp_is_empty!16707)))

(declare-fun b!862384 () Bool)

(declare-fun e!480487 () Bool)

(assert (=> b!862384 (= e!480487 true)))

(declare-fun lt!389307 () ListLongMap!9891)

(declare-fun lt!389298 () tuple2!11108)

(assert (=> b!862384 (= lt!389307 (+!2258 (+!2258 lt!389304 lt!389298) lt!389310))))

(declare-fun lt!389299 () Unit!29420)

(declare-fun lt!389313 () V!27323)

(declare-fun addCommutativeForDiffKeys!475 (ListLongMap!9891 (_ BitVec 64) V!27323 (_ BitVec 64) V!27323) Unit!29420)

(assert (=> b!862384 (= lt!389299 (addCommutativeForDiffKeys!475 lt!389304 k0!854 v!557 (select (arr!23807 _keys!868) from!1053) lt!389313))))

(declare-fun b!862385 () Bool)

(declare-fun mapRes!26660 () Bool)

(assert (=> b!862385 (= e!480488 (and e!480485 mapRes!26660))))

(declare-fun condMapEmpty!26660 () Bool)

(declare-fun mapDefault!26660 () ValueCell!7914)

(assert (=> b!862385 (= condMapEmpty!26660 (= (arr!23808 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7914)) mapDefault!26660)))))

(declare-fun mapIsEmpty!26660 () Bool)

(assert (=> mapIsEmpty!26660 mapRes!26660))

(declare-fun b!862386 () Bool)

(assert (=> b!862386 (= e!480482 e!480487)))

(declare-fun res!586134 () Bool)

(assert (=> b!862386 (=> res!586134 e!480487)))

(assert (=> b!862386 (= res!586134 (= k0!854 (select (arr!23807 _keys!868) from!1053)))))

(assert (=> b!862386 (not (= (select (arr!23807 _keys!868) from!1053) k0!854))))

(declare-fun lt!389306 () Unit!29420)

(assert (=> b!862386 (= lt!389306 e!480489)))

(declare-fun c!91995 () Bool)

(assert (=> b!862386 (= c!91995 (= (select (arr!23807 _keys!868) from!1053) k0!854))))

(assert (=> b!862386 (= lt!389300 lt!389307)))

(assert (=> b!862386 (= lt!389307 (+!2258 lt!389303 lt!389298))))

(assert (=> b!862386 (= lt!389298 (tuple2!11109 (select (arr!23807 _keys!868) from!1053) lt!389313))))

(declare-fun get!12577 (ValueCell!7914 V!27323) V!27323)

(declare-fun dynLambda!1137 (Int (_ BitVec 64)) V!27323)

(assert (=> b!862386 (= lt!389313 (get!12577 (select (arr!23808 _values!688) from!1053) (dynLambda!1137 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862387 () Bool)

(declare-fun res!586138 () Bool)

(assert (=> b!862387 (=> (not res!586138) (not e!480481))))

(assert (=> b!862387 (= res!586138 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24248 _keys!868))))))

(declare-fun b!862388 () Bool)

(declare-fun res!586141 () Bool)

(assert (=> b!862388 (=> (not res!586141) (not e!480481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49560 (_ BitVec 32)) Bool)

(assert (=> b!862388 (= res!586141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26660 () Bool)

(declare-fun tp!51217 () Bool)

(assert (=> mapNonEmpty!26660 (= mapRes!26660 (and tp!51217 e!480484))))

(declare-fun mapValue!26660 () ValueCell!7914)

(declare-fun mapRest!26660 () (Array (_ BitVec 32) ValueCell!7914))

(declare-fun mapKey!26660 () (_ BitVec 32))

(assert (=> mapNonEmpty!26660 (= (arr!23808 _values!688) (store mapRest!26660 mapKey!26660 mapValue!26660))))

(declare-fun b!862389 () Bool)

(declare-fun res!586140 () Bool)

(assert (=> b!862389 (=> (not res!586140) (not e!480481))))

(assert (=> b!862389 (= res!586140 (and (= (select (arr!23807 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862390 () Bool)

(declare-fun Unit!29423 () Unit!29420)

(assert (=> b!862390 (= e!480489 Unit!29423)))

(assert (= (and start!73684 res!586136) b!862382))

(assert (= (and b!862382 res!586133) b!862380))

(assert (= (and b!862380 res!586139) b!862388))

(assert (= (and b!862388 res!586141) b!862378))

(assert (= (and b!862378 res!586143) b!862387))

(assert (= (and b!862387 res!586138) b!862377))

(assert (= (and b!862377 res!586135) b!862389))

(assert (= (and b!862389 res!586140) b!862379))

(assert (= (and b!862379 res!586137) b!862376))

(assert (= (and b!862376 (not res!586142)) b!862386))

(assert (= (and b!862386 c!91995) b!862375))

(assert (= (and b!862386 (not c!91995)) b!862390))

(assert (= (and b!862386 (not res!586134)) b!862384))

(assert (= (and b!862385 condMapEmpty!26660) mapIsEmpty!26660))

(assert (= (and b!862385 (not condMapEmpty!26660)) mapNonEmpty!26660))

(get-info :version)

(assert (= (and mapNonEmpty!26660 ((_ is ValueCellFull!7914) mapValue!26660)) b!862381))

(assert (= (and b!862385 ((_ is ValueCellFull!7914) mapDefault!26660)) b!862383))

(assert (= start!73684 b!862385))

(declare-fun b_lambda!11953 () Bool)

(assert (=> (not b_lambda!11953) (not b!862386)))

(declare-fun t!23822 () Bool)

(declare-fun tb!4701 () Bool)

(assert (=> (and start!73684 (= defaultEntry!696 defaultEntry!696) t!23822) tb!4701))

(declare-fun result!9005 () Bool)

(assert (=> tb!4701 (= result!9005 tp_is_empty!16707)))

(assert (=> b!862386 t!23822))

(declare-fun b_and!24141 () Bool)

(assert (= b_and!24139 (and (=> t!23822 result!9005) b_and!24141)))

(declare-fun m!803513 () Bool)

(assert (=> b!862377 m!803513))

(declare-fun m!803515 () Bool)

(assert (=> b!862384 m!803515))

(assert (=> b!862384 m!803515))

(declare-fun m!803517 () Bool)

(assert (=> b!862384 m!803517))

(declare-fun m!803519 () Bool)

(assert (=> b!862384 m!803519))

(assert (=> b!862384 m!803519))

(declare-fun m!803521 () Bool)

(assert (=> b!862384 m!803521))

(declare-fun m!803523 () Bool)

(assert (=> b!862379 m!803523))

(declare-fun m!803525 () Bool)

(assert (=> b!862379 m!803525))

(declare-fun m!803527 () Bool)

(assert (=> b!862379 m!803527))

(declare-fun m!803529 () Bool)

(assert (=> b!862386 m!803529))

(assert (=> b!862386 m!803519))

(declare-fun m!803531 () Bool)

(assert (=> b!862386 m!803531))

(assert (=> b!862386 m!803529))

(assert (=> b!862386 m!803531))

(declare-fun m!803533 () Bool)

(assert (=> b!862386 m!803533))

(declare-fun m!803535 () Bool)

(assert (=> b!862386 m!803535))

(declare-fun m!803537 () Bool)

(assert (=> b!862388 m!803537))

(declare-fun m!803539 () Bool)

(assert (=> b!862375 m!803539))

(declare-fun m!803541 () Bool)

(assert (=> b!862375 m!803541))

(declare-fun m!803543 () Bool)

(assert (=> b!862375 m!803543))

(declare-fun m!803545 () Bool)

(assert (=> b!862375 m!803545))

(declare-fun m!803547 () Bool)

(assert (=> b!862375 m!803547))

(declare-fun m!803549 () Bool)

(assert (=> start!73684 m!803549))

(declare-fun m!803551 () Bool)

(assert (=> start!73684 m!803551))

(declare-fun m!803553 () Bool)

(assert (=> b!862389 m!803553))

(declare-fun m!803555 () Bool)

(assert (=> b!862376 m!803555))

(assert (=> b!862376 m!803519))

(declare-fun m!803557 () Bool)

(assert (=> b!862376 m!803557))

(declare-fun m!803559 () Bool)

(assert (=> b!862376 m!803559))

(declare-fun m!803561 () Bool)

(assert (=> b!862376 m!803561))

(assert (=> b!862376 m!803519))

(declare-fun m!803563 () Bool)

(assert (=> b!862376 m!803563))

(declare-fun m!803565 () Bool)

(assert (=> b!862382 m!803565))

(declare-fun m!803567 () Bool)

(assert (=> mapNonEmpty!26660 m!803567))

(declare-fun m!803569 () Bool)

(assert (=> b!862378 m!803569))

(check-sat (not b!862376) tp_is_empty!16707 (not b!862382) (not b!862375) (not b!862386) (not b!862378) (not b!862377) (not b!862384) (not b_next!14571) (not b_lambda!11953) (not start!73684) (not b!862388) (not mapNonEmpty!26660) (not b!862379) b_and!24141)
(check-sat b_and!24141 (not b_next!14571))
