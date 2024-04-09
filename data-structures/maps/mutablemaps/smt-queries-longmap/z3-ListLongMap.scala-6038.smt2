; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78158 () Bool)

(assert start!78158)

(declare-fun b_free!16641 () Bool)

(declare-fun b_next!16641 () Bool)

(assert (=> start!78158 (= b_free!16641 (not b_next!16641))))

(declare-fun tp!58198 () Bool)

(declare-fun b_and!27233 () Bool)

(assert (=> start!78158 (= tp!58198 b_and!27233)))

(declare-fun b!911722 () Bool)

(declare-fun e!511415 () Bool)

(assert (=> b!911722 (= e!511415 false)))

(declare-datatypes ((V!30377 0))(
  ( (V!30378 (val!9580 Int)) )
))
(declare-datatypes ((ValueCell!9048 0))(
  ( (ValueCellFull!9048 (v!12090 V!30377)) (EmptyCell!9048) )
))
(declare-datatypes ((array!54126 0))(
  ( (array!54127 (arr!26014 (Array (_ BitVec 32) ValueCell!9048)) (size!26474 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54126)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410467 () Bool)

(declare-fun zeroValue!1094 () V!30377)

(declare-datatypes ((array!54128 0))(
  ( (array!54129 (arr!26015 (Array (_ BitVec 32) (_ BitVec 64))) (size!26475 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54128)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30377)

(declare-datatypes ((tuple2!12534 0))(
  ( (tuple2!12535 (_1!6277 (_ BitVec 64)) (_2!6277 V!30377)) )
))
(declare-datatypes ((List!18377 0))(
  ( (Nil!18374) (Cons!18373 (h!19519 tuple2!12534) (t!25972 List!18377)) )
))
(declare-datatypes ((ListLongMap!11245 0))(
  ( (ListLongMap!11246 (toList!5638 List!18377)) )
))
(declare-fun contains!4648 (ListLongMap!11245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2868 (array!54128 array!54126 (_ BitVec 32) (_ BitVec 32) V!30377 V!30377 (_ BitVec 32) Int) ListLongMap!11245)

(assert (=> b!911722 (= lt!410467 (contains!4648 (getCurrentListMap!2868 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911723 () Bool)

(declare-fun res!615185 () Bool)

(assert (=> b!911723 (=> (not res!615185) (not e!511415))))

(declare-datatypes ((List!18378 0))(
  ( (Nil!18375) (Cons!18374 (h!19520 (_ BitVec 64)) (t!25973 List!18378)) )
))
(declare-fun arrayNoDuplicates!0 (array!54128 (_ BitVec 32) List!18378) Bool)

(assert (=> b!911723 (= res!615185 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18375))))

(declare-fun mapNonEmpty!30313 () Bool)

(declare-fun mapRes!30313 () Bool)

(declare-fun tp!58197 () Bool)

(declare-fun e!511412 () Bool)

(assert (=> mapNonEmpty!30313 (= mapRes!30313 (and tp!58197 e!511412))))

(declare-fun mapRest!30313 () (Array (_ BitVec 32) ValueCell!9048))

(declare-fun mapKey!30313 () (_ BitVec 32))

(declare-fun mapValue!30313 () ValueCell!9048)

(assert (=> mapNonEmpty!30313 (= (arr!26014 _values!1152) (store mapRest!30313 mapKey!30313 mapValue!30313))))

(declare-fun res!615184 () Bool)

(assert (=> start!78158 (=> (not res!615184) (not e!511415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78158 (= res!615184 (validMask!0 mask!1756))))

(assert (=> start!78158 e!511415))

(declare-fun e!511413 () Bool)

(declare-fun array_inv!20314 (array!54126) Bool)

(assert (=> start!78158 (and (array_inv!20314 _values!1152) e!511413)))

(assert (=> start!78158 tp!58198))

(assert (=> start!78158 true))

(declare-fun tp_is_empty!19059 () Bool)

(assert (=> start!78158 tp_is_empty!19059))

(declare-fun array_inv!20315 (array!54128) Bool)

(assert (=> start!78158 (array_inv!20315 _keys!1386)))

(declare-fun b!911724 () Bool)

(assert (=> b!911724 (= e!511412 tp_is_empty!19059)))

(declare-fun b!911725 () Bool)

(declare-fun res!615186 () Bool)

(assert (=> b!911725 (=> (not res!615186) (not e!511415))))

(assert (=> b!911725 (= res!615186 (and (= (size!26474 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26475 _keys!1386) (size!26474 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911726 () Bool)

(declare-fun res!615187 () Bool)

(assert (=> b!911726 (=> (not res!615187) (not e!511415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54128 (_ BitVec 32)) Bool)

(assert (=> b!911726 (= res!615187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30313 () Bool)

(assert (=> mapIsEmpty!30313 mapRes!30313))

(declare-fun b!911727 () Bool)

(declare-fun e!511411 () Bool)

(assert (=> b!911727 (= e!511411 tp_is_empty!19059)))

(declare-fun b!911728 () Bool)

(assert (=> b!911728 (= e!511413 (and e!511411 mapRes!30313))))

(declare-fun condMapEmpty!30313 () Bool)

(declare-fun mapDefault!30313 () ValueCell!9048)

(assert (=> b!911728 (= condMapEmpty!30313 (= (arr!26014 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9048)) mapDefault!30313)))))

(assert (= (and start!78158 res!615184) b!911725))

(assert (= (and b!911725 res!615186) b!911726))

(assert (= (and b!911726 res!615187) b!911723))

(assert (= (and b!911723 res!615185) b!911722))

(assert (= (and b!911728 condMapEmpty!30313) mapIsEmpty!30313))

(assert (= (and b!911728 (not condMapEmpty!30313)) mapNonEmpty!30313))

(get-info :version)

(assert (= (and mapNonEmpty!30313 ((_ is ValueCellFull!9048) mapValue!30313)) b!911724))

(assert (= (and b!911728 ((_ is ValueCellFull!9048) mapDefault!30313)) b!911727))

(assert (= start!78158 b!911728))

(declare-fun m!846475 () Bool)

(assert (=> mapNonEmpty!30313 m!846475))

(declare-fun m!846477 () Bool)

(assert (=> b!911723 m!846477))

(declare-fun m!846479 () Bool)

(assert (=> b!911722 m!846479))

(assert (=> b!911722 m!846479))

(declare-fun m!846481 () Bool)

(assert (=> b!911722 m!846481))

(declare-fun m!846483 () Bool)

(assert (=> start!78158 m!846483))

(declare-fun m!846485 () Bool)

(assert (=> start!78158 m!846485))

(declare-fun m!846487 () Bool)

(assert (=> start!78158 m!846487))

(declare-fun m!846489 () Bool)

(assert (=> b!911726 m!846489))

(check-sat (not b!911726) (not mapNonEmpty!30313) (not b_next!16641) tp_is_empty!19059 (not b!911723) (not b!911722) b_and!27233 (not start!78158))
(check-sat b_and!27233 (not b_next!16641))
