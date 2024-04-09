; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41918 () Bool)

(assert start!41918)

(declare-fun b_free!11499 () Bool)

(declare-fun b_next!11499 () Bool)

(assert (=> start!41918 (= b_free!11499 (not b_next!11499))))

(declare-fun tp!40510 () Bool)

(declare-fun b_and!19905 () Bool)

(assert (=> start!41918 (= tp!40510 b_and!19905)))

(declare-fun b!467699 () Bool)

(declare-fun e!273654 () Bool)

(declare-fun e!273651 () Bool)

(assert (=> b!467699 (= e!273654 (not e!273651))))

(declare-fun res!279586 () Bool)

(assert (=> b!467699 (=> res!279586 e!273651)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467699 (= res!279586 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18341 0))(
  ( (V!18342 (val!6508 Int)) )
))
(declare-datatypes ((tuple2!8528 0))(
  ( (tuple2!8529 (_1!4274 (_ BitVec 64)) (_2!4274 V!18341)) )
))
(declare-datatypes ((List!8647 0))(
  ( (Nil!8644) (Cons!8643 (h!9499 tuple2!8528) (t!14611 List!8647)) )
))
(declare-datatypes ((ListLongMap!7455 0))(
  ( (ListLongMap!7456 (toList!3743 List!8647)) )
))
(declare-fun lt!211525 () ListLongMap!7455)

(declare-fun lt!211522 () ListLongMap!7455)

(assert (=> b!467699 (= lt!211525 lt!211522)))

