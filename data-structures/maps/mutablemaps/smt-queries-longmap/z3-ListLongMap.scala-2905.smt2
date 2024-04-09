; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41582 () Bool)

(assert start!41582)

(declare-fun b_free!11241 () Bool)

(declare-fun b_next!11241 () Bool)

(assert (=> start!41582 (= b_free!11241 (not b_next!11241))))

(declare-fun tp!39720 () Bool)

(declare-fun b_and!19599 () Bool)

(assert (=> start!41582 (= tp!39720 b_and!19599)))

(declare-fun b!464182 () Bool)

(declare-fun e!271150 () Bool)

(declare-fun tp_is_empty!12669 () Bool)

(assert (=> b!464182 (= e!271150 tp_is_empty!12669)))

(declare-fun b!464183 () Bool)

(declare-fun res!277594 () Bool)

(declare-fun e!271149 () Bool)

(assert (=> b!464183 (=> (not res!277594) (not e!271149))))

(declare-datatypes ((array!29087 0))(
  ( (array!29088 (arr!13972 (Array (_ BitVec 32) (_ BitVec 64))) (size!14324 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29087)

(declare-datatypes ((List!8462 0))(
  ( (Nil!8459) (Cons!8458 (h!9314 (_ BitVec 64)) (t!14416 List!8462)) )
))
(declare-fun arrayNoDuplicates!0 (array!29087 (_ BitVec 32) List!8462) Bool)

(assert (=> b!464183 (= res!277594 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8459))))

(declare-fun b!464184 () Bool)

(assert (=> b!464184 (= e!271149 (not true))))

(declare-datatypes ((V!17997 0))(
  ( (V!17998 (val!6379 Int)) )
))
(declare-datatypes ((tuple2!8334 0))(
  ( (tuple2!8335 (_1!4177 (_ BitVec 64)) (_2!4177 V!17997)) )
))
(declare-datatypes ((List!8463 0))(
  ( (Nil!8460) (Cons!8459 (h!9315 tuple2!8334) (t!14417 List!8463)) )
))
(declare-datatypes ((ListLongMap!7261 0))(
  ( (ListLongMap!7262 (toList!3646 List!8463)) )
))
(declare-fun lt!209650 () ListLongMap!7261)

(declare-fun lt!209651 () ListLongMap!7261)

(assert (=> b!464184 (= lt!209650 lt!209651)))

(declare-datatypes ((Unit!13413 0))(
  ( (Unit!13414) )
))
(declare-fun lt!209652 () Unit!13413)

(declare-fun minValueBefore!38 () V!17997)

(declare-fun zeroValue!794 () V!17997)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5991 0))(
  ( (ValueCellFull!5991 (v!8662 V!17997)) (EmptyCell!5991) )
))
(declare-datatypes ((array!29089 0))(
  ( (array!29090 (arr!13973 (Array (_ BitVec 32) ValueCell!5991)) (size!14325 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29089)

(declare-fun minValueAfter!38 () V!17997)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!9 (array!29087 array!29089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17997 V!17997 V!17997 V!17997 (_ BitVec 32) Int) Unit!13413)

(assert (=> b!464184 (= lt!209652 (lemmaNoChangeToArrayThenSameMapNoExtras!9 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1814 (array!29087 array!29089 (_ BitVec 32) (_ BitVec 32) V!17997 V!17997 (_ BitVec 32) Int) ListLongMap!7261)

(assert (=> b!464184 (= lt!209651 (getCurrentListMapNoExtraKeys!1814 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464184 (= lt!209650 (getCurrentListMapNoExtraKeys!1814 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464185 () Bool)

(declare-fun e!271148 () Bool)

(assert (=> b!464185 (= e!271148 tp_is_empty!12669)))

(declare-fun b!464187 () Bool)

(declare-fun res!277592 () Bool)

(assert (=> b!464187 (=> (not res!277592) (not e!271149))))

(assert (=> b!464187 (= res!277592 (and (= (size!14325 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14324 _keys!1025) (size!14325 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20680 () Bool)

(declare-fun mapRes!20680 () Bool)

(assert (=> mapIsEmpty!20680 mapRes!20680))

(declare-fun mapNonEmpty!20680 () Bool)

(declare-fun tp!39721 () Bool)

(assert (=> mapNonEmpty!20680 (= mapRes!20680 (and tp!39721 e!271148))))

(declare-fun mapRest!20680 () (Array (_ BitVec 32) ValueCell!5991))

(declare-fun mapKey!20680 () (_ BitVec 32))

(declare-fun mapValue!20680 () ValueCell!5991)

(assert (=> mapNonEmpty!20680 (= (arr!13973 _values!833) (store mapRest!20680 mapKey!20680 mapValue!20680))))

(declare-fun b!464188 () Bool)

(declare-fun e!271147 () Bool)

(assert (=> b!464188 (= e!271147 (and e!271150 mapRes!20680))))

(declare-fun condMapEmpty!20680 () Bool)

(declare-fun mapDefault!20680 () ValueCell!5991)

(assert (=> b!464188 (= condMapEmpty!20680 (= (arr!13973 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5991)) mapDefault!20680)))))

(declare-fun res!277595 () Bool)

(assert (=> start!41582 (=> (not res!277595) (not e!271149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41582 (= res!277595 (validMask!0 mask!1365))))

(assert (=> start!41582 e!271149))

(assert (=> start!41582 tp_is_empty!12669))

(assert (=> start!41582 tp!39720))

(assert (=> start!41582 true))

(declare-fun array_inv!10074 (array!29087) Bool)

(assert (=> start!41582 (array_inv!10074 _keys!1025)))

(declare-fun array_inv!10075 (array!29089) Bool)

(assert (=> start!41582 (and (array_inv!10075 _values!833) e!271147)))

(declare-fun b!464186 () Bool)

(declare-fun res!277593 () Bool)

(assert (=> b!464186 (=> (not res!277593) (not e!271149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29087 (_ BitVec 32)) Bool)

(assert (=> b!464186 (= res!277593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41582 res!277595) b!464187))

(assert (= (and b!464187 res!277592) b!464186))

(assert (= (and b!464186 res!277593) b!464183))

(assert (= (and b!464183 res!277594) b!464184))

(assert (= (and b!464188 condMapEmpty!20680) mapIsEmpty!20680))

(assert (= (and b!464188 (not condMapEmpty!20680)) mapNonEmpty!20680))

(get-info :version)

(assert (= (and mapNonEmpty!20680 ((_ is ValueCellFull!5991) mapValue!20680)) b!464185))

(assert (= (and b!464188 ((_ is ValueCellFull!5991) mapDefault!20680)) b!464182))

(assert (= start!41582 b!464188))

(declare-fun m!446611 () Bool)

(assert (=> start!41582 m!446611))

(declare-fun m!446613 () Bool)

(assert (=> start!41582 m!446613))

(declare-fun m!446615 () Bool)

(assert (=> start!41582 m!446615))

(declare-fun m!446617 () Bool)

(assert (=> mapNonEmpty!20680 m!446617))

(declare-fun m!446619 () Bool)

(assert (=> b!464184 m!446619))

(declare-fun m!446621 () Bool)

(assert (=> b!464184 m!446621))

(declare-fun m!446623 () Bool)

(assert (=> b!464184 m!446623))

(declare-fun m!446625 () Bool)

(assert (=> b!464183 m!446625))

(declare-fun m!446627 () Bool)

(assert (=> b!464186 m!446627))

(check-sat b_and!19599 (not mapNonEmpty!20680) (not start!41582) tp_is_empty!12669 (not b_next!11241) (not b!464186) (not b!464183) (not b!464184))
(check-sat b_and!19599 (not b_next!11241))
