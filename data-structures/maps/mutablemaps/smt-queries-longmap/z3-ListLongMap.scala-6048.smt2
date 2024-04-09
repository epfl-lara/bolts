; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78238 () Bool)

(assert start!78238)

(declare-fun b_free!16701 () Bool)

(declare-fun b_next!16701 () Bool)

(assert (=> start!78238 (= b_free!16701 (not b_next!16701))))

(declare-fun tp!58380 () Bool)

(declare-fun b_and!27295 () Bool)

(assert (=> start!78238 (= tp!58380 b_and!27295)))

(declare-fun b!912623 () Bool)

(declare-fun e!511942 () Bool)

(assert (=> b!912623 (= e!511942 (not true))))

(declare-datatypes ((array!54240 0))(
  ( (array!54241 (arr!26070 (Array (_ BitVec 32) (_ BitVec 64))) (size!26530 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54240)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912623 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!30457 0))(
  ( (V!30458 (val!9610 Int)) )
))
(declare-datatypes ((ValueCell!9078 0))(
  ( (ValueCellFull!9078 (v!12121 V!30457)) (EmptyCell!9078) )
))
(declare-datatypes ((array!54242 0))(
  ( (array!54243 (arr!26071 (Array (_ BitVec 32) ValueCell!9078)) (size!26531 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54242)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30457)

(declare-datatypes ((Unit!30865 0))(
  ( (Unit!30866) )
))
(declare-fun lt!410647 () Unit!30865)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30457)

(declare-fun lemmaKeyInListMapIsInArray!278 (array!54240 array!54242 (_ BitVec 32) (_ BitVec 32) V!30457 V!30457 (_ BitVec 64) Int) Unit!30865)

(assert (=> b!912623 (= lt!410647 (lemmaKeyInListMapIsInArray!278 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912624 () Bool)

(declare-fun res!615751 () Bool)

(assert (=> b!912624 (=> (not res!615751) (not e!511942))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912624 (= res!615751 (inRange!0 i!717 mask!1756))))

(declare-fun b!912625 () Bool)

(declare-fun res!615749 () Bool)

(assert (=> b!912625 (=> (not res!615749) (not e!511942))))

(declare-datatypes ((List!18421 0))(
  ( (Nil!18418) (Cons!18417 (h!19563 (_ BitVec 64)) (t!26018 List!18421)) )
))
(declare-fun arrayNoDuplicates!0 (array!54240 (_ BitVec 32) List!18421) Bool)

(assert (=> b!912625 (= res!615749 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18418))))

(declare-fun b!912626 () Bool)

(declare-fun res!615745 () Bool)

(assert (=> b!912626 (=> (not res!615745) (not e!511942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54240 (_ BitVec 32)) Bool)

(assert (=> b!912626 (= res!615745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912627 () Bool)

(declare-fun e!511943 () Bool)

(declare-fun tp_is_empty!19119 () Bool)

(assert (=> b!912627 (= e!511943 tp_is_empty!19119)))

(declare-fun res!615748 () Bool)

(assert (=> start!78238 (=> (not res!615748) (not e!511942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78238 (= res!615748 (validMask!0 mask!1756))))

(assert (=> start!78238 e!511942))

(declare-fun e!511945 () Bool)

(declare-fun array_inv!20354 (array!54242) Bool)

(assert (=> start!78238 (and (array_inv!20354 _values!1152) e!511945)))

(assert (=> start!78238 tp!58380))

(assert (=> start!78238 true))

(assert (=> start!78238 tp_is_empty!19119))

(declare-fun array_inv!20355 (array!54240) Bool)

(assert (=> start!78238 (array_inv!20355 _keys!1386)))

(declare-fun b!912628 () Bool)

(declare-fun mapRes!30406 () Bool)

(assert (=> b!912628 (= e!511945 (and e!511943 mapRes!30406))))

(declare-fun condMapEmpty!30406 () Bool)

(declare-fun mapDefault!30406 () ValueCell!9078)

(assert (=> b!912628 (= condMapEmpty!30406 (= (arr!26071 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9078)) mapDefault!30406)))))

(declare-fun b!912629 () Bool)

(declare-fun res!615750 () Bool)

(assert (=> b!912629 (=> (not res!615750) (not e!511942))))

(declare-datatypes ((tuple2!12580 0))(
  ( (tuple2!12581 (_1!6300 (_ BitVec 64)) (_2!6300 V!30457)) )
))
(declare-datatypes ((List!18422 0))(
  ( (Nil!18419) (Cons!18418 (h!19564 tuple2!12580) (t!26019 List!18422)) )
))
(declare-datatypes ((ListLongMap!11291 0))(
  ( (ListLongMap!11292 (toList!5661 List!18422)) )
))
(declare-fun contains!4672 (ListLongMap!11291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2891 (array!54240 array!54242 (_ BitVec 32) (_ BitVec 32) V!30457 V!30457 (_ BitVec 32) Int) ListLongMap!11291)

(assert (=> b!912629 (= res!615750 (contains!4672 (getCurrentListMap!2891 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912630 () Bool)

(declare-fun e!511944 () Bool)

(assert (=> b!912630 (= e!511944 tp_is_empty!19119)))

(declare-fun b!912631 () Bool)

(declare-fun res!615746 () Bool)

(assert (=> b!912631 (=> (not res!615746) (not e!511942))))

(assert (=> b!912631 (= res!615746 (and (= (select (arr!26070 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!30406 () Bool)

(assert (=> mapIsEmpty!30406 mapRes!30406))

(declare-fun b!912632 () Bool)

(declare-fun res!615747 () Bool)

(assert (=> b!912632 (=> (not res!615747) (not e!511942))))

(assert (=> b!912632 (= res!615747 (and (= (size!26531 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26530 _keys!1386) (size!26531 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30406 () Bool)

(declare-fun tp!58381 () Bool)

(assert (=> mapNonEmpty!30406 (= mapRes!30406 (and tp!58381 e!511944))))

(declare-fun mapRest!30406 () (Array (_ BitVec 32) ValueCell!9078))

(declare-fun mapValue!30406 () ValueCell!9078)

(declare-fun mapKey!30406 () (_ BitVec 32))

(assert (=> mapNonEmpty!30406 (= (arr!26071 _values!1152) (store mapRest!30406 mapKey!30406 mapValue!30406))))

(assert (= (and start!78238 res!615748) b!912632))

(assert (= (and b!912632 res!615747) b!912626))

(assert (= (and b!912626 res!615745) b!912625))

(assert (= (and b!912625 res!615749) b!912629))

(assert (= (and b!912629 res!615750) b!912624))

(assert (= (and b!912624 res!615751) b!912631))

(assert (= (and b!912631 res!615746) b!912623))

(assert (= (and b!912628 condMapEmpty!30406) mapIsEmpty!30406))

(assert (= (and b!912628 (not condMapEmpty!30406)) mapNonEmpty!30406))

(get-info :version)

(assert (= (and mapNonEmpty!30406 ((_ is ValueCellFull!9078) mapValue!30406)) b!912630))

(assert (= (and b!912628 ((_ is ValueCellFull!9078) mapDefault!30406)) b!912627))

(assert (= start!78238 b!912628))

(declare-fun m!847167 () Bool)

(assert (=> mapNonEmpty!30406 m!847167))

(declare-fun m!847169 () Bool)

(assert (=> b!912631 m!847169))

(declare-fun m!847171 () Bool)

(assert (=> start!78238 m!847171))

(declare-fun m!847173 () Bool)

(assert (=> start!78238 m!847173))

(declare-fun m!847175 () Bool)

(assert (=> start!78238 m!847175))

(declare-fun m!847177 () Bool)

(assert (=> b!912623 m!847177))

(declare-fun m!847179 () Bool)

(assert (=> b!912623 m!847179))

(declare-fun m!847181 () Bool)

(assert (=> b!912629 m!847181))

(assert (=> b!912629 m!847181))

(declare-fun m!847183 () Bool)

(assert (=> b!912629 m!847183))

(declare-fun m!847185 () Bool)

(assert (=> b!912624 m!847185))

(declare-fun m!847187 () Bool)

(assert (=> b!912625 m!847187))

(declare-fun m!847189 () Bool)

(assert (=> b!912626 m!847189))

(check-sat (not b!912625) tp_is_empty!19119 (not mapNonEmpty!30406) (not b!912623) (not b!912624) b_and!27295 (not b!912626) (not b!912629) (not b_next!16701) (not start!78238))
(check-sat b_and!27295 (not b_next!16701))
