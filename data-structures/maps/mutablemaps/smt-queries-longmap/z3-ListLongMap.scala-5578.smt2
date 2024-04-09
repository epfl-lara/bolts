; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73282 () Bool)

(assert start!73282)

(declare-fun b_free!14169 () Bool)

(declare-fun b_next!14169 () Bool)

(assert (=> start!73282 (= b_free!14169 (not b_next!14169))))

(declare-fun tp!50011 () Bool)

(declare-fun b_and!23515 () Bool)

(assert (=> start!73282 (= tp!50011 b_and!23515)))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48790 0))(
  ( (array!48791 (arr!23422 (Array (_ BitVec 32) (_ BitVec 64))) (size!23863 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48790)

(declare-fun bm!38359 () Bool)

(declare-datatypes ((V!26787 0))(
  ( (V!26788 (val!8200 Int)) )
))
(declare-datatypes ((ValueCell!7713 0))(
  ( (ValueCellFull!7713 (v!10621 V!26787)) (EmptyCell!7713) )
))
(declare-datatypes ((array!48792 0))(
  ( (array!48793 (arr!23423 (Array (_ BitVec 32) ValueCell!7713)) (size!23864 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48792)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26787)

(declare-fun zeroValue!654 () V!26787)

(declare-datatypes ((tuple2!10794 0))(
  ( (tuple2!10795 (_1!5407 (_ BitVec 64)) (_2!5407 V!26787)) )
))
(declare-datatypes ((List!16669 0))(
  ( (Nil!16666) (Cons!16665 (h!17796 tuple2!10794) (t!23292 List!16669)) )
))
(declare-datatypes ((ListLongMap!9577 0))(
  ( (ListLongMap!9578 (toList!4804 List!16669)) )
))
(declare-fun call!38363 () ListLongMap!9577)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2786 (array!48790 array!48792 (_ BitVec 32) (_ BitVec 32) V!26787 V!26787 (_ BitVec 32) Int) ListLongMap!9577)

(assert (=> bm!38359 (= call!38363 (getCurrentListMapNoExtraKeys!2786 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853976 () Bool)

(declare-fun e!476243 () Bool)

(declare-fun tp_is_empty!16305 () Bool)

(assert (=> b!853976 (= e!476243 tp_is_empty!16305)))

(declare-fun b!853977 () Bool)

(declare-fun e!476244 () Bool)

(declare-fun e!476237 () Bool)

(assert (=> b!853977 (= e!476244 (not e!476237))))

(declare-fun res!580080 () Bool)

(assert (=> b!853977 (=> res!580080 e!476237)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853977 (= res!580080 (not (validKeyInArray!0 (select (arr!23422 _keys!868) from!1053))))))

(declare-fun e!476240 () Bool)

(assert (=> b!853977 e!476240))

(declare-fun c!91842 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853977 (= c!91842 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26787)

(declare-datatypes ((Unit!29126 0))(
  ( (Unit!29127) )
))
(declare-fun lt!385122 () Unit!29126)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!402 (array!48790 array!48792 (_ BitVec 32) (_ BitVec 32) V!26787 V!26787 (_ BitVec 32) (_ BitVec 64) V!26787 (_ BitVec 32) Int) Unit!29126)

(assert (=> b!853977 (= lt!385122 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!402 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853978 () Bool)

(declare-fun e!476238 () Bool)

(assert (=> b!853978 (= e!476238 tp_is_empty!16305)))

(declare-fun b!853979 () Bool)

(declare-fun res!580073 () Bool)

(declare-fun e!476242 () Bool)

(assert (=> b!853979 (=> (not res!580073) (not e!476242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48790 (_ BitVec 32)) Bool)

(assert (=> b!853979 (= res!580073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853980 () Bool)

(assert (=> b!853980 (= e!476242 e!476244)))

(declare-fun res!580077 () Bool)

(assert (=> b!853980 (=> (not res!580077) (not e!476244))))

(assert (=> b!853980 (= res!580077 (= from!1053 i!612))))

(declare-fun lt!385128 () ListLongMap!9577)

(declare-fun lt!385125 () array!48792)

(assert (=> b!853980 (= lt!385128 (getCurrentListMapNoExtraKeys!2786 _keys!868 lt!385125 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853980 (= lt!385125 (array!48793 (store (arr!23423 _values!688) i!612 (ValueCellFull!7713 v!557)) (size!23864 _values!688)))))

(declare-fun lt!385121 () ListLongMap!9577)

(assert (=> b!853980 (= lt!385121 (getCurrentListMapNoExtraKeys!2786 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853981 () Bool)

(assert (=> b!853981 (= e!476237 true)))

(declare-fun lt!385124 () ListLongMap!9577)

(declare-fun lt!385120 () V!26787)

(declare-fun lt!385127 () tuple2!10794)

(declare-fun +!2141 (ListLongMap!9577 tuple2!10794) ListLongMap!9577)

(assert (=> b!853981 (= (+!2141 lt!385124 lt!385127) (+!2141 (+!2141 lt!385124 (tuple2!10795 k0!854 lt!385120)) lt!385127))))

(declare-fun lt!385123 () V!26787)

(assert (=> b!853981 (= lt!385127 (tuple2!10795 k0!854 lt!385123))))

(declare-fun lt!385126 () Unit!29126)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!320 (ListLongMap!9577 (_ BitVec 64) V!26787 V!26787) Unit!29126)

(assert (=> b!853981 (= lt!385126 (addSameAsAddTwiceSameKeyDiffValues!320 lt!385124 k0!854 lt!385120 lt!385123))))

(declare-fun lt!385119 () V!26787)

(declare-fun get!12374 (ValueCell!7713 V!26787) V!26787)

(assert (=> b!853981 (= lt!385120 (get!12374 (select (arr!23423 _values!688) from!1053) lt!385119))))

(assert (=> b!853981 (= lt!385128 (+!2141 lt!385124 (tuple2!10795 (select (arr!23422 _keys!868) from!1053) lt!385123)))))

(assert (=> b!853981 (= lt!385123 (get!12374 (select (store (arr!23423 _values!688) i!612 (ValueCellFull!7713 v!557)) from!1053) lt!385119))))

(declare-fun dynLambda!1068 (Int (_ BitVec 64)) V!26787)

(assert (=> b!853981 (= lt!385119 (dynLambda!1068 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853981 (= lt!385124 (getCurrentListMapNoExtraKeys!2786 _keys!868 lt!385125 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853982 () Bool)

(declare-fun res!580076 () Bool)

(assert (=> b!853982 (=> (not res!580076) (not e!476242))))

(declare-datatypes ((List!16670 0))(
  ( (Nil!16667) (Cons!16666 (h!17797 (_ BitVec 64)) (t!23293 List!16670)) )
))
(declare-fun arrayNoDuplicates!0 (array!48790 (_ BitVec 32) List!16670) Bool)

(assert (=> b!853982 (= res!580076 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16667))))

(declare-fun mapIsEmpty!26057 () Bool)

(declare-fun mapRes!26057 () Bool)

(assert (=> mapIsEmpty!26057 mapRes!26057))

(declare-fun b!853983 () Bool)

(declare-fun res!580074 () Bool)

(assert (=> b!853983 (=> (not res!580074) (not e!476242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853983 (= res!580074 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26057 () Bool)

(declare-fun tp!50012 () Bool)

(assert (=> mapNonEmpty!26057 (= mapRes!26057 (and tp!50012 e!476238))))

(declare-fun mapKey!26057 () (_ BitVec 32))

(declare-fun mapValue!26057 () ValueCell!7713)

(declare-fun mapRest!26057 () (Array (_ BitVec 32) ValueCell!7713))

(assert (=> mapNonEmpty!26057 (= (arr!23423 _values!688) (store mapRest!26057 mapKey!26057 mapValue!26057))))

(declare-fun b!853984 () Bool)

(declare-fun res!580078 () Bool)

(assert (=> b!853984 (=> (not res!580078) (not e!476242))))

(assert (=> b!853984 (= res!580078 (validKeyInArray!0 k0!854))))

(declare-fun b!853985 () Bool)

(declare-fun res!580079 () Bool)

(assert (=> b!853985 (=> (not res!580079) (not e!476242))))

(assert (=> b!853985 (= res!580079 (and (= (select (arr!23422 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!580075 () Bool)

(assert (=> start!73282 (=> (not res!580075) (not e!476242))))

(assert (=> start!73282 (= res!580075 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23863 _keys!868))))))

(assert (=> start!73282 e!476242))

(assert (=> start!73282 tp_is_empty!16305))

(assert (=> start!73282 true))

(assert (=> start!73282 tp!50011))

(declare-fun array_inv!18546 (array!48790) Bool)

(assert (=> start!73282 (array_inv!18546 _keys!868)))

(declare-fun e!476241 () Bool)

(declare-fun array_inv!18547 (array!48792) Bool)

(assert (=> start!73282 (and (array_inv!18547 _values!688) e!476241)))

(declare-fun call!38362 () ListLongMap!9577)

(declare-fun b!853986 () Bool)

(assert (=> b!853986 (= e!476240 (= call!38362 (+!2141 call!38363 (tuple2!10795 k0!854 v!557))))))

(declare-fun b!853987 () Bool)

(assert (=> b!853987 (= e!476240 (= call!38362 call!38363))))

(declare-fun b!853988 () Bool)

(assert (=> b!853988 (= e!476241 (and e!476243 mapRes!26057))))

(declare-fun condMapEmpty!26057 () Bool)

(declare-fun mapDefault!26057 () ValueCell!7713)

(assert (=> b!853988 (= condMapEmpty!26057 (= (arr!23423 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7713)) mapDefault!26057)))))

(declare-fun bm!38360 () Bool)

(assert (=> bm!38360 (= call!38362 (getCurrentListMapNoExtraKeys!2786 _keys!868 lt!385125 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853989 () Bool)

(declare-fun res!580072 () Bool)

(assert (=> b!853989 (=> (not res!580072) (not e!476242))))

(assert (=> b!853989 (= res!580072 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23863 _keys!868))))))

(declare-fun b!853990 () Bool)

(declare-fun res!580071 () Bool)

(assert (=> b!853990 (=> (not res!580071) (not e!476242))))

(assert (=> b!853990 (= res!580071 (and (= (size!23864 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23863 _keys!868) (size!23864 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73282 res!580075) b!853983))

(assert (= (and b!853983 res!580074) b!853990))

(assert (= (and b!853990 res!580071) b!853979))

(assert (= (and b!853979 res!580073) b!853982))

(assert (= (and b!853982 res!580076) b!853989))

(assert (= (and b!853989 res!580072) b!853984))

(assert (= (and b!853984 res!580078) b!853985))

(assert (= (and b!853985 res!580079) b!853980))

(assert (= (and b!853980 res!580077) b!853977))

(assert (= (and b!853977 c!91842) b!853986))

(assert (= (and b!853977 (not c!91842)) b!853987))

(assert (= (or b!853986 b!853987) bm!38359))

(assert (= (or b!853986 b!853987) bm!38360))

(assert (= (and b!853977 (not res!580080)) b!853981))

(assert (= (and b!853988 condMapEmpty!26057) mapIsEmpty!26057))

(assert (= (and b!853988 (not condMapEmpty!26057)) mapNonEmpty!26057))

(get-info :version)

(assert (= (and mapNonEmpty!26057 ((_ is ValueCellFull!7713) mapValue!26057)) b!853978))

(assert (= (and b!853988 ((_ is ValueCellFull!7713) mapDefault!26057)) b!853976))

(assert (= start!73282 b!853988))

(declare-fun b_lambda!11731 () Bool)

(assert (=> (not b_lambda!11731) (not b!853981)))

(declare-fun t!23291 () Bool)

(declare-fun tb!4479 () Bool)

(assert (=> (and start!73282 (= defaultEntry!696 defaultEntry!696) t!23291) tb!4479))

(declare-fun result!8561 () Bool)

(assert (=> tb!4479 (= result!8561 tp_is_empty!16305)))

(assert (=> b!853981 t!23291))

(declare-fun b_and!23517 () Bool)

(assert (= b_and!23515 (and (=> t!23291 result!8561) b_and!23517)))

(declare-fun m!795397 () Bool)

(assert (=> b!853980 m!795397))

(declare-fun m!795399 () Bool)

(assert (=> b!853980 m!795399))

(declare-fun m!795401 () Bool)

(assert (=> b!853980 m!795401))

(declare-fun m!795403 () Bool)

(assert (=> b!853981 m!795403))

(declare-fun m!795405 () Bool)

(assert (=> b!853981 m!795405))

(declare-fun m!795407 () Bool)

(assert (=> b!853981 m!795407))

(declare-fun m!795409 () Bool)

(assert (=> b!853981 m!795409))

(declare-fun m!795411 () Bool)

(assert (=> b!853981 m!795411))

(declare-fun m!795413 () Bool)

(assert (=> b!853981 m!795413))

(assert (=> b!853981 m!795399))

(declare-fun m!795415 () Bool)

(assert (=> b!853981 m!795415))

(assert (=> b!853981 m!795413))

(declare-fun m!795417 () Bool)

(assert (=> b!853981 m!795417))

(assert (=> b!853981 m!795411))

(declare-fun m!795419 () Bool)

(assert (=> b!853981 m!795419))

(declare-fun m!795421 () Bool)

(assert (=> b!853981 m!795421))

(assert (=> b!853981 m!795405))

(declare-fun m!795423 () Bool)

(assert (=> b!853981 m!795423))

(declare-fun m!795425 () Bool)

(assert (=> b!853981 m!795425))

(declare-fun m!795427 () Bool)

(assert (=> b!853985 m!795427))

(declare-fun m!795429 () Bool)

(assert (=> b!853982 m!795429))

(declare-fun m!795431 () Bool)

(assert (=> bm!38359 m!795431))

(assert (=> bm!38360 m!795403))

(declare-fun m!795433 () Bool)

(assert (=> b!853984 m!795433))

(declare-fun m!795435 () Bool)

(assert (=> b!853983 m!795435))

(declare-fun m!795437 () Bool)

(assert (=> start!73282 m!795437))

(declare-fun m!795439 () Bool)

(assert (=> start!73282 m!795439))

(declare-fun m!795441 () Bool)

(assert (=> b!853986 m!795441))

(assert (=> b!853977 m!795423))

(assert (=> b!853977 m!795423))

(declare-fun m!795443 () Bool)

(assert (=> b!853977 m!795443))

(declare-fun m!795445 () Bool)

(assert (=> b!853977 m!795445))

(declare-fun m!795447 () Bool)

(assert (=> b!853979 m!795447))

(declare-fun m!795449 () Bool)

(assert (=> mapNonEmpty!26057 m!795449))

(check-sat (not b!853981) (not b!853983) (not b!853986) (not b_next!14169) (not bm!38360) (not start!73282) (not bm!38359) (not b_lambda!11731) (not b!853977) (not b!853984) tp_is_empty!16305 b_and!23517 (not b!853982) (not mapNonEmpty!26057) (not b!853980) (not b!853979))
(check-sat b_and!23517 (not b_next!14169))
