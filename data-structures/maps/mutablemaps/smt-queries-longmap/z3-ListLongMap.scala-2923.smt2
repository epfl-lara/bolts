; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41718 () Bool)

(assert start!41718)

(declare-fun b_free!11349 () Bool)

(declare-fun b_next!11349 () Bool)

(assert (=> start!41718 (= b_free!11349 (not b_next!11349))))

(declare-fun tp!40050 () Bool)

(declare-fun b_and!19723 () Bool)

(assert (=> start!41718 (= tp!40050 b_and!19723)))

(declare-fun res!278344 () Bool)

(declare-fun e!272109 () Bool)

(assert (=> start!41718 (=> (not res!278344) (not e!272109))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41718 (= res!278344 (validMask!0 mask!1365))))

(assert (=> start!41718 e!272109))

(declare-fun tp_is_empty!12777 () Bool)

(assert (=> start!41718 tp_is_empty!12777))

(assert (=> start!41718 tp!40050))

(assert (=> start!41718 true))

(declare-datatypes ((array!29291 0))(
  ( (array!29292 (arr!14072 (Array (_ BitVec 32) (_ BitVec 64))) (size!14424 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29291)

(declare-fun array_inv!10146 (array!29291) Bool)

(assert (=> start!41718 (array_inv!10146 _keys!1025)))

(declare-datatypes ((V!18141 0))(
  ( (V!18142 (val!6433 Int)) )
))
(declare-datatypes ((ValueCell!6045 0))(
  ( (ValueCellFull!6045 (v!8716 V!18141)) (EmptyCell!6045) )
))
(declare-datatypes ((array!29293 0))(
  ( (array!29294 (arr!14073 (Array (_ BitVec 32) ValueCell!6045)) (size!14425 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29293)

(declare-fun e!272111 () Bool)

(declare-fun array_inv!10147 (array!29293) Bool)

(assert (=> start!41718 (and (array_inv!10147 _values!833) e!272111)))

(declare-fun b!465527 () Bool)

(declare-fun res!278345 () Bool)

(assert (=> b!465527 (=> (not res!278345) (not e!272109))))

(declare-datatypes ((List!8534 0))(
  ( (Nil!8531) (Cons!8530 (h!9386 (_ BitVec 64)) (t!14492 List!8534)) )
))
(declare-fun arrayNoDuplicates!0 (array!29291 (_ BitVec 32) List!8534) Bool)

(assert (=> b!465527 (= res!278345 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8531))))

(declare-fun b!465528 () Bool)

(declare-fun e!272108 () Bool)

(assert (=> b!465528 (= e!272108 tp_is_empty!12777)))

(declare-fun mapIsEmpty!20848 () Bool)

(declare-fun mapRes!20848 () Bool)

(assert (=> mapIsEmpty!20848 mapRes!20848))

(declare-fun b!465529 () Bool)

(declare-fun e!272110 () Bool)

(assert (=> b!465529 (= e!272110 tp_is_empty!12777)))

(declare-fun b!465530 () Bool)

(declare-fun res!278343 () Bool)

(assert (=> b!465530 (=> (not res!278343) (not e!272109))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!465530 (= res!278343 (and (= (size!14425 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14424 _keys!1025) (size!14425 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20848 () Bool)

(declare-fun tp!40051 () Bool)

(assert (=> mapNonEmpty!20848 (= mapRes!20848 (and tp!40051 e!272108))))

(declare-fun mapKey!20848 () (_ BitVec 32))

(declare-fun mapRest!20848 () (Array (_ BitVec 32) ValueCell!6045))

(declare-fun mapValue!20848 () ValueCell!6045)

(assert (=> mapNonEmpty!20848 (= (arr!14073 _values!833) (store mapRest!20848 mapKey!20848 mapValue!20848))))

(declare-fun b!465531 () Bool)

(declare-fun res!278346 () Bool)

(assert (=> b!465531 (=> (not res!278346) (not e!272109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29291 (_ BitVec 32)) Bool)

(assert (=> b!465531 (= res!278346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465532 () Bool)

(declare-fun e!272112 () Bool)

(assert (=> b!465532 (= e!272112 true)))

(declare-fun zeroValue!794 () V!18141)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18141)

(declare-datatypes ((tuple2!8410 0))(
  ( (tuple2!8411 (_1!4215 (_ BitVec 64)) (_2!4215 V!18141)) )
))
(declare-datatypes ((List!8535 0))(
  ( (Nil!8532) (Cons!8531 (h!9387 tuple2!8410) (t!14493 List!8535)) )
))
(declare-datatypes ((ListLongMap!7337 0))(
  ( (ListLongMap!7338 (toList!3684 List!8535)) )
))
(declare-fun lt!210300 () ListLongMap!7337)

(declare-fun getCurrentListMap!2130 (array!29291 array!29293 (_ BitVec 32) (_ BitVec 32) V!18141 V!18141 (_ BitVec 32) Int) ListLongMap!7337)

(assert (=> b!465532 (= lt!210300 (getCurrentListMap!2130 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18141)

(declare-fun lt!210299 () ListLongMap!7337)

(declare-fun +!1621 (ListLongMap!7337 tuple2!8410) ListLongMap!7337)

(assert (=> b!465532 (= lt!210299 (+!1621 (getCurrentListMap!2130 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8411 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465533 () Bool)

(assert (=> b!465533 (= e!272111 (and e!272110 mapRes!20848))))

(declare-fun condMapEmpty!20848 () Bool)

(declare-fun mapDefault!20848 () ValueCell!6045)

(assert (=> b!465533 (= condMapEmpty!20848 (= (arr!14073 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6045)) mapDefault!20848)))))

(declare-fun b!465534 () Bool)

(assert (=> b!465534 (= e!272109 (not e!272112))))

(declare-fun res!278347 () Bool)

(assert (=> b!465534 (=> res!278347 e!272112)))

(assert (=> b!465534 (= res!278347 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210302 () ListLongMap!7337)

(declare-fun lt!210301 () ListLongMap!7337)

(assert (=> b!465534 (= lt!210302 lt!210301)))

(declare-datatypes ((Unit!13487 0))(
  ( (Unit!13488) )
))
(declare-fun lt!210298 () Unit!13487)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!46 (array!29291 array!29293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18141 V!18141 V!18141 V!18141 (_ BitVec 32) Int) Unit!13487)

(assert (=> b!465534 (= lt!210298 (lemmaNoChangeToArrayThenSameMapNoExtras!46 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1851 (array!29291 array!29293 (_ BitVec 32) (_ BitVec 32) V!18141 V!18141 (_ BitVec 32) Int) ListLongMap!7337)

(assert (=> b!465534 (= lt!210301 (getCurrentListMapNoExtraKeys!1851 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465534 (= lt!210302 (getCurrentListMapNoExtraKeys!1851 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41718 res!278344) b!465530))

(assert (= (and b!465530 res!278343) b!465531))

(assert (= (and b!465531 res!278346) b!465527))

(assert (= (and b!465527 res!278345) b!465534))

(assert (= (and b!465534 (not res!278347)) b!465532))

(assert (= (and b!465533 condMapEmpty!20848) mapIsEmpty!20848))

(assert (= (and b!465533 (not condMapEmpty!20848)) mapNonEmpty!20848))

(get-info :version)

(assert (= (and mapNonEmpty!20848 ((_ is ValueCellFull!6045) mapValue!20848)) b!465528))

(assert (= (and b!465533 ((_ is ValueCellFull!6045) mapDefault!20848)) b!465529))

(assert (= start!41718 b!465533))

(declare-fun m!447793 () Bool)

(assert (=> mapNonEmpty!20848 m!447793))

(declare-fun m!447795 () Bool)

(assert (=> b!465532 m!447795))

(declare-fun m!447797 () Bool)

(assert (=> b!465532 m!447797))

(assert (=> b!465532 m!447797))

(declare-fun m!447799 () Bool)

(assert (=> b!465532 m!447799))

(declare-fun m!447801 () Bool)

(assert (=> b!465527 m!447801))

(declare-fun m!447803 () Bool)

(assert (=> b!465534 m!447803))

(declare-fun m!447805 () Bool)

(assert (=> b!465534 m!447805))

(declare-fun m!447807 () Bool)

(assert (=> b!465534 m!447807))

(declare-fun m!447809 () Bool)

(assert (=> start!41718 m!447809))

(declare-fun m!447811 () Bool)

(assert (=> start!41718 m!447811))

(declare-fun m!447813 () Bool)

(assert (=> start!41718 m!447813))

(declare-fun m!447815 () Bool)

(assert (=> b!465531 m!447815))

(check-sat tp_is_empty!12777 (not b!465531) (not mapNonEmpty!20848) (not b!465527) (not start!41718) (not b!465534) (not b!465532) b_and!19723 (not b_next!11349))
(check-sat b_and!19723 (not b_next!11349))
