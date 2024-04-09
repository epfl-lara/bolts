; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74038 () Bool)

(assert start!74038)

(declare-fun b_free!14925 () Bool)

(declare-fun b_next!14925 () Bool)

(assert (=> start!74038 (= b_free!14925 (not b_next!14925))))

(declare-fun tp!52279 () Bool)

(declare-fun b_and!24695 () Bool)

(assert (=> start!74038 (= tp!52279 b_and!24695)))

(declare-fun mapIsEmpty!27191 () Bool)

(declare-fun mapRes!27191 () Bool)

(assert (=> mapIsEmpty!27191 mapRes!27191))

(declare-fun b!870153 () Bool)

(declare-fun e!484570 () Bool)

(declare-fun tp_is_empty!17061 () Bool)

(assert (=> b!870153 (= e!484570 tp_is_empty!17061)))

(declare-fun b!870154 () Bool)

(declare-fun res!591516 () Bool)

(declare-fun e!484571 () Bool)

(assert (=> b!870154 (=> (not res!591516) (not e!484571))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50254 0))(
  ( (array!50255 (arr!24154 (Array (_ BitVec 32) (_ BitVec 64))) (size!24595 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50254)

(assert (=> b!870154 (= res!591516 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24595 _keys!868))))))

(declare-fun b!870155 () Bool)

(declare-fun res!591514 () Bool)

(assert (=> b!870155 (=> (not res!591514) (not e!484571))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870155 (= res!591514 (validMask!0 mask!1196))))

(declare-fun b!870156 () Bool)

(declare-fun res!591521 () Bool)

(assert (=> b!870156 (=> (not res!591521) (not e!484571))))

(declare-datatypes ((List!17252 0))(
  ( (Nil!17249) (Cons!17248 (h!18379 (_ BitVec 64)) (t!24297 List!17252)) )
))
(declare-fun arrayNoDuplicates!0 (array!50254 (_ BitVec 32) List!17252) Bool)

(assert (=> b!870156 (= res!591521 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17249))))

(declare-fun b!870157 () Bool)

(declare-fun res!591522 () Bool)