(declare-fun minValueBefore!38 () V!18341)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13607 0))(
  ( (Unit!13608) )
))
(declare-fun lt!211523 () Unit!13607)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29589 0))(
  ( (array!29590 (arr!14218 (Array (_ BitVec 32) (_ BitVec 64))) (size!14570 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29589)

(declare-datatypes ((ValueCell!6120 0))(
  ( (ValueCellFull!6120 (v!8793 V!18341)) (EmptyCell!6120) )
))
(declare-datatypes ((array!29591 0))(
  ( (array!29592 (arr!14219 (Array (_ BitVec 32) ValueCell!6120)) (size!14571 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29591)

(declare-fun zeroValue!794 () V!18341)

(declare-fun minValueAfter!38 () V!18341)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!104 (array!29589 array!29591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18341 V!18341 V!18341 V!18341 (_ BitVec 32) Int) Unit!13607)

(assert (=> b!467699 (= lt!211523 (lemmaNoChangeToArrayThenSameMapNoExtras!104 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1909 (array!29589 array!29591 (_ BitVec 32) (_ BitVec 32) V!18341 V!18341 (_ BitVec 32) Int) ListLongMap!7455)

(assert (=> b!467699 (= lt!211522 (getCurrentListMapNoExtraKeys!1909 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467699 (= lt!211525 (getCurrentListMapNoExtraKeys!1909 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467700 () Bool)

(declare-fun res!279584 () Bool)

(assert (=> b!467700 (=> (not res!279584) (not e!273654))))

(declare-datatypes ((List!8648 0))(
  ( (Nil!8645) (Cons!8644 (h!9500 (_ BitVec 64)) (t!14612 List!8648)) )
))
(declare-fun arrayNoDuplicates!0 (array!29589 (_ BitVec 32) List!8648) Bool)

(assert (=> b!467700 (= res!279584 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8645))))

(declare-fun b!467701 () Bool)

(assert (=> b!467701 (= e!273651 true)))

(declare-fun lt!211524 () ListLongMap!7455)

(declare-fun getCurrentListMap!2161 (array!29589 array!29591 (_ BitVec 32) (_ BitVec 32) V!18341 V!18341 (_ BitVec 32) Int) ListLongMap!7455)

(assert (=> b!467701 (= lt!211524 (getCurrentListMap!2161 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21082 () Bool)

(declare-fun mapRes!21082 () Bool)

(assert (=> mapIsEmpty!21082 mapRes!21082))

(declare-fun b!467702 () Bool)

(declare-fun res!279585 () Bool)

(assert (=> b!467702 (=> (not res!279585) (not e!273654))))

(assert (=> b!467702 (= res!279585 (and (= (size!14571 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14570 _keys!1025) (size!14571 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467703 () Bool)

(declare-fun e!273652 () Bool)

(declare-fun tp_is_empty!12927 () Bool)

(assert (=> b!467703 (= e!273652 tp_is_empty!12927)))

(declare-fun b!467704 () Bool)

(declare-fun e!273656 () Bool)

(assert (=> b!467704 (= e!273656 tp_is_empty!12927)))

(declare-fun mapNonEmpty!21082 () Bool)

(declare-fun tp!40509 () Bool)

(assert (=> mapNonEmpty!21082 (= mapRes!21082 (and tp!40509 e!273652))))

(declare-fun mapValue!21082 () ValueCell!6120)

(declare-fun mapRest!21082 () (Array (_ BitVec 32) ValueCell!6120))

(declare-fun mapKey!21082 () (_ BitVec 32))

(assert (=> mapNonEmpty!21082 (= (arr!14219 _values!833) (store mapRest!21082 mapKey!21082 mapValue!21082))))

(declare-fun res!279582 () Bool)

(assert (=> start!41918 (=> (not res!279582) (not e!273654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41918 (= res!279582 (validMask!0 mask!1365))))

(assert (=> start!41918 e!273654))

(assert (=> start!41918 tp_is_empty!12927))

(assert (=> start!41918 tp!40510))

(assert (=> start!41918 true))

(declare-fun array_inv!10256 (array!29589) Bool)

(assert (=> start!41918 (array_inv!10256 _keys!1025)))

(declare-fun e!273655 () Bool)

(declare-fun array_inv!10257 (array!29591) Bool)

(assert (=> start!41918 (and (array_inv!10257 _values!833) e!273655)))

(declare-fun b!467705 () Bool)

(assert (=> b!467705 (= e!273655 (and e!273656 mapRes!21082))))

(declare-fun condMapEmpty!21082 () Bool)

(declare-fun mapDefault!21082 () ValueCell!6120)

(assert (=> b!467705 (= condMapEmpty!21082 (= (arr!14219 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6120)) mapDefault!21082)))))

(declare-fun b!467706 () Bool)

(declare-fun res!279583 () Bool)

(assert (=> b!467706 (=> (not res!279583) (not e!273654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29589 (_ BitVec 32)) Bool)

(assert (=> b!467706 (= res!279583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41918 res!279582) b!467702))

(assert (= (and b!467702 res!279585) b!467706))

(assert (= (and b!467706 res!279583) b!467700))

(assert (= (and b!467700 res!279584) b!467699))

(assert (= (and b!467699 (not res!279586)) b!467701))

(assert (= (and b!467705 condMapEmpty!21082) mapIsEmpty!21082))

(assert (= (and b!467705 (not condMapEmpty!21082)) mapNonEmpty!21082))

(get-info :version)

(assert (= (and mapNonEmpty!21082 ((_ is ValueCellFull!6120) mapValue!21082)) b!467703))

(assert (= (and b!467705 ((_ is ValueCellFull!6120) mapDefault!21082)) b!467704))

(assert (= start!41918 b!467705))

(declare-fun m!449809 () Bool)

(assert (=> start!41918 m!449809))

(declare-fun m!449811 () Bool)

(assert (=> start!41918 m!449811))

(declare-fun m!449813 () Bool)

(assert (=> start!41918 m!449813))

(declare-fun m!449815 () Bool)

(assert (=> b!467701 m!449815))

(declare-fun m!449817 () Bool)

(assert (=> mapNonEmpty!21082 m!449817))

(declare-fun m!449819 () Bool)

(assert (=> b!467706 m!449819))

(declare-fun m!449821 () Bool)

(assert (=> b!467699 m!449821))

(declare-fun m!449823 () Bool)

(assert (=> b!467699 m!449823))

(declare-fun m!449825 () Bool)

(assert (=> b!467699 m!449825))

(declare-fun m!449827 () Bool)

(assert (=> b!467700 m!449827))

(check-sat (not mapNonEmpty!21082) (not b!467700) b_and!19905 (not b!467699) tp_is_empty!12927 (not start!41918) (not b!467701) (not b_next!11499) (not b!467706))
(check-sat b_and!19905 (not b_next!11499))
