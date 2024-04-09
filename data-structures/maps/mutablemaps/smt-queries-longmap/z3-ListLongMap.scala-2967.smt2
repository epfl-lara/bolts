; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42068 () Bool)

(assert start!42068)

(declare-fun b_free!11613 () Bool)

(declare-fun b_next!11613 () Bool)

(assert (=> start!42068 (= b_free!11613 (not b_next!11613))))

(declare-fun tp!40857 () Bool)

(declare-fun b_and!20041 () Bool)

(assert (=> start!42068 (= tp!40857 b_and!20041)))

(declare-fun b!469394 () Bool)

(declare-fun res!280576 () Bool)

(declare-fun e!274885 () Bool)

(assert (=> b!469394 (=> (not res!280576) (not e!274885))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29817 0))(
  ( (array!29818 (arr!14330 (Array (_ BitVec 32) (_ BitVec 64))) (size!14682 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29817)

(declare-datatypes ((V!18493 0))(
  ( (V!18494 (val!6565 Int)) )
))
(declare-datatypes ((ValueCell!6177 0))(
  ( (ValueCellFull!6177 (v!8851 V!18493)) (EmptyCell!6177) )
))
(declare-datatypes ((array!29819 0))(
  ( (array!29820 (arr!14331 (Array (_ BitVec 32) ValueCell!6177)) (size!14683 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29819)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!469394 (= res!280576 (and (= (size!14683 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14682 _keys!1025) (size!14683 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469395 () Bool)

(declare-fun res!280573 () Bool)

(assert (=> b!469395 (=> (not res!280573) (not e!274885))))

(declare-datatypes ((List!8734 0))(
  ( (Nil!8731) (Cons!8730 (h!9586 (_ BitVec 64)) (t!14702 List!8734)) )
))
(declare-fun arrayNoDuplicates!0 (array!29817 (_ BitVec 32) List!8734) Bool)

(assert (=> b!469395 (= res!280573 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8731))))

(declare-fun b!469396 () Bool)

(declare-fun res!280575 () Bool)

(assert (=> b!469396 (=> (not res!280575) (not e!274885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29817 (_ BitVec 32)) Bool)

(assert (=> b!469396 (= res!280575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469397 () Bool)

(declare-fun e!274883 () Bool)

(declare-fun tp_is_empty!13041 () Bool)

(assert (=> b!469397 (= e!274883 tp_is_empty!13041)))

(declare-fun res!280572 () Bool)

(assert (=> start!42068 (=> (not res!280572) (not e!274885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42068 (= res!280572 (validMask!0 mask!1365))))

(assert (=> start!42068 e!274885))

(assert (=> start!42068 tp_is_empty!13041))

(assert (=> start!42068 tp!40857))

(assert (=> start!42068 true))

(declare-fun array_inv!10334 (array!29817) Bool)

(assert (=> start!42068 (array_inv!10334 _keys!1025)))

(declare-fun e!274887 () Bool)

(declare-fun array_inv!10335 (array!29819) Bool)

(assert (=> start!42068 (and (array_inv!10335 _values!833) e!274887)))

(declare-fun b!469398 () Bool)

(declare-fun e!274886 () Bool)

(assert (=> b!469398 (= e!274886 tp_is_empty!13041)))

(declare-fun mapIsEmpty!21259 () Bool)

(declare-fun mapRes!21259 () Bool)

(assert (=> mapIsEmpty!21259 mapRes!21259))

(declare-fun b!469399 () Bool)

(declare-fun e!274884 () Bool)

(assert (=> b!469399 (= e!274885 (not e!274884))))

(declare-fun res!280574 () Bool)

(assert (=> b!469399 (=> res!280574 e!274884)))

(assert (=> b!469399 (= res!280574 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8616 0))(
  ( (tuple2!8617 (_1!4318 (_ BitVec 64)) (_2!4318 V!18493)) )
))
(declare-datatypes ((List!8735 0))(
  ( (Nil!8732) (Cons!8731 (h!9587 tuple2!8616) (t!14703 List!8735)) )
))
(declare-datatypes ((ListLongMap!7543 0))(
  ( (ListLongMap!7544 (toList!3787 List!8735)) )
))
(declare-fun lt!212806 () ListLongMap!7543)

(declare-fun lt!212804 () ListLongMap!7543)

(assert (=> b!469399 (= lt!212806 lt!212804)))

(declare-fun zeroValue!794 () V!18493)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueBefore!38 () V!18493)

(declare-datatypes ((Unit!13698 0))(
  ( (Unit!13699) )
))
(declare-fun lt!212802 () Unit!13698)

(declare-fun minValueAfter!38 () V!18493)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!145 (array!29817 array!29819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18493 V!18493 V!18493 V!18493 (_ BitVec 32) Int) Unit!13698)

(assert (=> b!469399 (= lt!212802 (lemmaNoChangeToArrayThenSameMapNoExtras!145 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1950 (array!29817 array!29819 (_ BitVec 32) (_ BitVec 32) V!18493 V!18493 (_ BitVec 32) Int) ListLongMap!7543)

(assert (=> b!469399 (= lt!212804 (getCurrentListMapNoExtraKeys!1950 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469399 (= lt!212806 (getCurrentListMapNoExtraKeys!1950 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21259 () Bool)

(declare-fun tp!40858 () Bool)

(assert (=> mapNonEmpty!21259 (= mapRes!21259 (and tp!40858 e!274886))))

(declare-fun mapValue!21259 () ValueCell!6177)

(declare-fun mapRest!21259 () (Array (_ BitVec 32) ValueCell!6177))

(declare-fun mapKey!21259 () (_ BitVec 32))

(assert (=> mapNonEmpty!21259 (= (arr!14331 _values!833) (store mapRest!21259 mapKey!21259 mapValue!21259))))

(declare-fun b!469400 () Bool)

(assert (=> b!469400 (= e!274884 true)))

(declare-fun lt!212807 () tuple2!8616)

(declare-fun +!1675 (ListLongMap!7543 tuple2!8616) ListLongMap!7543)

(assert (=> b!469400 (= (+!1675 lt!212806 lt!212807) (+!1675 (+!1675 lt!212806 (tuple2!8617 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212807))))

(assert (=> b!469400 (= lt!212807 (tuple2!8617 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212803 () Unit!13698)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!116 (ListLongMap!7543 (_ BitVec 64) V!18493 V!18493) Unit!13698)

(assert (=> b!469400 (= lt!212803 (addSameAsAddTwiceSameKeyDiffValues!116 lt!212806 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212805 () ListLongMap!7543)

(declare-fun getCurrentListMap!2197 (array!29817 array!29819 (_ BitVec 32) (_ BitVec 32) V!18493 V!18493 (_ BitVec 32) Int) ListLongMap!7543)

(assert (=> b!469400 (= lt!212805 (getCurrentListMap!2197 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212808 () ListLongMap!7543)

(assert (=> b!469400 (= lt!212808 (getCurrentListMap!2197 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469401 () Bool)

(assert (=> b!469401 (= e!274887 (and e!274883 mapRes!21259))))

(declare-fun condMapEmpty!21259 () Bool)

(declare-fun mapDefault!21259 () ValueCell!6177)

(assert (=> b!469401 (= condMapEmpty!21259 (= (arr!14331 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6177)) mapDefault!21259)))))

(assert (= (and start!42068 res!280572) b!469394))

(assert (= (and b!469394 res!280576) b!469396))

(assert (= (and b!469396 res!280575) b!469395))

(assert (= (and b!469395 res!280573) b!469399))

(assert (= (and b!469399 (not res!280574)) b!469400))

(assert (= (and b!469401 condMapEmpty!21259) mapIsEmpty!21259))

(assert (= (and b!469401 (not condMapEmpty!21259)) mapNonEmpty!21259))

(get-info :version)

(assert (= (and mapNonEmpty!21259 ((_ is ValueCellFull!6177) mapValue!21259)) b!469398))

(assert (= (and b!469401 ((_ is ValueCellFull!6177) mapDefault!21259)) b!469397))

(assert (= start!42068 b!469401))

(declare-fun m!451631 () Bool)

(assert (=> b!469395 m!451631))

(declare-fun m!451633 () Bool)

(assert (=> mapNonEmpty!21259 m!451633))

(declare-fun m!451635 () Bool)

(assert (=> b!469400 m!451635))

(declare-fun m!451637 () Bool)

(assert (=> b!469400 m!451637))

(declare-fun m!451639 () Bool)

(assert (=> b!469400 m!451639))

(declare-fun m!451641 () Bool)

(assert (=> b!469400 m!451641))

(declare-fun m!451643 () Bool)

(assert (=> b!469400 m!451643))

(declare-fun m!451645 () Bool)

(assert (=> b!469400 m!451645))

(assert (=> b!469400 m!451637))

(declare-fun m!451647 () Bool)

(assert (=> start!42068 m!451647))

(declare-fun m!451649 () Bool)

(assert (=> start!42068 m!451649))

(declare-fun m!451651 () Bool)

(assert (=> start!42068 m!451651))

(declare-fun m!451653 () Bool)

(assert (=> b!469399 m!451653))

(declare-fun m!451655 () Bool)

(assert (=> b!469399 m!451655))

(declare-fun m!451657 () Bool)

(assert (=> b!469399 m!451657))

(declare-fun m!451659 () Bool)

(assert (=> b!469396 m!451659))

(check-sat (not b!469396) (not b!469399) (not mapNonEmpty!21259) (not b_next!11613) b_and!20041 (not b!469400) tp_is_empty!13041 (not b!469395) (not start!42068))
(check-sat b_and!20041 (not b_next!11613))
