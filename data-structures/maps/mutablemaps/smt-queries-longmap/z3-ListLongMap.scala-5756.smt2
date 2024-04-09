; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74394 () Bool)

(assert start!74394)

(declare-fun b_free!15129 () Bool)

(declare-fun b_next!15129 () Bool)

(assert (=> start!74394 (= b_free!15129 (not b_next!15129))))

(declare-fun tp!53062 () Bool)

(declare-fun b_and!24923 () Bool)

(assert (=> start!74394 (= tp!53062 b_and!24923)))

(declare-datatypes ((V!28211 0))(
  ( (V!28212 (val!8734 Int)) )
))
(declare-datatypes ((tuple2!11546 0))(
  ( (tuple2!11547 (_1!5783 (_ BitVec 64)) (_2!5783 V!28211)) )
))
(declare-datatypes ((List!17433 0))(
  ( (Nil!17430) (Cons!17429 (h!18560 tuple2!11546) (t!24482 List!17433)) )
))
(declare-datatypes ((ListLongMap!10329 0))(
  ( (ListLongMap!10330 (toList!5180 List!17433)) )
))
(declare-fun call!38613 () ListLongMap!10329)

(declare-fun v!557 () V!28211)

(declare-fun b!875272 () Bool)

(declare-fun e!487298 () Bool)

(declare-fun call!38612 () ListLongMap!10329)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2423 (ListLongMap!10329 tuple2!11546) ListLongMap!10329)

(assert (=> b!875272 (= e!487298 (= call!38613 (+!2423 call!38612 (tuple2!11547 k0!854 v!557))))))

(declare-fun b!875273 () Bool)

(declare-fun e!487297 () Bool)

(declare-fun tp_is_empty!17373 () Bool)

(assert (=> b!875273 (= e!487297 tp_is_empty!17373)))

(declare-fun mapIsEmpty!27668 () Bool)

(declare-fun mapRes!27668 () Bool)

(assert (=> mapIsEmpty!27668 mapRes!27668))

(declare-fun b!875274 () Bool)

(declare-fun e!487300 () Bool)

(assert (=> b!875274 (= e!487300 (and e!487297 mapRes!27668))))

(declare-fun condMapEmpty!27668 () Bool)

