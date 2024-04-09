; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73852 () Bool)

(assert start!73852)

(declare-fun b_free!14739 () Bool)

(declare-fun b_next!14739 () Bool)

(assert (=> start!73852 (= b_free!14739 (not b_next!14739))))

(declare-fun tp!51721 () Bool)

(declare-fun b_and!24475 () Bool)

(assert (=> start!73852 (= tp!51721 b_and!24475)))

(declare-fun b!866575 () Bool)

(declare-datatypes ((Unit!29687 0))(
  ( (Unit!29688) )
))
(declare-fun e!482754 () Unit!29687)

(declare-fun Unit!29689 () Unit!29687)

(assert (=> b!866575 (= e!482754 Unit!29689)))

(declare-fun lt!393344 () Unit!29687)

(declare-datatypes ((array!49890 0))(
  ( (array!49891 (arr!23972 (Array (_ BitVec 32) (_ BitVec 64))) (size!24413 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49890)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49890 (_ BitVec 32) (_ BitVec 32)) Unit!29687)

(assert (=> b!866575 (= lt!393344 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17119 0))(
  ( (Nil!17116) (Cons!17115 (h!18246 (_ BitVec 64)) (t!24132 List!17119)) )
))
(declare-fun arrayNoDuplicates!0 (array!49890 (_ BitVec 32) List!17119) Bool)

(assert (=> b!866575 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17116)))

(declare-fun lt!393338 () Unit!29687)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49890 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29687)

(assert (=> b!866575 (= lt!393338 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866575 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393330 () Unit!29687)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49890 (_ BitVec 64) (_ BitVec 32) List!17119) Unit!29687)

(assert (=> b!866575 (= lt!393330 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17116))))

(assert (=> b!866575 false))

(declare-fun b!866576 () Bool)

(declare-fun e!482756 () Bool)

(declare-fun e!482749 () Bool)

(assert (=> b!866576 (= e!482756 e!482749)))

(declare-fun res!588905 () Bool)

(assert (=> b!866576 (=> (not res!588905) (not e!482749))))

(assert (=> b!866576 (= res!588905 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27547 0))(
  ( (V!27548 (val!8485 Int)) )
))
(declare-datatypes ((ValueCell!7998 0))(
  ( (ValueCellFull!7998 (v!10906 V!27547)) (EmptyCell!7998) )
))
(declare-datatypes ((array!49892 0))(
  ( (array!49893 (arr!23973 (Array (_ BitVec 32) ValueCell!7998)) (size!24414 (_ BitVec 32))) )
))
(declare-fun lt!393332 () array!49892)

(declare-datatypes ((tuple2!11256 0))(
  ( (tuple2!11257 (_1!5638 (_ BitVec 64)) (_2!5638 V!27547)) )
))
(declare-datatypes ((List!17120 0))(
  ( (Nil!17117) (Cons!17116 (h!18247 tuple2!11256) (t!24133 List!17120)) )
))
(declare-datatypes ((ListLongMap!10039 0))(
  ( (ListLongMap!10040 (toList!5035 List!17120)) )
))
(declare-fun lt!393331 () ListLongMap!10039)

(declare-fun minValue!654 () V!27547)

(declare-fun zeroValue!654 () V!27547)

(declare-fun getCurrentListMapNoExtraKeys!3002 (array!49890 array!49892 (_ BitVec 32) (_ BitVec 32) V!27547 V!27547 (_ BitVec 32) Int) ListLongMap!10039)

