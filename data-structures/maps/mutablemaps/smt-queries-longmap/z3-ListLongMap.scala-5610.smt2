; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73474 () Bool)

(assert start!73474)

(declare-fun b_free!14361 () Bool)

(declare-fun b_next!14361 () Bool)

(assert (=> start!73474 (= b_free!14361 (not b_next!14361))))

(declare-fun tp!50588 () Bool)

(declare-fun b_and!23735 () Bool)

(assert (=> start!73474 (= tp!50588 b_and!23735)))

(declare-fun b!857472 () Bool)

(declare-fun res!582603 () Bool)

(declare-fun e!477940 () Bool)

(assert (=> b!857472 (=> (not res!582603) (not e!477940))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49158 0))(
  ( (array!49159 (arr!23606 (Array (_ BitVec 32) (_ BitVec 64))) (size!24047 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49158)

(declare-datatypes ((V!27043 0))(
  ( (V!27044 (val!8296 Int)) )
))
(declare-datatypes ((ValueCell!7809 0))(
  ( (ValueCellFull!7809 (v!10717 V!27043)) (EmptyCell!7809) )
))
(declare-datatypes ((array!49160 0))(
  ( (array!49161 (arr!23607 (Array (_ BitVec 32) ValueCell!7809)) (size!24048 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49160)

(assert (=> b!857472 (= res!582603 (and (= (size!24048 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24047 _keys!868) (size!24048 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857473 () Bool)

(declare-fun e!477937 () Bool)

(declare-fun tp_is_empty!16497 () Bool)

(assert (=> b!857473 (= e!477937 tp_is_empty!16497)))

(declare-fun mapIsEmpty!26345 () Bool)

(declare-fun mapRes!26345 () Bool)

(assert (=> mapIsEmpty!26345 mapRes!26345))

(declare-fun mapNonEmpty!26345 () Bool)

(declare-fun tp!50587 () Bool)

(assert (=> mapNonEmpty!26345 (= mapRes!26345 (and tp!50587 e!477937))))

(declare-fun mapKey!26345 () (_ BitVec 32))

(declare-fun mapRest!26345 () (Array (_ BitVec 32) ValueCell!7809))

(declare-fun mapValue!26345 () ValueCell!7809)

(assert (=> mapNonEmpty!26345 (= (arr!23607 _values!688) (store mapRest!26345 mapKey!26345 mapValue!26345))))

(declare-fun b!857474 () Bool)

(declare-fun res!582600 () Bool)

(assert (=> b!857474 (=> (not res!582600) (not e!477940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49158 (_ BitVec 32)) Bool)

(assert (=> b!857474 (= res!582600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857475 () Bool)

(declare-fun res!582597 () Bool)

(assert (=> b!857475 (=> (not res!582597) (not e!477940))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857475 (= res!582597 (and (= (select (arr!23606 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!582599 () Bool)

(assert (=> start!73474 (=> (not res!582599) (not e!477940))))

(assert (=> start!73474 (= res!582599 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24047 _keys!868))))))

(assert (=> start!73474 e!477940))

(assert (=> start!73474 tp_is_empty!16497))

(assert (=> start!73474 true))

(assert (=> start!73474 tp!50588))

(declare-fun array_inv!18680 (array!49158) Bool)

(assert (=> start!73474 (array_inv!18680 _keys!868)))

(declare-fun e!477941 () Bool)

(declare-fun array_inv!18681 (array!49160) Bool)

(assert (=> start!73474 (and (array_inv!18681 _values!688) e!477941)))

(declare-fun b!857476 () Bool)

(declare-fun e!477938 () Bool)

(assert (=> b!857476 (= e!477938 (not true))))

(declare-fun v!557 () V!27043)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27043)

(declare-fun zeroValue!654 () V!27043)

(declare-fun lt!386298 () array!49160)

(declare-datatypes ((tuple2!10932 0))(
  ( (tuple2!10933 (_1!5476 (_ BitVec 64)) (_2!5476 V!27043)) )
))
(declare-datatypes ((List!16803 0))(
  ( (Nil!16800) (Cons!16799 (h!17930 tuple2!10932) (t!23452 List!16803)) )
))
(declare-datatypes ((ListLongMap!9715 0))(
  ( (ListLongMap!9716 (toList!4873 List!16803)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2855 (array!49158 array!49160 (_ BitVec 32) (_ BitVec 32) V!27043 V!27043 (_ BitVec 32) Int) ListLongMap!9715)

(declare-fun +!2181 (ListLongMap!9715 tuple2!10932) ListLongMap!9715)

(assert (=> b!857476 (= (getCurrentListMapNoExtraKeys!2855 _keys!868 lt!386298 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2181 (getCurrentListMapNoExtraKeys!2855 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10933 k0!854 v!557)))))

(declare-datatypes ((Unit!29204 0))(
  ( (Unit!29205) )
))
(declare-fun lt!386295 () Unit!29204)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!441 (array!49158 array!49160 (_ BitVec 32) (_ BitVec 32) V!27043 V!27043 (_ BitVec 32) (_ BitVec 64) V!27043 (_ BitVec 32) Int) Unit!29204)

(assert (=> b!857476 (= lt!386295 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!441 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857477 () Bool)

(declare-fun res!582596 () Bool)

(assert (=> b!857477 (=> (not res!582596) (not e!477940))))

(assert (=> b!857477 (= res!582596 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24047 _keys!868))))))

(declare-fun b!857478 () Bool)

(declare-fun res!582598 () Bool)

(assert (=> b!857478 (=> (not res!582598) (not e!477940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857478 (= res!582598 (validKeyInArray!0 k0!854))))

(declare-fun b!857479 () Bool)

(declare-fun e!477942 () Bool)

(assert (=> b!857479 (= e!477942 tp_is_empty!16497)))

(declare-fun b!857480 () Bool)

(assert (=> b!857480 (= e!477941 (and e!477942 mapRes!26345))))

(declare-fun condMapEmpty!26345 () Bool)

(declare-fun mapDefault!26345 () ValueCell!7809)

(assert (=> b!857480 (= condMapEmpty!26345 (= (arr!23607 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7809)) mapDefault!26345)))))

(declare-fun b!857481 () Bool)

(declare-fun res!582601 () Bool)

(assert (=> b!857481 (=> (not res!582601) (not e!477940))))

(declare-datatypes ((List!16804 0))(
  ( (Nil!16801) (Cons!16800 (h!17931 (_ BitVec 64)) (t!23453 List!16804)) )
))
(declare-fun arrayNoDuplicates!0 (array!49158 (_ BitVec 32) List!16804) Bool)

(assert (=> b!857481 (= res!582601 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16801))))

(declare-fun b!857482 () Bool)

(assert (=> b!857482 (= e!477940 e!477938)))

(declare-fun res!582602 () Bool)

(assert (=> b!857482 (=> (not res!582602) (not e!477938))))

(assert (=> b!857482 (= res!582602 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386296 () ListLongMap!9715)

(assert (=> b!857482 (= lt!386296 (getCurrentListMapNoExtraKeys!2855 _keys!868 lt!386298 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857482 (= lt!386298 (array!49161 (store (arr!23607 _values!688) i!612 (ValueCellFull!7809 v!557)) (size!24048 _values!688)))))

(declare-fun lt!386297 () ListLongMap!9715)

(assert (=> b!857482 (= lt!386297 (getCurrentListMapNoExtraKeys!2855 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857483 () Bool)

(declare-fun res!582595 () Bool)

(assert (=> b!857483 (=> (not res!582595) (not e!477940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857483 (= res!582595 (validMask!0 mask!1196))))

(assert (= (and start!73474 res!582599) b!857483))

(assert (= (and b!857483 res!582595) b!857472))

(assert (= (and b!857472 res!582603) b!857474))

(assert (= (and b!857474 res!582600) b!857481))

(assert (= (and b!857481 res!582601) b!857477))

(assert (= (and b!857477 res!582596) b!857478))

(assert (= (and b!857478 res!582598) b!857475))

(assert (= (and b!857475 res!582597) b!857482))

(assert (= (and b!857482 res!582602) b!857476))

(assert (= (and b!857480 condMapEmpty!26345) mapIsEmpty!26345))

(assert (= (and b!857480 (not condMapEmpty!26345)) mapNonEmpty!26345))

(get-info :version)

(assert (= (and mapNonEmpty!26345 ((_ is ValueCellFull!7809) mapValue!26345)) b!857473))

(assert (= (and b!857480 ((_ is ValueCellFull!7809) mapDefault!26345)) b!857479))

(assert (= start!73474 b!857480))

(declare-fun m!798325 () Bool)

(assert (=> b!857474 m!798325))

(declare-fun m!798327 () Bool)

(assert (=> b!857478 m!798327))

(declare-fun m!798329 () Bool)

(assert (=> start!73474 m!798329))

(declare-fun m!798331 () Bool)

(assert (=> start!73474 m!798331))

(declare-fun m!798333 () Bool)

(assert (=> mapNonEmpty!26345 m!798333))

(declare-fun m!798335 () Bool)

(assert (=> b!857482 m!798335))

(declare-fun m!798337 () Bool)

(assert (=> b!857482 m!798337))

(declare-fun m!798339 () Bool)

(assert (=> b!857482 m!798339))

(declare-fun m!798341 () Bool)

(assert (=> b!857476 m!798341))

(declare-fun m!798343 () Bool)

(assert (=> b!857476 m!798343))

(assert (=> b!857476 m!798343))

(declare-fun m!798345 () Bool)

(assert (=> b!857476 m!798345))

(declare-fun m!798347 () Bool)

(assert (=> b!857476 m!798347))

(declare-fun m!798349 () Bool)

(assert (=> b!857481 m!798349))

(declare-fun m!798351 () Bool)

(assert (=> b!857483 m!798351))

(declare-fun m!798353 () Bool)

(assert (=> b!857475 m!798353))

(check-sat (not mapNonEmpty!26345) (not b!857481) (not b_next!14361) b_and!23735 (not b!857474) (not b!857483) tp_is_empty!16497 (not start!73474) (not b!857476) (not b!857478) (not b!857482))
(check-sat b_and!23735 (not b_next!14361))