(declare-datatypes ((ValueCell!8247 0))(
  ( (ValueCellFull!8247 (v!11159 V!28211)) (EmptyCell!8247) )
))
(declare-datatypes ((array!50856 0))(
  ( (array!50857 (arr!24452 (Array (_ BitVec 32) ValueCell!8247)) (size!24893 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50856)

(declare-fun mapDefault!27668 () ValueCell!8247)

(assert (=> b!875274 (= condMapEmpty!27668 (= (arr!24452 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8247)) mapDefault!27668)))))

(declare-fun b!875275 () Bool)

(declare-fun res!594945 () Bool)

(declare-fun e!487301 () Bool)

(assert (=> b!875275 (=> (not res!594945) (not e!487301))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875275 (= res!594945 (validMask!0 mask!1196))))

(declare-fun b!875276 () Bool)

(declare-fun e!487296 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50858 0))(
  ( (array!50859 (arr!24453 (Array (_ BitVec 32) (_ BitVec 64))) (size!24894 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50858)

(assert (=> b!875276 (= e!487296 (bvslt from!1053 (size!24894 _keys!868)))))

(declare-fun lt!396116 () ListLongMap!10329)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!396118 () array!50856)

(declare-fun minValue!654 () V!28211)

(declare-fun zeroValue!654 () V!28211)

(declare-fun getCurrentListMapNoExtraKeys!3143 (array!50858 array!50856 (_ BitVec 32) (_ BitVec 32) V!28211 V!28211 (_ BitVec 32) Int) ListLongMap!10329)

(assert (=> b!875276 (= lt!396116 (getCurrentListMapNoExtraKeys!3143 _keys!868 lt!396118 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875277 () Bool)

(assert (=> b!875277 (= e!487298 (= call!38613 call!38612))))

(declare-fun b!875278 () Bool)

(declare-fun res!594948 () Bool)

(assert (=> b!875278 (=> (not res!594948) (not e!487301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50858 (_ BitVec 32)) Bool)

(assert (=> b!875278 (= res!594948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38609 () Bool)

(assert (=> bm!38609 (= call!38612 (getCurrentListMapNoExtraKeys!3143 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875279 () Bool)

(declare-fun e!487303 () Bool)

(assert (=> b!875279 (= e!487303 tp_is_empty!17373)))

(declare-fun bm!38610 () Bool)

(assert (=> bm!38610 (= call!38613 (getCurrentListMapNoExtraKeys!3143 _keys!868 lt!396118 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875280 () Bool)

(declare-fun e!487302 () Bool)

(assert (=> b!875280 (= e!487302 (not e!487296))))

(declare-fun res!594944 () Bool)

(assert (=> b!875280 (=> res!594944 e!487296)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875280 (= res!594944 (not (validKeyInArray!0 (select (arr!24453 _keys!868) from!1053))))))

(assert (=> b!875280 e!487298))

(declare-fun c!92425 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875280 (= c!92425 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29902 0))(
  ( (Unit!29903) )
))
(declare-fun lt!396117 () Unit!29902)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!655 (array!50858 array!50856 (_ BitVec 32) (_ BitVec 32) V!28211 V!28211 (_ BitVec 32) (_ BitVec 64) V!28211 (_ BitVec 32) Int) Unit!29902)

(assert (=> b!875280 (= lt!396117 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!655 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875281 () Bool)

(declare-fun res!594950 () Bool)

(assert (=> b!875281 (=> (not res!594950) (not e!487301))))

(assert (=> b!875281 (= res!594950 (and (= (size!24893 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24894 _keys!868) (size!24893 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875282 () Bool)

(declare-fun res!594946 () Bool)

(assert (=> b!875282 (=> (not res!594946) (not e!487301))))

(assert (=> b!875282 (= res!594946 (and (= (select (arr!24453 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!594943 () Bool)

(assert (=> start!74394 (=> (not res!594943) (not e!487301))))

(assert (=> start!74394 (= res!594943 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24894 _keys!868))))))

(assert (=> start!74394 e!487301))

(assert (=> start!74394 tp_is_empty!17373))

(assert (=> start!74394 true))

(assert (=> start!74394 tp!53062))

(declare-fun array_inv!19262 (array!50858) Bool)

(assert (=> start!74394 (array_inv!19262 _keys!868)))

(declare-fun array_inv!19263 (array!50856) Bool)

(assert (=> start!74394 (and (array_inv!19263 _values!688) e!487300)))

(declare-fun b!875283 () Bool)

(declare-fun res!594952 () Bool)

(assert (=> b!875283 (=> (not res!594952) (not e!487301))))

(assert (=> b!875283 (= res!594952 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24894 _keys!868))))))

(declare-fun b!875284 () Bool)

(assert (=> b!875284 (= e!487301 e!487302)))

(declare-fun res!594949 () Bool)

(assert (=> b!875284 (=> (not res!594949) (not e!487302))))

(assert (=> b!875284 (= res!594949 (= from!1053 i!612))))

(declare-fun lt!396115 () ListLongMap!10329)

(assert (=> b!875284 (= lt!396115 (getCurrentListMapNoExtraKeys!3143 _keys!868 lt!396118 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875284 (= lt!396118 (array!50857 (store (arr!24452 _values!688) i!612 (ValueCellFull!8247 v!557)) (size!24893 _values!688)))))

(declare-fun lt!396114 () ListLongMap!10329)

(assert (=> b!875284 (= lt!396114 (getCurrentListMapNoExtraKeys!3143 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875285 () Bool)

(declare-fun res!594947 () Bool)

(assert (=> b!875285 (=> (not res!594947) (not e!487301))))

(declare-datatypes ((List!17434 0))(
  ( (Nil!17431) (Cons!17430 (h!18561 (_ BitVec 64)) (t!24483 List!17434)) )
))
(declare-fun arrayNoDuplicates!0 (array!50858 (_ BitVec 32) List!17434) Bool)

(assert (=> b!875285 (= res!594947 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17431))))

(declare-fun b!875286 () Bool)

(declare-fun res!594951 () Bool)

(assert (=> b!875286 (=> (not res!594951) (not e!487301))))

(assert (=> b!875286 (= res!594951 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27668 () Bool)

(declare-fun tp!53063 () Bool)

(assert (=> mapNonEmpty!27668 (= mapRes!27668 (and tp!53063 e!487303))))

(declare-fun mapKey!27668 () (_ BitVec 32))

(declare-fun mapValue!27668 () ValueCell!8247)

(declare-fun mapRest!27668 () (Array (_ BitVec 32) ValueCell!8247))

(assert (=> mapNonEmpty!27668 (= (arr!24452 _values!688) (store mapRest!27668 mapKey!27668 mapValue!27668))))

(assert (= (and start!74394 res!594943) b!875275))

(assert (= (and b!875275 res!594945) b!875281))

(assert (= (and b!875281 res!594950) b!875278))

(assert (= (and b!875278 res!594948) b!875285))

(assert (= (and b!875285 res!594947) b!875283))

(assert (= (and b!875283 res!594952) b!875286))

(assert (= (and b!875286 res!594951) b!875282))

(assert (= (and b!875282 res!594946) b!875284))

(assert (= (and b!875284 res!594949) b!875280))

(assert (= (and b!875280 c!92425) b!875272))

(assert (= (and b!875280 (not c!92425)) b!875277))

(assert (= (or b!875272 b!875277) bm!38610))

(assert (= (or b!875272 b!875277) bm!38609))

(assert (= (and b!875280 (not res!594944)) b!875276))

(assert (= (and b!875274 condMapEmpty!27668) mapIsEmpty!27668))

(assert (= (and b!875274 (not condMapEmpty!27668)) mapNonEmpty!27668))

(get-info :version)

(assert (= (and mapNonEmpty!27668 ((_ is ValueCellFull!8247) mapValue!27668)) b!875279))

(assert (= (and b!875274 ((_ is ValueCellFull!8247) mapDefault!27668)) b!875273))

(assert (= start!74394 b!875274))

(declare-fun m!815245 () Bool)

(assert (=> b!875278 m!815245))

(declare-fun m!815247 () Bool)

(assert (=> b!875276 m!815247))

(declare-fun m!815249 () Bool)

(assert (=> b!875285 m!815249))

(declare-fun m!815251 () Bool)

(assert (=> mapNonEmpty!27668 m!815251))

(declare-fun m!815253 () Bool)

(assert (=> b!875272 m!815253))

(declare-fun m!815255 () Bool)

(assert (=> b!875284 m!815255))

(declare-fun m!815257 () Bool)

(assert (=> b!875284 m!815257))

(declare-fun m!815259 () Bool)

(assert (=> b!875284 m!815259))

(assert (=> bm!38610 m!815247))

(declare-fun m!815261 () Bool)

(assert (=> b!875282 m!815261))

(declare-fun m!815263 () Bool)

(assert (=> b!875280 m!815263))

(assert (=> b!875280 m!815263))

(declare-fun m!815265 () Bool)

(assert (=> b!875280 m!815265))

(declare-fun m!815267 () Bool)

(assert (=> b!875280 m!815267))

(declare-fun m!815269 () Bool)

(assert (=> b!875275 m!815269))

(declare-fun m!815271 () Bool)

(assert (=> start!74394 m!815271))

(declare-fun m!815273 () Bool)

(assert (=> start!74394 m!815273))

(declare-fun m!815275 () Bool)

(assert (=> b!875286 m!815275))

(declare-fun m!815277 () Bool)

(assert (=> bm!38609 m!815277))

(check-sat (not b!875275) tp_is_empty!17373 (not bm!38610) (not b!875284) (not start!74394) (not b_next!15129) (not b!875286) (not b!875272) (not b!875278) (not b!875280) (not b!875285) (not bm!38609) (not b!875276) (not mapNonEmpty!27668) b_and!24923)
(check-sat b_and!24923 (not b_next!15129))
