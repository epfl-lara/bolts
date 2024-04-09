; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73462 () Bool)

(assert start!73462)

(declare-fun b_free!14349 () Bool)

(declare-fun b_next!14349 () Bool)

(assert (=> start!73462 (= b_free!14349 (not b_next!14349))))

(declare-fun tp!50552 () Bool)

(declare-fun b_and!23723 () Bool)

(assert (=> start!73462 (= tp!50552 b_and!23723)))

(declare-fun b!857256 () Bool)

(declare-fun res!582438 () Bool)

(declare-fun e!477834 () Bool)

(assert (=> b!857256 (=> (not res!582438) (not e!477834))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49134 0))(
  ( (array!49135 (arr!23594 (Array (_ BitVec 32) (_ BitVec 64))) (size!24035 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49134)

(assert (=> b!857256 (= res!582438 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24035 _keys!868))))))

(declare-fun b!857257 () Bool)

(declare-fun res!582437 () Bool)

(assert (=> b!857257 (=> (not res!582437) (not e!477834))))

(declare-datatypes ((List!16794 0))(
  ( (Nil!16791) (Cons!16790 (h!17921 (_ BitVec 64)) (t!23443 List!16794)) )
))
(declare-fun arrayNoDuplicates!0 (array!49134 (_ BitVec 32) List!16794) Bool)

(assert (=> b!857257 (= res!582437 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16791))))

(declare-fun b!857258 () Bool)

(declare-fun e!477830 () Bool)

(assert (=> b!857258 (= e!477834 e!477830)))

(declare-fun res!582433 () Bool)

(assert (=> b!857258 (=> (not res!582433) (not e!477830))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857258 (= res!582433 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27027 0))(
  ( (V!27028 (val!8290 Int)) )
))
(declare-datatypes ((tuple2!10922 0))(
  ( (tuple2!10923 (_1!5471 (_ BitVec 64)) (_2!5471 V!27027)) )
))
(declare-datatypes ((List!16795 0))(
  ( (Nil!16792) (Cons!16791 (h!17922 tuple2!10922) (t!23444 List!16795)) )
))
(declare-datatypes ((ListLongMap!9705 0))(
  ( (ListLongMap!9706 (toList!4868 List!16795)) )
))
(declare-fun lt!386223 () ListLongMap!9705)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7803 0))(
  ( (ValueCellFull!7803 (v!10711 V!27027)) (EmptyCell!7803) )
))
(declare-datatypes ((array!49136 0))(
  ( (array!49137 (arr!23595 (Array (_ BitVec 32) ValueCell!7803)) (size!24036 (_ BitVec 32))) )
))
(declare-fun lt!386226 () array!49136)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27027)

(declare-fun zeroValue!654 () V!27027)

(declare-fun getCurrentListMapNoExtraKeys!2850 (array!49134 array!49136 (_ BitVec 32) (_ BitVec 32) V!27027 V!27027 (_ BitVec 32) Int) ListLongMap!9705)

