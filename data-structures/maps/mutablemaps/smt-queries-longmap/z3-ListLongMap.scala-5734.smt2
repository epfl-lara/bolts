; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74230 () Bool)

(assert start!74230)

(declare-fun b_free!15009 () Bool)

(declare-fun b_next!15009 () Bool)

(assert (=> start!74230 (= b_free!15009 (not b_next!15009))))

(declare-fun tp!52678 () Bool)

(declare-fun b_and!24779 () Bool)

(assert (=> start!74230 (= tp!52678 b_and!24779)))

(declare-fun b!872785 () Bool)

(declare-fun res!593277 () Bool)

(declare-fun e!486073 () Bool)

(assert (=> b!872785 (=> (not res!593277) (not e!486073))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872785 (= res!593277 (validMask!0 mask!1196))))

(declare-fun b!872786 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((V!28035 0))(
  ( (V!28036 (val!8668 Int)) )
))
(declare-datatypes ((ValueCell!8181 0))(
  ( (ValueCellFull!8181 (v!11089 V!28035)) (EmptyCell!8181) )
))
(declare-datatypes ((array!50598 0))(
  ( (array!50599 (arr!24325 (Array (_ BitVec 32) ValueCell!8181)) (size!24766 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50598)

(assert (=> b!872786 (= e!486073 (not (bvslt i!612 (size!24766 _values!688))))))

(declare-fun e!486076 () Bool)

(assert (=> b!872786 e!486076))

(declare-fun c!92325 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!872786 (= c!92325 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29876 0))(
  ( (Unit!29877) )
))
(declare-fun lt!395613 () Unit!29876)

(declare-fun v!557 () V!28035)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50600 0))(
  ( (array!50601 (arr!24326 (Array (_ BitVec 32) (_ BitVec 64))) (size!24767 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50600)

(declare-fun minValue!654 () V!28035)

(declare-fun zeroValue!654 () V!28035)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!643 (array!50600 array!50598 (_ BitVec 32) (_ BitVec 32) V!28035 V!28035 (_ BitVec 32) (_ BitVec 64) V!28035 (_ BitVec 32) Int) Unit!29876)

(assert (=> b!872786 (= lt!395613 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!643 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872787 () Bool)

(declare-fun res!593276 () Bool)

(assert (=> b!872787 (=> (not res!593276) (not e!486073))))

(assert (=> b!872787 (= res!593276 (and (= (select (arr!24326 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24767 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!27464 () Bool)

(declare-fun mapRes!27464 () Bool)

(declare-fun tp!52679 () Bool)

(declare-fun e!486077 () Bool)

(assert (=> mapNonEmpty!27464 (= mapRes!27464 (and tp!52679 e!486077))))

(declare-fun mapRest!27464 () (Array (_ BitVec 32) ValueCell!8181))

(declare-fun mapValue!27464 () ValueCell!8181)

(declare-fun mapKey!27464 () (_ BitVec 32))

(assert (=> mapNonEmpty!27464 (= (arr!24325 _values!688) (store mapRest!27464 mapKey!27464 mapValue!27464))))

(declare-fun b!872788 () Bool)

(declare-fun tp_is_empty!17241 () Bool)

(assert (=> b!872788 (= e!486077 tp_is_empty!17241)))

(declare-fun b!872789 () Bool)

(declare-fun res!593271 () Bool)

(assert (=> b!872789 (=> (not res!593271) (not e!486073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50600 (_ BitVec 32)) Bool)

(assert (=> b!872789 (= res!593271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27464 () Bool)

(assert (=> mapIsEmpty!27464 mapRes!27464))

(declare-fun b!872790 () Bool)

(declare-fun res!593273 () Bool)

(assert (=> b!872790 (=> (not res!593273) (not e!486073))))

(declare-datatypes ((List!17337 0))(
  ( (Nil!17334) (Cons!17333 (h!18464 (_ BitVec 64)) (t!24382 List!17337)) )
))
(declare-fun arrayNoDuplicates!0 (array!50600 (_ BitVec 32) List!17337) Bool)

(assert (=> b!872790 (= res!593273 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17334))))

(declare-fun res!593274 () Bool)

(assert (=> start!74230 (=> (not res!593274) (not e!486073))))

(assert (=> start!74230 (= res!593274 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24767 _keys!868))))))

(assert (=> start!74230 e!486073))

(assert (=> start!74230 tp_is_empty!17241))

(assert (=> start!74230 true))

(assert (=> start!74230 tp!52678))

(declare-fun array_inv!19174 (array!50600) Bool)

(assert (=> start!74230 (array_inv!19174 _keys!868)))

(declare-fun e!486078 () Bool)

(declare-fun array_inv!19175 (array!50598) Bool)

(assert (=> start!74230 (and (array_inv!19175 _values!688) e!486078)))

(declare-fun b!872791 () Bool)

(declare-fun res!593275 () Bool)

(assert (=> b!872791 (=> (not res!593275) (not e!486073))))

(assert (=> b!872791 (= res!593275 (and (= (size!24766 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24767 _keys!868) (size!24766 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872792 () Bool)

(declare-fun e!486074 () Bool)

(assert (=> b!872792 (= e!486074 tp_is_empty!17241)))

(declare-fun b!872793 () Bool)

(assert (=> b!872793 (= e!486078 (and e!486074 mapRes!27464))))

(declare-fun condMapEmpty!27464 () Bool)

(declare-fun mapDefault!27464 () ValueCell!8181)

(assert (=> b!872793 (= condMapEmpty!27464 (= (arr!24325 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8181)) mapDefault!27464)))))

(declare-datatypes ((tuple2!11452 0))(
  ( (tuple2!11453 (_1!5736 (_ BitVec 64)) (_2!5736 V!28035)) )
))
(declare-datatypes ((List!17338 0))(
  ( (Nil!17335) (Cons!17334 (h!18465 tuple2!11452) (t!24383 List!17338)) )
))
(declare-datatypes ((ListLongMap!10235 0))(
  ( (ListLongMap!10236 (toList!5133 List!17338)) )
))
(declare-fun call!38494 () ListLongMap!10235)

(declare-fun b!872794 () Bool)

(declare-fun call!38495 () ListLongMap!10235)

(declare-fun +!2411 (ListLongMap!10235 tuple2!11452) ListLongMap!10235)

(assert (=> b!872794 (= e!486076 (= call!38495 (+!2411 call!38494 (tuple2!11453 k0!854 v!557))))))

(declare-fun bm!38491 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3097 (array!50600 array!50598 (_ BitVec 32) (_ BitVec 32) V!28035 V!28035 (_ BitVec 32) Int) ListLongMap!10235)

(assert (=> bm!38491 (= call!38495 (getCurrentListMapNoExtraKeys!3097 _keys!868 (array!50599 (store (arr!24325 _values!688) i!612 (ValueCellFull!8181 v!557)) (size!24766 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38492 () Bool)

(assert (=> bm!38492 (= call!38494 (getCurrentListMapNoExtraKeys!3097 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872795 () Bool)

(assert (=> b!872795 (= e!486076 (= call!38495 call!38494))))

(declare-fun b!872796 () Bool)

(declare-fun res!593272 () Bool)

(assert (=> b!872796 (=> (not res!593272) (not e!486073))))

(assert (=> b!872796 (= res!593272 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24767 _keys!868))))))

(declare-fun b!872797 () Bool)

(declare-fun res!593270 () Bool)

(assert (=> b!872797 (=> (not res!593270) (not e!486073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872797 (= res!593270 (validKeyInArray!0 k0!854))))

(assert (= (and start!74230 res!593274) b!872785))

(assert (= (and b!872785 res!593277) b!872791))

(assert (= (and b!872791 res!593275) b!872789))

(assert (= (and b!872789 res!593271) b!872790))

(assert (= (and b!872790 res!593273) b!872796))

(assert (= (and b!872796 res!593272) b!872797))

(assert (= (and b!872797 res!593270) b!872787))

(assert (= (and b!872787 res!593276) b!872786))

(assert (= (and b!872786 c!92325) b!872794))

(assert (= (and b!872786 (not c!92325)) b!872795))

(assert (= (or b!872794 b!872795) bm!38491))

(assert (= (or b!872794 b!872795) bm!38492))

(assert (= (and b!872793 condMapEmpty!27464) mapIsEmpty!27464))

(assert (= (and b!872793 (not condMapEmpty!27464)) mapNonEmpty!27464))

(get-info :version)

(assert (= (and mapNonEmpty!27464 ((_ is ValueCellFull!8181) mapValue!27464)) b!872788))

(assert (= (and b!872793 ((_ is ValueCellFull!8181) mapDefault!27464)) b!872792))

(assert (= start!74230 b!872793))

(declare-fun m!813501 () Bool)

(assert (=> mapNonEmpty!27464 m!813501))

(declare-fun m!813503 () Bool)

(assert (=> b!872794 m!813503))

(declare-fun m!813505 () Bool)

(assert (=> b!872787 m!813505))

(declare-fun m!813507 () Bool)

(assert (=> bm!38491 m!813507))

(declare-fun m!813509 () Bool)

(assert (=> bm!38491 m!813509))

(declare-fun m!813511 () Bool)

(assert (=> b!872797 m!813511))

(declare-fun m!813513 () Bool)

(assert (=> start!74230 m!813513))

(declare-fun m!813515 () Bool)

(assert (=> start!74230 m!813515))

(declare-fun m!813517 () Bool)

(assert (=> b!872785 m!813517))

(declare-fun m!813519 () Bool)

(assert (=> b!872786 m!813519))

(declare-fun m!813521 () Bool)

(assert (=> bm!38492 m!813521))

(declare-fun m!813523 () Bool)

(assert (=> b!872790 m!813523))

(declare-fun m!813525 () Bool)

(assert (=> b!872789 m!813525))

(check-sat (not b_next!15009) (not bm!38492) (not bm!38491) (not b!872790) (not b!872794) b_and!24779 (not mapNonEmpty!27464) tp_is_empty!17241 (not start!74230) (not b!872789) (not b!872786) (not b!872797) (not b!872785))
(check-sat b_and!24779 (not b_next!15009))
