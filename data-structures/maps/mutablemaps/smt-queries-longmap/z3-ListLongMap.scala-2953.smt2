; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41948 () Bool)

(assert start!41948)

(declare-fun b_free!11529 () Bool)

(declare-fun b_next!11529 () Bool)

(assert (=> start!41948 (= b_free!11529 (not b_next!11529))))

(declare-fun tp!40600 () Bool)

(declare-fun b_and!19935 () Bool)

(assert (=> start!41948 (= tp!40600 b_and!19935)))

(declare-fun b!468059 () Bool)

(declare-fun e!273926 () Bool)

(declare-fun tp_is_empty!12957 () Bool)

(assert (=> b!468059 (= e!273926 tp_is_empty!12957)))

(declare-fun b!468060 () Bool)

(declare-fun res!279808 () Bool)

(declare-fun e!273922 () Bool)

(assert (=> b!468060 (=> (not res!279808) (not e!273922))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29645 0))(
  ( (array!29646 (arr!14246 (Array (_ BitVec 32) (_ BitVec 64))) (size!14598 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29645)

(declare-datatypes ((V!18381 0))(
  ( (V!18382 (val!6523 Int)) )
))
(declare-datatypes ((ValueCell!6135 0))(
  ( (ValueCellFull!6135 (v!8808 V!18381)) (EmptyCell!6135) )
))
(declare-datatypes ((array!29647 0))(
  ( (array!29648 (arr!14247 (Array (_ BitVec 32) ValueCell!6135)) (size!14599 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29647)

(assert (=> b!468060 (= res!279808 (and (= (size!14599 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14598 _keys!1025) (size!14599 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468061 () Bool)

(declare-fun res!279810 () Bool)

(assert (=> b!468061 (=> (not res!279810) (not e!273922))))

(declare-datatypes ((List!8670 0))(
  ( (Nil!8667) (Cons!8666 (h!9522 (_ BitVec 64)) (t!14634 List!8670)) )
))
(declare-fun arrayNoDuplicates!0 (array!29645 (_ BitVec 32) List!8670) Bool)

(assert (=> b!468061 (= res!279810 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8667))))

(declare-fun mapIsEmpty!21127 () Bool)

(declare-fun mapRes!21127 () Bool)

(assert (=> mapIsEmpty!21127 mapRes!21127))

(declare-fun res!279811 () Bool)

(assert (=> start!41948 (=> (not res!279811) (not e!273922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41948 (= res!279811 (validMask!0 mask!1365))))

(assert (=> start!41948 e!273922))

(assert (=> start!41948 tp_is_empty!12957))

(assert (=> start!41948 tp!40600))

(assert (=> start!41948 true))

(declare-fun array_inv!10276 (array!29645) Bool)

(assert (=> start!41948 (array_inv!10276 _keys!1025)))

(declare-fun e!273924 () Bool)

(declare-fun array_inv!10277 (array!29647) Bool)

(assert (=> start!41948 (and (array_inv!10277 _values!833) e!273924)))

(declare-fun b!468062 () Bool)

(declare-fun e!273921 () Bool)

(assert (=> b!468062 (= e!273924 (and e!273921 mapRes!21127))))

(declare-fun condMapEmpty!21127 () Bool)

(declare-fun mapDefault!21127 () ValueCell!6135)

(assert (=> b!468062 (= condMapEmpty!21127 (= (arr!14247 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6135)) mapDefault!21127)))))

(declare-fun b!468063 () Bool)

(assert (=> b!468063 (= e!273921 tp_is_empty!12957)))

(declare-fun b!468064 () Bool)

(declare-fun e!273923 () Bool)

(assert (=> b!468064 (= e!273922 (not e!273923))))

(declare-fun res!279807 () Bool)

(assert (=> b!468064 (=> res!279807 e!273923)))

(assert (=> b!468064 (= res!279807 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8550 0))(
  ( (tuple2!8551 (_1!4285 (_ BitVec 64)) (_2!4285 V!18381)) )
))
(declare-datatypes ((List!8671 0))(
  ( (Nil!8668) (Cons!8667 (h!9523 tuple2!8550) (t!14635 List!8671)) )
))
(declare-datatypes ((ListLongMap!7477 0))(
  ( (ListLongMap!7478 (toList!3754 List!8671)) )
))
(declare-fun lt!211702 () ListLongMap!7477)

(declare-fun lt!211705 () ListLongMap!7477)

(assert (=> b!468064 (= lt!211702 lt!211705)))

(declare-fun minValueBefore!38 () V!18381)

(declare-fun zeroValue!794 () V!18381)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13629 0))(
  ( (Unit!13630) )
))
(declare-fun lt!211704 () Unit!13629)

(declare-fun minValueAfter!38 () V!18381)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!115 (array!29645 array!29647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18381 V!18381 V!18381 V!18381 (_ BitVec 32) Int) Unit!13629)

(assert (=> b!468064 (= lt!211704 (lemmaNoChangeToArrayThenSameMapNoExtras!115 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1920 (array!29645 array!29647 (_ BitVec 32) (_ BitVec 32) V!18381 V!18381 (_ BitVec 32) Int) ListLongMap!7477)

(assert (=> b!468064 (= lt!211705 (getCurrentListMapNoExtraKeys!1920 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468064 (= lt!211702 (getCurrentListMapNoExtraKeys!1920 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21127 () Bool)

(declare-fun tp!40599 () Bool)

(assert (=> mapNonEmpty!21127 (= mapRes!21127 (and tp!40599 e!273926))))

(declare-fun mapRest!21127 () (Array (_ BitVec 32) ValueCell!6135))

(declare-fun mapValue!21127 () ValueCell!6135)

(declare-fun mapKey!21127 () (_ BitVec 32))

(assert (=> mapNonEmpty!21127 (= (arr!14247 _values!833) (store mapRest!21127 mapKey!21127 mapValue!21127))))

(declare-fun b!468065 () Bool)

(declare-fun res!279809 () Bool)

(assert (=> b!468065 (=> (not res!279809) (not e!273922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29645 (_ BitVec 32)) Bool)

(assert (=> b!468065 (= res!279809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468066 () Bool)

(assert (=> b!468066 (= e!273923 true)))

(declare-fun lt!211703 () ListLongMap!7477)

(declare-fun getCurrentListMap!2170 (array!29645 array!29647 (_ BitVec 32) (_ BitVec 32) V!18381 V!18381 (_ BitVec 32) Int) ListLongMap!7477)

(assert (=> b!468066 (= lt!211703 (getCurrentListMap!2170 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41948 res!279811) b!468060))

(assert (= (and b!468060 res!279808) b!468065))

(assert (= (and b!468065 res!279809) b!468061))

(assert (= (and b!468061 res!279810) b!468064))

(assert (= (and b!468064 (not res!279807)) b!468066))

(assert (= (and b!468062 condMapEmpty!21127) mapIsEmpty!21127))

(assert (= (and b!468062 (not condMapEmpty!21127)) mapNonEmpty!21127))

(get-info :version)

(assert (= (and mapNonEmpty!21127 ((_ is ValueCellFull!6135) mapValue!21127)) b!468059))

(assert (= (and b!468062 ((_ is ValueCellFull!6135) mapDefault!21127)) b!468063))

(assert (= start!41948 b!468062))

(declare-fun m!450109 () Bool)

(assert (=> b!468061 m!450109))

(declare-fun m!450111 () Bool)

(assert (=> b!468066 m!450111))

(declare-fun m!450113 () Bool)

(assert (=> b!468064 m!450113))

(declare-fun m!450115 () Bool)

(assert (=> b!468064 m!450115))

(declare-fun m!450117 () Bool)

(assert (=> b!468064 m!450117))

(declare-fun m!450119 () Bool)

(assert (=> mapNonEmpty!21127 m!450119))

(declare-fun m!450121 () Bool)

(assert (=> b!468065 m!450121))

(declare-fun m!450123 () Bool)

(assert (=> start!41948 m!450123))

(declare-fun m!450125 () Bool)

(assert (=> start!41948 m!450125))

(declare-fun m!450127 () Bool)

(assert (=> start!41948 m!450127))

(check-sat (not b!468065) (not b_next!11529) (not b!468064) (not b!468061) (not mapNonEmpty!21127) b_and!19935 (not start!41948) (not b!468066) tp_is_empty!12957)
(check-sat b_and!19935 (not b_next!11529))
