; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73690 () Bool)

(assert start!73690)

(declare-fun b_free!14577 () Bool)

(declare-fun b_next!14577 () Bool)

(assert (=> start!73690 (= b_free!14577 (not b_next!14577))))

(declare-fun tp!51235 () Bool)

(declare-fun b_and!24151 () Bool)

(assert (=> start!73690 (= tp!51235 b_and!24151)))

(declare-fun mapIsEmpty!26669 () Bool)

(declare-fun mapRes!26669 () Bool)

(assert (=> mapIsEmpty!26669 mapRes!26669))

(declare-fun b!862525 () Bool)

(declare-fun res!586234 () Bool)

(declare-fun e!480570 () Bool)

(assert (=> b!862525 (=> (not res!586234) (not e!480570))))

(declare-datatypes ((array!49572 0))(
  ( (array!49573 (arr!23813 (Array (_ BitVec 32) (_ BitVec 64))) (size!24254 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49572)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49572 (_ BitVec 32)) Bool)

(assert (=> b!862525 (= res!586234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862526 () Bool)

(declare-datatypes ((Unit!29429 0))(
  ( (Unit!29430) )
))
(declare-fun e!480565 () Unit!29429)

(declare-fun Unit!29431 () Unit!29429)

(assert (=> b!862526 (= e!480565 Unit!29431)))

(declare-fun b!862527 () Bool)

(declare-fun e!480569 () Bool)

(declare-fun tp_is_empty!16713 () Bool)

(assert (=> b!862527 (= e!480569 tp_is_empty!16713)))

(declare-fun b!862528 () Bool)

(declare-fun e!480567 () Bool)

(assert (=> b!862528 (= e!480570 e!480567)))

(declare-fun res!586232 () Bool)

(assert (=> b!862528 (=> (not res!586232) (not e!480567))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862528 (= res!586232 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27331 0))(
  ( (V!27332 (val!8404 Int)) )
))
(declare-datatypes ((ValueCell!7917 0))(
  ( (ValueCellFull!7917 (v!10825 V!27331)) (EmptyCell!7917) )
))
(declare-datatypes ((array!49574 0))(
  ( (array!49575 (arr!23814 (Array (_ BitVec 32) ValueCell!7917)) (size!24255 (_ BitVec 32))) )
))
(declare-fun lt!389447 () array!49574)

(declare-fun minValue!654 () V!27331)

(declare-fun zeroValue!654 () V!27331)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11114 0))(
  ( (tuple2!11115 (_1!5567 (_ BitVec 64)) (_2!5567 V!27331)) )
))
(declare-datatypes ((List!16983 0))(
  ( (Nil!16980) (Cons!16979 (h!18110 tuple2!11114) (t!23834 List!16983)) )
))
(declare-datatypes ((ListLongMap!9897 0))(
  ( (ListLongMap!9898 (toList!4964 List!16983)) )
))
(declare-fun lt!389443 () ListLongMap!9897)

(declare-fun getCurrentListMapNoExtraKeys!2940 (array!49572 array!49574 (_ BitVec 32) (_ BitVec 32) V!27331 V!27331 (_ BitVec 32) Int) ListLongMap!9897)

(assert (=> b!862528 (= lt!389443 (getCurrentListMapNoExtraKeys!2940 _keys!868 lt!389447 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27331)

(declare-fun _values!688 () array!49574)

(assert (=> b!862528 (= lt!389447 (array!49575 (store (arr!23814 _values!688) i!612 (ValueCellFull!7917 v!557)) (size!24255 _values!688)))))

(declare-fun lt!389456 () ListLongMap!9897)

(assert (=> b!862528 (= lt!389456 (getCurrentListMapNoExtraKeys!2940 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862529 () Bool)

(declare-fun e!480566 () Bool)

(assert (=> b!862529 (= e!480566 true)))

(declare-fun lt!389444 () ListLongMap!9897)

(declare-fun lt!389452 () tuple2!11114)

(declare-fun lt!389449 () tuple2!11114)

(declare-fun lt!389442 () ListLongMap!9897)

(declare-fun +!2261 (ListLongMap!9897 tuple2!11114) ListLongMap!9897)

(assert (=> b!862529 (= lt!389442 (+!2261 (+!2261 lt!389444 lt!389449) lt!389452))))

(declare-fun lt!389448 () Unit!29429)

(declare-fun lt!389454 () V!27331)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!477 (ListLongMap!9897 (_ BitVec 64) V!27331 (_ BitVec 64) V!27331) Unit!29429)

(assert (=> b!862529 (= lt!389448 (addCommutativeForDiffKeys!477 lt!389444 k0!854 v!557 (select (arr!23813 _keys!868) from!1053) lt!389454))))

(declare-fun b!862530 () Bool)

(declare-fun res!586240 () Bool)

(assert (=> b!862530 (=> (not res!586240) (not e!480570))))

(assert (=> b!862530 (= res!586240 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24254 _keys!868))))))

(declare-fun b!862531 () Bool)

(declare-fun res!586237 () Bool)

(assert (=> b!862531 (=> (not res!586237) (not e!480570))))

(declare-datatypes ((List!16984 0))(
  ( (Nil!16981) (Cons!16980 (h!18111 (_ BitVec 64)) (t!23835 List!16984)) )
))
(declare-fun arrayNoDuplicates!0 (array!49572 (_ BitVec 32) List!16984) Bool)

(assert (=> b!862531 (= res!586237 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16981))))

(declare-fun b!862532 () Bool)

(declare-fun e!480564 () Bool)

(assert (=> b!862532 (= e!480564 e!480566)))

(declare-fun res!586235 () Bool)

(assert (=> b!862532 (=> res!586235 e!480566)))

(assert (=> b!862532 (= res!586235 (= k0!854 (select (arr!23813 _keys!868) from!1053)))))

(assert (=> b!862532 (not (= (select (arr!23813 _keys!868) from!1053) k0!854))))

(declare-fun lt!389445 () Unit!29429)

(assert (=> b!862532 (= lt!389445 e!480565)))

(declare-fun c!92004 () Bool)

(assert (=> b!862532 (= c!92004 (= (select (arr!23813 _keys!868) from!1053) k0!854))))

(assert (=> b!862532 (= lt!389443 lt!389442)))

(declare-fun lt!389451 () ListLongMap!9897)

(assert (=> b!862532 (= lt!389442 (+!2261 lt!389451 lt!389449))))

(assert (=> b!862532 (= lt!389449 (tuple2!11115 (select (arr!23813 _keys!868) from!1053) lt!389454))))

(declare-fun get!12580 (ValueCell!7917 V!27331) V!27331)

(declare-fun dynLambda!1138 (Int (_ BitVec 64)) V!27331)

(assert (=> b!862532 (= lt!389454 (get!12580 (select (arr!23814 _values!688) from!1053) (dynLambda!1138 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862533 () Bool)

(declare-fun e!480568 () Bool)

(declare-fun e!480563 () Bool)

(assert (=> b!862533 (= e!480568 (and e!480563 mapRes!26669))))

(declare-fun condMapEmpty!26669 () Bool)

(declare-fun mapDefault!26669 () ValueCell!7917)

(assert (=> b!862533 (= condMapEmpty!26669 (= (arr!23814 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7917)) mapDefault!26669)))))

(declare-fun b!862534 () Bool)

(assert (=> b!862534 (= e!480567 (not e!480564))))

(declare-fun res!586242 () Bool)

(assert (=> b!862534 (=> res!586242 e!480564)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862534 (= res!586242 (not (validKeyInArray!0 (select (arr!23813 _keys!868) from!1053))))))

(declare-fun lt!389457 () ListLongMap!9897)

(assert (=> b!862534 (= lt!389457 lt!389451)))

(assert (=> b!862534 (= lt!389451 (+!2261 lt!389444 lt!389452))))

(assert (=> b!862534 (= lt!389457 (getCurrentListMapNoExtraKeys!2940 _keys!868 lt!389447 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862534 (= lt!389452 (tuple2!11115 k0!854 v!557))))

(assert (=> b!862534 (= lt!389444 (getCurrentListMapNoExtraKeys!2940 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389450 () Unit!29429)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!509 (array!49572 array!49574 (_ BitVec 32) (_ BitVec 32) V!27331 V!27331 (_ BitVec 32) (_ BitVec 64) V!27331 (_ BitVec 32) Int) Unit!29429)

(assert (=> b!862534 (= lt!389450 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!509 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!586236 () Bool)

(assert (=> start!73690 (=> (not res!586236) (not e!480570))))

(assert (=> start!73690 (= res!586236 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24254 _keys!868))))))

(assert (=> start!73690 e!480570))

(assert (=> start!73690 tp_is_empty!16713))

(assert (=> start!73690 true))

(assert (=> start!73690 tp!51235))

(declare-fun array_inv!18818 (array!49572) Bool)

(assert (=> start!73690 (array_inv!18818 _keys!868)))

(declare-fun array_inv!18819 (array!49574) Bool)

(assert (=> start!73690 (and (array_inv!18819 _values!688) e!480568)))

(declare-fun mapNonEmpty!26669 () Bool)

(declare-fun tp!51236 () Bool)

(assert (=> mapNonEmpty!26669 (= mapRes!26669 (and tp!51236 e!480569))))

(declare-fun mapRest!26669 () (Array (_ BitVec 32) ValueCell!7917))

(declare-fun mapValue!26669 () ValueCell!7917)

(declare-fun mapKey!26669 () (_ BitVec 32))

(assert (=> mapNonEmpty!26669 (= (arr!23814 _values!688) (store mapRest!26669 mapKey!26669 mapValue!26669))))

(declare-fun b!862535 () Bool)

(declare-fun res!586238 () Bool)

(assert (=> b!862535 (=> (not res!586238) (not e!480570))))

(assert (=> b!862535 (= res!586238 (and (= (size!24255 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24254 _keys!868) (size!24255 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862536 () Bool)

(declare-fun res!586241 () Bool)

(assert (=> b!862536 (=> (not res!586241) (not e!480570))))

(assert (=> b!862536 (= res!586241 (and (= (select (arr!23813 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862537 () Bool)

(declare-fun res!586233 () Bool)

(assert (=> b!862537 (=> (not res!586233) (not e!480570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862537 (= res!586233 (validMask!0 mask!1196))))

(declare-fun b!862538 () Bool)

(declare-fun res!586239 () Bool)

(assert (=> b!862538 (=> (not res!586239) (not e!480570))))

(assert (=> b!862538 (= res!586239 (validKeyInArray!0 k0!854))))

(declare-fun b!862539 () Bool)

(assert (=> b!862539 (= e!480563 tp_is_empty!16713)))

(declare-fun b!862540 () Bool)

(declare-fun Unit!29432 () Unit!29429)

(assert (=> b!862540 (= e!480565 Unit!29432)))

(declare-fun lt!389453 () Unit!29429)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49572 (_ BitVec 32) (_ BitVec 32)) Unit!29429)

(assert (=> b!862540 (= lt!389453 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862540 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16981)))

(declare-fun lt!389446 () Unit!29429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49572 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29429)

(assert (=> b!862540 (= lt!389446 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862540 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389455 () Unit!29429)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49572 (_ BitVec 64) (_ BitVec 32) List!16984) Unit!29429)

(assert (=> b!862540 (= lt!389455 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16981))))

(assert (=> b!862540 false))

(assert (= (and start!73690 res!586236) b!862537))

(assert (= (and b!862537 res!586233) b!862535))

(assert (= (and b!862535 res!586238) b!862525))

(assert (= (and b!862525 res!586234) b!862531))

(assert (= (and b!862531 res!586237) b!862530))

(assert (= (and b!862530 res!586240) b!862538))

(assert (= (and b!862538 res!586239) b!862536))

(assert (= (and b!862536 res!586241) b!862528))

(assert (= (and b!862528 res!586232) b!862534))

(assert (= (and b!862534 (not res!586242)) b!862532))

(assert (= (and b!862532 c!92004) b!862540))

(assert (= (and b!862532 (not c!92004)) b!862526))

(assert (= (and b!862532 (not res!586235)) b!862529))

(assert (= (and b!862533 condMapEmpty!26669) mapIsEmpty!26669))

(assert (= (and b!862533 (not condMapEmpty!26669)) mapNonEmpty!26669))

(get-info :version)

(assert (= (and mapNonEmpty!26669 ((_ is ValueCellFull!7917) mapValue!26669)) b!862527))

(assert (= (and b!862533 ((_ is ValueCellFull!7917) mapDefault!26669)) b!862539))

(assert (= start!73690 b!862533))

(declare-fun b_lambda!11959 () Bool)

(assert (=> (not b_lambda!11959) (not b!862532)))

(declare-fun t!23833 () Bool)

(declare-fun tb!4707 () Bool)

(assert (=> (and start!73690 (= defaultEntry!696 defaultEntry!696) t!23833) tb!4707))

(declare-fun result!9017 () Bool)

(assert (=> tb!4707 (= result!9017 tp_is_empty!16713)))

(assert (=> b!862532 t!23833))

(declare-fun b_and!24153 () Bool)

(assert (= b_and!24151 (and (=> t!23833 result!9017) b_and!24153)))

(declare-fun m!803687 () Bool)

(assert (=> b!862532 m!803687))

(declare-fun m!803689 () Bool)

(assert (=> b!862532 m!803689))

(declare-fun m!803691 () Bool)

(assert (=> b!862532 m!803691))

(assert (=> b!862532 m!803687))

(declare-fun m!803693 () Bool)

(assert (=> b!862532 m!803693))

(declare-fun m!803695 () Bool)

(assert (=> b!862532 m!803695))

(assert (=> b!862532 m!803689))

(declare-fun m!803697 () Bool)

(assert (=> b!862538 m!803697))

(declare-fun m!803699 () Bool)

(assert (=> b!862534 m!803699))

(assert (=> b!862534 m!803695))

(declare-fun m!803701 () Bool)

(assert (=> b!862534 m!803701))

(assert (=> b!862534 m!803695))

(declare-fun m!803703 () Bool)

(assert (=> b!862534 m!803703))

(declare-fun m!803705 () Bool)

(assert (=> b!862534 m!803705))

(declare-fun m!803707 () Bool)

(assert (=> b!862534 m!803707))

(declare-fun m!803709 () Bool)

(assert (=> b!862540 m!803709))

(declare-fun m!803711 () Bool)

(assert (=> b!862540 m!803711))

(declare-fun m!803713 () Bool)

(assert (=> b!862540 m!803713))

(declare-fun m!803715 () Bool)

(assert (=> b!862540 m!803715))

(declare-fun m!803717 () Bool)

(assert (=> b!862540 m!803717))

(declare-fun m!803719 () Bool)

(assert (=> b!862531 m!803719))

(declare-fun m!803721 () Bool)

(assert (=> mapNonEmpty!26669 m!803721))

(declare-fun m!803723 () Bool)

(assert (=> b!862537 m!803723))

(declare-fun m!803725 () Bool)

(assert (=> start!73690 m!803725))

(declare-fun m!803727 () Bool)

(assert (=> start!73690 m!803727))

(declare-fun m!803729 () Bool)

(assert (=> b!862528 m!803729))

(declare-fun m!803731 () Bool)

(assert (=> b!862528 m!803731))

(declare-fun m!803733 () Bool)

(assert (=> b!862528 m!803733))

(declare-fun m!803735 () Bool)

(assert (=> b!862525 m!803735))

(declare-fun m!803737 () Bool)

(assert (=> b!862529 m!803737))

(assert (=> b!862529 m!803737))

(declare-fun m!803739 () Bool)

(assert (=> b!862529 m!803739))

(assert (=> b!862529 m!803695))

(assert (=> b!862529 m!803695))

(declare-fun m!803741 () Bool)

(assert (=> b!862529 m!803741))

(declare-fun m!803743 () Bool)

(assert (=> b!862536 m!803743))

(check-sat (not mapNonEmpty!26669) (not b!862528) (not b!862537) (not b!862538) (not b!862529) (not b!862534) (not b!862532) (not b!862525) (not b_next!14577) (not b_lambda!11959) (not start!73690) b_and!24153 (not b!862531) tp_is_empty!16713 (not b!862540))
(check-sat b_and!24153 (not b_next!14577))
