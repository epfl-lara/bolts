; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73534 () Bool)

(assert start!73534)

(declare-fun b_free!14421 () Bool)

(declare-fun b_next!14421 () Bool)

(assert (=> start!73534 (= b_free!14421 (not b_next!14421))))

(declare-fun tp!50768 () Bool)

(declare-fun b_and!23839 () Bool)

(assert (=> start!73534 (= tp!50768 b_and!23839)))

(declare-fun b!858696 () Bool)

(declare-fun e!478578 () Bool)

(declare-fun e!478584 () Bool)

(declare-fun mapRes!26435 () Bool)

(assert (=> b!858696 (= e!478578 (and e!478584 mapRes!26435))))

(declare-fun condMapEmpty!26435 () Bool)

(declare-datatypes ((V!27123 0))(
  ( (V!27124 (val!8326 Int)) )
))
(declare-datatypes ((ValueCell!7839 0))(
  ( (ValueCellFull!7839 (v!10747 V!27123)) (EmptyCell!7839) )
))
(declare-datatypes ((array!49272 0))(
  ( (array!49273 (arr!23663 (Array (_ BitVec 32) ValueCell!7839)) (size!24104 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49272)

(declare-fun mapDefault!26435 () ValueCell!7839)

(assert (=> b!858696 (= condMapEmpty!26435 (= (arr!23663 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7839)) mapDefault!26435)))))

(declare-fun b!858697 () Bool)

(declare-fun e!478581 () Bool)

(declare-fun tp_is_empty!16557 () Bool)

(assert (=> b!858697 (= e!478581 tp_is_empty!16557)))

(declare-fun b!858698 () Bool)

(declare-fun e!478583 () Bool)

(declare-fun e!478582 () Bool)

(assert (=> b!858698 (= e!478583 e!478582)))

(declare-fun res!583510 () Bool)

(assert (=> b!858698 (=> res!583510 e!478582)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49274 0))(
  ( (array!49275 (arr!23664 (Array (_ BitVec 32) (_ BitVec 64))) (size!24105 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49274)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858698 (= res!583510 (not (= (select (arr!23664 _keys!868) from!1053) k0!854)))))

(declare-datatypes ((tuple2!10976 0))(
  ( (tuple2!10977 (_1!5498 (_ BitVec 64)) (_2!5498 V!27123)) )
))
(declare-datatypes ((List!16848 0))(
  ( (Nil!16845) (Cons!16844 (h!17975 tuple2!10976) (t!23543 List!16848)) )
))
(declare-datatypes ((ListLongMap!9759 0))(
  ( (ListLongMap!9760 (toList!4895 List!16848)) )
))
(declare-fun lt!386888 () ListLongMap!9759)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!386882 () ListLongMap!9759)

(declare-fun +!2198 (ListLongMap!9759 tuple2!10976) ListLongMap!9759)

(declare-fun get!12478 (ValueCell!7839 V!27123) V!27123)

(declare-fun dynLambda!1088 (Int (_ BitVec 64)) V!27123)

(assert (=> b!858698 (= lt!386888 (+!2198 lt!386882 (tuple2!10977 (select (arr!23664 _keys!868) from!1053) (get!12478 (select (arr!23663 _values!688) from!1053) (dynLambda!1088 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858699 () Bool)

(declare-fun res!583508 () Bool)

(declare-fun e!478579 () Bool)

(assert (=> b!858699 (=> (not res!583508) (not e!478579))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858699 (= res!583508 (and (= (select (arr!23664 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858700 () Bool)

(assert (=> b!858700 (= e!478582 true)))

(declare-datatypes ((List!16849 0))(
  ( (Nil!16846) (Cons!16845 (h!17976 (_ BitVec 64)) (t!23544 List!16849)) )
))
(declare-fun arrayNoDuplicates!0 (array!49274 (_ BitVec 32) List!16849) Bool)

(assert (=> b!858700 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16846)))

(declare-datatypes ((Unit!29240 0))(
  ( (Unit!29241) )
))
(declare-fun lt!386887 () Unit!29240)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49274 (_ BitVec 32) (_ BitVec 32)) Unit!29240)

(assert (=> b!858700 (= lt!386887 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858701 () Bool)

(declare-fun res!583513 () Bool)

(assert (=> b!858701 (=> (not res!583513) (not e!478579))))

(assert (=> b!858701 (= res!583513 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24105 _keys!868))))))

(declare-fun mapIsEmpty!26435 () Bool)

(assert (=> mapIsEmpty!26435 mapRes!26435))

(declare-fun b!858702 () Bool)

(declare-fun res!583505 () Bool)

(assert (=> b!858702 (=> (not res!583505) (not e!478579))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!858702 (= res!583505 (and (= (size!24104 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24105 _keys!868) (size!24104 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!583506 () Bool)

(assert (=> start!73534 (=> (not res!583506) (not e!478579))))

(assert (=> start!73534 (= res!583506 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24105 _keys!868))))))

(assert (=> start!73534 e!478579))

(assert (=> start!73534 tp_is_empty!16557))

(assert (=> start!73534 true))

(assert (=> start!73534 tp!50768))

(declare-fun array_inv!18718 (array!49274) Bool)

(assert (=> start!73534 (array_inv!18718 _keys!868)))

(declare-fun array_inv!18719 (array!49272) Bool)

(assert (=> start!73534 (and (array_inv!18719 _values!688) e!478578)))

(declare-fun b!858703 () Bool)

(declare-fun e!478580 () Bool)

(assert (=> b!858703 (= e!478580 (not e!478583))))

(declare-fun res!583511 () Bool)

(assert (=> b!858703 (=> res!583511 e!478583)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858703 (= res!583511 (not (validKeyInArray!0 (select (arr!23664 _keys!868) from!1053))))))

(declare-fun lt!386884 () ListLongMap!9759)

(assert (=> b!858703 (= lt!386884 lt!386882)))

(declare-fun v!557 () V!27123)

(declare-fun lt!386889 () ListLongMap!9759)

(assert (=> b!858703 (= lt!386882 (+!2198 lt!386889 (tuple2!10977 k0!854 v!557)))))

(declare-fun lt!386885 () array!49272)

(declare-fun minValue!654 () V!27123)

(declare-fun zeroValue!654 () V!27123)

(declare-fun getCurrentListMapNoExtraKeys!2877 (array!49274 array!49272 (_ BitVec 32) (_ BitVec 32) V!27123 V!27123 (_ BitVec 32) Int) ListLongMap!9759)

(assert (=> b!858703 (= lt!386884 (getCurrentListMapNoExtraKeys!2877 _keys!868 lt!386885 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858703 (= lt!386889 (getCurrentListMapNoExtraKeys!2877 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!386886 () Unit!29240)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!457 (array!49274 array!49272 (_ BitVec 32) (_ BitVec 32) V!27123 V!27123 (_ BitVec 32) (_ BitVec 64) V!27123 (_ BitVec 32) Int) Unit!29240)

(assert (=> b!858703 (= lt!386886 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!457 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858704 () Bool)

(declare-fun res!583509 () Bool)

(assert (=> b!858704 (=> (not res!583509) (not e!478579))))

(assert (=> b!858704 (= res!583509 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16846))))

(declare-fun b!858705 () Bool)

(assert (=> b!858705 (= e!478579 e!478580)))

(declare-fun res!583515 () Bool)

(assert (=> b!858705 (=> (not res!583515) (not e!478580))))

(assert (=> b!858705 (= res!583515 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!858705 (= lt!386888 (getCurrentListMapNoExtraKeys!2877 _keys!868 lt!386885 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858705 (= lt!386885 (array!49273 (store (arr!23663 _values!688) i!612 (ValueCellFull!7839 v!557)) (size!24104 _values!688)))))

(declare-fun lt!386883 () ListLongMap!9759)

(assert (=> b!858705 (= lt!386883 (getCurrentListMapNoExtraKeys!2877 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26435 () Bool)

(declare-fun tp!50767 () Bool)

(assert (=> mapNonEmpty!26435 (= mapRes!26435 (and tp!50767 e!478581))))

(declare-fun mapKey!26435 () (_ BitVec 32))

(declare-fun mapValue!26435 () ValueCell!7839)

(declare-fun mapRest!26435 () (Array (_ BitVec 32) ValueCell!7839))

(assert (=> mapNonEmpty!26435 (= (arr!23663 _values!688) (store mapRest!26435 mapKey!26435 mapValue!26435))))

(declare-fun b!858706 () Bool)

(assert (=> b!858706 (= e!478584 tp_is_empty!16557)))

(declare-fun b!858707 () Bool)

(declare-fun res!583514 () Bool)

(assert (=> b!858707 (=> (not res!583514) (not e!478579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858707 (= res!583514 (validMask!0 mask!1196))))

(declare-fun b!858708 () Bool)

(declare-fun res!583507 () Bool)

(assert (=> b!858708 (=> (not res!583507) (not e!478579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49274 (_ BitVec 32)) Bool)

(assert (=> b!858708 (= res!583507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858709 () Bool)

(declare-fun res!583512 () Bool)

(assert (=> b!858709 (=> (not res!583512) (not e!478579))))

(assert (=> b!858709 (= res!583512 (validKeyInArray!0 k0!854))))

(assert (= (and start!73534 res!583506) b!858707))

(assert (= (and b!858707 res!583514) b!858702))

(assert (= (and b!858702 res!583505) b!858708))

(assert (= (and b!858708 res!583507) b!858704))

(assert (= (and b!858704 res!583509) b!858701))

(assert (= (and b!858701 res!583513) b!858709))

(assert (= (and b!858709 res!583512) b!858699))

(assert (= (and b!858699 res!583508) b!858705))

(assert (= (and b!858705 res!583515) b!858703))

(assert (= (and b!858703 (not res!583511)) b!858698))

(assert (= (and b!858698 (not res!583510)) b!858700))

(assert (= (and b!858696 condMapEmpty!26435) mapIsEmpty!26435))

(assert (= (and b!858696 (not condMapEmpty!26435)) mapNonEmpty!26435))

(get-info :version)

(assert (= (and mapNonEmpty!26435 ((_ is ValueCellFull!7839) mapValue!26435)) b!858697))

(assert (= (and b!858696 ((_ is ValueCellFull!7839) mapDefault!26435)) b!858706))

(assert (= start!73534 b!858696))

(declare-fun b_lambda!11803 () Bool)

(assert (=> (not b_lambda!11803) (not b!858698)))

(declare-fun t!23542 () Bool)

(declare-fun tb!4551 () Bool)

(assert (=> (and start!73534 (= defaultEntry!696 defaultEntry!696) t!23542) tb!4551))

(declare-fun result!8705 () Bool)

(assert (=> tb!4551 (= result!8705 tp_is_empty!16557)))

(assert (=> b!858698 t!23542))

(declare-fun b_and!23841 () Bool)

(assert (= b_and!23839 (and (=> t!23542 result!8705) b_and!23841)))

(declare-fun m!799529 () Bool)

(assert (=> b!858704 m!799529))

(declare-fun m!799531 () Bool)

(assert (=> b!858707 m!799531))

(declare-fun m!799533 () Bool)

(assert (=> mapNonEmpty!26435 m!799533))

(declare-fun m!799535 () Bool)

(assert (=> b!858708 m!799535))

(declare-fun m!799537 () Bool)

(assert (=> b!858699 m!799537))

(declare-fun m!799539 () Bool)

(assert (=> b!858698 m!799539))

(declare-fun m!799541 () Bool)

(assert (=> b!858698 m!799541))

(declare-fun m!799543 () Bool)

(assert (=> b!858698 m!799543))

(assert (=> b!858698 m!799539))

(declare-fun m!799545 () Bool)

(assert (=> b!858698 m!799545))

(declare-fun m!799547 () Bool)

(assert (=> b!858698 m!799547))

(assert (=> b!858698 m!799541))

(declare-fun m!799549 () Bool)

(assert (=> b!858703 m!799549))

(declare-fun m!799551 () Bool)

(assert (=> b!858703 m!799551))

(declare-fun m!799553 () Bool)

(assert (=> b!858703 m!799553))

(assert (=> b!858703 m!799547))

(declare-fun m!799555 () Bool)

(assert (=> b!858703 m!799555))

(assert (=> b!858703 m!799547))

(declare-fun m!799557 () Bool)

(assert (=> b!858703 m!799557))

(declare-fun m!799559 () Bool)

(assert (=> b!858700 m!799559))

(declare-fun m!799561 () Bool)

(assert (=> b!858700 m!799561))

(declare-fun m!799563 () Bool)

(assert (=> b!858709 m!799563))

(declare-fun m!799565 () Bool)

(assert (=> start!73534 m!799565))

(declare-fun m!799567 () Bool)

(assert (=> start!73534 m!799567))

(declare-fun m!799569 () Bool)

(assert (=> b!858705 m!799569))

(declare-fun m!799571 () Bool)

(assert (=> b!858705 m!799571))

(declare-fun m!799573 () Bool)

(assert (=> b!858705 m!799573))

(check-sat (not b!858698) (not b!858703) tp_is_empty!16557 (not b!858700) (not b_lambda!11803) (not b!858704) (not b!858709) (not b!858705) (not start!73534) (not b_next!14421) (not b!858708) (not mapNonEmpty!26435) b_and!23841 (not b!858707))
(check-sat b_and!23841 (not b_next!14421))
