; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41576 () Bool)

(assert start!41576)

(declare-fun b_free!11235 () Bool)

(declare-fun b_next!11235 () Bool)

(assert (=> start!41576 (= b_free!11235 (not b_next!11235))))

(declare-fun tp!39702 () Bool)

(declare-fun b_and!19593 () Bool)

(assert (=> start!41576 (= tp!39702 b_and!19593)))

(declare-fun b!464119 () Bool)

(declare-fun e!271103 () Bool)

(declare-fun e!271104 () Bool)

(declare-fun mapRes!20671 () Bool)

(assert (=> b!464119 (= e!271103 (and e!271104 mapRes!20671))))

(declare-fun condMapEmpty!20671 () Bool)

(declare-datatypes ((V!17989 0))(
  ( (V!17990 (val!6376 Int)) )
))
(declare-datatypes ((ValueCell!5988 0))(
  ( (ValueCellFull!5988 (v!8659 V!17989)) (EmptyCell!5988) )
))
(declare-datatypes ((array!29077 0))(
  ( (array!29078 (arr!13967 (Array (_ BitVec 32) ValueCell!5988)) (size!14319 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29077)

(declare-fun mapDefault!20671 () ValueCell!5988)

(assert (=> b!464119 (= condMapEmpty!20671 (= (arr!13967 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5988)) mapDefault!20671)))))

(declare-fun b!464120 () Bool)

(declare-fun e!271105 () Bool)

(declare-fun tp_is_empty!12663 () Bool)

(assert (=> b!464120 (= e!271105 tp_is_empty!12663)))

(declare-fun res!277557 () Bool)

(declare-fun e!271102 () Bool)

(assert (=> start!41576 (=> (not res!277557) (not e!271102))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41576 (= res!277557 (validMask!0 mask!1365))))

(assert (=> start!41576 e!271102))

(assert (=> start!41576 tp_is_empty!12663))

(assert (=> start!41576 tp!39702))

(assert (=> start!41576 true))

(declare-datatypes ((array!29079 0))(
  ( (array!29080 (arr!13968 (Array (_ BitVec 32) (_ BitVec 64))) (size!14320 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29079)

(declare-fun array_inv!10072 (array!29079) Bool)

(assert (=> start!41576 (array_inv!10072 _keys!1025)))

(declare-fun array_inv!10073 (array!29077) Bool)

(assert (=> start!41576 (and (array_inv!10073 _values!833) e!271103)))

(declare-fun b!464121 () Bool)

(declare-fun res!277556 () Bool)

(assert (=> b!464121 (=> (not res!277556) (not e!271102))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464121 (= res!277556 (and (= (size!14319 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14320 _keys!1025) (size!14319 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464122 () Bool)

(assert (=> b!464122 (= e!271104 tp_is_empty!12663)))

(declare-fun b!464123 () Bool)

(declare-fun res!277558 () Bool)

(assert (=> b!464123 (=> (not res!277558) (not e!271102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29079 (_ BitVec 32)) Bool)

(assert (=> b!464123 (= res!277558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464124 () Bool)

(declare-fun res!277559 () Bool)

(assert (=> b!464124 (=> (not res!277559) (not e!271102))))

(declare-datatypes ((List!8460 0))(
  ( (Nil!8457) (Cons!8456 (h!9312 (_ BitVec 64)) (t!14414 List!8460)) )
))
(declare-fun arrayNoDuplicates!0 (array!29079 (_ BitVec 32) List!8460) Bool)

(assert (=> b!464124 (= res!277559 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8457))))

(declare-fun mapNonEmpty!20671 () Bool)

(declare-fun tp!39703 () Bool)

(assert (=> mapNonEmpty!20671 (= mapRes!20671 (and tp!39703 e!271105))))

(declare-fun mapValue!20671 () ValueCell!5988)

(declare-fun mapKey!20671 () (_ BitVec 32))

(declare-fun mapRest!20671 () (Array (_ BitVec 32) ValueCell!5988))

(assert (=> mapNonEmpty!20671 (= (arr!13967 _values!833) (store mapRest!20671 mapKey!20671 mapValue!20671))))

(declare-fun mapIsEmpty!20671 () Bool)

(assert (=> mapIsEmpty!20671 mapRes!20671))

(declare-fun b!464125 () Bool)

(assert (=> b!464125 (= e!271102 (not true))))

(declare-datatypes ((tuple2!8332 0))(
  ( (tuple2!8333 (_1!4176 (_ BitVec 64)) (_2!4176 V!17989)) )
))
(declare-datatypes ((List!8461 0))(
  ( (Nil!8458) (Cons!8457 (h!9313 tuple2!8332) (t!14415 List!8461)) )
))
(declare-datatypes ((ListLongMap!7259 0))(
  ( (ListLongMap!7260 (toList!3645 List!8461)) )
))
(declare-fun lt!209624 () ListLongMap!7259)

(declare-fun lt!209623 () ListLongMap!7259)

(assert (=> b!464125 (= lt!209624 lt!209623)))

(declare-datatypes ((Unit!13411 0))(
  ( (Unit!13412) )
))
(declare-fun lt!209625 () Unit!13411)

(declare-fun minValueBefore!38 () V!17989)

(declare-fun zeroValue!794 () V!17989)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17989)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!8 (array!29079 array!29077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17989 V!17989 V!17989 V!17989 (_ BitVec 32) Int) Unit!13411)

(assert (=> b!464125 (= lt!209625 (lemmaNoChangeToArrayThenSameMapNoExtras!8 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1813 (array!29079 array!29077 (_ BitVec 32) (_ BitVec 32) V!17989 V!17989 (_ BitVec 32) Int) ListLongMap!7259)

(assert (=> b!464125 (= lt!209623 (getCurrentListMapNoExtraKeys!1813 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464125 (= lt!209624 (getCurrentListMapNoExtraKeys!1813 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41576 res!277557) b!464121))

(assert (= (and b!464121 res!277556) b!464123))

(assert (= (and b!464123 res!277558) b!464124))

(assert (= (and b!464124 res!277559) b!464125))

(assert (= (and b!464119 condMapEmpty!20671) mapIsEmpty!20671))

(assert (= (and b!464119 (not condMapEmpty!20671)) mapNonEmpty!20671))

(get-info :version)

(assert (= (and mapNonEmpty!20671 ((_ is ValueCellFull!5988) mapValue!20671)) b!464120))

(assert (= (and b!464119 ((_ is ValueCellFull!5988) mapDefault!20671)) b!464122))

(assert (= start!41576 b!464119))

(declare-fun m!446557 () Bool)

(assert (=> start!41576 m!446557))

(declare-fun m!446559 () Bool)

(assert (=> start!41576 m!446559))

(declare-fun m!446561 () Bool)

(assert (=> start!41576 m!446561))

(declare-fun m!446563 () Bool)

(assert (=> b!464124 m!446563))

(declare-fun m!446565 () Bool)

(assert (=> b!464123 m!446565))

(declare-fun m!446567 () Bool)

(assert (=> b!464125 m!446567))

(declare-fun m!446569 () Bool)

(assert (=> b!464125 m!446569))

(declare-fun m!446571 () Bool)

(assert (=> b!464125 m!446571))

(declare-fun m!446573 () Bool)

(assert (=> mapNonEmpty!20671 m!446573))

(check-sat tp_is_empty!12663 (not b!464123) (not b_next!11235) (not b!464124) (not mapNonEmpty!20671) b_and!19593 (not b!464125) (not start!41576))
(check-sat b_and!19593 (not b_next!11235))
