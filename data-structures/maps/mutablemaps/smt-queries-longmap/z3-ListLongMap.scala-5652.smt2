; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73726 () Bool)

(assert start!73726)

(declare-fun b_free!14613 () Bool)

(declare-fun b_next!14613 () Bool)

(assert (=> start!73726 (= b_free!14613 (not b_next!14613))))

(declare-fun tp!51343 () Bool)

(declare-fun b_and!24223 () Bool)

(assert (=> start!73726 (= tp!51343 b_and!24223)))

(declare-fun b!863425 () Bool)

(declare-fun res!586835 () Bool)

(declare-fun e!481049 () Bool)

(assert (=> b!863425 (=> (not res!586835) (not e!481049))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49642 0))(
  ( (array!49643 (arr!23848 (Array (_ BitVec 32) (_ BitVec 64))) (size!24289 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49642)

(assert (=> b!863425 (= res!586835 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24289 _keys!868))))))

(declare-fun b!863426 () Bool)

(declare-fun res!586833 () Bool)

(assert (=> b!863426 (=> (not res!586833) (not e!481049))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!863426 (= res!586833 (and (= (select (arr!23848 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!863427 () Bool)

(declare-fun res!586836 () Bool)

(assert (=> b!863427 (=> (not res!586836) (not e!481049))))

(declare-datatypes ((List!17013 0))(
  ( (Nil!17010) (Cons!17009 (h!18140 (_ BitVec 64)) (t!23900 List!17013)) )
))
(declare-fun arrayNoDuplicates!0 (array!49642 (_ BitVec 32) List!17013) Bool)

(assert (=> b!863427 (= res!586836 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17010))))

(declare-fun b!863428 () Bool)

(declare-fun res!586834 () Bool)

(assert (=> b!863428 (=> (not res!586834) (not e!481049))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863428 (= res!586834 (validMask!0 mask!1196))))

(declare-fun b!863429 () Bool)

(declare-fun res!586827 () Bool)

(assert (=> b!863429 (=> (not res!586827) (not e!481049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863429 (= res!586827 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26723 () Bool)

(declare-fun mapRes!26723 () Bool)

(declare-fun tp!51344 () Bool)

(declare-fun e!481054 () Bool)

(assert (=> mapNonEmpty!26723 (= mapRes!26723 (and tp!51344 e!481054))))

(declare-fun mapKey!26723 () (_ BitVec 32))

(declare-datatypes ((V!27379 0))(
  ( (V!27380 (val!8422 Int)) )
))
(declare-datatypes ((ValueCell!7935 0))(
  ( (ValueCellFull!7935 (v!10843 V!27379)) (EmptyCell!7935) )
))
(declare-fun mapRest!26723 () (Array (_ BitVec 32) ValueCell!7935))

(declare-fun mapValue!26723 () ValueCell!7935)

(declare-datatypes ((array!49644 0))(
  ( (array!49645 (arr!23849 (Array (_ BitVec 32) ValueCell!7935)) (size!24290 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49644)

(assert (=> mapNonEmpty!26723 (= (arr!23849 _values!688) (store mapRest!26723 mapKey!26723 mapValue!26723))))

(declare-fun b!863430 () Bool)

(declare-fun tp_is_empty!16749 () Bool)

(assert (=> b!863430 (= e!481054 tp_is_empty!16749)))

(declare-fun b!863431 () Bool)

(declare-datatypes ((Unit!29484 0))(
  ( (Unit!29485) )
))
(declare-fun e!481056 () Unit!29484)

(declare-fun Unit!29486 () Unit!29484)

(assert (=> b!863431 (= e!481056 Unit!29486)))

(declare-fun b!863432 () Bool)

(declare-fun e!481055 () Bool)

(assert (=> b!863432 (= e!481049 e!481055)))

(declare-fun res!586830 () Bool)

(assert (=> b!863432 (=> (not res!586830) (not e!481055))))

(assert (=> b!863432 (= res!586830 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11144 0))(
  ( (tuple2!11145 (_1!5582 (_ BitVec 64)) (_2!5582 V!27379)) )
))
(declare-datatypes ((List!17014 0))(
  ( (Nil!17011) (Cons!17010 (h!18141 tuple2!11144) (t!23901 List!17014)) )
))
(declare-datatypes ((ListLongMap!9927 0))(
  ( (ListLongMap!9928 (toList!4979 List!17014)) )
))
(declare-fun lt!390317 () ListLongMap!9927)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27379)

(declare-fun zeroValue!654 () V!27379)

(declare-fun lt!390311 () array!49644)

(declare-fun getCurrentListMapNoExtraKeys!2954 (array!49642 array!49644 (_ BitVec 32) (_ BitVec 32) V!27379 V!27379 (_ BitVec 32) Int) ListLongMap!9927)

(assert (=> b!863432 (= lt!390317 (getCurrentListMapNoExtraKeys!2954 _keys!868 lt!390311 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27379)

(assert (=> b!863432 (= lt!390311 (array!49645 (store (arr!23849 _values!688) i!612 (ValueCellFull!7935 v!557)) (size!24290 _values!688)))))

(declare-fun lt!390321 () ListLongMap!9927)

(assert (=> b!863432 (= lt!390321 (getCurrentListMapNoExtraKeys!2954 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863433 () Bool)

(declare-fun e!481052 () Bool)

(declare-fun e!481051 () Bool)

(assert (=> b!863433 (= e!481052 (and e!481051 mapRes!26723))))

(declare-fun condMapEmpty!26723 () Bool)

(declare-fun mapDefault!26723 () ValueCell!7935)

(assert (=> b!863433 (= condMapEmpty!26723 (= (arr!23849 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7935)) mapDefault!26723)))))

(declare-fun b!863434 () Bool)

(declare-fun res!586831 () Bool)

(assert (=> b!863434 (=> (not res!586831) (not e!481049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49642 (_ BitVec 32)) Bool)

(assert (=> b!863434 (= res!586831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863435 () Bool)

(assert (=> b!863435 (= e!481051 tp_is_empty!16749)))

(declare-fun b!863436 () Bool)

(declare-fun e!481053 () Bool)

(assert (=> b!863436 (= e!481055 (not e!481053))))

(declare-fun res!586829 () Bool)

(assert (=> b!863436 (=> res!586829 e!481053)))

(assert (=> b!863436 (= res!586829 (not (validKeyInArray!0 (select (arr!23848 _keys!868) from!1053))))))

(declare-fun lt!390313 () ListLongMap!9927)

(declare-fun lt!390312 () ListLongMap!9927)

(assert (=> b!863436 (= lt!390313 lt!390312)))

(declare-fun lt!390307 () ListLongMap!9927)

(declare-fun lt!390309 () tuple2!11144)

(declare-fun +!2276 (ListLongMap!9927 tuple2!11144) ListLongMap!9927)

(assert (=> b!863436 (= lt!390312 (+!2276 lt!390307 lt!390309))))

(assert (=> b!863436 (= lt!390313 (getCurrentListMapNoExtraKeys!2954 _keys!868 lt!390311 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863436 (= lt!390309 (tuple2!11145 k0!854 v!557))))

(assert (=> b!863436 (= lt!390307 (getCurrentListMapNoExtraKeys!2954 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390314 () Unit!29484)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!523 (array!49642 array!49644 (_ BitVec 32) (_ BitVec 32) V!27379 V!27379 (_ BitVec 32) (_ BitVec 64) V!27379 (_ BitVec 32) Int) Unit!29484)

(assert (=> b!863436 (= lt!390314 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!523 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863437 () Bool)

(declare-fun e!481050 () Bool)

(assert (=> b!863437 (= e!481050 true)))

(declare-fun lt!390306 () tuple2!11144)

(declare-fun lt!390310 () ListLongMap!9927)

(assert (=> b!863437 (= lt!390310 (+!2276 (+!2276 lt!390307 lt!390306) lt!390309))))

(declare-fun lt!390315 () Unit!29484)

(declare-fun lt!390320 () V!27379)

(declare-fun addCommutativeForDiffKeys!489 (ListLongMap!9927 (_ BitVec 64) V!27379 (_ BitVec 64) V!27379) Unit!29484)

(assert (=> b!863437 (= lt!390315 (addCommutativeForDiffKeys!489 lt!390307 k0!854 v!557 (select (arr!23848 _keys!868) from!1053) lt!390320))))

(declare-fun res!586832 () Bool)

(assert (=> start!73726 (=> (not res!586832) (not e!481049))))

(assert (=> start!73726 (= res!586832 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24289 _keys!868))))))

(assert (=> start!73726 e!481049))

(assert (=> start!73726 tp_is_empty!16749))

(assert (=> start!73726 true))

(assert (=> start!73726 tp!51343))

(declare-fun array_inv!18842 (array!49642) Bool)

(assert (=> start!73726 (array_inv!18842 _keys!868)))

(declare-fun array_inv!18843 (array!49644) Bool)

(assert (=> start!73726 (and (array_inv!18843 _values!688) e!481052)))

(declare-fun b!863438 () Bool)

(assert (=> b!863438 (= e!481053 e!481050)))

(declare-fun res!586826 () Bool)

(assert (=> b!863438 (=> res!586826 e!481050)))

(assert (=> b!863438 (= res!586826 (= k0!854 (select (arr!23848 _keys!868) from!1053)))))

(assert (=> b!863438 (not (= (select (arr!23848 _keys!868) from!1053) k0!854))))

(declare-fun lt!390316 () Unit!29484)

(assert (=> b!863438 (= lt!390316 e!481056)))

(declare-fun c!92058 () Bool)

(assert (=> b!863438 (= c!92058 (= (select (arr!23848 _keys!868) from!1053) k0!854))))

(assert (=> b!863438 (= lt!390317 lt!390310)))

(assert (=> b!863438 (= lt!390310 (+!2276 lt!390312 lt!390306))))

(assert (=> b!863438 (= lt!390306 (tuple2!11145 (select (arr!23848 _keys!868) from!1053) lt!390320))))

(declare-fun get!12605 (ValueCell!7935 V!27379) V!27379)

(declare-fun dynLambda!1151 (Int (_ BitVec 64)) V!27379)

(assert (=> b!863438 (= lt!390320 (get!12605 (select (arr!23849 _values!688) from!1053) (dynLambda!1151 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863439 () Bool)

(declare-fun res!586828 () Bool)

(assert (=> b!863439 (=> (not res!586828) (not e!481049))))

(assert (=> b!863439 (= res!586828 (and (= (size!24290 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24289 _keys!868) (size!24290 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26723 () Bool)

(assert (=> mapIsEmpty!26723 mapRes!26723))

(declare-fun b!863440 () Bool)

(declare-fun Unit!29487 () Unit!29484)

(assert (=> b!863440 (= e!481056 Unit!29487)))

(declare-fun lt!390319 () Unit!29484)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49642 (_ BitVec 32) (_ BitVec 32)) Unit!29484)

(assert (=> b!863440 (= lt!390319 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!863440 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17010)))

(declare-fun lt!390318 () Unit!29484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49642 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29484)

(assert (=> b!863440 (= lt!390318 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863440 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390308 () Unit!29484)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49642 (_ BitVec 64) (_ BitVec 32) List!17013) Unit!29484)

(assert (=> b!863440 (= lt!390308 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17010))))

(assert (=> b!863440 false))

(assert (= (and start!73726 res!586832) b!863428))

(assert (= (and b!863428 res!586834) b!863439))

(assert (= (and b!863439 res!586828) b!863434))

(assert (= (and b!863434 res!586831) b!863427))

(assert (= (and b!863427 res!586836) b!863425))

(assert (= (and b!863425 res!586835) b!863429))

(assert (= (and b!863429 res!586827) b!863426))

(assert (= (and b!863426 res!586833) b!863432))

(assert (= (and b!863432 res!586830) b!863436))

(assert (= (and b!863436 (not res!586829)) b!863438))

(assert (= (and b!863438 c!92058) b!863440))

(assert (= (and b!863438 (not c!92058)) b!863431))

(assert (= (and b!863438 (not res!586826)) b!863437))

(assert (= (and b!863433 condMapEmpty!26723) mapIsEmpty!26723))

(assert (= (and b!863433 (not condMapEmpty!26723)) mapNonEmpty!26723))

(get-info :version)

(assert (= (and mapNonEmpty!26723 ((_ is ValueCellFull!7935) mapValue!26723)) b!863430))

(assert (= (and b!863433 ((_ is ValueCellFull!7935) mapDefault!26723)) b!863435))

(assert (= start!73726 b!863433))

(declare-fun b_lambda!11995 () Bool)

(assert (=> (not b_lambda!11995) (not b!863438)))

(declare-fun t!23899 () Bool)

(declare-fun tb!4743 () Bool)

(assert (=> (and start!73726 (= defaultEntry!696 defaultEntry!696) t!23899) tb!4743))

(declare-fun result!9089 () Bool)

(assert (=> tb!4743 (= result!9089 tp_is_empty!16749)))

(assert (=> b!863438 t!23899))

(declare-fun b_and!24225 () Bool)

(assert (= b_and!24223 (and (=> t!23899 result!9089) b_and!24225)))

(declare-fun m!804731 () Bool)

(assert (=> b!863429 m!804731))

(declare-fun m!804733 () Bool)

(assert (=> b!863436 m!804733))

(declare-fun m!804735 () Bool)

(assert (=> b!863436 m!804735))

(declare-fun m!804737 () Bool)

(assert (=> b!863436 m!804737))

(assert (=> b!863436 m!804735))

(declare-fun m!804739 () Bool)

(assert (=> b!863436 m!804739))

(declare-fun m!804741 () Bool)

(assert (=> b!863436 m!804741))

(declare-fun m!804743 () Bool)

(assert (=> b!863436 m!804743))

(declare-fun m!804745 () Bool)

(assert (=> start!73726 m!804745))

(declare-fun m!804747 () Bool)

(assert (=> start!73726 m!804747))

(declare-fun m!804749 () Bool)

(assert (=> b!863438 m!804749))

(declare-fun m!804751 () Bool)

(assert (=> b!863438 m!804751))

(declare-fun m!804753 () Bool)

(assert (=> b!863438 m!804753))

(declare-fun m!804755 () Bool)

(assert (=> b!863438 m!804755))

(assert (=> b!863438 m!804751))

(assert (=> b!863438 m!804735))

(assert (=> b!863438 m!804753))

(declare-fun m!804757 () Bool)

(assert (=> b!863437 m!804757))

(assert (=> b!863437 m!804757))

(declare-fun m!804759 () Bool)

(assert (=> b!863437 m!804759))

(assert (=> b!863437 m!804735))

(assert (=> b!863437 m!804735))

(declare-fun m!804761 () Bool)

(assert (=> b!863437 m!804761))

(declare-fun m!804763 () Bool)

(assert (=> b!863426 m!804763))

(declare-fun m!804765 () Bool)

(assert (=> b!863434 m!804765))

(declare-fun m!804767 () Bool)

(assert (=> mapNonEmpty!26723 m!804767))

(declare-fun m!804769 () Bool)

(assert (=> b!863427 m!804769))

(declare-fun m!804771 () Bool)

(assert (=> b!863440 m!804771))

(declare-fun m!804773 () Bool)

(assert (=> b!863440 m!804773))

(declare-fun m!804775 () Bool)

(assert (=> b!863440 m!804775))

(declare-fun m!804777 () Bool)

(assert (=> b!863440 m!804777))

(declare-fun m!804779 () Bool)

(assert (=> b!863440 m!804779))

(declare-fun m!804781 () Bool)

(assert (=> b!863428 m!804781))

(declare-fun m!804783 () Bool)

(assert (=> b!863432 m!804783))

(declare-fun m!804785 () Bool)

(assert (=> b!863432 m!804785))

(declare-fun m!804787 () Bool)

(assert (=> b!863432 m!804787))

(check-sat (not b!863432) b_and!24225 (not b!863437) (not b!863428) (not mapNonEmpty!26723) (not start!73726) (not b_next!14613) tp_is_empty!16749 (not b!863434) (not b!863438) (not b_lambda!11995) (not b!863427) (not b!863440) (not b!863436) (not b!863429))
(check-sat b_and!24225 (not b_next!14613))
