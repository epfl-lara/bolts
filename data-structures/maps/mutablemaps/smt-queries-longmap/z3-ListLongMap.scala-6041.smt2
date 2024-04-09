; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78176 () Bool)

(assert start!78176)

(declare-fun b_free!16659 () Bool)

(declare-fun b_next!16659 () Bool)

(assert (=> start!78176 (= b_free!16659 (not b_next!16659))))

(declare-fun tp!58252 () Bool)

(declare-fun b_and!27251 () Bool)

(assert (=> start!78176 (= tp!58252 b_and!27251)))

(declare-fun b!911911 () Bool)

(declare-fun e!511547 () Bool)

(assert (=> b!911911 (= e!511547 false)))

(declare-datatypes ((V!30401 0))(
  ( (V!30402 (val!9589 Int)) )
))
(declare-datatypes ((ValueCell!9057 0))(
  ( (ValueCellFull!9057 (v!12099 V!30401)) (EmptyCell!9057) )
))
(declare-datatypes ((array!54160 0))(
  ( (array!54161 (arr!26031 (Array (_ BitVec 32) ValueCell!9057)) (size!26491 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54160)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30401)

(declare-datatypes ((array!54162 0))(
  ( (array!54163 (arr!26032 (Array (_ BitVec 32) (_ BitVec 64))) (size!26492 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54162)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30401)

(declare-fun lt!410494 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12548 0))(
  ( (tuple2!12549 (_1!6284 (_ BitVec 64)) (_2!6284 V!30401)) )
))
(declare-datatypes ((List!18390 0))(
  ( (Nil!18387) (Cons!18386 (h!19532 tuple2!12548) (t!25985 List!18390)) )
))
(declare-datatypes ((ListLongMap!11259 0))(
  ( (ListLongMap!11260 (toList!5645 List!18390)) )
))
(declare-fun contains!4655 (ListLongMap!11259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2875 (array!54162 array!54160 (_ BitVec 32) (_ BitVec 32) V!30401 V!30401 (_ BitVec 32) Int) ListLongMap!11259)

(assert (=> b!911911 (= lt!410494 (contains!4655 (getCurrentListMap!2875 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911912 () Bool)

(declare-fun e!511550 () Bool)

(declare-fun tp_is_empty!19077 () Bool)

(assert (=> b!911912 (= e!511550 tp_is_empty!19077)))

(declare-fun b!911913 () Bool)

(declare-fun e!511546 () Bool)

(declare-fun e!511549 () Bool)

(declare-fun mapRes!30340 () Bool)

(assert (=> b!911913 (= e!511546 (and e!511549 mapRes!30340))))

(declare-fun condMapEmpty!30340 () Bool)

(declare-fun mapDefault!30340 () ValueCell!9057)

(assert (=> b!911913 (= condMapEmpty!30340 (= (arr!26031 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9057)) mapDefault!30340)))))

(declare-fun b!911914 () Bool)

(assert (=> b!911914 (= e!511549 tp_is_empty!19077)))

(declare-fun mapNonEmpty!30340 () Bool)

(declare-fun tp!58251 () Bool)

(assert (=> mapNonEmpty!30340 (= mapRes!30340 (and tp!58251 e!511550))))

(declare-fun mapKey!30340 () (_ BitVec 32))

(declare-fun mapValue!30340 () ValueCell!9057)

(declare-fun mapRest!30340 () (Array (_ BitVec 32) ValueCell!9057))

(assert (=> mapNonEmpty!30340 (= (arr!26031 _values!1152) (store mapRest!30340 mapKey!30340 mapValue!30340))))

(declare-fun b!911915 () Bool)

(declare-fun res!615292 () Bool)

(assert (=> b!911915 (=> (not res!615292) (not e!511547))))

(assert (=> b!911915 (= res!615292 (and (= (size!26491 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26492 _keys!1386) (size!26491 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!615295 () Bool)

(assert (=> start!78176 (=> (not res!615295) (not e!511547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78176 (= res!615295 (validMask!0 mask!1756))))

(assert (=> start!78176 e!511547))

(declare-fun array_inv!20326 (array!54160) Bool)

(assert (=> start!78176 (and (array_inv!20326 _values!1152) e!511546)))

(assert (=> start!78176 tp!58252))

(assert (=> start!78176 true))

(assert (=> start!78176 tp_is_empty!19077))

(declare-fun array_inv!20327 (array!54162) Bool)

(assert (=> start!78176 (array_inv!20327 _keys!1386)))

(declare-fun b!911916 () Bool)

(declare-fun res!615293 () Bool)

(assert (=> b!911916 (=> (not res!615293) (not e!511547))))

(declare-datatypes ((List!18391 0))(
  ( (Nil!18388) (Cons!18387 (h!19533 (_ BitVec 64)) (t!25986 List!18391)) )
))
(declare-fun arrayNoDuplicates!0 (array!54162 (_ BitVec 32) List!18391) Bool)

(assert (=> b!911916 (= res!615293 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18388))))

(declare-fun b!911917 () Bool)

(declare-fun res!615294 () Bool)

(assert (=> b!911917 (=> (not res!615294) (not e!511547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54162 (_ BitVec 32)) Bool)

(assert (=> b!911917 (= res!615294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30340 () Bool)

(assert (=> mapIsEmpty!30340 mapRes!30340))

(assert (= (and start!78176 res!615295) b!911915))

(assert (= (and b!911915 res!615292) b!911917))

(assert (= (and b!911917 res!615294) b!911916))

(assert (= (and b!911916 res!615293) b!911911))

(assert (= (and b!911913 condMapEmpty!30340) mapIsEmpty!30340))

(assert (= (and b!911913 (not condMapEmpty!30340)) mapNonEmpty!30340))

(get-info :version)

(assert (= (and mapNonEmpty!30340 ((_ is ValueCellFull!9057) mapValue!30340)) b!911912))

(assert (= (and b!911913 ((_ is ValueCellFull!9057) mapDefault!30340)) b!911914))

(assert (= start!78176 b!911913))

(declare-fun m!846619 () Bool)

(assert (=> mapNonEmpty!30340 m!846619))

(declare-fun m!846621 () Bool)

(assert (=> b!911917 m!846621))

(declare-fun m!846623 () Bool)

(assert (=> b!911911 m!846623))

(assert (=> b!911911 m!846623))

(declare-fun m!846625 () Bool)

(assert (=> b!911911 m!846625))

(declare-fun m!846627 () Bool)

(assert (=> b!911916 m!846627))

(declare-fun m!846629 () Bool)

(assert (=> start!78176 m!846629))

(declare-fun m!846631 () Bool)

(assert (=> start!78176 m!846631))

(declare-fun m!846633 () Bool)

(assert (=> start!78176 m!846633))

(check-sat (not b!911916) (not b!911917) tp_is_empty!19077 (not mapNonEmpty!30340) b_and!27251 (not b_next!16659) (not start!78176) (not b!911911))
(check-sat b_and!27251 (not b_next!16659))
