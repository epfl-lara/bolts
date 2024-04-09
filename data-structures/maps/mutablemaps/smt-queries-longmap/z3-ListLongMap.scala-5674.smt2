; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73858 () Bool)

(assert start!73858)

(declare-fun b_free!14745 () Bool)

(declare-fun b_next!14745 () Bool)

(assert (=> start!73858 (= b_free!14745 (not b_next!14745))))

(declare-fun tp!51739 () Bool)

(declare-fun b_and!24487 () Bool)

(assert (=> start!73858 (= tp!51739 b_and!24487)))

(declare-fun b!866725 () Bool)

(declare-fun res!589007 () Bool)

(declare-fun e!482831 () Bool)

(assert (=> b!866725 (=> (not res!589007) (not e!482831))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49902 0))(
  ( (array!49903 (arr!23978 (Array (_ BitVec 32) (_ BitVec 64))) (size!24419 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49902)

(declare-datatypes ((V!27555 0))(
  ( (V!27556 (val!8488 Int)) )
))
(declare-datatypes ((ValueCell!8001 0))(
  ( (ValueCellFull!8001 (v!10909 V!27555)) (EmptyCell!8001) )
))
(declare-datatypes ((array!49904 0))(
  ( (array!49905 (arr!23979 (Array (_ BitVec 32) ValueCell!8001)) (size!24420 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49904)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!866725 (= res!589007 (and (= (size!24420 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24419 _keys!868) (size!24420 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866726 () Bool)

(declare-datatypes ((Unit!29698 0))(
  ( (Unit!29699) )
))
(declare-fun e!482832 () Unit!29698)

(declare-fun Unit!29700 () Unit!29698)

(assert (=> b!866726 (= e!482832 Unit!29700)))

(declare-fun b!866727 () Bool)

(declare-fun res!589010 () Bool)

(assert (=> b!866727 (=> (not res!589010) (not e!482831))))

(declare-datatypes ((List!17125 0))(
  ( (Nil!17122) (Cons!17121 (h!18252 (_ BitVec 64)) (t!24144 List!17125)) )
))
(declare-fun arrayNoDuplicates!0 (array!49902 (_ BitVec 32) List!17125) Bool)

(assert (=> b!866727 (= res!589010 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17122))))

(declare-fun b!866728 () Bool)

(declare-fun res!589012 () Bool)

(assert (=> b!866728 (=> (not res!589012) (not e!482831))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866728 (= res!589012 (validKeyInArray!0 k0!854))))

(declare-fun b!866729 () Bool)

(declare-fun e!482837 () Bool)

(declare-fun tp_is_empty!16881 () Bool)

(assert (=> b!866729 (= e!482837 tp_is_empty!16881)))

(declare-fun b!866730 () Bool)

(declare-fun e!482833 () Bool)

(assert (=> b!866730 (= e!482831 e!482833)))

(declare-fun res!589011 () Bool)

(assert (=> b!866730 (=> (not res!589011) (not e!482833))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866730 (= res!589011 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11262 0))(
  ( (tuple2!11263 (_1!5641 (_ BitVec 64)) (_2!5641 V!27555)) )
))
(declare-datatypes ((List!17126 0))(
  ( (Nil!17123) (Cons!17122 (h!18253 tuple2!11262) (t!24145 List!17126)) )
))
(declare-datatypes ((ListLongMap!10045 0))(
  ( (ListLongMap!10046 (toList!5038 List!17126)) )
))
(declare-fun lt!393481 () ListLongMap!10045)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!393474 () array!49904)

(declare-fun minValue!654 () V!27555)

(declare-fun zeroValue!654 () V!27555)

(declare-fun getCurrentListMapNoExtraKeys!3004 (array!49902 array!49904 (_ BitVec 32) (_ BitVec 32) V!27555 V!27555 (_ BitVec 32) Int) ListLongMap!10045)

(assert (=> b!866730 (= lt!393481 (getCurrentListMapNoExtraKeys!3004 _keys!868 lt!393474 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27555)

(assert (=> b!866730 (= lt!393474 (array!49905 (store (arr!23979 _values!688) i!612 (ValueCellFull!8001 v!557)) (size!24420 _values!688)))))

(declare-fun lt!393489 () ListLongMap!10045)

(assert (=> b!866730 (= lt!393489 (getCurrentListMapNoExtraKeys!3004 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866731 () Bool)

(declare-fun e!482834 () Bool)

(assert (=> b!866731 (= e!482834 true)))

(declare-fun lt!393488 () tuple2!11262)

(declare-fun lt!393477 () tuple2!11262)

(declare-fun lt!393484 () ListLongMap!10045)

(declare-fun lt!393478 () ListLongMap!10045)

(declare-fun +!2334 (ListLongMap!10045 tuple2!11262) ListLongMap!10045)

(assert (=> b!866731 (= lt!393478 (+!2334 (+!2334 lt!393484 lt!393488) lt!393477))))

(declare-fun lt!393485 () V!27555)

(declare-fun lt!393487 () Unit!29698)

(declare-fun addCommutativeForDiffKeys!536 (ListLongMap!10045 (_ BitVec 64) V!27555 (_ BitVec 64) V!27555) Unit!29698)

(assert (=> b!866731 (= lt!393487 (addCommutativeForDiffKeys!536 lt!393484 k0!854 v!557 (select (arr!23978 _keys!868) from!1053) lt!393485))))

(declare-fun res!589014 () Bool)

(assert (=> start!73858 (=> (not res!589014) (not e!482831))))

(assert (=> start!73858 (= res!589014 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24419 _keys!868))))))

(assert (=> start!73858 e!482831))

(assert (=> start!73858 tp_is_empty!16881))

(assert (=> start!73858 true))

(assert (=> start!73858 tp!51739))

(declare-fun array_inv!18932 (array!49902) Bool)

(assert (=> start!73858 (array_inv!18932 _keys!868)))

(declare-fun e!482830 () Bool)

(declare-fun array_inv!18933 (array!49904) Bool)

(assert (=> start!73858 (and (array_inv!18933 _values!688) e!482830)))

(declare-fun b!866732 () Bool)

(declare-fun e!482836 () Bool)

(assert (=> b!866732 (= e!482833 (not e!482836))))

(declare-fun res!589008 () Bool)

(assert (=> b!866732 (=> res!589008 e!482836)))

(assert (=> b!866732 (= res!589008 (not (validKeyInArray!0 (select (arr!23978 _keys!868) from!1053))))))

(declare-fun lt!393476 () ListLongMap!10045)

(declare-fun lt!393483 () ListLongMap!10045)

(assert (=> b!866732 (= lt!393476 lt!393483)))

(assert (=> b!866732 (= lt!393483 (+!2334 lt!393484 lt!393477))))

(assert (=> b!866732 (= lt!393476 (getCurrentListMapNoExtraKeys!3004 _keys!868 lt!393474 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866732 (= lt!393477 (tuple2!11263 k0!854 v!557))))

(assert (=> b!866732 (= lt!393484 (getCurrentListMapNoExtraKeys!3004 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393480 () Unit!29698)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!568 (array!49902 array!49904 (_ BitVec 32) (_ BitVec 32) V!27555 V!27555 (_ BitVec 32) (_ BitVec 64) V!27555 (_ BitVec 32) Int) Unit!29698)

(assert (=> b!866732 (= lt!393480 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!568 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26921 () Bool)

(declare-fun mapRes!26921 () Bool)

(declare-fun tp!51740 () Bool)

(assert (=> mapNonEmpty!26921 (= mapRes!26921 (and tp!51740 e!482837))))

(declare-fun mapRest!26921 () (Array (_ BitVec 32) ValueCell!8001))

(declare-fun mapValue!26921 () ValueCell!8001)

(declare-fun mapKey!26921 () (_ BitVec 32))

(assert (=> mapNonEmpty!26921 (= (arr!23979 _values!688) (store mapRest!26921 mapKey!26921 mapValue!26921))))

(declare-fun b!866733 () Bool)

(declare-fun e!482838 () Bool)

(assert (=> b!866733 (= e!482838 tp_is_empty!16881)))

(declare-fun b!866734 () Bool)

(declare-fun res!589006 () Bool)

(assert (=> b!866734 (=> (not res!589006) (not e!482831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866734 (= res!589006 (validMask!0 mask!1196))))

(declare-fun b!866735 () Bool)

(assert (=> b!866735 (= e!482830 (and e!482838 mapRes!26921))))

(declare-fun condMapEmpty!26921 () Bool)

(declare-fun mapDefault!26921 () ValueCell!8001)

(assert (=> b!866735 (= condMapEmpty!26921 (= (arr!23979 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8001)) mapDefault!26921)))))

(declare-fun b!866736 () Bool)

(declare-fun res!589005 () Bool)

(assert (=> b!866736 (=> (not res!589005) (not e!482831))))

(assert (=> b!866736 (= res!589005 (and (= (select (arr!23978 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866737 () Bool)

(declare-fun res!589004 () Bool)

(assert (=> b!866737 (=> (not res!589004) (not e!482831))))

(assert (=> b!866737 (= res!589004 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24419 _keys!868))))))

(declare-fun mapIsEmpty!26921 () Bool)

(assert (=> mapIsEmpty!26921 mapRes!26921))

(declare-fun b!866738 () Bool)

(declare-fun Unit!29701 () Unit!29698)

(assert (=> b!866738 (= e!482832 Unit!29701)))

(declare-fun lt!393479 () Unit!29698)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49902 (_ BitVec 32) (_ BitVec 32)) Unit!29698)

(assert (=> b!866738 (= lt!393479 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866738 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17122)))

(declare-fun lt!393475 () Unit!29698)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49902 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29698)

(assert (=> b!866738 (= lt!393475 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866738 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393482 () Unit!29698)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49902 (_ BitVec 64) (_ BitVec 32) List!17125) Unit!29698)

(assert (=> b!866738 (= lt!393482 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17122))))

(assert (=> b!866738 false))

(declare-fun b!866739 () Bool)

(assert (=> b!866739 (= e!482836 e!482834)))

(declare-fun res!589009 () Bool)

(assert (=> b!866739 (=> res!589009 e!482834)))

(assert (=> b!866739 (= res!589009 (= k0!854 (select (arr!23978 _keys!868) from!1053)))))

(assert (=> b!866739 (not (= (select (arr!23978 _keys!868) from!1053) k0!854))))

(declare-fun lt!393486 () Unit!29698)

(assert (=> b!866739 (= lt!393486 e!482832)))

(declare-fun c!92256 () Bool)

(assert (=> b!866739 (= c!92256 (= (select (arr!23978 _keys!868) from!1053) k0!854))))

(assert (=> b!866739 (= lt!393481 lt!393478)))

(assert (=> b!866739 (= lt!393478 (+!2334 lt!393483 lt!393488))))

(assert (=> b!866739 (= lt!393488 (tuple2!11263 (select (arr!23978 _keys!868) from!1053) lt!393485))))

(declare-fun get!12698 (ValueCell!8001 V!27555) V!27555)

(declare-fun dynLambda!1200 (Int (_ BitVec 64)) V!27555)

(assert (=> b!866739 (= lt!393485 (get!12698 (select (arr!23979 _values!688) from!1053) (dynLambda!1200 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866740 () Bool)

(declare-fun res!589013 () Bool)

(assert (=> b!866740 (=> (not res!589013) (not e!482831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49902 (_ BitVec 32)) Bool)

(assert (=> b!866740 (= res!589013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73858 res!589014) b!866734))

(assert (= (and b!866734 res!589006) b!866725))

(assert (= (and b!866725 res!589007) b!866740))

(assert (= (and b!866740 res!589013) b!866727))

(assert (= (and b!866727 res!589010) b!866737))

(assert (= (and b!866737 res!589004) b!866728))

(assert (= (and b!866728 res!589012) b!866736))

(assert (= (and b!866736 res!589005) b!866730))

(assert (= (and b!866730 res!589011) b!866732))

(assert (= (and b!866732 (not res!589008)) b!866739))

(assert (= (and b!866739 c!92256) b!866738))

(assert (= (and b!866739 (not c!92256)) b!866726))

(assert (= (and b!866739 (not res!589009)) b!866731))

(assert (= (and b!866735 condMapEmpty!26921) mapIsEmpty!26921))

(assert (= (and b!866735 (not condMapEmpty!26921)) mapNonEmpty!26921))

(get-info :version)

(assert (= (and mapNonEmpty!26921 ((_ is ValueCellFull!8001) mapValue!26921)) b!866729))

(assert (= (and b!866735 ((_ is ValueCellFull!8001) mapDefault!26921)) b!866733))

(assert (= start!73858 b!866735))

(declare-fun b_lambda!12127 () Bool)

(assert (=> (not b_lambda!12127) (not b!866739)))

(declare-fun t!24143 () Bool)

(declare-fun tb!4875 () Bool)

(assert (=> (and start!73858 (= defaultEntry!696 defaultEntry!696) t!24143) tb!4875))

(declare-fun result!9353 () Bool)

(assert (=> tb!4875 (= result!9353 tp_is_empty!16881)))

(assert (=> b!866739 t!24143))

(declare-fun b_and!24489 () Bool)

(assert (= b_and!24487 (and (=> t!24143 result!9353) b_and!24489)))

(declare-fun m!808559 () Bool)

(assert (=> b!866740 m!808559))

(declare-fun m!808561 () Bool)

(assert (=> b!866731 m!808561))

(assert (=> b!866731 m!808561))

(declare-fun m!808563 () Bool)

(assert (=> b!866731 m!808563))

(declare-fun m!808565 () Bool)

(assert (=> b!866731 m!808565))

(assert (=> b!866731 m!808565))

(declare-fun m!808567 () Bool)

(assert (=> b!866731 m!808567))

(declare-fun m!808569 () Bool)

(assert (=> b!866736 m!808569))

(declare-fun m!808571 () Bool)

(assert (=> mapNonEmpty!26921 m!808571))

(declare-fun m!808573 () Bool)

(assert (=> start!73858 m!808573))

(declare-fun m!808575 () Bool)

(assert (=> start!73858 m!808575))

(declare-fun m!808577 () Bool)

(assert (=> b!866738 m!808577))

(declare-fun m!808579 () Bool)

(assert (=> b!866738 m!808579))

(declare-fun m!808581 () Bool)

(assert (=> b!866738 m!808581))

(declare-fun m!808583 () Bool)

(assert (=> b!866738 m!808583))

(declare-fun m!808585 () Bool)

(assert (=> b!866738 m!808585))

(declare-fun m!808587 () Bool)

(assert (=> b!866727 m!808587))

(declare-fun m!808589 () Bool)

(assert (=> b!866728 m!808589))

(declare-fun m!808591 () Bool)

(assert (=> b!866732 m!808591))

(declare-fun m!808593 () Bool)

(assert (=> b!866732 m!808593))

(assert (=> b!866732 m!808565))

(declare-fun m!808595 () Bool)

(assert (=> b!866732 m!808595))

(assert (=> b!866732 m!808565))

(declare-fun m!808597 () Bool)

(assert (=> b!866732 m!808597))

(declare-fun m!808599 () Bool)

(assert (=> b!866732 m!808599))

(declare-fun m!808601 () Bool)

(assert (=> b!866730 m!808601))

(declare-fun m!808603 () Bool)

(assert (=> b!866730 m!808603))

(declare-fun m!808605 () Bool)

(assert (=> b!866730 m!808605))

(declare-fun m!808607 () Bool)

(assert (=> b!866739 m!808607))

(declare-fun m!808609 () Bool)

(assert (=> b!866739 m!808609))

(declare-fun m!808611 () Bool)

(assert (=> b!866739 m!808611))

(assert (=> b!866739 m!808607))

(declare-fun m!808613 () Bool)

(assert (=> b!866739 m!808613))

(assert (=> b!866739 m!808565))

(assert (=> b!866739 m!808609))

(declare-fun m!808615 () Bool)

(assert (=> b!866734 m!808615))

(check-sat (not b!866728) (not b!866734) (not b!866740) (not b!866739) b_and!24489 (not start!73858) (not b!866730) tp_is_empty!16881 (not mapNonEmpty!26921) (not b!866732) (not b!866731) (not b_next!14745) (not b!866727) (not b_lambda!12127) (not b!866738))
(check-sat b_and!24489 (not b_next!14745))
