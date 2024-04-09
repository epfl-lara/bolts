; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42130 () Bool)

(assert start!42130)

(declare-fun b_free!11655 () Bool)

(declare-fun b_next!11655 () Bool)

(assert (=> start!42130 (= b_free!11655 (not b_next!11655))))

(declare-fun tp!40986 () Bool)

(declare-fun b_and!20095 () Bool)

(assert (=> start!42130 (= tp!40986 b_and!20095)))

(declare-fun b!470063 () Bool)

(declare-fun e!275363 () Bool)

(declare-fun e!275361 () Bool)

(declare-fun mapRes!21325 () Bool)

(assert (=> b!470063 (= e!275363 (and e!275361 mapRes!21325))))

(declare-fun condMapEmpty!21325 () Bool)

(declare-datatypes ((V!18549 0))(
  ( (V!18550 (val!6586 Int)) )
))
(declare-datatypes ((ValueCell!6198 0))(
  ( (ValueCellFull!6198 (v!8873 V!18549)) (EmptyCell!6198) )
))
(declare-datatypes ((array!29899 0))(
  ( (array!29900 (arr!14370 (Array (_ BitVec 32) ValueCell!6198)) (size!14722 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29899)

(declare-fun mapDefault!21325 () ValueCell!6198)

(assert (=> b!470063 (= condMapEmpty!21325 (= (arr!14370 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6198)) mapDefault!21325)))))

(declare-fun b!470064 () Bool)

(declare-fun e!275359 () Bool)

(assert (=> b!470064 (= e!275359 (not true))))

(declare-datatypes ((tuple2!8644 0))(
  ( (tuple2!8645 (_1!4332 (_ BitVec 64)) (_2!4332 V!18549)) )
))
(declare-datatypes ((List!8764 0))(
  ( (Nil!8761) (Cons!8760 (h!9616 tuple2!8644) (t!14734 List!8764)) )
))
(declare-datatypes ((ListLongMap!7571 0))(
  ( (ListLongMap!7572 (toList!3801 List!8764)) )
))
(declare-fun lt!213340 () ListLongMap!7571)

(declare-fun lt!213338 () ListLongMap!7571)

(assert (=> b!470064 (= lt!213340 lt!213338)))

(declare-fun zeroValue!794 () V!18549)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18549)

(declare-datatypes ((Unit!13728 0))(
  ( (Unit!13729) )
))
(declare-fun lt!213339 () Unit!13728)

(declare-datatypes ((array!29901 0))(
  ( (array!29902 (arr!14371 (Array (_ BitVec 32) (_ BitVec 64))) (size!14723 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29901)

(declare-fun minValueAfter!38 () V!18549)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!158 (array!29901 array!29899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18549 V!18549 V!18549 V!18549 (_ BitVec 32) Int) Unit!13728)

(assert (=> b!470064 (= lt!213339 (lemmaNoChangeToArrayThenSameMapNoExtras!158 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1963 (array!29901 array!29899 (_ BitVec 32) (_ BitVec 32) V!18549 V!18549 (_ BitVec 32) Int) ListLongMap!7571)

(assert (=> b!470064 (= lt!213338 (getCurrentListMapNoExtraKeys!1963 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470064 (= lt!213340 (getCurrentListMapNoExtraKeys!1963 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21325 () Bool)

(declare-fun tp!40987 () Bool)

(declare-fun e!275362 () Bool)

(assert (=> mapNonEmpty!21325 (= mapRes!21325 (and tp!40987 e!275362))))

(declare-fun mapKey!21325 () (_ BitVec 32))

(declare-fun mapRest!21325 () (Array (_ BitVec 32) ValueCell!6198))

(declare-fun mapValue!21325 () ValueCell!6198)

(assert (=> mapNonEmpty!21325 (= (arr!14370 _values!833) (store mapRest!21325 mapKey!21325 mapValue!21325))))

(declare-fun b!470065 () Bool)

(declare-fun res!280953 () Bool)

(assert (=> b!470065 (=> (not res!280953) (not e!275359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29901 (_ BitVec 32)) Bool)

(assert (=> b!470065 (= res!280953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470066 () Bool)

(declare-fun res!280951 () Bool)

(assert (=> b!470066 (=> (not res!280951) (not e!275359))))

(declare-datatypes ((List!8765 0))(
  ( (Nil!8762) (Cons!8761 (h!9617 (_ BitVec 64)) (t!14735 List!8765)) )
))
(declare-fun arrayNoDuplicates!0 (array!29901 (_ BitVec 32) List!8765) Bool)

(assert (=> b!470066 (= res!280951 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8762))))

(declare-fun b!470068 () Bool)

(declare-fun tp_is_empty!13083 () Bool)

(assert (=> b!470068 (= e!275362 tp_is_empty!13083)))

(declare-fun b!470069 () Bool)

(declare-fun res!280952 () Bool)

(assert (=> b!470069 (=> (not res!280952) (not e!275359))))

(assert (=> b!470069 (= res!280952 (and (= (size!14722 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14723 _keys!1025) (size!14722 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21325 () Bool)

(assert (=> mapIsEmpty!21325 mapRes!21325))

(declare-fun b!470067 () Bool)

(assert (=> b!470067 (= e!275361 tp_is_empty!13083)))

(declare-fun res!280950 () Bool)

(assert (=> start!42130 (=> (not res!280950) (not e!275359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42130 (= res!280950 (validMask!0 mask!1365))))

(assert (=> start!42130 e!275359))

(assert (=> start!42130 tp_is_empty!13083))

(assert (=> start!42130 tp!40986))

(assert (=> start!42130 true))

(declare-fun array_inv!10364 (array!29901) Bool)

(assert (=> start!42130 (array_inv!10364 _keys!1025)))

(declare-fun array_inv!10365 (array!29899) Bool)

(assert (=> start!42130 (and (array_inv!10365 _values!833) e!275363)))

(assert (= (and start!42130 res!280950) b!470069))

(assert (= (and b!470069 res!280952) b!470065))

(assert (= (and b!470065 res!280953) b!470066))

(assert (= (and b!470066 res!280951) b!470064))

(assert (= (and b!470063 condMapEmpty!21325) mapIsEmpty!21325))

(assert (= (and b!470063 (not condMapEmpty!21325)) mapNonEmpty!21325))

(get-info :version)

(assert (= (and mapNonEmpty!21325 ((_ is ValueCellFull!6198) mapValue!21325)) b!470068))

(assert (= (and b!470063 ((_ is ValueCellFull!6198) mapDefault!21325)) b!470067))

(assert (= start!42130 b!470063))

(declare-fun m!452413 () Bool)

(assert (=> start!42130 m!452413))

(declare-fun m!452415 () Bool)

(assert (=> start!42130 m!452415))

(declare-fun m!452417 () Bool)

(assert (=> start!42130 m!452417))

(declare-fun m!452419 () Bool)

(assert (=> b!470064 m!452419))

(declare-fun m!452421 () Bool)

(assert (=> b!470064 m!452421))

(declare-fun m!452423 () Bool)

(assert (=> b!470064 m!452423))

(declare-fun m!452425 () Bool)

(assert (=> b!470065 m!452425))

(declare-fun m!452427 () Bool)

(assert (=> b!470066 m!452427))

(declare-fun m!452429 () Bool)

(assert (=> mapNonEmpty!21325 m!452429))

(check-sat (not b!470066) (not b!470065) (not start!42130) b_and!20095 (not mapNonEmpty!21325) (not b_next!11655) (not b!470064) tp_is_empty!13083)
(check-sat b_and!20095 (not b_next!11655))