(assert (=> b!870157 (=> (not res!591522) (not e!484571))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27795 0))(
  ( (V!27796 (val!8578 Int)) )
))
(declare-datatypes ((ValueCell!8091 0))(
  ( (ValueCellFull!8091 (v!10999 V!27795)) (EmptyCell!8091) )
))
(declare-datatypes ((array!50256 0))(
  ( (array!50257 (arr!24155 (Array (_ BitVec 32) ValueCell!8091)) (size!24596 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50256)

(assert (=> b!870157 (= res!591522 (and (= (size!24596 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24595 _keys!868) (size!24596 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870158 () Bool)

(declare-fun res!591520 () Bool)

(assert (=> b!870158 (=> (not res!591520) (not e!484571))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870158 (= res!591520 (and (= (select (arr!24154 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870159 () Bool)

(declare-fun e!484574 () Bool)

(assert (=> b!870159 (= e!484574 (not true))))

(declare-fun lt!395034 () array!50256)

(declare-fun v!557 () V!27795)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27795)

(declare-fun zeroValue!654 () V!27795)

(declare-datatypes ((tuple2!11396 0))(
  ( (tuple2!11397 (_1!5708 (_ BitVec 64)) (_2!5708 V!27795)) )
))
(declare-datatypes ((List!17253 0))(
  ( (Nil!17250) (Cons!17249 (h!18380 tuple2!11396) (t!24298 List!17253)) )
))
(declare-datatypes ((ListLongMap!10179 0))(
  ( (ListLongMap!10180 (toList!5105 List!17253)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3069 (array!50254 array!50256 (_ BitVec 32) (_ BitVec 32) V!27795 V!27795 (_ BitVec 32) Int) ListLongMap!10179)

(declare-fun +!2387 (ListLongMap!10179 tuple2!11396) ListLongMap!10179)

(assert (=> b!870159 (= (getCurrentListMapNoExtraKeys!3069 _keys!868 lt!395034 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2387 (getCurrentListMapNoExtraKeys!3069 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11397 k0!854 v!557)))))

(declare-datatypes ((Unit!29824 0))(
  ( (Unit!29825) )
))
(declare-fun lt!395037 () Unit!29824)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!618 (array!50254 array!50256 (_ BitVec 32) (_ BitVec 32) V!27795 V!27795 (_ BitVec 32) (_ BitVec 64) V!27795 (_ BitVec 32) Int) Unit!29824)

(assert (=> b!870159 (= lt!395037 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!618 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870160 () Bool)

(assert (=> b!870160 (= e!484571 e!484574)))

(declare-fun res!591517 () Bool)

(assert (=> b!870160 (=> (not res!591517) (not e!484574))))

(assert (=> b!870160 (= res!591517 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395035 () ListLongMap!10179)

(assert (=> b!870160 (= lt!395035 (getCurrentListMapNoExtraKeys!3069 _keys!868 lt!395034 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870160 (= lt!395034 (array!50257 (store (arr!24155 _values!688) i!612 (ValueCellFull!8091 v!557)) (size!24596 _values!688)))))

(declare-fun lt!395036 () ListLongMap!10179)

(assert (=> b!870160 (= lt!395036 (getCurrentListMapNoExtraKeys!3069 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870161 () Bool)

(declare-fun res!591518 () Bool)

(assert (=> b!870161 (=> (not res!591518) (not e!484571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50254 (_ BitVec 32)) Bool)

(assert (=> b!870161 (= res!591518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870162 () Bool)

(declare-fun e!484573 () Bool)

(assert (=> b!870162 (= e!484573 tp_is_empty!17061)))

(declare-fun res!591515 () Bool)

(assert (=> start!74038 (=> (not res!591515) (not e!484571))))

(assert (=> start!74038 (= res!591515 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24595 _keys!868))))))

(assert (=> start!74038 e!484571))

(assert (=> start!74038 tp_is_empty!17061))

(assert (=> start!74038 true))

(assert (=> start!74038 tp!52279))

(declare-fun array_inv!19048 (array!50254) Bool)

(assert (=> start!74038 (array_inv!19048 _keys!868)))

(declare-fun e!484575 () Bool)

(declare-fun array_inv!19049 (array!50256) Bool)

(assert (=> start!74038 (and (array_inv!19049 _values!688) e!484575)))

(declare-fun mapNonEmpty!27191 () Bool)

(declare-fun tp!52280 () Bool)

(assert (=> mapNonEmpty!27191 (= mapRes!27191 (and tp!52280 e!484573))))

(declare-fun mapKey!27191 () (_ BitVec 32))

(declare-fun mapRest!27191 () (Array (_ BitVec 32) ValueCell!8091))

(declare-fun mapValue!27191 () ValueCell!8091)

(assert (=> mapNonEmpty!27191 (= (arr!24155 _values!688) (store mapRest!27191 mapKey!27191 mapValue!27191))))

(declare-fun b!870163 () Bool)

(declare-fun res!591519 () Bool)

(assert (=> b!870163 (=> (not res!591519) (not e!484571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870163 (= res!591519 (validKeyInArray!0 k0!854))))

(declare-fun b!870164 () Bool)

(assert (=> b!870164 (= e!484575 (and e!484570 mapRes!27191))))

(declare-fun condMapEmpty!27191 () Bool)

(declare-fun mapDefault!27191 () ValueCell!8091)

(assert (=> b!870164 (= condMapEmpty!27191 (= (arr!24155 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8091)) mapDefault!27191)))))

(assert (= (and start!74038 res!591515) b!870155))

(assert (= (and b!870155 res!591514) b!870157))

(assert (= (and b!870157 res!591522) b!870161))

(assert (= (and b!870161 res!591518) b!870156))

(assert (= (and b!870156 res!591521) b!870154))

(assert (= (and b!870154 res!591516) b!870163))

(assert (= (and b!870163 res!591519) b!870158))

(assert (= (and b!870158 res!591520) b!870160))

(assert (= (and b!870160 res!591517) b!870159))

(assert (= (and b!870164 condMapEmpty!27191) mapIsEmpty!27191))

(assert (= (and b!870164 (not condMapEmpty!27191)) mapNonEmpty!27191))

(get-info :version)

(assert (= (and mapNonEmpty!27191 ((_ is ValueCellFull!8091) mapValue!27191)) b!870162))

(assert (= (and b!870164 ((_ is ValueCellFull!8091) mapDefault!27191)) b!870153))

(assert (= start!74038 b!870164))

(declare-fun m!811651 () Bool)

(assert (=> b!870160 m!811651))

(declare-fun m!811653 () Bool)

(assert (=> b!870160 m!811653))

(declare-fun m!811655 () Bool)

(assert (=> b!870160 m!811655))

(declare-fun m!811657 () Bool)

(assert (=> b!870163 m!811657))

(declare-fun m!811659 () Bool)

(assert (=> start!74038 m!811659))

(declare-fun m!811661 () Bool)

(assert (=> start!74038 m!811661))

(declare-fun m!811663 () Bool)

(assert (=> b!870156 m!811663))

(declare-fun m!811665 () Bool)

(assert (=> b!870161 m!811665))

(declare-fun m!811667 () Bool)

(assert (=> b!870158 m!811667))

(declare-fun m!811669 () Bool)

(assert (=> b!870159 m!811669))

(declare-fun m!811671 () Bool)

(assert (=> b!870159 m!811671))

(assert (=> b!870159 m!811671))

(declare-fun m!811673 () Bool)

(assert (=> b!870159 m!811673))

(declare-fun m!811675 () Bool)

(assert (=> b!870159 m!811675))

(declare-fun m!811677 () Bool)

(assert (=> mapNonEmpty!27191 m!811677))

(declare-fun m!811679 () Bool)

(assert (=> b!870155 m!811679))

(check-sat tp_is_empty!17061 (not b!870161) (not mapNonEmpty!27191) (not start!74038) (not b!870160) (not b!870163) (not b!870159) (not b_next!14925) (not b!870155) (not b!870156) b_and!24695)
(check-sat b_and!24695 (not b_next!14925))