(assert (=> b!857258 (= lt!386223 (getCurrentListMapNoExtraKeys!2850 _keys!868 lt!386226 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27027)

(declare-fun _values!688 () array!49136)

(assert (=> b!857258 (= lt!386226 (array!49137 (store (arr!23595 _values!688) i!612 (ValueCellFull!7803 v!557)) (size!24036 _values!688)))))

(declare-fun lt!386225 () ListLongMap!9705)

(assert (=> b!857258 (= lt!386225 (getCurrentListMapNoExtraKeys!2850 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26327 () Bool)

(declare-fun mapRes!26327 () Bool)

(assert (=> mapIsEmpty!26327 mapRes!26327))

(declare-fun b!857259 () Bool)

(assert (=> b!857259 (= e!477830 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2176 (ListLongMap!9705 tuple2!10922) ListLongMap!9705)

(assert (=> b!857259 (= (getCurrentListMapNoExtraKeys!2850 _keys!868 lt!386226 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2176 (getCurrentListMapNoExtraKeys!2850 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10923 k0!854 v!557)))))

(declare-datatypes ((Unit!29194 0))(
  ( (Unit!29195) )
))
(declare-fun lt!386224 () Unit!29194)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!436 (array!49134 array!49136 (_ BitVec 32) (_ BitVec 32) V!27027 V!27027 (_ BitVec 32) (_ BitVec 64) V!27027 (_ BitVec 32) Int) Unit!29194)

(assert (=> b!857259 (= lt!386224 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!436 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!582440 () Bool)

(assert (=> start!73462 (=> (not res!582440) (not e!477834))))

(assert (=> start!73462 (= res!582440 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24035 _keys!868))))))

(assert (=> start!73462 e!477834))

(declare-fun tp_is_empty!16485 () Bool)

(assert (=> start!73462 tp_is_empty!16485))

(assert (=> start!73462 true))

(assert (=> start!73462 tp!50552))

(declare-fun array_inv!18674 (array!49134) Bool)

(assert (=> start!73462 (array_inv!18674 _keys!868)))

(declare-fun e!477833 () Bool)

(declare-fun array_inv!18675 (array!49136) Bool)

(assert (=> start!73462 (and (array_inv!18675 _values!688) e!477833)))

(declare-fun b!857260 () Bool)

(declare-fun res!582441 () Bool)

(assert (=> b!857260 (=> (not res!582441) (not e!477834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857260 (= res!582441 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26327 () Bool)

(declare-fun tp!50551 () Bool)

(declare-fun e!477829 () Bool)

(assert (=> mapNonEmpty!26327 (= mapRes!26327 (and tp!50551 e!477829))))

(declare-fun mapValue!26327 () ValueCell!7803)

(declare-fun mapKey!26327 () (_ BitVec 32))

(declare-fun mapRest!26327 () (Array (_ BitVec 32) ValueCell!7803))

(assert (=> mapNonEmpty!26327 (= (arr!23595 _values!688) (store mapRest!26327 mapKey!26327 mapValue!26327))))

(declare-fun b!857261 () Bool)

(assert (=> b!857261 (= e!477829 tp_is_empty!16485)))

(declare-fun b!857262 () Bool)

(declare-fun res!582439 () Bool)

(assert (=> b!857262 (=> (not res!582439) (not e!477834))))

(assert (=> b!857262 (= res!582439 (and (= (size!24036 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24035 _keys!868) (size!24036 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857263 () Bool)

(declare-fun res!582436 () Bool)

(assert (=> b!857263 (=> (not res!582436) (not e!477834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857263 (= res!582436 (validMask!0 mask!1196))))

(declare-fun b!857264 () Bool)

(declare-fun res!582434 () Bool)

(assert (=> b!857264 (=> (not res!582434) (not e!477834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49134 (_ BitVec 32)) Bool)

(assert (=> b!857264 (= res!582434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857265 () Bool)

(declare-fun res!582435 () Bool)

(assert (=> b!857265 (=> (not res!582435) (not e!477834))))

(assert (=> b!857265 (= res!582435 (and (= (select (arr!23594 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857266 () Bool)

(declare-fun e!477832 () Bool)

(assert (=> b!857266 (= e!477833 (and e!477832 mapRes!26327))))

(declare-fun condMapEmpty!26327 () Bool)

(declare-fun mapDefault!26327 () ValueCell!7803)

(assert (=> b!857266 (= condMapEmpty!26327 (= (arr!23595 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7803)) mapDefault!26327)))))

(declare-fun b!857267 () Bool)

(assert (=> b!857267 (= e!477832 tp_is_empty!16485)))

(assert (= (and start!73462 res!582440) b!857263))

(assert (= (and b!857263 res!582436) b!857262))

(assert (= (and b!857262 res!582439) b!857264))

(assert (= (and b!857264 res!582434) b!857257))

(assert (= (and b!857257 res!582437) b!857256))

(assert (= (and b!857256 res!582438) b!857260))

(assert (= (and b!857260 res!582441) b!857265))

(assert (= (and b!857265 res!582435) b!857258))

(assert (= (and b!857258 res!582433) b!857259))

(assert (= (and b!857266 condMapEmpty!26327) mapIsEmpty!26327))

(assert (= (and b!857266 (not condMapEmpty!26327)) mapNonEmpty!26327))

(get-info :version)

(assert (= (and mapNonEmpty!26327 ((_ is ValueCellFull!7803) mapValue!26327)) b!857261))

(assert (= (and b!857266 ((_ is ValueCellFull!7803) mapDefault!26327)) b!857267))

(assert (= start!73462 b!857266))

(declare-fun m!798145 () Bool)

(assert (=> b!857260 m!798145))

(declare-fun m!798147 () Bool)

(assert (=> b!857257 m!798147))

(declare-fun m!798149 () Bool)

(assert (=> b!857263 m!798149))

(declare-fun m!798151 () Bool)

(assert (=> mapNonEmpty!26327 m!798151))

(declare-fun m!798153 () Bool)

(assert (=> b!857259 m!798153))

(declare-fun m!798155 () Bool)

(assert (=> b!857259 m!798155))

(assert (=> b!857259 m!798155))

(declare-fun m!798157 () Bool)

(assert (=> b!857259 m!798157))

(declare-fun m!798159 () Bool)

(assert (=> b!857259 m!798159))

(declare-fun m!798161 () Bool)

(assert (=> b!857264 m!798161))

(declare-fun m!798163 () Bool)

(assert (=> b!857265 m!798163))

(declare-fun m!798165 () Bool)

(assert (=> start!73462 m!798165))

(declare-fun m!798167 () Bool)

(assert (=> start!73462 m!798167))

(declare-fun m!798169 () Bool)

(assert (=> b!857258 m!798169))

(declare-fun m!798171 () Bool)

(assert (=> b!857258 m!798171))

(declare-fun m!798173 () Bool)

(assert (=> b!857258 m!798173))

(check-sat (not b!857263) (not start!73462) (not b!857258) (not b!857259) tp_is_empty!16485 (not mapNonEmpty!26327) b_and!23723 (not b!857257) (not b!857260) (not b!857264) (not b_next!14349))
(check-sat b_and!23723 (not b_next!14349))
