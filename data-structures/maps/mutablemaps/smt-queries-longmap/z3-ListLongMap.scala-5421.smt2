; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72340 () Bool)

(assert start!72340)

(declare-fun mapIsEmpty!24644 () Bool)

(declare-fun mapRes!24644 () Bool)

(assert (=> mapIsEmpty!24644 mapRes!24644))

(declare-fun b!837647 () Bool)

(declare-fun e!467585 () Bool)

(declare-fun tp_is_empty!15363 () Bool)

(assert (=> b!837647 (= e!467585 tp_is_empty!15363)))

(declare-fun b!837648 () Bool)

(declare-fun e!467582 () Bool)

(assert (=> b!837648 (= e!467582 (and e!467585 mapRes!24644))))

(declare-fun condMapEmpty!24644 () Bool)

(declare-datatypes ((V!25531 0))(
  ( (V!25532 (val!7729 Int)) )
))
(declare-datatypes ((ValueCell!7242 0))(
  ( (ValueCellFull!7242 (v!10150 V!25531)) (EmptyCell!7242) )
))
(declare-datatypes ((array!46986 0))(
  ( (array!46987 (arr!22520 (Array (_ BitVec 32) ValueCell!7242)) (size!22961 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46986)

(declare-fun mapDefault!24644 () ValueCell!7242)

(assert (=> b!837648 (= condMapEmpty!24644 (= (arr!22520 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7242)) mapDefault!24644)))))

(declare-fun mapNonEmpty!24644 () Bool)

(declare-fun tp!47639 () Bool)

(declare-fun e!467583 () Bool)

(assert (=> mapNonEmpty!24644 (= mapRes!24644 (and tp!47639 e!467583))))

(declare-fun mapKey!24644 () (_ BitVec 32))

(declare-fun mapValue!24644 () ValueCell!7242)

(declare-fun mapRest!24644 () (Array (_ BitVec 32) ValueCell!7242))

(assert (=> mapNonEmpty!24644 (= (arr!22520 _values!688) (store mapRest!24644 mapKey!24644 mapValue!24644))))

(declare-fun b!837649 () Bool)

(declare-fun res!569763 () Bool)

(declare-fun e!467586 () Bool)

(assert (=> b!837649 (=> (not res!569763) (not e!467586))))

(declare-datatypes ((array!46988 0))(
  ( (array!46989 (arr!22521 (Array (_ BitVec 32) (_ BitVec 64))) (size!22962 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46988)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46988 (_ BitVec 32)) Bool)

(assert (=> b!837649 (= res!569763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837650 () Bool)

(assert (=> b!837650 (= e!467586 false)))

(declare-fun lt!380556 () Bool)

(declare-datatypes ((List!16092 0))(
  ( (Nil!16089) (Cons!16088 (h!17219 (_ BitVec 64)) (t!22471 List!16092)) )
))
(declare-fun arrayNoDuplicates!0 (array!46988 (_ BitVec 32) List!16092) Bool)

(assert (=> b!837650 (= lt!380556 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16089))))

(declare-fun b!837652 () Bool)

(declare-fun res!569765 () Bool)

(assert (=> b!837652 (=> (not res!569765) (not e!467586))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837652 (= res!569765 (and (= (size!22961 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22962 _keys!868) (size!22961 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837653 () Bool)

(declare-fun res!569766 () Bool)

(assert (=> b!837653 (=> (not res!569766) (not e!467586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837653 (= res!569766 (validMask!0 mask!1196))))

(declare-fun res!569764 () Bool)

(assert (=> start!72340 (=> (not res!569764) (not e!467586))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72340 (= res!569764 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22962 _keys!868))))))

(assert (=> start!72340 e!467586))

(assert (=> start!72340 true))

(declare-fun array_inv!17918 (array!46988) Bool)

(assert (=> start!72340 (array_inv!17918 _keys!868)))

(declare-fun array_inv!17919 (array!46986) Bool)

(assert (=> start!72340 (and (array_inv!17919 _values!688) e!467582)))

(declare-fun b!837651 () Bool)

(assert (=> b!837651 (= e!467583 tp_is_empty!15363)))

(assert (= (and start!72340 res!569764) b!837653))

(assert (= (and b!837653 res!569766) b!837652))

(assert (= (and b!837652 res!569765) b!837649))

(assert (= (and b!837649 res!569763) b!837650))

(assert (= (and b!837648 condMapEmpty!24644) mapIsEmpty!24644))

(assert (= (and b!837648 (not condMapEmpty!24644)) mapNonEmpty!24644))

(get-info :version)

(assert (= (and mapNonEmpty!24644 ((_ is ValueCellFull!7242) mapValue!24644)) b!837651))

(assert (= (and b!837648 ((_ is ValueCellFull!7242) mapDefault!24644)) b!837647))

(assert (= start!72340 b!837648))

(declare-fun m!782453 () Bool)

(assert (=> b!837653 m!782453))

(declare-fun m!782455 () Bool)

(assert (=> b!837650 m!782455))

(declare-fun m!782457 () Bool)

(assert (=> mapNonEmpty!24644 m!782457))

(declare-fun m!782459 () Bool)

(assert (=> b!837649 m!782459))

(declare-fun m!782461 () Bool)

(assert (=> start!72340 m!782461))

(declare-fun m!782463 () Bool)

(assert (=> start!72340 m!782463))

(check-sat (not mapNonEmpty!24644) (not b!837653) tp_is_empty!15363 (not b!837649) (not start!72340) (not b!837650))
(check-sat)
