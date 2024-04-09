; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73822 () Bool)

(assert start!73822)

(declare-fun b_free!14709 () Bool)

(declare-fun b_next!14709 () Bool)

(assert (=> start!73822 (= b_free!14709 (not b_next!14709))))

(declare-fun tp!51632 () Bool)

(declare-fun b_and!24415 () Bool)

(assert (=> start!73822 (= tp!51632 b_and!24415)))

(declare-fun b!865825 () Bool)

(declare-fun res!588413 () Bool)

(declare-fun e!482344 () Bool)

(assert (=> b!865825 (=> (not res!588413) (not e!482344))))

(declare-datatypes ((array!49832 0))(
  ( (array!49833 (arr!23943 (Array (_ BitVec 32) (_ BitVec 64))) (size!24384 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49832)

(declare-datatypes ((List!17095 0))(
  ( (Nil!17092) (Cons!17091 (h!18222 (_ BitVec 64)) (t!24078 List!17095)) )
))
(declare-fun arrayNoDuplicates!0 (array!49832 (_ BitVec 32) List!17095) Bool)

(assert (=> b!865825 (= res!588413 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17092))))

(declare-fun res!588414 () Bool)

(assert (=> start!73822 (=> (not res!588414) (not e!482344))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73822 (= res!588414 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24384 _keys!868))))))

(assert (=> start!73822 e!482344))

(declare-fun tp_is_empty!16845 () Bool)

(assert (=> start!73822 tp_is_empty!16845))

(assert (=> start!73822 true))

(assert (=> start!73822 tp!51632))

(declare-fun array_inv!18908 (array!49832) Bool)

(assert (=> start!73822 (array_inv!18908 _keys!868)))

