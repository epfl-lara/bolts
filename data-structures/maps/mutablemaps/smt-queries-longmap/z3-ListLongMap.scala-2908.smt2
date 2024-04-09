; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41600 () Bool)

(assert start!41600)

(declare-fun b_free!11259 () Bool)

(declare-fun b_next!11259 () Bool)

(assert (=> start!41600 (= b_free!11259 (not b_next!11259))))

(declare-fun tp!39775 () Bool)

(declare-fun b_and!19617 () Bool)

(assert (=> start!41600 (= tp!39775 b_and!19617)))

(declare-fun b!464371 () Bool)

(declare-fun res!277702 () Bool)

(declare-fun e!271283 () Bool)

(assert (=> b!464371 (=> (not res!277702) (not e!271283))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29121 0))(
  ( (array!29122 (arr!13989 (Array (_ BitVec 32) (_ BitVec 64))) (size!14341 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29121)

(declare-datatypes ((V!18021 0))(
  ( (V!18022 (val!6388 Int)) )
))
(declare-datatypes ((ValueCell!6000 0))(
  ( (ValueCellFull!6000 (v!8671 V!18021)) (EmptyCell!6000) )
))
(declare-datatypes ((array!29123 0))(
  ( (array!29124 (arr!13990 (Array (_ BitVec 32) ValueCell!6000)) (size!14342 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29123)

(assert (=> b!464371 (= res!277702 (and (= (size!14342 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14341 _keys!1025) (size!14342 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20707 () Bool)

(declare-fun mapRes!20707 () Bool)

(assert (=> mapIsEmpty!20707 mapRes!20707))

(declare-fun b!464372 () Bool)

(declare-fun e!271281 () Bool)

(declare-fun tp_is_empty!12687 () Bool)

(assert (=> b!464372 (= e!271281 tp_is_empty!12687)))

(declare-fun b!464373 () Bool)

(declare-fun res!277703 () Bool)

(assert (=> b!464373 (=> (not res!277703) (not e!271283))))

(declare-datatypes ((List!8474 0))(
  ( (Nil!8471) (Cons!8470 (h!9326 (_ BitVec 64)) (t!14428 List!8474)) )
))
(declare-fun arrayNoDuplicates!0 (array!29121 (_ BitVec 32) List!8474) Bool)

(assert (=> b!464373 (= res!277703 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8471))))

(declare-fun b!464374 () Bool)

(assert (=> b!464374 (= e!271283 (not true))))

(declare-datatypes ((tuple2!8346 0))(
  ( (tuple2!8347 (_1!4183 (_ BitVec 64)) (_2!4183 V!18021)) )
))
(declare-datatypes ((List!8475 0))(
  ( (Nil!8472) (Cons!8471 (h!9327 tuple2!8346) (t!14429 List!8475)) )
))
(declare-datatypes ((ListLongMap!7273 0))(
  ( (ListLongMap!7274 (toList!3652 List!8475)) )
))
(declare-fun lt!209733 () ListLongMap!7273)

(declare-fun lt!209731 () ListLongMap!7273)

(assert (=> b!464374 (= lt!209733 lt!209731)))

(declare-fun minValueBefore!38 () V!18021)

(declare-fun zeroValue!794 () V!18021)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18021)

(declare-datatypes ((Unit!13425 0))(
  ( (Unit!13426) )
))
(declare-fun lt!209732 () Unit!13425)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!15 (array!29121 array!29123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18021 V!18021 V!18021 V!18021 (_ BitVec 32) Int) Unit!13425)

(assert (=> b!464374 (= lt!209732 (lemmaNoChangeToArrayThenSameMapNoExtras!15 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1820 (array!29121 array!29123 (_ BitVec 32) (_ BitVec 32) V!18021 V!18021 (_ BitVec 32) Int) ListLongMap!7273)

(assert (=> b!464374 (= lt!209731 (getCurrentListMapNoExtraKeys!1820 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464374 (= lt!209733 (getCurrentListMapNoExtraKeys!1820 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464375 () Bool)

(declare-fun res!277700 () Bool)

(assert (=> b!464375 (=> (not res!277700) (not e!271283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29121 (_ BitVec 32)) Bool)

(assert (=> b!464375 (= res!277700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464376 () Bool)

(declare-fun e!271284 () Bool)

(declare-fun e!271282 () Bool)

(assert (=> b!464376 (= e!271284 (and e!271282 mapRes!20707))))

(declare-fun condMapEmpty!20707 () Bool)

(declare-fun mapDefault!20707 () ValueCell!6000)

(assert (=> b!464376 (= condMapEmpty!20707 (= (arr!13990 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6000)) mapDefault!20707)))))

(declare-fun b!464377 () Bool)

(assert (=> b!464377 (= e!271282 tp_is_empty!12687)))

(declare-fun mapNonEmpty!20707 () Bool)

(declare-fun tp!39774 () Bool)

(assert (=> mapNonEmpty!20707 (= mapRes!20707 (and tp!39774 e!271281))))

(declare-fun mapValue!20707 () ValueCell!6000)

(declare-fun mapRest!20707 () (Array (_ BitVec 32) ValueCell!6000))

(declare-fun mapKey!20707 () (_ BitVec 32))

(assert (=> mapNonEmpty!20707 (= (arr!13990 _values!833) (store mapRest!20707 mapKey!20707 mapValue!20707))))

(declare-fun res!277701 () Bool)

(assert (=> start!41600 (=> (not res!277701) (not e!271283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41600 (= res!277701 (validMask!0 mask!1365))))

(assert (=> start!41600 e!271283))

(assert (=> start!41600 tp_is_empty!12687))

(assert (=> start!41600 tp!39775))

(assert (=> start!41600 true))

(declare-fun array_inv!10084 (array!29121) Bool)

(assert (=> start!41600 (array_inv!10084 _keys!1025)))

(declare-fun array_inv!10085 (array!29123) Bool)

(assert (=> start!41600 (and (array_inv!10085 _values!833) e!271284)))

(assert (= (and start!41600 res!277701) b!464371))

(assert (= (and b!464371 res!277702) b!464375))

(assert (= (and b!464375 res!277700) b!464373))

(assert (= (and b!464373 res!277703) b!464374))

(assert (= (and b!464376 condMapEmpty!20707) mapIsEmpty!20707))

(assert (= (and b!464376 (not condMapEmpty!20707)) mapNonEmpty!20707))

(get-info :version)

(assert (= (and mapNonEmpty!20707 ((_ is ValueCellFull!6000) mapValue!20707)) b!464372))

(assert (= (and b!464376 ((_ is ValueCellFull!6000) mapDefault!20707)) b!464377))

(assert (= start!41600 b!464376))

(declare-fun m!446773 () Bool)

(assert (=> b!464374 m!446773))

(declare-fun m!446775 () Bool)

(assert (=> b!464374 m!446775))

(declare-fun m!446777 () Bool)

(assert (=> b!464374 m!446777))

(declare-fun m!446779 () Bool)

(assert (=> b!464373 m!446779))

(declare-fun m!446781 () Bool)

(assert (=> mapNonEmpty!20707 m!446781))

(declare-fun m!446783 () Bool)

(assert (=> start!41600 m!446783))

(declare-fun m!446785 () Bool)

(assert (=> start!41600 m!446785))

(declare-fun m!446787 () Bool)

(assert (=> start!41600 m!446787))

(declare-fun m!446789 () Bool)

(assert (=> b!464375 m!446789))

(check-sat (not start!41600) tp_is_empty!12687 (not mapNonEmpty!20707) b_and!19617 (not b!464373) (not b!464374) (not b_next!11259) (not b!464375))
(check-sat b_and!19617 (not b_next!11259))
