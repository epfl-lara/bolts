; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73780 () Bool)

(assert start!73780)

(declare-fun b_free!14667 () Bool)

(declare-fun b_next!14667 () Bool)

(assert (=> start!73780 (= b_free!14667 (not b_next!14667))))

(declare-fun tp!51506 () Bool)

(declare-fun b_and!24331 () Bool)

(assert (=> start!73780 (= tp!51506 b_and!24331)))

(declare-fun b!864775 () Bool)

(declare-fun e!481782 () Bool)

(declare-fun e!481780 () Bool)

(assert (=> b!864775 (= e!481782 e!481780)))

(declare-fun res!587726 () Bool)

(assert (=> b!864775 (=> res!587726 e!481780)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49750 0))(
  ( (array!49751 (arr!23902 (Array (_ BitVec 32) (_ BitVec 64))) (size!24343 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49750)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864775 (= res!587726 (= k0!854 (select (arr!23902 _keys!868) from!1053)))))

(assert (=> b!864775 (not (= (select (arr!23902 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29571 0))(
  ( (Unit!29572) )
))
(declare-fun lt!391616 () Unit!29571)

(declare-fun e!481784 () Unit!29571)

(assert (=> b!864775 (= lt!391616 e!481784)))

(declare-fun c!92139 () Bool)

(assert (=> b!864775 (= c!92139 (= (select (arr!23902 _keys!868) from!1053) k0!854))))

(declare-datatypes ((V!27451 0))(
  ( (V!27452 (val!8449 Int)) )
))
(declare-datatypes ((tuple2!11194 0))(
  ( (tuple2!11195 (_1!5607 (_ BitVec 64)) (_2!5607 V!27451)) )
))
(declare-datatypes ((List!17059 0))(
  ( (Nil!17056) (Cons!17055 (h!18186 tuple2!11194) (t!24000 List!17059)) )
))
(declare-datatypes ((ListLongMap!9977 0))(
  ( (ListLongMap!9978 (toList!5004 List!17059)) )
))
(declare-fun lt!391606 () ListLongMap!9977)

(declare-fun lt!391607 () ListLongMap!9977)

(assert (=> b!864775 (= lt!391606 lt!391607)))

(declare-fun lt!391617 () ListLongMap!9977)

(declare-fun lt!391609 () tuple2!11194)

(declare-fun +!2300 (ListLongMap!9977 tuple2!11194) ListLongMap!9977)

(assert (=> b!864775 (= lt!391607 (+!2300 lt!391617 lt!391609))))

(declare-fun lt!391610 () V!27451)

(assert (=> b!864775 (= lt!391609 (tuple2!11195 (select (arr!23902 _keys!868) from!1053) lt!391610))))

(declare-datatypes ((ValueCell!7962 0))(
  ( (ValueCellFull!7962 (v!10870 V!27451)) (EmptyCell!7962) )
))
(declare-datatypes ((array!49752 0))(
  ( (array!49753 (arr!23903 (Array (_ BitVec 32) ValueCell!7962)) (size!24344 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49752)

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12641 (ValueCell!7962 V!27451) V!27451)

(declare-fun dynLambda!1169 (Int (_ BitVec 64)) V!27451)

(assert (=> b!864775 (= lt!391610 (get!12641 (select (arr!23903 _values!688) from!1053) (dynLambda!1169 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864776 () Bool)

(declare-fun e!481779 () Bool)

(declare-fun tp_is_empty!16803 () Bool)

(assert (=> b!864776 (= e!481779 tp_is_empty!16803)))

(declare-fun b!864777 () Bool)

(declare-fun e!481781 () Bool)

(declare-fun mapRes!26804 () Bool)

(assert (=> b!864777 (= e!481781 (and e!481779 mapRes!26804))))

(declare-fun condMapEmpty!26804 () Bool)

(declare-fun mapDefault!26804 () ValueCell!7962)

(assert (=> b!864777 (= condMapEmpty!26804 (= (arr!23903 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7962)) mapDefault!26804)))))

(declare-fun b!864778 () Bool)

(declare-fun res!587722 () Bool)

(declare-fun e!481783 () Bool)

(assert (=> b!864778 (=> (not res!587722) (not e!481783))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864778 (= res!587722 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24343 _keys!868))))))

(declare-fun b!864779 () Bool)

(declare-fun e!481777 () Bool)

(assert (=> b!864779 (= e!481777 tp_is_empty!16803)))

(declare-fun b!864780 () Bool)

(declare-fun res!587721 () Bool)

(assert (=> b!864780 (=> (not res!587721) (not e!481783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864780 (= res!587721 (validKeyInArray!0 k0!854))))

(declare-fun b!864781 () Bool)

(declare-fun e!481778 () Bool)

(assert (=> b!864781 (= e!481778 (not e!481782))))

(declare-fun res!587718 () Bool)

(assert (=> b!864781 (=> res!587718 e!481782)))

(assert (=> b!864781 (= res!587718 (not (validKeyInArray!0 (select (arr!23902 _keys!868) from!1053))))))

(declare-fun lt!391611 () ListLongMap!9977)

(assert (=> b!864781 (= lt!391611 lt!391617)))

(declare-fun lt!391613 () ListLongMap!9977)

(declare-fun lt!391615 () tuple2!11194)

(assert (=> b!864781 (= lt!391617 (+!2300 lt!391613 lt!391615))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!391603 () array!49752)

(declare-fun minValue!654 () V!27451)

(declare-fun zeroValue!654 () V!27451)

(declare-fun getCurrentListMapNoExtraKeys!2975 (array!49750 array!49752 (_ BitVec 32) (_ BitVec 32) V!27451 V!27451 (_ BitVec 32) Int) ListLongMap!9977)

(assert (=> b!864781 (= lt!391611 (getCurrentListMapNoExtraKeys!2975 _keys!868 lt!391603 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27451)

(assert (=> b!864781 (= lt!391615 (tuple2!11195 k0!854 v!557))))

(assert (=> b!864781 (= lt!391613 (getCurrentListMapNoExtraKeys!2975 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391612 () Unit!29571)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!541 (array!49750 array!49752 (_ BitVec 32) (_ BitVec 32) V!27451 V!27451 (_ BitVec 32) (_ BitVec 64) V!27451 (_ BitVec 32) Int) Unit!29571)

(assert (=> b!864781 (= lt!391612 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!541 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864782 () Bool)

(assert (=> b!864782 (= e!481783 e!481778)))

(declare-fun res!587725 () Bool)

(assert (=> b!864782 (=> (not res!587725) (not e!481778))))

(assert (=> b!864782 (= res!587725 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!864782 (= lt!391606 (getCurrentListMapNoExtraKeys!2975 _keys!868 lt!391603 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!864782 (= lt!391603 (array!49753 (store (arr!23903 _values!688) i!612 (ValueCellFull!7962 v!557)) (size!24344 _values!688)))))

(declare-fun lt!391602 () ListLongMap!9977)

(assert (=> b!864782 (= lt!391602 (getCurrentListMapNoExtraKeys!2975 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26804 () Bool)

(declare-fun tp!51505 () Bool)

(assert (=> mapNonEmpty!26804 (= mapRes!26804 (and tp!51505 e!481777))))

(declare-fun mapValue!26804 () ValueCell!7962)

(declare-fun mapKey!26804 () (_ BitVec 32))

(declare-fun mapRest!26804 () (Array (_ BitVec 32) ValueCell!7962))

(assert (=> mapNonEmpty!26804 (= (arr!23903 _values!688) (store mapRest!26804 mapKey!26804 mapValue!26804))))

(declare-fun b!864784 () Bool)

(declare-fun res!587717 () Bool)

(assert (=> b!864784 (=> (not res!587717) (not e!481783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49750 (_ BitVec 32)) Bool)

(assert (=> b!864784 (= res!587717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26804 () Bool)

(assert (=> mapIsEmpty!26804 mapRes!26804))

(declare-fun b!864785 () Bool)

(assert (=> b!864785 (= e!481780 true)))

(assert (=> b!864785 (= lt!391607 (+!2300 (+!2300 lt!391613 lt!391609) lt!391615))))

(declare-fun lt!391605 () Unit!29571)

(declare-fun addCommutativeForDiffKeys!508 (ListLongMap!9977 (_ BitVec 64) V!27451 (_ BitVec 64) V!27451) Unit!29571)

(assert (=> b!864785 (= lt!391605 (addCommutativeForDiffKeys!508 lt!391613 k0!854 v!557 (select (arr!23902 _keys!868) from!1053) lt!391610))))

(declare-fun b!864786 () Bool)

(declare-fun Unit!29573 () Unit!29571)

(assert (=> b!864786 (= e!481784 Unit!29573)))

(declare-fun lt!391608 () Unit!29571)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49750 (_ BitVec 32) (_ BitVec 32)) Unit!29571)

(assert (=> b!864786 (= lt!391608 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17060 0))(
  ( (Nil!17057) (Cons!17056 (h!18187 (_ BitVec 64)) (t!24001 List!17060)) )
))
(declare-fun arrayNoDuplicates!0 (array!49750 (_ BitVec 32) List!17060) Bool)

(assert (=> b!864786 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17057)))

(declare-fun lt!391604 () Unit!29571)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49750 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29571)

(assert (=> b!864786 (= lt!391604 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864786 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391614 () Unit!29571)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49750 (_ BitVec 64) (_ BitVec 32) List!17060) Unit!29571)

(assert (=> b!864786 (= lt!391614 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17057))))

(assert (=> b!864786 false))

(declare-fun b!864787 () Bool)

(declare-fun Unit!29574 () Unit!29571)

(assert (=> b!864787 (= e!481784 Unit!29574)))

(declare-fun b!864788 () Bool)

(declare-fun res!587723 () Bool)

(assert (=> b!864788 (=> (not res!587723) (not e!481783))))

(assert (=> b!864788 (= res!587723 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17057))))

(declare-fun b!864783 () Bool)

(declare-fun res!587724 () Bool)

(assert (=> b!864783 (=> (not res!587724) (not e!481783))))

(assert (=> b!864783 (= res!587724 (and (= (size!24344 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24343 _keys!868) (size!24344 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!587720 () Bool)

(assert (=> start!73780 (=> (not res!587720) (not e!481783))))

(assert (=> start!73780 (= res!587720 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24343 _keys!868))))))

(assert (=> start!73780 e!481783))

(assert (=> start!73780 tp_is_empty!16803))

(assert (=> start!73780 true))

(assert (=> start!73780 tp!51506))

(declare-fun array_inv!18880 (array!49750) Bool)

(assert (=> start!73780 (array_inv!18880 _keys!868)))

(declare-fun array_inv!18881 (array!49752) Bool)

(assert (=> start!73780 (and (array_inv!18881 _values!688) e!481781)))

(declare-fun b!864789 () Bool)

(declare-fun res!587727 () Bool)

(assert (=> b!864789 (=> (not res!587727) (not e!481783))))

(assert (=> b!864789 (= res!587727 (and (= (select (arr!23902 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864790 () Bool)

(declare-fun res!587719 () Bool)

(assert (=> b!864790 (=> (not res!587719) (not e!481783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864790 (= res!587719 (validMask!0 mask!1196))))

(assert (= (and start!73780 res!587720) b!864790))

(assert (= (and b!864790 res!587719) b!864783))

(assert (= (and b!864783 res!587724) b!864784))

(assert (= (and b!864784 res!587717) b!864788))

(assert (= (and b!864788 res!587723) b!864778))

(assert (= (and b!864778 res!587722) b!864780))

(assert (= (and b!864780 res!587721) b!864789))

(assert (= (and b!864789 res!587727) b!864782))

(assert (= (and b!864782 res!587725) b!864781))

(assert (= (and b!864781 (not res!587718)) b!864775))

(assert (= (and b!864775 c!92139) b!864786))

(assert (= (and b!864775 (not c!92139)) b!864787))

(assert (= (and b!864775 (not res!587726)) b!864785))

(assert (= (and b!864777 condMapEmpty!26804) mapIsEmpty!26804))

(assert (= (and b!864777 (not condMapEmpty!26804)) mapNonEmpty!26804))

(get-info :version)

(assert (= (and mapNonEmpty!26804 ((_ is ValueCellFull!7962) mapValue!26804)) b!864779))

(assert (= (and b!864777 ((_ is ValueCellFull!7962) mapDefault!26804)) b!864776))

(assert (= start!73780 b!864777))

(declare-fun b_lambda!12049 () Bool)

(assert (=> (not b_lambda!12049) (not b!864775)))

(declare-fun t!23999 () Bool)

(declare-fun tb!4797 () Bool)

(assert (=> (and start!73780 (= defaultEntry!696 defaultEntry!696) t!23999) tb!4797))

(declare-fun result!9197 () Bool)

(assert (=> tb!4797 (= result!9197 tp_is_empty!16803)))

(assert (=> b!864775 t!23999))

(declare-fun b_and!24333 () Bool)

(assert (= b_and!24331 (and (=> t!23999 result!9197) b_and!24333)))

(declare-fun m!806297 () Bool)

(assert (=> b!864785 m!806297))

(assert (=> b!864785 m!806297))

(declare-fun m!806299 () Bool)

(assert (=> b!864785 m!806299))

(declare-fun m!806301 () Bool)

(assert (=> b!864785 m!806301))

(assert (=> b!864785 m!806301))

(declare-fun m!806303 () Bool)

(assert (=> b!864785 m!806303))

(declare-fun m!806305 () Bool)

(assert (=> b!864780 m!806305))

(declare-fun m!806307 () Bool)

(assert (=> b!864788 m!806307))

(declare-fun m!806309 () Bool)

(assert (=> b!864789 m!806309))

(declare-fun m!806311 () Bool)

(assert (=> b!864786 m!806311))

(declare-fun m!806313 () Bool)

(assert (=> b!864786 m!806313))

(declare-fun m!806315 () Bool)

(assert (=> b!864786 m!806315))

(declare-fun m!806317 () Bool)

(assert (=> b!864786 m!806317))

(declare-fun m!806319 () Bool)

(assert (=> b!864786 m!806319))

(assert (=> b!864781 m!806301))

(declare-fun m!806321 () Bool)

(assert (=> b!864781 m!806321))

(assert (=> b!864781 m!806301))

(declare-fun m!806323 () Bool)

(assert (=> b!864781 m!806323))

(declare-fun m!806325 () Bool)

(assert (=> b!864781 m!806325))

(declare-fun m!806327 () Bool)

(assert (=> b!864781 m!806327))

(declare-fun m!806329 () Bool)

(assert (=> b!864781 m!806329))

(declare-fun m!806331 () Bool)

(assert (=> b!864790 m!806331))

(declare-fun m!806333 () Bool)

(assert (=> mapNonEmpty!26804 m!806333))

(declare-fun m!806335 () Bool)

(assert (=> b!864782 m!806335))

(declare-fun m!806337 () Bool)

(assert (=> b!864782 m!806337))

(declare-fun m!806339 () Bool)

(assert (=> b!864782 m!806339))

(declare-fun m!806341 () Bool)

(assert (=> start!73780 m!806341))

(declare-fun m!806343 () Bool)

(assert (=> start!73780 m!806343))

(declare-fun m!806345 () Bool)

(assert (=> b!864775 m!806345))

(declare-fun m!806347 () Bool)

(assert (=> b!864775 m!806347))

(declare-fun m!806349 () Bool)

(assert (=> b!864775 m!806349))

(declare-fun m!806351 () Bool)

(assert (=> b!864775 m!806351))

(assert (=> b!864775 m!806347))

(assert (=> b!864775 m!806301))

(assert (=> b!864775 m!806349))

(declare-fun m!806353 () Bool)

(assert (=> b!864784 m!806353))

(check-sat (not b!864790) (not b!864781) b_and!24333 tp_is_empty!16803 (not b!864784) (not b_lambda!12049) (not start!73780) (not b!864782) (not b_next!14667) (not b!864785) (not b!864780) (not b!864788) (not b!864786) (not mapNonEmpty!26804) (not b!864775))
(check-sat b_and!24333 (not b_next!14667))
