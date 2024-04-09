; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78152 () Bool)

(assert start!78152)

(declare-fun b_free!16635 () Bool)

(declare-fun b_next!16635 () Bool)

(assert (=> start!78152 (= b_free!16635 (not b_next!16635))))

(declare-fun tp!58180 () Bool)

(declare-fun b_and!27227 () Bool)

(assert (=> start!78152 (= tp!58180 b_and!27227)))

(declare-fun b!911659 () Bool)

(declare-fun res!615151 () Bool)

(declare-fun e!511368 () Bool)

(assert (=> b!911659 (=> (not res!615151) (not e!511368))))

(declare-datatypes ((array!54114 0))(
  ( (array!54115 (arr!26008 (Array (_ BitVec 32) (_ BitVec 64))) (size!26468 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54114)

(declare-datatypes ((List!18374 0))(
  ( (Nil!18371) (Cons!18370 (h!19516 (_ BitVec 64)) (t!25969 List!18374)) )
))
(declare-fun arrayNoDuplicates!0 (array!54114 (_ BitVec 32) List!18374) Bool)

(assert (=> b!911659 (= res!615151 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18371))))

(declare-fun b!911660 () Bool)

(declare-fun e!511367 () Bool)

(declare-fun tp_is_empty!19053 () Bool)

(assert (=> b!911660 (= e!511367 tp_is_empty!19053)))

(declare-fun b!911661 () Bool)

(declare-fun res!615148 () Bool)

(assert (=> b!911661 (=> (not res!615148) (not e!511368))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54114 (_ BitVec 32)) Bool)

(assert (=> b!911661 (= res!615148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!615149 () Bool)

(assert (=> start!78152 (=> (not res!615149) (not e!511368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78152 (= res!615149 (validMask!0 mask!1756))))

(assert (=> start!78152 e!511368))

(declare-datatypes ((V!30369 0))(
  ( (V!30370 (val!9577 Int)) )
))
(declare-datatypes ((ValueCell!9045 0))(
  ( (ValueCellFull!9045 (v!12087 V!30369)) (EmptyCell!9045) )
))
(declare-datatypes ((array!54116 0))(
  ( (array!54117 (arr!26009 (Array (_ BitVec 32) ValueCell!9045)) (size!26469 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54116)

(declare-fun e!511370 () Bool)

(declare-fun array_inv!20312 (array!54116) Bool)

(assert (=> start!78152 (and (array_inv!20312 _values!1152) e!511370)))

(assert (=> start!78152 tp!58180))

(assert (=> start!78152 true))

(assert (=> start!78152 tp_is_empty!19053))

(declare-fun array_inv!20313 (array!54114) Bool)

(assert (=> start!78152 (array_inv!20313 _keys!1386)))

(declare-fun mapIsEmpty!30304 () Bool)

(declare-fun mapRes!30304 () Bool)

(assert (=> mapIsEmpty!30304 mapRes!30304))

(declare-fun mapNonEmpty!30304 () Bool)

(declare-fun tp!58179 () Bool)

(assert (=> mapNonEmpty!30304 (= mapRes!30304 (and tp!58179 e!511367))))

(declare-fun mapValue!30304 () ValueCell!9045)

(declare-fun mapKey!30304 () (_ BitVec 32))

(declare-fun mapRest!30304 () (Array (_ BitVec 32) ValueCell!9045))

(assert (=> mapNonEmpty!30304 (= (arr!26009 _values!1152) (store mapRest!30304 mapKey!30304 mapValue!30304))))

(declare-fun b!911662 () Bool)

(assert (=> b!911662 (= e!511368 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30369)

(declare-fun lt!410458 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30369)

(declare-datatypes ((tuple2!12530 0))(
  ( (tuple2!12531 (_1!6275 (_ BitVec 64)) (_2!6275 V!30369)) )
))
(declare-datatypes ((List!18375 0))(
  ( (Nil!18372) (Cons!18371 (h!19517 tuple2!12530) (t!25970 List!18375)) )
))
(declare-datatypes ((ListLongMap!11241 0))(
  ( (ListLongMap!11242 (toList!5636 List!18375)) )
))
(declare-fun contains!4646 (ListLongMap!11241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2866 (array!54114 array!54116 (_ BitVec 32) (_ BitVec 32) V!30369 V!30369 (_ BitVec 32) Int) ListLongMap!11241)

(assert (=> b!911662 (= lt!410458 (contains!4646 (getCurrentListMap!2866 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911663 () Bool)

(declare-fun res!615150 () Bool)

(assert (=> b!911663 (=> (not res!615150) (not e!511368))))

(assert (=> b!911663 (= res!615150 (and (= (size!26469 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26468 _keys!1386) (size!26469 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911664 () Bool)

(declare-fun e!511366 () Bool)

(assert (=> b!911664 (= e!511370 (and e!511366 mapRes!30304))))

(declare-fun condMapEmpty!30304 () Bool)

(declare-fun mapDefault!30304 () ValueCell!9045)

(assert (=> b!911664 (= condMapEmpty!30304 (= (arr!26009 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9045)) mapDefault!30304)))))

(declare-fun b!911665 () Bool)

(assert (=> b!911665 (= e!511366 tp_is_empty!19053)))

(assert (= (and start!78152 res!615149) b!911663))

(assert (= (and b!911663 res!615150) b!911661))

(assert (= (and b!911661 res!615148) b!911659))

(assert (= (and b!911659 res!615151) b!911662))

(assert (= (and b!911664 condMapEmpty!30304) mapIsEmpty!30304))

(assert (= (and b!911664 (not condMapEmpty!30304)) mapNonEmpty!30304))

(get-info :version)

(assert (= (and mapNonEmpty!30304 ((_ is ValueCellFull!9045) mapValue!30304)) b!911660))

(assert (= (and b!911664 ((_ is ValueCellFull!9045) mapDefault!30304)) b!911665))

(assert (= start!78152 b!911664))

(declare-fun m!846427 () Bool)

(assert (=> b!911661 m!846427))

(declare-fun m!846429 () Bool)

(assert (=> b!911662 m!846429))

(assert (=> b!911662 m!846429))

(declare-fun m!846431 () Bool)

(assert (=> b!911662 m!846431))

(declare-fun m!846433 () Bool)

(assert (=> mapNonEmpty!30304 m!846433))

(declare-fun m!846435 () Bool)

(assert (=> b!911659 m!846435))

(declare-fun m!846437 () Bool)

(assert (=> start!78152 m!846437))

(declare-fun m!846439 () Bool)

(assert (=> start!78152 m!846439))

(declare-fun m!846441 () Bool)

(assert (=> start!78152 m!846441))

(check-sat (not mapNonEmpty!30304) (not start!78152) (not b!911659) (not b!911662) tp_is_empty!19053 (not b!911661) (not b_next!16635) b_and!27227)
(check-sat b_and!27227 (not b_next!16635))
