; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73816 () Bool)

(assert start!73816)

(declare-fun b_free!14703 () Bool)

(declare-fun b_next!14703 () Bool)

(assert (=> start!73816 (= b_free!14703 (not b_next!14703))))

(declare-fun tp!51613 () Bool)

(declare-fun b_and!24403 () Bool)

(assert (=> start!73816 (= tp!51613 b_and!24403)))

(declare-fun b!865675 () Bool)

(declare-fun e!482265 () Bool)

(declare-fun e!482268 () Bool)

(assert (=> b!865675 (= e!482265 e!482268)))

(declare-fun res!588316 () Bool)

(assert (=> b!865675 (=> (not res!588316) (not e!482268))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865675 (= res!588316 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27499 0))(
  ( (V!27500 (val!8467 Int)) )
))
(declare-datatypes ((ValueCell!7980 0))(
  ( (ValueCellFull!7980 (v!10888 V!27499)) (EmptyCell!7980) )
))
(declare-datatypes ((array!49822 0))(
  ( (array!49823 (arr!23938 (Array (_ BitVec 32) ValueCell!7980)) (size!24379 (_ BitVec 32))) )
))
(declare-fun lt!392476 () array!49822)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49824 0))(
  ( (array!49825 (arr!23939 (Array (_ BitVec 32) (_ BitVec 64))) (size!24380 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49824)

(declare-fun minValue!654 () V!27499)

(declare-datatypes ((tuple2!11226 0))(
  ( (tuple2!11227 (_1!5623 (_ BitVec 64)) (_2!5623 V!27499)) )
))
(declare-datatypes ((List!17091 0))(
  ( (Nil!17088) (Cons!17087 (h!18218 tuple2!11226) (t!24068 List!17091)) )
))
(declare-datatypes ((ListLongMap!10009 0))(
  ( (ListLongMap!10010 (toList!5020 List!17091)) )
))
(declare-fun lt!392466 () ListLongMap!10009)

(declare-fun zeroValue!654 () V!27499)

(declare-fun getCurrentListMapNoExtraKeys!2988 (array!49824 array!49822 (_ BitVec 32) (_ BitVec 32) V!27499 V!27499 (_ BitVec 32) Int) ListLongMap!10009)

(assert (=> b!865675 (= lt!392466 (getCurrentListMapNoExtraKeys!2988 _keys!868 lt!392476 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27499)

(declare-fun _values!688 () array!49822)

(assert (=> b!865675 (= lt!392476 (array!49823 (store (arr!23938 _values!688) i!612 (ValueCellFull!7980 v!557)) (size!24379 _values!688)))))

(declare-fun lt!392477 () ListLongMap!10009)

(assert (=> b!865675 (= lt!392477 (getCurrentListMapNoExtraKeys!2988 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865676 () Bool)

(declare-fun e!482264 () Bool)

(declare-fun tp_is_empty!16839 () Bool)

(assert (=> b!865676 (= e!482264 tp_is_empty!16839)))

(declare-fun b!865677 () Bool)

(declare-datatypes ((Unit!29636 0))(
  ( (Unit!29637) )
))
(declare-fun e!482269 () Unit!29636)

(declare-fun Unit!29638 () Unit!29636)

(assert (=> b!865677 (= e!482269 Unit!29638)))

(declare-fun b!865678 () Bool)

(declare-fun Unit!29639 () Unit!29636)

(assert (=> b!865678 (= e!482269 Unit!29639)))

(declare-fun lt!392478 () Unit!29636)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49824 (_ BitVec 32) (_ BitVec 32)) Unit!29636)

(assert (=> b!865678 (= lt!392478 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17092 0))(
  ( (Nil!17089) (Cons!17088 (h!18219 (_ BitVec 64)) (t!24069 List!17092)) )
))
(declare-fun arrayNoDuplicates!0 (array!49824 (_ BitVec 32) List!17092) Bool)

(assert (=> b!865678 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17089)))

(declare-fun lt!392468 () Unit!29636)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49824 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29636)

(assert (=> b!865678 (= lt!392468 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865678 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392472 () Unit!29636)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49824 (_ BitVec 64) (_ BitVec 32) List!17092) Unit!29636)

(assert (=> b!865678 (= lt!392472 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17089))))

(assert (=> b!865678 false))

(declare-fun b!865679 () Bool)

(declare-fun e!482271 () Bool)

(assert (=> b!865679 (= e!482271 true)))

(declare-fun lt!392473 () ListLongMap!10009)

(declare-fun lt!392479 () tuple2!11226)

(declare-fun lt!392480 () tuple2!11226)

(declare-fun lt!392481 () ListLongMap!10009)

(declare-fun +!2316 (ListLongMap!10009 tuple2!11226) ListLongMap!10009)

(assert (=> b!865679 (= lt!392473 (+!2316 (+!2316 lt!392481 lt!392480) lt!392479))))

(declare-fun lt!392467 () Unit!29636)

(declare-fun lt!392475 () V!27499)

(declare-fun addCommutativeForDiffKeys!523 (ListLongMap!10009 (_ BitVec 64) V!27499 (_ BitVec 64) V!27499) Unit!29636)

(assert (=> b!865679 (= lt!392467 (addCommutativeForDiffKeys!523 lt!392481 k0!854 v!557 (select (arr!23939 _keys!868) from!1053) lt!392475))))

(declare-fun b!865681 () Bool)

(declare-fun res!588320 () Bool)

(assert (=> b!865681 (=> (not res!588320) (not e!482265))))

(assert (=> b!865681 (= res!588320 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17089))))

(declare-fun b!865682 () Bool)

(declare-fun e!482270 () Bool)

(assert (=> b!865682 (= e!482270 tp_is_empty!16839)))

(declare-fun b!865683 () Bool)

(declare-fun res!588314 () Bool)

(assert (=> b!865683 (=> (not res!588314) (not e!482265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865683 (= res!588314 (validMask!0 mask!1196))))

(declare-fun b!865684 () Bool)

(declare-fun res!588317 () Bool)

(assert (=> b!865684 (=> (not res!588317) (not e!482265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49824 (_ BitVec 32)) Bool)

(assert (=> b!865684 (= res!588317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865685 () Bool)

(declare-fun res!588311 () Bool)

(assert (=> b!865685 (=> (not res!588311) (not e!482265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865685 (= res!588311 (validKeyInArray!0 k0!854))))

(declare-fun b!865686 () Bool)

(declare-fun e!482263 () Bool)

(declare-fun mapRes!26858 () Bool)

(assert (=> b!865686 (= e!482263 (and e!482264 mapRes!26858))))

(declare-fun condMapEmpty!26858 () Bool)

(declare-fun mapDefault!26858 () ValueCell!7980)

(assert (=> b!865686 (= condMapEmpty!26858 (= (arr!23938 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7980)) mapDefault!26858)))))

(declare-fun b!865687 () Bool)

(declare-fun res!588315 () Bool)

(assert (=> b!865687 (=> (not res!588315) (not e!482265))))

(assert (=> b!865687 (= res!588315 (and (= (size!24379 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24380 _keys!868) (size!24379 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26858 () Bool)

(assert (=> mapIsEmpty!26858 mapRes!26858))

(declare-fun mapNonEmpty!26858 () Bool)

(declare-fun tp!51614 () Bool)

(assert (=> mapNonEmpty!26858 (= mapRes!26858 (and tp!51614 e!482270))))

(declare-fun mapValue!26858 () ValueCell!7980)

(declare-fun mapKey!26858 () (_ BitVec 32))

(declare-fun mapRest!26858 () (Array (_ BitVec 32) ValueCell!7980))

(assert (=> mapNonEmpty!26858 (= (arr!23938 _values!688) (store mapRest!26858 mapKey!26858 mapValue!26858))))

(declare-fun b!865688 () Bool)

(declare-fun e!482266 () Bool)

(assert (=> b!865688 (= e!482268 (not e!482266))))

(declare-fun res!588318 () Bool)

(assert (=> b!865688 (=> res!588318 e!482266)))

(assert (=> b!865688 (= res!588318 (not (validKeyInArray!0 (select (arr!23939 _keys!868) from!1053))))))

(declare-fun lt!392474 () ListLongMap!10009)

(declare-fun lt!392469 () ListLongMap!10009)

(assert (=> b!865688 (= lt!392474 lt!392469)))

(assert (=> b!865688 (= lt!392469 (+!2316 lt!392481 lt!392479))))

(assert (=> b!865688 (= lt!392474 (getCurrentListMapNoExtraKeys!2988 _keys!868 lt!392476 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865688 (= lt!392479 (tuple2!11227 k0!854 v!557))))

(assert (=> b!865688 (= lt!392481 (getCurrentListMapNoExtraKeys!2988 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392471 () Unit!29636)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!554 (array!49824 array!49822 (_ BitVec 32) (_ BitVec 32) V!27499 V!27499 (_ BitVec 32) (_ BitVec 64) V!27499 (_ BitVec 32) Int) Unit!29636)

(assert (=> b!865688 (= lt!392471 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!554 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!588319 () Bool)

(assert (=> start!73816 (=> (not res!588319) (not e!482265))))

(assert (=> start!73816 (= res!588319 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24380 _keys!868))))))

(assert (=> start!73816 e!482265))

(assert (=> start!73816 tp_is_empty!16839))

(assert (=> start!73816 true))

(assert (=> start!73816 tp!51613))

(declare-fun array_inv!18904 (array!49824) Bool)

(assert (=> start!73816 (array_inv!18904 _keys!868)))

(declare-fun array_inv!18905 (array!49822) Bool)

(assert (=> start!73816 (and (array_inv!18905 _values!688) e!482263)))

(declare-fun b!865680 () Bool)

(declare-fun res!588313 () Bool)

(assert (=> b!865680 (=> (not res!588313) (not e!482265))))

(assert (=> b!865680 (= res!588313 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24380 _keys!868))))))

(declare-fun b!865689 () Bool)

(declare-fun res!588312 () Bool)

(assert (=> b!865689 (=> (not res!588312) (not e!482265))))

(assert (=> b!865689 (= res!588312 (and (= (select (arr!23939 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!865690 () Bool)

(assert (=> b!865690 (= e!482266 e!482271)))

(declare-fun res!588321 () Bool)

(assert (=> b!865690 (=> res!588321 e!482271)))

(assert (=> b!865690 (= res!588321 (= k0!854 (select (arr!23939 _keys!868) from!1053)))))

(assert (=> b!865690 (not (= (select (arr!23939 _keys!868) from!1053) k0!854))))

(declare-fun lt!392470 () Unit!29636)

(assert (=> b!865690 (= lt!392470 e!482269)))

(declare-fun c!92193 () Bool)

(assert (=> b!865690 (= c!92193 (= (select (arr!23939 _keys!868) from!1053) k0!854))))

(assert (=> b!865690 (= lt!392466 lt!392473)))

(assert (=> b!865690 (= lt!392473 (+!2316 lt!392469 lt!392480))))

(assert (=> b!865690 (= lt!392480 (tuple2!11227 (select (arr!23939 _keys!868) from!1053) lt!392475))))

(declare-fun get!12668 (ValueCell!7980 V!27499) V!27499)

(declare-fun dynLambda!1184 (Int (_ BitVec 64)) V!27499)

(assert (=> b!865690 (= lt!392475 (get!12668 (select (arr!23938 _values!688) from!1053) (dynLambda!1184 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!73816 res!588319) b!865683))

(assert (= (and b!865683 res!588314) b!865687))

(assert (= (and b!865687 res!588315) b!865684))

(assert (= (and b!865684 res!588317) b!865681))

(assert (= (and b!865681 res!588320) b!865680))

(assert (= (and b!865680 res!588313) b!865685))

(assert (= (and b!865685 res!588311) b!865689))

(assert (= (and b!865689 res!588312) b!865675))

(assert (= (and b!865675 res!588316) b!865688))

(assert (= (and b!865688 (not res!588318)) b!865690))

(assert (= (and b!865690 c!92193) b!865678))

(assert (= (and b!865690 (not c!92193)) b!865677))

(assert (= (and b!865690 (not res!588321)) b!865679))

(assert (= (and b!865686 condMapEmpty!26858) mapIsEmpty!26858))

(assert (= (and b!865686 (not condMapEmpty!26858)) mapNonEmpty!26858))

(get-info :version)

(assert (= (and mapNonEmpty!26858 ((_ is ValueCellFull!7980) mapValue!26858)) b!865682))

(assert (= (and b!865686 ((_ is ValueCellFull!7980) mapDefault!26858)) b!865676))

(assert (= start!73816 b!865686))

(declare-fun b_lambda!12085 () Bool)

(assert (=> (not b_lambda!12085) (not b!865690)))

(declare-fun t!24067 () Bool)

(declare-fun tb!4833 () Bool)

(assert (=> (and start!73816 (= defaultEntry!696 defaultEntry!696) t!24067) tb!4833))

(declare-fun result!9269 () Bool)

(assert (=> tb!4833 (= result!9269 tp_is_empty!16839)))

(assert (=> b!865690 t!24067))

(declare-fun b_and!24405 () Bool)

(assert (= b_and!24403 (and (=> t!24067 result!9269) b_and!24405)))

(declare-fun m!807341 () Bool)

(assert (=> b!865681 m!807341))

(declare-fun m!807343 () Bool)

(assert (=> b!865689 m!807343))

(declare-fun m!807345 () Bool)

(assert (=> b!865678 m!807345))

(declare-fun m!807347 () Bool)

(assert (=> b!865678 m!807347))

(declare-fun m!807349 () Bool)

(assert (=> b!865678 m!807349))

(declare-fun m!807351 () Bool)

(assert (=> b!865678 m!807351))

(declare-fun m!807353 () Bool)

(assert (=> b!865678 m!807353))

(declare-fun m!807355 () Bool)

(assert (=> mapNonEmpty!26858 m!807355))

(declare-fun m!807357 () Bool)

(assert (=> b!865685 m!807357))

(declare-fun m!807359 () Bool)

(assert (=> b!865683 m!807359))

(declare-fun m!807361 () Bool)

(assert (=> start!73816 m!807361))

(declare-fun m!807363 () Bool)

(assert (=> start!73816 m!807363))

(declare-fun m!807365 () Bool)

(assert (=> b!865679 m!807365))

(assert (=> b!865679 m!807365))

(declare-fun m!807367 () Bool)

(assert (=> b!865679 m!807367))

(declare-fun m!807369 () Bool)

(assert (=> b!865679 m!807369))

(assert (=> b!865679 m!807369))

(declare-fun m!807371 () Bool)

(assert (=> b!865679 m!807371))

(declare-fun m!807373 () Bool)

(assert (=> b!865675 m!807373))

(declare-fun m!807375 () Bool)

(assert (=> b!865675 m!807375))

(declare-fun m!807377 () Bool)

(assert (=> b!865675 m!807377))

(declare-fun m!807379 () Bool)

(assert (=> b!865688 m!807379))

(assert (=> b!865688 m!807369))

(declare-fun m!807381 () Bool)

(assert (=> b!865688 m!807381))

(assert (=> b!865688 m!807369))

(declare-fun m!807383 () Bool)

(assert (=> b!865688 m!807383))

(declare-fun m!807385 () Bool)

(assert (=> b!865688 m!807385))

(declare-fun m!807387 () Bool)

(assert (=> b!865688 m!807387))

(declare-fun m!807389 () Bool)

(assert (=> b!865690 m!807389))

(declare-fun m!807391 () Bool)

(assert (=> b!865690 m!807391))

(declare-fun m!807393 () Bool)

(assert (=> b!865690 m!807393))

(declare-fun m!807395 () Bool)

(assert (=> b!865690 m!807395))

(assert (=> b!865690 m!807391))

(assert (=> b!865690 m!807369))

(assert (=> b!865690 m!807393))

(declare-fun m!807397 () Bool)

(assert (=> b!865684 m!807397))

(check-sat (not b!865688) (not start!73816) (not b_next!14703) (not b!865678) (not b!865685) (not b!865690) b_and!24405 (not b!865683) (not mapNonEmpty!26858) (not b_lambda!12085) (not b!865675) (not b!865679) (not b!865684) (not b!865681) tp_is_empty!16839)
(check-sat b_and!24405 (not b_next!14703))
