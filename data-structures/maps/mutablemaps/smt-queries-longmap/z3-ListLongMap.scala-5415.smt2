; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72304 () Bool)

(assert start!72304)

(declare-fun res!569550 () Bool)

(declare-fun e!467316 () Bool)

(assert (=> start!72304 (=> (not res!569550) (not e!467316))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46920 0))(
  ( (array!46921 (arr!22487 (Array (_ BitVec 32) (_ BitVec 64))) (size!22928 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46920)

(assert (=> start!72304 (= res!569550 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22928 _keys!868))))))

(assert (=> start!72304 e!467316))

(assert (=> start!72304 true))

(declare-fun array_inv!17902 (array!46920) Bool)

(assert (=> start!72304 (array_inv!17902 _keys!868)))

(declare-datatypes ((V!25483 0))(
  ( (V!25484 (val!7711 Int)) )
))
(declare-datatypes ((ValueCell!7224 0))(
  ( (ValueCellFull!7224 (v!10132 V!25483)) (EmptyCell!7224) )
))
(declare-datatypes ((array!46922 0))(
  ( (array!46923 (arr!22488 (Array (_ BitVec 32) ValueCell!7224)) (size!22929 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46922)

(declare-fun e!467313 () Bool)

(declare-fun array_inv!17903 (array!46922) Bool)

(assert (=> start!72304 (and (array_inv!17903 _values!688) e!467313)))

(declare-fun mapIsEmpty!24590 () Bool)

(declare-fun mapRes!24590 () Bool)

(assert (=> mapIsEmpty!24590 mapRes!24590))

(declare-fun b!837269 () Bool)

(declare-fun res!569549 () Bool)

(assert (=> b!837269 (=> (not res!569549) (not e!467316))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46920 (_ BitVec 32)) Bool)

(assert (=> b!837269 (= res!569549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837270 () Bool)

(declare-fun e!467314 () Bool)

(assert (=> b!837270 (= e!467313 (and e!467314 mapRes!24590))))

(declare-fun condMapEmpty!24590 () Bool)

(declare-fun mapDefault!24590 () ValueCell!7224)

(assert (=> b!837270 (= condMapEmpty!24590 (= (arr!22488 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7224)) mapDefault!24590)))))

(declare-fun b!837271 () Bool)

(declare-fun e!467315 () Bool)

(declare-fun tp_is_empty!15327 () Bool)

(assert (=> b!837271 (= e!467315 tp_is_empty!15327)))

(declare-fun b!837272 () Bool)

(declare-fun res!569547 () Bool)

(assert (=> b!837272 (=> (not res!569547) (not e!467316))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837272 (= res!569547 (and (= (size!22929 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22928 _keys!868) (size!22929 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837273 () Bool)

(assert (=> b!837273 (= e!467316 false)))

(declare-fun lt!380502 () Bool)

(declare-datatypes ((List!16080 0))(
  ( (Nil!16077) (Cons!16076 (h!17207 (_ BitVec 64)) (t!22459 List!16080)) )
))
(declare-fun arrayNoDuplicates!0 (array!46920 (_ BitVec 32) List!16080) Bool)

(assert (=> b!837273 (= lt!380502 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16077))))

(declare-fun b!837274 () Bool)

(declare-fun res!569548 () Bool)

(assert (=> b!837274 (=> (not res!569548) (not e!467316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837274 (= res!569548 (validMask!0 mask!1196))))

(declare-fun b!837275 () Bool)

(assert (=> b!837275 (= e!467314 tp_is_empty!15327)))

(declare-fun mapNonEmpty!24590 () Bool)

(declare-fun tp!47585 () Bool)

(assert (=> mapNonEmpty!24590 (= mapRes!24590 (and tp!47585 e!467315))))

(declare-fun mapRest!24590 () (Array (_ BitVec 32) ValueCell!7224))

(declare-fun mapKey!24590 () (_ BitVec 32))

(declare-fun mapValue!24590 () ValueCell!7224)

(assert (=> mapNonEmpty!24590 (= (arr!22488 _values!688) (store mapRest!24590 mapKey!24590 mapValue!24590))))

(assert (= (and start!72304 res!569550) b!837274))

(assert (= (and b!837274 res!569548) b!837272))

(assert (= (and b!837272 res!569547) b!837269))

(assert (= (and b!837269 res!569549) b!837273))

(assert (= (and b!837270 condMapEmpty!24590) mapIsEmpty!24590))

(assert (= (and b!837270 (not condMapEmpty!24590)) mapNonEmpty!24590))

(get-info :version)

(assert (= (and mapNonEmpty!24590 ((_ is ValueCellFull!7224) mapValue!24590)) b!837271))

(assert (= (and b!837270 ((_ is ValueCellFull!7224) mapDefault!24590)) b!837275))

(assert (= start!72304 b!837270))

(declare-fun m!782237 () Bool)

(assert (=> b!837274 m!782237))

(declare-fun m!782239 () Bool)

(assert (=> b!837273 m!782239))

(declare-fun m!782241 () Bool)

(assert (=> mapNonEmpty!24590 m!782241))

(declare-fun m!782243 () Bool)

(assert (=> b!837269 m!782243))

(declare-fun m!782245 () Bool)

(assert (=> start!72304 m!782245))

(declare-fun m!782247 () Bool)

(assert (=> start!72304 m!782247))

(check-sat (not b!837273) (not b!837274) (not mapNonEmpty!24590) tp_is_empty!15327 (not b!837269) (not start!72304))
(check-sat)
