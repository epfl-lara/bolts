; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72310 () Bool)

(assert start!72310)

(declare-fun b!837332 () Bool)

(declare-fun res!569585 () Bool)

(declare-fun e!467357 () Bool)

(assert (=> b!837332 (=> (not res!569585) (not e!467357))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837332 (= res!569585 (validMask!0 mask!1196))))

(declare-fun b!837333 () Bool)

(assert (=> b!837333 (= e!467357 false)))

(declare-fun lt!380511 () Bool)

(declare-datatypes ((array!46928 0))(
  ( (array!46929 (arr!22491 (Array (_ BitVec 32) (_ BitVec 64))) (size!22932 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46928)

(declare-datatypes ((List!16081 0))(
  ( (Nil!16078) (Cons!16077 (h!17208 (_ BitVec 64)) (t!22460 List!16081)) )
))
(declare-fun arrayNoDuplicates!0 (array!46928 (_ BitVec 32) List!16081) Bool)

(assert (=> b!837333 (= lt!380511 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16078))))

(declare-fun b!837334 () Bool)

(declare-fun e!467361 () Bool)

(declare-fun e!467358 () Bool)

(declare-fun mapRes!24599 () Bool)

(assert (=> b!837334 (= e!467361 (and e!467358 mapRes!24599))))

(declare-fun condMapEmpty!24599 () Bool)

(declare-datatypes ((V!25491 0))(
  ( (V!25492 (val!7714 Int)) )
))
(declare-datatypes ((ValueCell!7227 0))(
  ( (ValueCellFull!7227 (v!10135 V!25491)) (EmptyCell!7227) )
))
(declare-datatypes ((array!46930 0))(
  ( (array!46931 (arr!22492 (Array (_ BitVec 32) ValueCell!7227)) (size!22933 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46930)

(declare-fun mapDefault!24599 () ValueCell!7227)

(assert (=> b!837334 (= condMapEmpty!24599 (= (arr!22492 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7227)) mapDefault!24599)))))

(declare-fun b!837336 () Bool)

(declare-fun tp_is_empty!15333 () Bool)

(assert (=> b!837336 (= e!467358 tp_is_empty!15333)))

(declare-fun mapNonEmpty!24599 () Bool)

(declare-fun tp!47594 () Bool)

(declare-fun e!467360 () Bool)

(assert (=> mapNonEmpty!24599 (= mapRes!24599 (and tp!47594 e!467360))))

(declare-fun mapValue!24599 () ValueCell!7227)

(declare-fun mapRest!24599 () (Array (_ BitVec 32) ValueCell!7227))

(declare-fun mapKey!24599 () (_ BitVec 32))

(assert (=> mapNonEmpty!24599 (= (arr!22492 _values!688) (store mapRest!24599 mapKey!24599 mapValue!24599))))

(declare-fun b!837337 () Bool)

(assert (=> b!837337 (= e!467360 tp_is_empty!15333)))

(declare-fun b!837335 () Bool)

(declare-fun res!569583 () Bool)

(assert (=> b!837335 (=> (not res!569583) (not e!467357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46928 (_ BitVec 32)) Bool)

(assert (=> b!837335 (= res!569583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569586 () Bool)

(assert (=> start!72310 (=> (not res!569586) (not e!467357))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72310 (= res!569586 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22932 _keys!868))))))

(assert (=> start!72310 e!467357))

(assert (=> start!72310 true))

(declare-fun array_inv!17904 (array!46928) Bool)

(assert (=> start!72310 (array_inv!17904 _keys!868)))

(declare-fun array_inv!17905 (array!46930) Bool)

(assert (=> start!72310 (and (array_inv!17905 _values!688) e!467361)))

(declare-fun mapIsEmpty!24599 () Bool)

(assert (=> mapIsEmpty!24599 mapRes!24599))

(declare-fun b!837338 () Bool)

(declare-fun res!569584 () Bool)

(assert (=> b!837338 (=> (not res!569584) (not e!467357))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837338 (= res!569584 (and (= (size!22933 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22932 _keys!868) (size!22933 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72310 res!569586) b!837332))

(assert (= (and b!837332 res!569585) b!837338))

(assert (= (and b!837338 res!569584) b!837335))

(assert (= (and b!837335 res!569583) b!837333))

(assert (= (and b!837334 condMapEmpty!24599) mapIsEmpty!24599))

(assert (= (and b!837334 (not condMapEmpty!24599)) mapNonEmpty!24599))

(get-info :version)

(assert (= (and mapNonEmpty!24599 ((_ is ValueCellFull!7227) mapValue!24599)) b!837337))

(assert (= (and b!837334 ((_ is ValueCellFull!7227) mapDefault!24599)) b!837336))

(assert (= start!72310 b!837334))

(declare-fun m!782273 () Bool)

(assert (=> start!72310 m!782273))

(declare-fun m!782275 () Bool)

(assert (=> start!72310 m!782275))

(declare-fun m!782277 () Bool)

(assert (=> b!837333 m!782277))

(declare-fun m!782279 () Bool)

(assert (=> mapNonEmpty!24599 m!782279))

(declare-fun m!782281 () Bool)

(assert (=> b!837335 m!782281))

(declare-fun m!782283 () Bool)

(assert (=> b!837332 m!782283))

(check-sat tp_is_empty!15333 (not b!837332) (not mapNonEmpty!24599) (not b!837335) (not b!837333) (not start!72310))
(check-sat)