(declare-datatypes ((V!27507 0))(
  ( (V!27508 (val!8470 Int)) )
))
(declare-datatypes ((ValueCell!7983 0))(
  ( (ValueCellFull!7983 (v!10891 V!27507)) (EmptyCell!7983) )
))
(declare-datatypes ((array!49834 0))(
  ( (array!49835 (arr!23944 (Array (_ BitVec 32) ValueCell!7983)) (size!24385 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49834)

(declare-fun e!482348 () Bool)

(declare-fun array_inv!18909 (array!49834) Bool)

(assert (=> start!73822 (and (array_inv!18909 _values!688) e!482348)))

(declare-fun b!865826 () Bool)

(declare-fun res!588420 () Bool)

(assert (=> b!865826 (=> (not res!588420) (not e!482344))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865826 (= res!588420 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24384 _keys!868))))))

(declare-fun b!865827 () Bool)

(declare-fun res!588418 () Bool)

(assert (=> b!865827 (=> (not res!588418) (not e!482344))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865827 (= res!588418 (validKeyInArray!0 k0!854))))

(declare-fun b!865828 () Bool)

(declare-fun res!588411 () Bool)

(assert (=> b!865828 (=> (not res!588411) (not e!482344))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865828 (= res!588411 (validMask!0 mask!1196))))

(declare-fun b!865829 () Bool)

(declare-fun e!482352 () Bool)

(assert (=> b!865829 (= e!482352 tp_is_empty!16845)))

(declare-fun b!865830 () Bool)

(declare-fun e!482349 () Bool)

(assert (=> b!865830 (= e!482344 e!482349)))

(declare-fun res!588410 () Bool)

(assert (=> b!865830 (=> (not res!588410) (not e!482349))))

(assert (=> b!865830 (= res!588410 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11230 0))(
  ( (tuple2!11231 (_1!5625 (_ BitVec 64)) (_2!5625 V!27507)) )
))
(declare-datatypes ((List!17096 0))(
  ( (Nil!17093) (Cons!17092 (h!18223 tuple2!11230) (t!24079 List!17096)) )
))
(declare-datatypes ((ListLongMap!10013 0))(
  ( (ListLongMap!10014 (toList!5022 List!17096)) )
))
(declare-fun lt!392623 () ListLongMap!10013)

(declare-fun minValue!654 () V!27507)

(declare-fun zeroValue!654 () V!27507)

(declare-fun lt!392617 () array!49834)

(declare-fun getCurrentListMapNoExtraKeys!2990 (array!49832 array!49834 (_ BitVec 32) (_ BitVec 32) V!27507 V!27507 (_ BitVec 32) Int) ListLongMap!10013)

(assert (=> b!865830 (= lt!392623 (getCurrentListMapNoExtraKeys!2990 _keys!868 lt!392617 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27507)

(assert (=> b!865830 (= lt!392617 (array!49835 (store (arr!23944 _values!688) i!612 (ValueCellFull!7983 v!557)) (size!24385 _values!688)))))

(declare-fun lt!392621 () ListLongMap!10013)

(assert (=> b!865830 (= lt!392621 (getCurrentListMapNoExtraKeys!2990 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26867 () Bool)

(declare-fun mapRes!26867 () Bool)

(declare-fun tp!51631 () Bool)

(assert (=> mapNonEmpty!26867 (= mapRes!26867 (and tp!51631 e!482352))))

(declare-fun mapKey!26867 () (_ BitVec 32))

(declare-fun mapValue!26867 () ValueCell!7983)

(declare-fun mapRest!26867 () (Array (_ BitVec 32) ValueCell!7983))

(assert (=> mapNonEmpty!26867 (= (arr!23944 _values!688) (store mapRest!26867 mapKey!26867 mapValue!26867))))

(declare-fun b!865831 () Bool)

(declare-fun e!482350 () Bool)

(assert (=> b!865831 (= e!482350 true)))

(declare-fun lt!392615 () tuple2!11230)

(declare-fun lt!392611 () tuple2!11230)

(declare-fun lt!392625 () ListLongMap!10013)

(declare-fun lt!392624 () ListLongMap!10013)

(declare-fun +!2318 (ListLongMap!10013 tuple2!11230) ListLongMap!10013)

(assert (=> b!865831 (= lt!392624 (+!2318 (+!2318 lt!392625 lt!392615) lt!392611))))

(declare-datatypes ((Unit!29644 0))(
  ( (Unit!29645) )
))
(declare-fun lt!392612 () Unit!29644)

(declare-fun lt!392613 () V!27507)

(declare-fun addCommutativeForDiffKeys!524 (ListLongMap!10013 (_ BitVec 64) V!27507 (_ BitVec 64) V!27507) Unit!29644)

(assert (=> b!865831 (= lt!392612 (addCommutativeForDiffKeys!524 lt!392625 k0!854 v!557 (select (arr!23943 _keys!868) from!1053) lt!392613))))

(declare-fun b!865832 () Bool)

(declare-fun e!482345 () Bool)

(assert (=> b!865832 (= e!482348 (and e!482345 mapRes!26867))))

(declare-fun condMapEmpty!26867 () Bool)

(declare-fun mapDefault!26867 () ValueCell!7983)

(assert (=> b!865832 (= condMapEmpty!26867 (= (arr!23944 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7983)) mapDefault!26867)))))

(declare-fun b!865833 () Bool)

(declare-fun res!588416 () Bool)

(assert (=> b!865833 (=> (not res!588416) (not e!482344))))

(assert (=> b!865833 (= res!588416 (and (= (size!24385 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24384 _keys!868) (size!24385 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865834 () Bool)

(declare-fun res!588412 () Bool)

(assert (=> b!865834 (=> (not res!588412) (not e!482344))))

(assert (=> b!865834 (= res!588412 (and (= (select (arr!23943 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!865835 () Bool)

(declare-fun e!482347 () Bool)

(assert (=> b!865835 (= e!482347 e!482350)))

(declare-fun res!588415 () Bool)

(assert (=> b!865835 (=> res!588415 e!482350)))

(assert (=> b!865835 (= res!588415 (= k0!854 (select (arr!23943 _keys!868) from!1053)))))

(assert (=> b!865835 (not (= (select (arr!23943 _keys!868) from!1053) k0!854))))

(declare-fun lt!392616 () Unit!29644)

(declare-fun e!482346 () Unit!29644)

(assert (=> b!865835 (= lt!392616 e!482346)))

(declare-fun c!92202 () Bool)

(assert (=> b!865835 (= c!92202 (= (select (arr!23943 _keys!868) from!1053) k0!854))))

(assert (=> b!865835 (= lt!392623 lt!392624)))

(declare-fun lt!392619 () ListLongMap!10013)

(assert (=> b!865835 (= lt!392624 (+!2318 lt!392619 lt!392615))))

(assert (=> b!865835 (= lt!392615 (tuple2!11231 (select (arr!23943 _keys!868) from!1053) lt!392613))))

(declare-fun get!12672 (ValueCell!7983 V!27507) V!27507)

(declare-fun dynLambda!1186 (Int (_ BitVec 64)) V!27507)

(assert (=> b!865835 (= lt!392613 (get!12672 (select (arr!23944 _values!688) from!1053) (dynLambda!1186 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865836 () Bool)

(assert (=> b!865836 (= e!482345 tp_is_empty!16845)))

(declare-fun mapIsEmpty!26867 () Bool)

(assert (=> mapIsEmpty!26867 mapRes!26867))

(declare-fun b!865837 () Bool)

(declare-fun Unit!29646 () Unit!29644)

(assert (=> b!865837 (= e!482346 Unit!29646)))

(declare-fun b!865838 () Bool)

(declare-fun res!588419 () Bool)

(assert (=> b!865838 (=> (not res!588419) (not e!482344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49832 (_ BitVec 32)) Bool)

(assert (=> b!865838 (= res!588419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865839 () Bool)

(declare-fun Unit!29647 () Unit!29644)

(assert (=> b!865839 (= e!482346 Unit!29647)))

(declare-fun lt!392618 () Unit!29644)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49832 (_ BitVec 32) (_ BitVec 32)) Unit!29644)

(assert (=> b!865839 (= lt!392618 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865839 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17092)))

(declare-fun lt!392620 () Unit!29644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49832 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29644)

(assert (=> b!865839 (= lt!392620 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865839 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392622 () Unit!29644)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49832 (_ BitVec 64) (_ BitVec 32) List!17095) Unit!29644)

(assert (=> b!865839 (= lt!392622 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17092))))

(assert (=> b!865839 false))

(declare-fun b!865840 () Bool)

(assert (=> b!865840 (= e!482349 (not e!482347))))

(declare-fun res!588417 () Bool)

(assert (=> b!865840 (=> res!588417 e!482347)))

(assert (=> b!865840 (= res!588417 (not (validKeyInArray!0 (select (arr!23943 _keys!868) from!1053))))))

(declare-fun lt!392614 () ListLongMap!10013)

(assert (=> b!865840 (= lt!392614 lt!392619)))

(assert (=> b!865840 (= lt!392619 (+!2318 lt!392625 lt!392611))))

(assert (=> b!865840 (= lt!392614 (getCurrentListMapNoExtraKeys!2990 _keys!868 lt!392617 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865840 (= lt!392611 (tuple2!11231 k0!854 v!557))))

(assert (=> b!865840 (= lt!392625 (getCurrentListMapNoExtraKeys!2990 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392610 () Unit!29644)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!556 (array!49832 array!49834 (_ BitVec 32) (_ BitVec 32) V!27507 V!27507 (_ BitVec 32) (_ BitVec 64) V!27507 (_ BitVec 32) Int) Unit!29644)

(assert (=> b!865840 (= lt!392610 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!556 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73822 res!588414) b!865828))

(assert (= (and b!865828 res!588411) b!865833))

(assert (= (and b!865833 res!588416) b!865838))

(assert (= (and b!865838 res!588419) b!865825))

(assert (= (and b!865825 res!588413) b!865826))

(assert (= (and b!865826 res!588420) b!865827))

(assert (= (and b!865827 res!588418) b!865834))

(assert (= (and b!865834 res!588412) b!865830))

(assert (= (and b!865830 res!588410) b!865840))

(assert (= (and b!865840 (not res!588417)) b!865835))

(assert (= (and b!865835 c!92202) b!865839))

(assert (= (and b!865835 (not c!92202)) b!865837))

(assert (= (and b!865835 (not res!588415)) b!865831))

(assert (= (and b!865832 condMapEmpty!26867) mapIsEmpty!26867))

(assert (= (and b!865832 (not condMapEmpty!26867)) mapNonEmpty!26867))

(get-info :version)

(assert (= (and mapNonEmpty!26867 ((_ is ValueCellFull!7983) mapValue!26867)) b!865829))

(assert (= (and b!865832 ((_ is ValueCellFull!7983) mapDefault!26867)) b!865836))

(assert (= start!73822 b!865832))

(declare-fun b_lambda!12091 () Bool)

(assert (=> (not b_lambda!12091) (not b!865835)))

(declare-fun t!24077 () Bool)

(declare-fun tb!4839 () Bool)

(assert (=> (and start!73822 (= defaultEntry!696 defaultEntry!696) t!24077) tb!4839))

(declare-fun result!9281 () Bool)

(assert (=> tb!4839 (= result!9281 tp_is_empty!16845)))

(assert (=> b!865835 t!24077))

(declare-fun b_and!24417 () Bool)

(assert (= b_and!24415 (and (=> t!24077 result!9281) b_and!24417)))

(declare-fun m!807515 () Bool)

(assert (=> b!865839 m!807515))

(declare-fun m!807517 () Bool)

(assert (=> b!865839 m!807517))

(declare-fun m!807519 () Bool)

(assert (=> b!865839 m!807519))

(declare-fun m!807521 () Bool)

(assert (=> b!865839 m!807521))

(declare-fun m!807523 () Bool)

(assert (=> b!865839 m!807523))

(declare-fun m!807525 () Bool)

(assert (=> b!865834 m!807525))

(declare-fun m!807527 () Bool)

(assert (=> b!865828 m!807527))

(declare-fun m!807529 () Bool)

(assert (=> b!865835 m!807529))

(declare-fun m!807531 () Bool)

(assert (=> b!865835 m!807531))

(declare-fun m!807533 () Bool)

(assert (=> b!865835 m!807533))

(declare-fun m!807535 () Bool)

(assert (=> b!865835 m!807535))

(assert (=> b!865835 m!807531))

(declare-fun m!807537 () Bool)

(assert (=> b!865835 m!807537))

(assert (=> b!865835 m!807533))

(declare-fun m!807539 () Bool)

(assert (=> b!865827 m!807539))

(declare-fun m!807541 () Bool)

(assert (=> b!865840 m!807541))

(assert (=> b!865840 m!807537))

(declare-fun m!807543 () Bool)

(assert (=> b!865840 m!807543))

(assert (=> b!865840 m!807537))

(declare-fun m!807545 () Bool)

(assert (=> b!865840 m!807545))

(declare-fun m!807547 () Bool)

(assert (=> b!865840 m!807547))

(declare-fun m!807549 () Bool)

(assert (=> b!865840 m!807549))

(declare-fun m!807551 () Bool)

(assert (=> b!865825 m!807551))

(declare-fun m!807553 () Bool)

(assert (=> b!865838 m!807553))

(declare-fun m!807555 () Bool)

(assert (=> b!865830 m!807555))

(declare-fun m!807557 () Bool)

(assert (=> b!865830 m!807557))

(declare-fun m!807559 () Bool)

(assert (=> b!865830 m!807559))

(declare-fun m!807561 () Bool)

(assert (=> b!865831 m!807561))

(assert (=> b!865831 m!807561))

(declare-fun m!807563 () Bool)

(assert (=> b!865831 m!807563))

(assert (=> b!865831 m!807537))

(assert (=> b!865831 m!807537))

(declare-fun m!807565 () Bool)

(assert (=> b!865831 m!807565))

(declare-fun m!807567 () Bool)

(assert (=> start!73822 m!807567))

(declare-fun m!807569 () Bool)

(assert (=> start!73822 m!807569))

(declare-fun m!807571 () Bool)

(assert (=> mapNonEmpty!26867 m!807571))

(check-sat (not start!73822) (not b!865828) (not mapNonEmpty!26867) b_and!24417 (not b!865839) (not b!865825) (not b_next!14709) (not b_lambda!12091) (not b!865835) tp_is_empty!16845 (not b!865827) (not b!865838) (not b!865830) (not b!865840) (not b!865831))
(check-sat b_and!24417 (not b_next!14709))
