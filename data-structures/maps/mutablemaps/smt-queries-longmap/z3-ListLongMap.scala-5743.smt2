; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74316 () Bool)

(assert start!74316)

(declare-fun b_free!15051 () Bool)

(declare-fun b_next!15051 () Bool)

(assert (=> start!74316 (= b_free!15051 (not b_next!15051))))

(declare-fun tp!52829 () Bool)

(declare-fun b_and!24845 () Bool)

(assert (=> start!74316 (= tp!52829 b_and!24845)))

(declare-fun b!873866 () Bool)

(declare-fun res!593959 () Bool)

(declare-fun e!486628 () Bool)

(assert (=> b!873866 (=> (not res!593959) (not e!486628))))

(declare-datatypes ((array!50704 0))(
  ( (array!50705 (arr!24376 (Array (_ BitVec 32) (_ BitVec 64))) (size!24817 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50704)

(declare-datatypes ((List!17374 0))(
  ( (Nil!17371) (Cons!17370 (h!18501 (_ BitVec 64)) (t!24423 List!17374)) )
))
(declare-fun arrayNoDuplicates!0 (array!50704 (_ BitVec 32) List!17374) Bool)

(assert (=> b!873866 (= res!593959 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17371))))

(declare-fun mapNonEmpty!27551 () Bool)

(declare-fun mapRes!27551 () Bool)

(declare-fun tp!52828 () Bool)

(declare-fun e!486624 () Bool)

(assert (=> mapNonEmpty!27551 (= mapRes!27551 (and tp!52828 e!486624))))

(declare-datatypes ((V!28107 0))(
  ( (V!28108 (val!8695 Int)) )
))
(declare-datatypes ((ValueCell!8208 0))(
  ( (ValueCellFull!8208 (v!11120 V!28107)) (EmptyCell!8208) )
))
(declare-fun mapRest!27551 () (Array (_ BitVec 32) ValueCell!8208))

(declare-fun mapValue!27551 () ValueCell!8208)

(declare-fun mapKey!27551 () (_ BitVec 32))

(declare-datatypes ((array!50706 0))(
  ( (array!50707 (arr!24377 (Array (_ BitVec 32) ValueCell!8208)) (size!24818 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50706)

(assert (=> mapNonEmpty!27551 (= (arr!24377 _values!688) (store mapRest!27551 mapKey!27551 mapValue!27551))))

(declare-fun b!873867 () Bool)

(declare-fun res!593956 () Bool)

(assert (=> b!873867 (=> (not res!593956) (not e!486628))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50704 (_ BitVec 32)) Bool)

(assert (=> b!873867 (= res!593956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873868 () Bool)

(assert (=> b!873868 (= e!486628 false)))

(declare-fun v!557 () V!28107)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11486 0))(
  ( (tuple2!11487 (_1!5753 (_ BitVec 64)) (_2!5753 V!28107)) )
))
(declare-datatypes ((List!17375 0))(
  ( (Nil!17372) (Cons!17371 (h!18502 tuple2!11486) (t!24424 List!17375)) )
))
(declare-datatypes ((ListLongMap!10269 0))(
  ( (ListLongMap!10270 (toList!5150 List!17375)) )
))
(declare-fun lt!395812 () ListLongMap!10269)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28107)

(declare-fun zeroValue!654 () V!28107)

(declare-fun getCurrentListMapNoExtraKeys!3114 (array!50704 array!50706 (_ BitVec 32) (_ BitVec 32) V!28107 V!28107 (_ BitVec 32) Int) ListLongMap!10269)

(assert (=> b!873868 (= lt!395812 (getCurrentListMapNoExtraKeys!3114 _keys!868 (array!50707 (store (arr!24377 _values!688) i!612 (ValueCellFull!8208 v!557)) (size!24818 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395811 () ListLongMap!10269)

(assert (=> b!873868 (= lt!395811 (getCurrentListMapNoExtraKeys!3114 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873869 () Bool)

(declare-fun e!486626 () Bool)

(declare-fun tp_is_empty!17295 () Bool)

(assert (=> b!873869 (= e!486626 tp_is_empty!17295)))

(declare-fun b!873870 () Bool)

(declare-fun res!593954 () Bool)

(assert (=> b!873870 (=> (not res!593954) (not e!486628))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873870 (= res!593954 (validKeyInArray!0 k0!854))))

(declare-fun res!593953 () Bool)

(assert (=> start!74316 (=> (not res!593953) (not e!486628))))

(assert (=> start!74316 (= res!593953 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24817 _keys!868))))))

(assert (=> start!74316 e!486628))

(assert (=> start!74316 tp_is_empty!17295))

(assert (=> start!74316 true))

(assert (=> start!74316 tp!52829))

(declare-fun array_inv!19208 (array!50704) Bool)

(assert (=> start!74316 (array_inv!19208 _keys!868)))

(declare-fun e!486627 () Bool)

(declare-fun array_inv!19209 (array!50706) Bool)

(assert (=> start!74316 (and (array_inv!19209 _values!688) e!486627)))

(declare-fun b!873871 () Bool)

(declare-fun res!593958 () Bool)

(assert (=> b!873871 (=> (not res!593958) (not e!486628))))

(assert (=> b!873871 (= res!593958 (and (= (size!24818 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24817 _keys!868) (size!24818 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873872 () Bool)

(assert (=> b!873872 (= e!486624 tp_is_empty!17295)))

(declare-fun b!873873 () Bool)

(declare-fun res!593957 () Bool)

(assert (=> b!873873 (=> (not res!593957) (not e!486628))))

(assert (=> b!873873 (= res!593957 (and (= (select (arr!24376 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27551 () Bool)

(assert (=> mapIsEmpty!27551 mapRes!27551))

(declare-fun b!873874 () Bool)

(declare-fun res!593952 () Bool)

(assert (=> b!873874 (=> (not res!593952) (not e!486628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873874 (= res!593952 (validMask!0 mask!1196))))

(declare-fun b!873875 () Bool)

(assert (=> b!873875 (= e!486627 (and e!486626 mapRes!27551))))

(declare-fun condMapEmpty!27551 () Bool)

(declare-fun mapDefault!27551 () ValueCell!8208)

(assert (=> b!873875 (= condMapEmpty!27551 (= (arr!24377 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8208)) mapDefault!27551)))))

(declare-fun b!873876 () Bool)

(declare-fun res!593955 () Bool)

(assert (=> b!873876 (=> (not res!593955) (not e!486628))))

(assert (=> b!873876 (= res!593955 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24817 _keys!868))))))

(assert (= (and start!74316 res!593953) b!873874))

(assert (= (and b!873874 res!593952) b!873871))

(assert (= (and b!873871 res!593958) b!873867))

(assert (= (and b!873867 res!593956) b!873866))

(assert (= (and b!873866 res!593959) b!873876))

(assert (= (and b!873876 res!593955) b!873870))

(assert (= (and b!873870 res!593954) b!873873))

(assert (= (and b!873873 res!593957) b!873868))

(assert (= (and b!873875 condMapEmpty!27551) mapIsEmpty!27551))

(assert (= (and b!873875 (not condMapEmpty!27551)) mapNonEmpty!27551))

(get-info :version)

(assert (= (and mapNonEmpty!27551 ((_ is ValueCellFull!8208) mapValue!27551)) b!873872))

(assert (= (and b!873875 ((_ is ValueCellFull!8208) mapDefault!27551)) b!873869))

(assert (= start!74316 b!873875))

(declare-fun m!814279 () Bool)

(assert (=> b!873866 m!814279))

(declare-fun m!814281 () Bool)

(assert (=> b!873874 m!814281))

(declare-fun m!814283 () Bool)

(assert (=> mapNonEmpty!27551 m!814283))

(declare-fun m!814285 () Bool)

(assert (=> b!873867 m!814285))

(declare-fun m!814287 () Bool)

(assert (=> b!873873 m!814287))

(declare-fun m!814289 () Bool)

(assert (=> start!74316 m!814289))

(declare-fun m!814291 () Bool)

(assert (=> start!74316 m!814291))

(declare-fun m!814293 () Bool)

(assert (=> b!873868 m!814293))

(declare-fun m!814295 () Bool)

(assert (=> b!873868 m!814295))

(declare-fun m!814297 () Bool)

(assert (=> b!873868 m!814297))

(declare-fun m!814299 () Bool)

(assert (=> b!873870 m!814299))

(check-sat (not b!873867) (not b!873868) (not b_next!15051) (not start!74316) b_and!24845 (not b!873866) (not b!873874) (not mapNonEmpty!27551) tp_is_empty!17295 (not b!873870))
(check-sat b_and!24845 (not b_next!15051))
