; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74200 () Bool)

(assert start!74200)

(declare-fun b!872359 () Bool)

(declare-fun e!485834 () Bool)

(declare-fun tp_is_empty!17211 () Bool)

(assert (=> b!872359 (= e!485834 tp_is_empty!17211)))

(declare-fun mapIsEmpty!27419 () Bool)

(declare-fun mapRes!27419 () Bool)

(assert (=> mapIsEmpty!27419 mapRes!27419))

(declare-fun res!593009 () Bool)

(declare-fun e!485837 () Bool)

(assert (=> start!74200 (=> (not res!593009) (not e!485837))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50544 0))(
  ( (array!50545 (arr!24298 (Array (_ BitVec 32) (_ BitVec 64))) (size!24739 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50544)

(assert (=> start!74200 (= res!593009 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24739 _keys!868))))))

(assert (=> start!74200 e!485837))

(assert (=> start!74200 true))

(declare-fun array_inv!19156 (array!50544) Bool)

(assert (=> start!74200 (array_inv!19156 _keys!868)))

(declare-datatypes ((V!27995 0))(
  ( (V!27996 (val!8653 Int)) )
))
(declare-datatypes ((ValueCell!8166 0))(
  ( (ValueCellFull!8166 (v!11074 V!27995)) (EmptyCell!8166) )
))
(declare-datatypes ((array!50546 0))(
  ( (array!50547 (arr!24299 (Array (_ BitVec 32) ValueCell!8166)) (size!24740 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50546)

(declare-fun e!485838 () Bool)

(declare-fun array_inv!19157 (array!50546) Bool)

(assert (=> start!74200 (and (array_inv!19157 _values!688) e!485838)))

(declare-fun mapNonEmpty!27419 () Bool)

(declare-fun tp!52619 () Bool)

(declare-fun e!485835 () Bool)

(assert (=> mapNonEmpty!27419 (= mapRes!27419 (and tp!52619 e!485835))))

(declare-fun mapKey!27419 () (_ BitVec 32))

(declare-fun mapValue!27419 () ValueCell!8166)

(declare-fun mapRest!27419 () (Array (_ BitVec 32) ValueCell!8166))

(assert (=> mapNonEmpty!27419 (= (arr!24299 _values!688) (store mapRest!27419 mapKey!27419 mapValue!27419))))

(declare-fun b!872360 () Bool)

(assert (=> b!872360 (= e!485837 false)))

(declare-fun lt!395577 () Bool)

(declare-datatypes ((List!17329 0))(
  ( (Nil!17326) (Cons!17325 (h!18456 (_ BitVec 64)) (t!24374 List!17329)) )
))
(declare-fun arrayNoDuplicates!0 (array!50544 (_ BitVec 32) List!17329) Bool)

(assert (=> b!872360 (= lt!395577 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17326))))

(declare-fun b!872361 () Bool)

(assert (=> b!872361 (= e!485838 (and e!485834 mapRes!27419))))

(declare-fun condMapEmpty!27419 () Bool)

(declare-fun mapDefault!27419 () ValueCell!8166)

(assert (=> b!872361 (= condMapEmpty!27419 (= (arr!24299 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8166)) mapDefault!27419)))))

(declare-fun b!872362 () Bool)

(declare-fun res!593007 () Bool)

(assert (=> b!872362 (=> (not res!593007) (not e!485837))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50544 (_ BitVec 32)) Bool)

(assert (=> b!872362 (= res!593007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872363 () Bool)

(declare-fun res!593008 () Bool)

(assert (=> b!872363 (=> (not res!593008) (not e!485837))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872363 (= res!593008 (and (= (size!24740 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24739 _keys!868) (size!24740 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872364 () Bool)

(assert (=> b!872364 (= e!485835 tp_is_empty!17211)))

(declare-fun b!872365 () Bool)

(declare-fun res!593010 () Bool)

(assert (=> b!872365 (=> (not res!593010) (not e!485837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872365 (= res!593010 (validMask!0 mask!1196))))

(assert (= (and start!74200 res!593009) b!872365))

(assert (= (and b!872365 res!593010) b!872363))

(assert (= (and b!872363 res!593008) b!872362))

(assert (= (and b!872362 res!593007) b!872360))

(assert (= (and b!872361 condMapEmpty!27419) mapIsEmpty!27419))

(assert (= (and b!872361 (not condMapEmpty!27419)) mapNonEmpty!27419))

(get-info :version)

(assert (= (and mapNonEmpty!27419 ((_ is ValueCellFull!8166) mapValue!27419)) b!872364))

(assert (= (and b!872361 ((_ is ValueCellFull!8166) mapDefault!27419)) b!872359))

(assert (= start!74200 b!872361))

(declare-fun m!813253 () Bool)

(assert (=> mapNonEmpty!27419 m!813253))

(declare-fun m!813255 () Bool)

(assert (=> b!872360 m!813255))

(declare-fun m!813257 () Bool)

(assert (=> b!872362 m!813257))

(declare-fun m!813259 () Bool)

(assert (=> start!74200 m!813259))

(declare-fun m!813261 () Bool)

(assert (=> start!74200 m!813261))

(declare-fun m!813263 () Bool)

(assert (=> b!872365 m!813263))

(check-sat (not b!872360) (not mapNonEmpty!27419) (not start!74200) (not b!872365) tp_is_empty!17211 (not b!872362))
(check-sat)