(assert (=> b!866576 (= lt!393331 (getCurrentListMapNoExtraKeys!3002 _keys!868 lt!393332 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27547)

(declare-fun _values!688 () array!49892)

(assert (=> b!866576 (= lt!393332 (array!49893 (store (arr!23973 _values!688) i!612 (ValueCellFull!7998 v!557)) (size!24414 _values!688)))))

(declare-fun lt!393341 () ListLongMap!10039)

(assert (=> b!866576 (= lt!393341 (getCurrentListMapNoExtraKeys!3002 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!588915 () Bool)

(assert (=> start!73852 (=> (not res!588915) (not e!482756))))

(assert (=> start!73852 (= res!588915 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24413 _keys!868))))))

(assert (=> start!73852 e!482756))

(declare-fun tp_is_empty!16875 () Bool)

(assert (=> start!73852 tp_is_empty!16875))

(assert (=> start!73852 true))

(assert (=> start!73852 tp!51721))

(declare-fun array_inv!18928 (array!49890) Bool)

(assert (=> start!73852 (array_inv!18928 _keys!868)))

(declare-fun e!482752 () Bool)

(declare-fun array_inv!18929 (array!49892) Bool)

(assert (=> start!73852 (and (array_inv!18929 _values!688) e!482752)))

(declare-fun b!866577 () Bool)

(declare-fun res!588913 () Bool)

(assert (=> b!866577 (=> (not res!588913) (not e!482756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866577 (= res!588913 (validMask!0 mask!1196))))

(declare-fun b!866578 () Bool)

(declare-fun res!588914 () Bool)

(assert (=> b!866578 (=> (not res!588914) (not e!482756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866578 (= res!588914 (validKeyInArray!0 k0!854))))

(declare-fun b!866579 () Bool)

(declare-fun res!588910 () Bool)

(assert (=> b!866579 (=> (not res!588910) (not e!482756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49890 (_ BitVec 32)) Bool)

(assert (=> b!866579 (= res!588910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866580 () Bool)

(declare-fun e!482755 () Bool)

(assert (=> b!866580 (= e!482755 tp_is_empty!16875)))

(declare-fun b!866581 () Bool)

(declare-fun Unit!29690 () Unit!29687)

(assert (=> b!866581 (= e!482754 Unit!29690)))

(declare-fun mapIsEmpty!26912 () Bool)

(declare-fun mapRes!26912 () Bool)

(assert (=> mapIsEmpty!26912 mapRes!26912))

(declare-fun b!866582 () Bool)

(declare-fun res!588907 () Bool)

(assert (=> b!866582 (=> (not res!588907) (not e!482756))))

(assert (=> b!866582 (= res!588907 (and (= (size!24414 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24413 _keys!868) (size!24414 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26912 () Bool)

(declare-fun tp!51722 () Bool)

(assert (=> mapNonEmpty!26912 (= mapRes!26912 (and tp!51722 e!482755))))

(declare-fun mapKey!26912 () (_ BitVec 32))

(declare-fun mapRest!26912 () (Array (_ BitVec 32) ValueCell!7998))

(declare-fun mapValue!26912 () ValueCell!7998)

(assert (=> mapNonEmpty!26912 (= (arr!23973 _values!688) (store mapRest!26912 mapKey!26912 mapValue!26912))))

(declare-fun b!866583 () Bool)

(declare-fun e!482757 () Bool)

(declare-fun e!482750 () Bool)

(assert (=> b!866583 (= e!482757 e!482750)))

(declare-fun res!588911 () Bool)

(assert (=> b!866583 (=> res!588911 e!482750)))

(assert (=> b!866583 (= res!588911 (= k0!854 (select (arr!23972 _keys!868) from!1053)))))

(assert (=> b!866583 (not (= (select (arr!23972 _keys!868) from!1053) k0!854))))

(declare-fun lt!393337 () Unit!29687)

(assert (=> b!866583 (= lt!393337 e!482754)))

(declare-fun c!92247 () Bool)

(assert (=> b!866583 (= c!92247 (= (select (arr!23972 _keys!868) from!1053) k0!854))))

(declare-fun lt!393335 () ListLongMap!10039)

(assert (=> b!866583 (= lt!393331 lt!393335)))

(declare-fun lt!393340 () ListLongMap!10039)

(declare-fun lt!393336 () tuple2!11256)

(declare-fun +!2331 (ListLongMap!10039 tuple2!11256) ListLongMap!10039)

(assert (=> b!866583 (= lt!393335 (+!2331 lt!393340 lt!393336))))

(declare-fun lt!393339 () V!27547)

(assert (=> b!866583 (= lt!393336 (tuple2!11257 (select (arr!23972 _keys!868) from!1053) lt!393339))))

(declare-fun get!12693 (ValueCell!7998 V!27547) V!27547)

(declare-fun dynLambda!1197 (Int (_ BitVec 64)) V!27547)

(assert (=> b!866583 (= lt!393339 (get!12693 (select (arr!23973 _values!688) from!1053) (dynLambda!1197 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866584 () Bool)

(assert (=> b!866584 (= e!482749 (not e!482757))))

(declare-fun res!588906 () Bool)

(assert (=> b!866584 (=> res!588906 e!482757)))

(assert (=> b!866584 (= res!588906 (not (validKeyInArray!0 (select (arr!23972 _keys!868) from!1053))))))

(declare-fun lt!393345 () ListLongMap!10039)

(assert (=> b!866584 (= lt!393345 lt!393340)))

(declare-fun lt!393342 () ListLongMap!10039)

(declare-fun lt!393333 () tuple2!11256)

(assert (=> b!866584 (= lt!393340 (+!2331 lt!393342 lt!393333))))

(assert (=> b!866584 (= lt!393345 (getCurrentListMapNoExtraKeys!3002 _keys!868 lt!393332 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866584 (= lt!393333 (tuple2!11257 k0!854 v!557))))

(assert (=> b!866584 (= lt!393342 (getCurrentListMapNoExtraKeys!3002 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393343 () Unit!29687)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!566 (array!49890 array!49892 (_ BitVec 32) (_ BitVec 32) V!27547 V!27547 (_ BitVec 32) (_ BitVec 64) V!27547 (_ BitVec 32) Int) Unit!29687)

(assert (=> b!866584 (= lt!393343 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!566 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866585 () Bool)

(declare-fun res!588909 () Bool)

(assert (=> b!866585 (=> (not res!588909) (not e!482756))))

(assert (=> b!866585 (= res!588909 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17116))))

(declare-fun b!866586 () Bool)

(assert (=> b!866586 (= e!482750 true)))

(assert (=> b!866586 (= lt!393335 (+!2331 (+!2331 lt!393342 lt!393336) lt!393333))))

(declare-fun lt!393334 () Unit!29687)

(declare-fun addCommutativeForDiffKeys!533 (ListLongMap!10039 (_ BitVec 64) V!27547 (_ BitVec 64) V!27547) Unit!29687)

(assert (=> b!866586 (= lt!393334 (addCommutativeForDiffKeys!533 lt!393342 k0!854 v!557 (select (arr!23972 _keys!868) from!1053) lt!393339))))

(declare-fun b!866587 () Bool)

(declare-fun e!482751 () Bool)

(assert (=> b!866587 (= e!482751 tp_is_empty!16875)))

(declare-fun b!866588 () Bool)

(declare-fun res!588912 () Bool)

(assert (=> b!866588 (=> (not res!588912) (not e!482756))))

(assert (=> b!866588 (= res!588912 (and (= (select (arr!23972 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866589 () Bool)

(declare-fun res!588908 () Bool)

(assert (=> b!866589 (=> (not res!588908) (not e!482756))))

(assert (=> b!866589 (= res!588908 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24413 _keys!868))))))

(declare-fun b!866590 () Bool)

(assert (=> b!866590 (= e!482752 (and e!482751 mapRes!26912))))

(declare-fun condMapEmpty!26912 () Bool)

(declare-fun mapDefault!26912 () ValueCell!7998)

(assert (=> b!866590 (= condMapEmpty!26912 (= (arr!23973 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7998)) mapDefault!26912)))))

(assert (= (and start!73852 res!588915) b!866577))

(assert (= (and b!866577 res!588913) b!866582))

(assert (= (and b!866582 res!588907) b!866579))

(assert (= (and b!866579 res!588910) b!866585))

(assert (= (and b!866585 res!588909) b!866589))

(assert (= (and b!866589 res!588908) b!866578))

(assert (= (and b!866578 res!588914) b!866588))

(assert (= (and b!866588 res!588912) b!866576))

(assert (= (and b!866576 res!588905) b!866584))

(assert (= (and b!866584 (not res!588906)) b!866583))

(assert (= (and b!866583 c!92247) b!866575))

(assert (= (and b!866583 (not c!92247)) b!866581))

(assert (= (and b!866583 (not res!588911)) b!866586))

(assert (= (and b!866590 condMapEmpty!26912) mapIsEmpty!26912))

(assert (= (and b!866590 (not condMapEmpty!26912)) mapNonEmpty!26912))

(get-info :version)

(assert (= (and mapNonEmpty!26912 ((_ is ValueCellFull!7998) mapValue!26912)) b!866580))

(assert (= (and b!866590 ((_ is ValueCellFull!7998) mapDefault!26912)) b!866587))

(assert (= start!73852 b!866590))

(declare-fun b_lambda!12121 () Bool)

(assert (=> (not b_lambda!12121) (not b!866583)))

(declare-fun t!24131 () Bool)

(declare-fun tb!4869 () Bool)

(assert (=> (and start!73852 (= defaultEntry!696 defaultEntry!696) t!24131) tb!4869))

(declare-fun result!9341 () Bool)

(assert (=> tb!4869 (= result!9341 tp_is_empty!16875)))

(assert (=> b!866583 t!24131))

(declare-fun b_and!24477 () Bool)

(assert (= b_and!24475 (and (=> t!24131 result!9341) b_and!24477)))

(declare-fun m!808385 () Bool)

(assert (=> start!73852 m!808385))

(declare-fun m!808387 () Bool)

(assert (=> start!73852 m!808387))

(declare-fun m!808389 () Bool)

(assert (=> b!866579 m!808389))

(declare-fun m!808391 () Bool)

(assert (=> mapNonEmpty!26912 m!808391))

(declare-fun m!808393 () Bool)

(assert (=> b!866583 m!808393))

(declare-fun m!808395 () Bool)

(assert (=> b!866583 m!808395))

(declare-fun m!808397 () Bool)

(assert (=> b!866583 m!808397))

(assert (=> b!866583 m!808393))

(assert (=> b!866583 m!808397))

(declare-fun m!808399 () Bool)

(assert (=> b!866583 m!808399))

(declare-fun m!808401 () Bool)

(assert (=> b!866583 m!808401))

(declare-fun m!808403 () Bool)

(assert (=> b!866575 m!808403))

(declare-fun m!808405 () Bool)

(assert (=> b!866575 m!808405))

(declare-fun m!808407 () Bool)

(assert (=> b!866575 m!808407))

(declare-fun m!808409 () Bool)

(assert (=> b!866575 m!808409))

(declare-fun m!808411 () Bool)

(assert (=> b!866575 m!808411))

(declare-fun m!808413 () Bool)

(assert (=> b!866586 m!808413))

(assert (=> b!866586 m!808413))

(declare-fun m!808415 () Bool)

(assert (=> b!866586 m!808415))

(assert (=> b!866586 m!808395))

(assert (=> b!866586 m!808395))

(declare-fun m!808417 () Bool)

(assert (=> b!866586 m!808417))

(declare-fun m!808419 () Bool)

(assert (=> b!866584 m!808419))

(declare-fun m!808421 () Bool)

(assert (=> b!866584 m!808421))

(assert (=> b!866584 m!808395))

(declare-fun m!808423 () Bool)

(assert (=> b!866584 m!808423))

(assert (=> b!866584 m!808395))

(declare-fun m!808425 () Bool)

(assert (=> b!866584 m!808425))

(declare-fun m!808427 () Bool)

(assert (=> b!866584 m!808427))

(declare-fun m!808429 () Bool)

(assert (=> b!866576 m!808429))

(declare-fun m!808431 () Bool)

(assert (=> b!866576 m!808431))

(declare-fun m!808433 () Bool)

(assert (=> b!866576 m!808433))

(declare-fun m!808435 () Bool)

(assert (=> b!866578 m!808435))

(declare-fun m!808437 () Bool)

(assert (=> b!866588 m!808437))

(declare-fun m!808439 () Bool)

(assert (=> b!866577 m!808439))

(declare-fun m!808441 () Bool)

(assert (=> b!866585 m!808441))

(check-sat (not b!866576) (not b!866585) (not b!866579) (not b!866584) (not b!866575) (not b!866577) tp_is_empty!16875 (not b!866586) (not start!73852) (not b_lambda!12121) b_and!24477 (not mapNonEmpty!26912) (not b_next!14739) (not b!866578) (not b!866583))
(check-sat b_and!24477 (not b_next!14739))
