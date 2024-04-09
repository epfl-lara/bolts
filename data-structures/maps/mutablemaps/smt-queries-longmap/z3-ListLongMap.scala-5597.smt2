; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73396 () Bool)

(assert start!73396)

(declare-fun b_free!14283 () Bool)

(declare-fun b_next!14283 () Bool)

(assert (=> start!73396 (= b_free!14283 (not b_next!14283))))

(declare-fun tp!50354 () Bool)

(declare-fun b_and!23657 () Bool)

(assert (=> start!73396 (= tp!50354 b_and!23657)))

(declare-fun mapIsEmpty!26228 () Bool)

(declare-fun mapRes!26228 () Bool)

(assert (=> mapIsEmpty!26228 mapRes!26228))

(declare-fun b!856068 () Bool)

(declare-fun e!477236 () Bool)

(declare-fun e!477235 () Bool)

(assert (=> b!856068 (= e!477236 e!477235)))

(declare-fun res!581544 () Bool)

(assert (=> b!856068 (=> (not res!581544) (not e!477235))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856068 (= res!581544 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!26939 0))(
  ( (V!26940 (val!8257 Int)) )
))
(declare-datatypes ((ValueCell!7770 0))(
  ( (ValueCellFull!7770 (v!10678 V!26939)) (EmptyCell!7770) )
))
(declare-datatypes ((array!49008 0))(
  ( (array!49009 (arr!23531 (Array (_ BitVec 32) ValueCell!7770)) (size!23972 (_ BitVec 32))) )
))
(declare-fun lt!385829 () array!49008)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49010 0))(
  ( (array!49011 (arr!23532 (Array (_ BitVec 32) (_ BitVec 64))) (size!23973 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49010)

(declare-fun minValue!654 () V!26939)

(declare-fun zeroValue!654 () V!26939)

(declare-datatypes ((tuple2!10874 0))(
  ( (tuple2!10875 (_1!5447 (_ BitVec 64)) (_2!5447 V!26939)) )
))
(declare-datatypes ((List!16748 0))(
  ( (Nil!16745) (Cons!16744 (h!17875 tuple2!10874) (t!23397 List!16748)) )
))
(declare-datatypes ((ListLongMap!9657 0))(
  ( (ListLongMap!9658 (toList!4844 List!16748)) )
))
(declare-fun lt!385828 () ListLongMap!9657)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2826 (array!49010 array!49008 (_ BitVec 32) (_ BitVec 32) V!26939 V!26939 (_ BitVec 32) Int) ListLongMap!9657)

(assert (=> b!856068 (= lt!385828 (getCurrentListMapNoExtraKeys!2826 _keys!868 lt!385829 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26939)

(declare-fun _values!688 () array!49008)

(assert (=> b!856068 (= lt!385829 (array!49009 (store (arr!23531 _values!688) i!612 (ValueCellFull!7770 v!557)) (size!23972 _values!688)))))

(declare-fun lt!385830 () ListLongMap!9657)

(assert (=> b!856068 (= lt!385830 (getCurrentListMapNoExtraKeys!2826 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856069 () Bool)

(declare-fun res!581548 () Bool)

(assert (=> b!856069 (=> (not res!581548) (not e!477236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49010 (_ BitVec 32)) Bool)

(assert (=> b!856069 (= res!581548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856070 () Bool)

(assert (=> b!856070 (= e!477235 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2155 (ListLongMap!9657 tuple2!10874) ListLongMap!9657)

(assert (=> b!856070 (= (getCurrentListMapNoExtraKeys!2826 _keys!868 lt!385829 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2155 (getCurrentListMapNoExtraKeys!2826 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10875 k0!854 v!557)))))

(declare-datatypes ((Unit!29152 0))(
  ( (Unit!29153) )
))
(declare-fun lt!385827 () Unit!29152)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!415 (array!49010 array!49008 (_ BitVec 32) (_ BitVec 32) V!26939 V!26939 (_ BitVec 32) (_ BitVec 64) V!26939 (_ BitVec 32) Int) Unit!29152)

(assert (=> b!856070 (= lt!385827 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!415 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856071 () Bool)

(declare-fun res!581549 () Bool)

(assert (=> b!856071 (=> (not res!581549) (not e!477236))))

(assert (=> b!856071 (= res!581549 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23973 _keys!868))))))

(declare-fun b!856072 () Bool)

(declare-fun e!477239 () Bool)

(declare-fun tp_is_empty!16419 () Bool)

(assert (=> b!856072 (= e!477239 tp_is_empty!16419)))

(declare-fun b!856073 () Bool)

(declare-fun res!581547 () Bool)

(assert (=> b!856073 (=> (not res!581547) (not e!477236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856073 (= res!581547 (validKeyInArray!0 k0!854))))

(declare-fun res!581542 () Bool)

(assert (=> start!73396 (=> (not res!581542) (not e!477236))))

(assert (=> start!73396 (= res!581542 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23973 _keys!868))))))

(assert (=> start!73396 e!477236))

(assert (=> start!73396 tp_is_empty!16419))

(assert (=> start!73396 true))

(assert (=> start!73396 tp!50354))

(declare-fun array_inv!18626 (array!49010) Bool)

(assert (=> start!73396 (array_inv!18626 _keys!868)))

(declare-fun e!477240 () Bool)

(declare-fun array_inv!18627 (array!49008) Bool)

(assert (=> start!73396 (and (array_inv!18627 _values!688) e!477240)))

(declare-fun b!856074 () Bool)

(declare-fun res!581546 () Bool)

(assert (=> b!856074 (=> (not res!581546) (not e!477236))))

(declare-datatypes ((List!16749 0))(
  ( (Nil!16746) (Cons!16745 (h!17876 (_ BitVec 64)) (t!23398 List!16749)) )
))
(declare-fun arrayNoDuplicates!0 (array!49010 (_ BitVec 32) List!16749) Bool)

(assert (=> b!856074 (= res!581546 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16746))))

(declare-fun mapNonEmpty!26228 () Bool)

(declare-fun tp!50353 () Bool)

(declare-fun e!477238 () Bool)

(assert (=> mapNonEmpty!26228 (= mapRes!26228 (and tp!50353 e!477238))))

(declare-fun mapValue!26228 () ValueCell!7770)

(declare-fun mapKey!26228 () (_ BitVec 32))

(declare-fun mapRest!26228 () (Array (_ BitVec 32) ValueCell!7770))

(assert (=> mapNonEmpty!26228 (= (arr!23531 _values!688) (store mapRest!26228 mapKey!26228 mapValue!26228))))

(declare-fun b!856075 () Bool)

(assert (=> b!856075 (= e!477240 (and e!477239 mapRes!26228))))

(declare-fun condMapEmpty!26228 () Bool)

(declare-fun mapDefault!26228 () ValueCell!7770)

(assert (=> b!856075 (= condMapEmpty!26228 (= (arr!23531 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7770)) mapDefault!26228)))))

(declare-fun b!856076 () Bool)

(declare-fun res!581550 () Bool)

(assert (=> b!856076 (=> (not res!581550) (not e!477236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856076 (= res!581550 (validMask!0 mask!1196))))

(declare-fun b!856077 () Bool)

(declare-fun res!581545 () Bool)

(assert (=> b!856077 (=> (not res!581545) (not e!477236))))

(assert (=> b!856077 (= res!581545 (and (= (select (arr!23532 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856078 () Bool)

(declare-fun res!581543 () Bool)

(assert (=> b!856078 (=> (not res!581543) (not e!477236))))

(assert (=> b!856078 (= res!581543 (and (= (size!23972 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23973 _keys!868) (size!23972 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856079 () Bool)

(assert (=> b!856079 (= e!477238 tp_is_empty!16419)))

(assert (= (and start!73396 res!581542) b!856076))

(assert (= (and b!856076 res!581550) b!856078))

(assert (= (and b!856078 res!581543) b!856069))

(assert (= (and b!856069 res!581548) b!856074))

(assert (= (and b!856074 res!581546) b!856071))

(assert (= (and b!856071 res!581549) b!856073))

(assert (= (and b!856073 res!581547) b!856077))

(assert (= (and b!856077 res!581545) b!856068))

(assert (= (and b!856068 res!581544) b!856070))

(assert (= (and b!856075 condMapEmpty!26228) mapIsEmpty!26228))

(assert (= (and b!856075 (not condMapEmpty!26228)) mapNonEmpty!26228))

(get-info :version)

(assert (= (and mapNonEmpty!26228 ((_ is ValueCellFull!7770) mapValue!26228)) b!856079))

(assert (= (and b!856075 ((_ is ValueCellFull!7770) mapDefault!26228)) b!856072))

(assert (= start!73396 b!856075))

(declare-fun m!797155 () Bool)

(assert (=> start!73396 m!797155))

(declare-fun m!797157 () Bool)

(assert (=> start!73396 m!797157))

(declare-fun m!797159 () Bool)

(assert (=> b!856068 m!797159))

(declare-fun m!797161 () Bool)

(assert (=> b!856068 m!797161))

(declare-fun m!797163 () Bool)

(assert (=> b!856068 m!797163))

(declare-fun m!797165 () Bool)

(assert (=> b!856077 m!797165))

(declare-fun m!797167 () Bool)

(assert (=> b!856073 m!797167))

(declare-fun m!797169 () Bool)

(assert (=> b!856076 m!797169))

(declare-fun m!797171 () Bool)

(assert (=> b!856069 m!797171))

(declare-fun m!797173 () Bool)

(assert (=> b!856070 m!797173))

(declare-fun m!797175 () Bool)

(assert (=> b!856070 m!797175))

(assert (=> b!856070 m!797175))

(declare-fun m!797177 () Bool)

(assert (=> b!856070 m!797177))

(declare-fun m!797179 () Bool)

(assert (=> b!856070 m!797179))

(declare-fun m!797181 () Bool)

(assert (=> mapNonEmpty!26228 m!797181))

(declare-fun m!797183 () Bool)

(assert (=> b!856074 m!797183))

(check-sat (not mapNonEmpty!26228) (not b!856076) (not start!73396) (not b!856073) b_and!23657 tp_is_empty!16419 (not b_next!14283) (not b!856074) (not b!856068) (not b!856069) (not b!856070))
(check-sat b_and!23657 (not b_next!14283))
