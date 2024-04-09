; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41632 () Bool)

(assert start!41632)

(declare-fun b_free!11277 () Bool)

(declare-fun b_next!11277 () Bool)

(assert (=> start!41632 (= b_free!11277 (not b_next!11277))))

(declare-fun tp!39832 () Bool)

(declare-fun b_and!19643 () Bool)

(assert (=> start!41632 (= tp!39832 b_and!19643)))

(declare-fun mapIsEmpty!20737 () Bool)

(declare-fun mapRes!20737 () Bool)

(assert (=> mapIsEmpty!20737 mapRes!20737))

(declare-fun mapNonEmpty!20737 () Bool)

(declare-fun tp!39831 () Bool)

(declare-fun e!271474 () Bool)

(assert (=> mapNonEmpty!20737 (= mapRes!20737 (and tp!39831 e!271474))))

(declare-datatypes ((V!18045 0))(
  ( (V!18046 (val!6397 Int)) )
))
(declare-datatypes ((ValueCell!6009 0))(
  ( (ValueCellFull!6009 (v!8680 V!18045)) (EmptyCell!6009) )
))
(declare-datatypes ((array!29159 0))(
  ( (array!29160 (arr!14007 (Array (_ BitVec 32) ValueCell!6009)) (size!14359 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29159)

(declare-fun mapKey!20737 () (_ BitVec 32))

(declare-fun mapValue!20737 () ValueCell!6009)

(declare-fun mapRest!20737 () (Array (_ BitVec 32) ValueCell!6009))

(assert (=> mapNonEmpty!20737 (= (arr!14007 _values!833) (store mapRest!20737 mapKey!20737 mapValue!20737))))

(declare-fun b!464645 () Bool)

(declare-fun res!277839 () Bool)

(declare-fun e!271472 () Bool)

(assert (=> b!464645 (=> (not res!277839) (not e!271472))))

(declare-datatypes ((array!29161 0))(
  ( (array!29162 (arr!14008 (Array (_ BitVec 32) (_ BitVec 64))) (size!14360 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29161)

(declare-datatypes ((List!8488 0))(
  ( (Nil!8485) (Cons!8484 (h!9340 (_ BitVec 64)) (t!14444 List!8488)) )
))
(declare-fun arrayNoDuplicates!0 (array!29161 (_ BitVec 32) List!8488) Bool)

(assert (=> b!464645 (= res!277839 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8485))))

(declare-fun res!277840 () Bool)

(assert (=> start!41632 (=> (not res!277840) (not e!271472))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41632 (= res!277840 (validMask!0 mask!1365))))

(assert (=> start!41632 e!271472))

(declare-fun tp_is_empty!12705 () Bool)

(assert (=> start!41632 tp_is_empty!12705))

(assert (=> start!41632 tp!39832))

(assert (=> start!41632 true))

(declare-fun array_inv!10096 (array!29161) Bool)

(assert (=> start!41632 (array_inv!10096 _keys!1025)))

(declare-fun e!271473 () Bool)

(declare-fun array_inv!10097 (array!29159) Bool)

(assert (=> start!41632 (and (array_inv!10097 _values!833) e!271473)))

(declare-fun b!464646 () Bool)

(declare-fun res!277841 () Bool)

(assert (=> b!464646 (=> (not res!277841) (not e!271472))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464646 (= res!277841 (and (= (size!14359 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14360 _keys!1025) (size!14359 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464647 () Bool)

(declare-fun res!277842 () Bool)

(assert (=> b!464647 (=> (not res!277842) (not e!271472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29161 (_ BitVec 32)) Bool)

(assert (=> b!464647 (= res!277842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464648 () Bool)

(declare-fun e!271475 () Bool)

(assert (=> b!464648 (= e!271475 tp_is_empty!12705)))

(declare-fun b!464649 () Bool)

(assert (=> b!464649 (= e!271473 (and e!271475 mapRes!20737))))

(declare-fun condMapEmpty!20737 () Bool)

(declare-fun mapDefault!20737 () ValueCell!6009)

(assert (=> b!464649 (= condMapEmpty!20737 (= (arr!14007 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6009)) mapDefault!20737)))))

(declare-fun b!464650 () Bool)

(assert (=> b!464650 (= e!271474 tp_is_empty!12705)))

(declare-fun b!464651 () Bool)

(assert (=> b!464651 (= e!271472 (not true))))

(declare-datatypes ((tuple2!8360 0))(
  ( (tuple2!8361 (_1!4190 (_ BitVec 64)) (_2!4190 V!18045)) )
))
(declare-datatypes ((List!8489 0))(
  ( (Nil!8486) (Cons!8485 (h!9341 tuple2!8360) (t!14445 List!8489)) )
))
(declare-datatypes ((ListLongMap!7287 0))(
  ( (ListLongMap!7288 (toList!3659 List!8489)) )
))
(declare-fun lt!209852 () ListLongMap!7287)

(declare-fun lt!209854 () ListLongMap!7287)

(assert (=> b!464651 (= lt!209852 lt!209854)))

(declare-fun minValueBefore!38 () V!18045)

(declare-fun zeroValue!794 () V!18045)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13439 0))(
  ( (Unit!13440) )
))
(declare-fun lt!209853 () Unit!13439)

(declare-fun minValueAfter!38 () V!18045)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!22 (array!29161 array!29159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18045 V!18045 V!18045 V!18045 (_ BitVec 32) Int) Unit!13439)

(assert (=> b!464651 (= lt!209853 (lemmaNoChangeToArrayThenSameMapNoExtras!22 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1827 (array!29161 array!29159 (_ BitVec 32) (_ BitVec 32) V!18045 V!18045 (_ BitVec 32) Int) ListLongMap!7287)

(assert (=> b!464651 (= lt!209854 (getCurrentListMapNoExtraKeys!1827 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464651 (= lt!209852 (getCurrentListMapNoExtraKeys!1827 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41632 res!277840) b!464646))

(assert (= (and b!464646 res!277841) b!464647))

(assert (= (and b!464647 res!277842) b!464645))

(assert (= (and b!464645 res!277839) b!464651))

(assert (= (and b!464649 condMapEmpty!20737) mapIsEmpty!20737))

(assert (= (and b!464649 (not condMapEmpty!20737)) mapNonEmpty!20737))

(get-info :version)

(assert (= (and mapNonEmpty!20737 ((_ is ValueCellFull!6009) mapValue!20737)) b!464650))

(assert (= (and b!464649 ((_ is ValueCellFull!6009) mapDefault!20737)) b!464648))

(assert (= start!41632 b!464649))

(declare-fun m!447001 () Bool)

(assert (=> start!41632 m!447001))

(declare-fun m!447003 () Bool)

(assert (=> start!41632 m!447003))

(declare-fun m!447005 () Bool)

(assert (=> start!41632 m!447005))

(declare-fun m!447007 () Bool)

(assert (=> mapNonEmpty!20737 m!447007))

(declare-fun m!447009 () Bool)

(assert (=> b!464645 m!447009))

(declare-fun m!447011 () Bool)

(assert (=> b!464647 m!447011))

(declare-fun m!447013 () Bool)

(assert (=> b!464651 m!447013))

(declare-fun m!447015 () Bool)

(assert (=> b!464651 m!447015))

(declare-fun m!447017 () Bool)

(assert (=> b!464651 m!447017))

(check-sat (not mapNonEmpty!20737) (not b!464647) tp_is_empty!12705 (not b!464645) (not b!464651) b_and!19643 (not b_next!11277) (not start!41632))
(check-sat b_and!19643 (not b_next!11277))
