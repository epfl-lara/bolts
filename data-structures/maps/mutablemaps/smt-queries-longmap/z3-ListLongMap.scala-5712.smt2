; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74086 () Bool)

(assert start!74086)

(declare-fun b_free!14973 () Bool)

(declare-fun b_next!14973 () Bool)

(assert (=> start!74086 (= b_free!14973 (not b_next!14973))))

(declare-fun tp!52423 () Bool)

(declare-fun b_and!24743 () Bool)

(assert (=> start!74086 (= tp!52423 b_and!24743)))

(declare-fun b!871017 () Bool)

(declare-fun res!592165 () Bool)

(declare-fun e!485004 () Bool)

(assert (=> b!871017 (=> (not res!592165) (not e!485004))))

(declare-datatypes ((array!50346 0))(
  ( (array!50347 (arr!24200 (Array (_ BitVec 32) (_ BitVec 64))) (size!24641 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50346)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50346 (_ BitVec 32)) Bool)

(assert (=> b!871017 (= res!592165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871018 () Bool)

(declare-fun res!592170 () Bool)

(assert (=> b!871018 (=> (not res!592170) (not e!485004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871018 (= res!592170 (validMask!0 mask!1196))))

(declare-fun b!871019 () Bool)

(declare-fun e!485005 () Bool)

(assert (=> b!871019 (= e!485005 (not true))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27859 0))(
  ( (V!27860 (val!8602 Int)) )
))
(declare-datatypes ((ValueCell!8115 0))(
  ( (ValueCellFull!8115 (v!11023 V!27859)) (EmptyCell!8115) )
))
(declare-datatypes ((array!50348 0))(
  ( (array!50349 (arr!24201 (Array (_ BitVec 32) ValueCell!8115)) (size!24642 (_ BitVec 32))) )
))
(declare-fun lt!395324 () array!50348)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun _values!688 () array!50348)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27859)

(declare-fun zeroValue!654 () V!27859)

(declare-fun v!557 () V!27859)

(declare-datatypes ((tuple2!11430 0))(
  ( (tuple2!11431 (_1!5725 (_ BitVec 64)) (_2!5725 V!27859)) )
))
(declare-datatypes ((List!17284 0))(
  ( (Nil!17281) (Cons!17280 (h!18411 tuple2!11430) (t!24329 List!17284)) )
))
(declare-datatypes ((ListLongMap!10213 0))(
  ( (ListLongMap!10214 (toList!5122 List!17284)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3086 (array!50346 array!50348 (_ BitVec 32) (_ BitVec 32) V!27859 V!27859 (_ BitVec 32) Int) ListLongMap!10213)

(declare-fun +!2402 (ListLongMap!10213 tuple2!11430) ListLongMap!10213)

(assert (=> b!871019 (= (getCurrentListMapNoExtraKeys!3086 _keys!868 lt!395324 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2402 (getCurrentListMapNoExtraKeys!3086 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11431 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29854 0))(
  ( (Unit!29855) )
))
(declare-fun lt!395325 () Unit!29854)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!633 (array!50346 array!50348 (_ BitVec 32) (_ BitVec 32) V!27859 V!27859 (_ BitVec 32) (_ BitVec 64) V!27859 (_ BitVec 32) Int) Unit!29854)

(assert (=> b!871019 (= lt!395325 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!633 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871020 () Bool)

(declare-fun e!485003 () Bool)

(declare-fun tp_is_empty!17109 () Bool)

(assert (=> b!871020 (= e!485003 tp_is_empty!17109)))

(declare-fun b!871021 () Bool)

(declare-fun res!592167 () Bool)

(assert (=> b!871021 (=> (not res!592167) (not e!485004))))

(assert (=> b!871021 (= res!592167 (and (= (size!24642 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24641 _keys!868) (size!24642 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871023 () Bool)

(assert (=> b!871023 (= e!485004 e!485005)))

(declare-fun res!592162 () Bool)

(assert (=> b!871023 (=> (not res!592162) (not e!485005))))

(assert (=> b!871023 (= res!592162 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395323 () ListLongMap!10213)

(assert (=> b!871023 (= lt!395323 (getCurrentListMapNoExtraKeys!3086 _keys!868 lt!395324 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!871023 (= lt!395324 (array!50349 (store (arr!24201 _values!688) i!612 (ValueCellFull!8115 v!557)) (size!24642 _values!688)))))

(declare-fun lt!395322 () ListLongMap!10213)

(assert (=> b!871023 (= lt!395322 (getCurrentListMapNoExtraKeys!3086 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871024 () Bool)

(declare-fun e!485002 () Bool)

(assert (=> b!871024 (= e!485002 tp_is_empty!17109)))

(declare-fun b!871025 () Bool)

(declare-fun res!592166 () Bool)

(assert (=> b!871025 (=> (not res!592166) (not e!485004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871025 (= res!592166 (validKeyInArray!0 k0!854))))

(declare-fun b!871026 () Bool)

(declare-fun e!485007 () Bool)

(declare-fun mapRes!27263 () Bool)

(assert (=> b!871026 (= e!485007 (and e!485003 mapRes!27263))))

(declare-fun condMapEmpty!27263 () Bool)

(declare-fun mapDefault!27263 () ValueCell!8115)

(assert (=> b!871026 (= condMapEmpty!27263 (= (arr!24201 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8115)) mapDefault!27263)))))

(declare-fun mapIsEmpty!27263 () Bool)

(assert (=> mapIsEmpty!27263 mapRes!27263))

(declare-fun b!871027 () Bool)

(declare-fun res!592168 () Bool)

(assert (=> b!871027 (=> (not res!592168) (not e!485004))))

(assert (=> b!871027 (= res!592168 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24641 _keys!868))))))

(declare-fun b!871022 () Bool)

(declare-fun res!592163 () Bool)

(assert (=> b!871022 (=> (not res!592163) (not e!485004))))

(declare-datatypes ((List!17285 0))(
  ( (Nil!17282) (Cons!17281 (h!18412 (_ BitVec 64)) (t!24330 List!17285)) )
))
(declare-fun arrayNoDuplicates!0 (array!50346 (_ BitVec 32) List!17285) Bool)

(assert (=> b!871022 (= res!592163 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17282))))

(declare-fun res!592169 () Bool)

(assert (=> start!74086 (=> (not res!592169) (not e!485004))))

(assert (=> start!74086 (= res!592169 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24641 _keys!868))))))

(assert (=> start!74086 e!485004))

(assert (=> start!74086 tp_is_empty!17109))

(assert (=> start!74086 true))

(assert (=> start!74086 tp!52423))

(declare-fun array_inv!19084 (array!50346) Bool)

(assert (=> start!74086 (array_inv!19084 _keys!868)))

(declare-fun array_inv!19085 (array!50348) Bool)

(assert (=> start!74086 (and (array_inv!19085 _values!688) e!485007)))

(declare-fun mapNonEmpty!27263 () Bool)

(declare-fun tp!52424 () Bool)

(assert (=> mapNonEmpty!27263 (= mapRes!27263 (and tp!52424 e!485002))))

(declare-fun mapValue!27263 () ValueCell!8115)

(declare-fun mapKey!27263 () (_ BitVec 32))

(declare-fun mapRest!27263 () (Array (_ BitVec 32) ValueCell!8115))

(assert (=> mapNonEmpty!27263 (= (arr!24201 _values!688) (store mapRest!27263 mapKey!27263 mapValue!27263))))

(declare-fun b!871028 () Bool)

(declare-fun res!592164 () Bool)

(assert (=> b!871028 (=> (not res!592164) (not e!485004))))

(assert (=> b!871028 (= res!592164 (and (= (select (arr!24200 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!74086 res!592169) b!871018))

(assert (= (and b!871018 res!592170) b!871021))

(assert (= (and b!871021 res!592167) b!871017))

(assert (= (and b!871017 res!592165) b!871022))

(assert (= (and b!871022 res!592163) b!871027))

(assert (= (and b!871027 res!592168) b!871025))

(assert (= (and b!871025 res!592166) b!871028))

(assert (= (and b!871028 res!592164) b!871023))

(assert (= (and b!871023 res!592162) b!871019))

(assert (= (and b!871026 condMapEmpty!27263) mapIsEmpty!27263))

(assert (= (and b!871026 (not condMapEmpty!27263)) mapNonEmpty!27263))

(get-info :version)

(assert (= (and mapNonEmpty!27263 ((_ is ValueCellFull!8115) mapValue!27263)) b!871024))

(assert (= (and b!871026 ((_ is ValueCellFull!8115) mapDefault!27263)) b!871020))

(assert (= start!74086 b!871026))

(declare-fun m!812371 () Bool)

(assert (=> b!871019 m!812371))

(declare-fun m!812373 () Bool)

(assert (=> b!871019 m!812373))

(assert (=> b!871019 m!812373))

(declare-fun m!812375 () Bool)

(assert (=> b!871019 m!812375))

(declare-fun m!812377 () Bool)

(assert (=> b!871019 m!812377))

(declare-fun m!812379 () Bool)

(assert (=> b!871018 m!812379))

(declare-fun m!812381 () Bool)

(assert (=> start!74086 m!812381))

(declare-fun m!812383 () Bool)

(assert (=> start!74086 m!812383))

(declare-fun m!812385 () Bool)

(assert (=> b!871017 m!812385))

(declare-fun m!812387 () Bool)

(assert (=> mapNonEmpty!27263 m!812387))

(declare-fun m!812389 () Bool)

(assert (=> b!871028 m!812389))

(declare-fun m!812391 () Bool)

(assert (=> b!871023 m!812391))

(declare-fun m!812393 () Bool)

(assert (=> b!871023 m!812393))

(declare-fun m!812395 () Bool)

(assert (=> b!871023 m!812395))

(declare-fun m!812397 () Bool)

(assert (=> b!871022 m!812397))

(declare-fun m!812399 () Bool)

(assert (=> b!871025 m!812399))

(check-sat (not b!871019) (not start!74086) (not mapNonEmpty!27263) tp_is_empty!17109 b_and!24743 (not b!871023) (not b!871017) (not b!871025) (not b_next!14973) (not b!871018) (not b!871022))
(check-sat b_and!24743 (not b_next!14973))
