; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41976 () Bool)

(assert start!41976)

(declare-fun b_free!11541 () Bool)

(declare-fun b_next!11541 () Bool)

(assert (=> start!41976 (= b_free!11541 (not b_next!11541))))

(declare-fun tp!40639 () Bool)

(declare-fun b_and!19957 () Bool)

(assert (=> start!41976 (= tp!40639 b_and!19957)))

(declare-fun b!468351 () Bool)

(declare-fun e!274124 () Bool)

(assert (=> b!468351 (= e!274124 true)))

(declare-datatypes ((V!18397 0))(
  ( (V!18398 (val!6529 Int)) )
))
(declare-datatypes ((tuple2!8558 0))(
  ( (tuple2!8559 (_1!4289 (_ BitVec 64)) (_2!4289 V!18397)) )
))
(declare-datatypes ((List!8678 0))(
  ( (Nil!8675) (Cons!8674 (h!9530 tuple2!8558) (t!14644 List!8678)) )
))
(declare-datatypes ((ListLongMap!7485 0))(
  ( (ListLongMap!7486 (toList!3758 List!8678)) )
))
(declare-fun lt!211896 () ListLongMap!7485)

(declare-fun lt!211901 () tuple2!8558)

(declare-fun minValueBefore!38 () V!18397)

(declare-fun +!1650 (ListLongMap!7485 tuple2!8558) ListLongMap!7485)

(assert (=> b!468351 (= (+!1650 lt!211896 lt!211901) (+!1650 (+!1650 lt!211896 (tuple2!8559 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!211901))))

(declare-fun minValueAfter!38 () V!18397)

(assert (=> b!468351 (= lt!211901 (tuple2!8559 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13638 0))(
  ( (Unit!13639) )
))
(declare-fun lt!211899 () Unit!13638)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!91 (ListLongMap!7485 (_ BitVec 64) V!18397 V!18397) Unit!13638)

(assert (=> b!468351 (= lt!211899 (addSameAsAddTwiceSameKeyDiffValues!91 lt!211896 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!211900 () ListLongMap!7485)

(declare-fun zeroValue!794 () V!18397)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29671 0))(
  ( (array!29672 (arr!14258 (Array (_ BitVec 32) (_ BitVec 64))) (size!14610 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29671)

(declare-datatypes ((ValueCell!6141 0))(
  ( (ValueCellFull!6141 (v!8814 V!18397)) (EmptyCell!6141) )
))
(declare-datatypes ((array!29673 0))(
  ( (array!29674 (arr!14259 (Array (_ BitVec 32) ValueCell!6141)) (size!14611 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29673)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2172 (array!29671 array!29673 (_ BitVec 32) (_ BitVec 32) V!18397 V!18397 (_ BitVec 32) Int) ListLongMap!7485)

(assert (=> b!468351 (= lt!211900 (getCurrentListMap!2172 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!211897 () ListLongMap!7485)

(assert (=> b!468351 (= lt!211897 (getCurrentListMap!2172 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468352 () Bool)

(declare-fun e!274125 () Bool)

(declare-fun tp_is_empty!12969 () Bool)

(assert (=> b!468352 (= e!274125 tp_is_empty!12969)))

(declare-fun res!279958 () Bool)

(declare-fun e!274126 () Bool)

(assert (=> start!41976 (=> (not res!279958) (not e!274126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41976 (= res!279958 (validMask!0 mask!1365))))

(assert (=> start!41976 e!274126))

(assert (=> start!41976 tp_is_empty!12969))

(assert (=> start!41976 tp!40639))

(assert (=> start!41976 true))

(declare-fun array_inv!10282 (array!29671) Bool)

(assert (=> start!41976 (array_inv!10282 _keys!1025)))

(declare-fun e!274128 () Bool)

(declare-fun array_inv!10283 (array!29673) Bool)

(assert (=> start!41976 (and (array_inv!10283 _values!833) e!274128)))

(declare-fun mapIsEmpty!21148 () Bool)

(declare-fun mapRes!21148 () Bool)

(assert (=> mapIsEmpty!21148 mapRes!21148))

(declare-fun mapNonEmpty!21148 () Bool)

(declare-fun tp!40638 () Bool)

(assert (=> mapNonEmpty!21148 (= mapRes!21148 (and tp!40638 e!274125))))

(declare-fun mapKey!21148 () (_ BitVec 32))

(declare-fun mapRest!21148 () (Array (_ BitVec 32) ValueCell!6141))

(declare-fun mapValue!21148 () ValueCell!6141)

(assert (=> mapNonEmpty!21148 (= (arr!14259 _values!833) (store mapRest!21148 mapKey!21148 mapValue!21148))))

(declare-fun b!468353 () Bool)

(assert (=> b!468353 (= e!274126 (not e!274124))))

(declare-fun res!279957 () Bool)

(assert (=> b!468353 (=> res!279957 e!274124)))

(assert (=> b!468353 (= res!279957 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211898 () ListLongMap!7485)

(assert (=> b!468353 (= lt!211896 lt!211898)))

(declare-fun lt!211895 () Unit!13638)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!119 (array!29671 array!29673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18397 V!18397 V!18397 V!18397 (_ BitVec 32) Int) Unit!13638)

(assert (=> b!468353 (= lt!211895 (lemmaNoChangeToArrayThenSameMapNoExtras!119 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1924 (array!29671 array!29673 (_ BitVec 32) (_ BitVec 32) V!18397 V!18397 (_ BitVec 32) Int) ListLongMap!7485)

(assert (=> b!468353 (= lt!211898 (getCurrentListMapNoExtraKeys!1924 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468353 (= lt!211896 (getCurrentListMapNoExtraKeys!1924 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468354 () Bool)

(declare-fun res!279959 () Bool)

(assert (=> b!468354 (=> (not res!279959) (not e!274126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29671 (_ BitVec 32)) Bool)

(assert (=> b!468354 (= res!279959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468355 () Bool)

(declare-fun res!279956 () Bool)

(assert (=> b!468355 (=> (not res!279956) (not e!274126))))

(declare-datatypes ((List!8679 0))(
  ( (Nil!8676) (Cons!8675 (h!9531 (_ BitVec 64)) (t!14645 List!8679)) )
))
(declare-fun arrayNoDuplicates!0 (array!29671 (_ BitVec 32) List!8679) Bool)

(assert (=> b!468355 (= res!279956 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8676))))

(declare-fun b!468356 () Bool)

(declare-fun e!274123 () Bool)

(assert (=> b!468356 (= e!274128 (and e!274123 mapRes!21148))))

(declare-fun condMapEmpty!21148 () Bool)

(declare-fun mapDefault!21148 () ValueCell!6141)

(assert (=> b!468356 (= condMapEmpty!21148 (= (arr!14259 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6141)) mapDefault!21148)))))

(declare-fun b!468357 () Bool)

(assert (=> b!468357 (= e!274123 tp_is_empty!12969)))

(declare-fun b!468358 () Bool)

(declare-fun res!279955 () Bool)

(assert (=> b!468358 (=> (not res!279955) (not e!274126))))

(assert (=> b!468358 (= res!279955 (and (= (size!14611 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14610 _keys!1025) (size!14611 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41976 res!279958) b!468358))

(assert (= (and b!468358 res!279955) b!468354))

(assert (= (and b!468354 res!279959) b!468355))

(assert (= (and b!468355 res!279956) b!468353))

(assert (= (and b!468353 (not res!279957)) b!468351))

(assert (= (and b!468356 condMapEmpty!21148) mapIsEmpty!21148))

(assert (= (and b!468356 (not condMapEmpty!21148)) mapNonEmpty!21148))

(get-info :version)

(assert (= (and mapNonEmpty!21148 ((_ is ValueCellFull!6141) mapValue!21148)) b!468352))

(assert (= (and b!468356 ((_ is ValueCellFull!6141) mapDefault!21148)) b!468357))

(assert (= start!41976 b!468356))

(declare-fun m!450351 () Bool)

(assert (=> b!468351 m!450351))

(declare-fun m!450353 () Bool)

(assert (=> b!468351 m!450353))

(assert (=> b!468351 m!450351))

(declare-fun m!450355 () Bool)

(assert (=> b!468351 m!450355))

(declare-fun m!450357 () Bool)

(assert (=> b!468351 m!450357))

(declare-fun m!450359 () Bool)

(assert (=> b!468351 m!450359))

(declare-fun m!450361 () Bool)

(assert (=> b!468351 m!450361))

(declare-fun m!450363 () Bool)

(assert (=> b!468354 m!450363))

(declare-fun m!450365 () Bool)

(assert (=> b!468353 m!450365))

(declare-fun m!450367 () Bool)

(assert (=> b!468353 m!450367))

(declare-fun m!450369 () Bool)

(assert (=> b!468353 m!450369))

(declare-fun m!450371 () Bool)

(assert (=> b!468355 m!450371))

(declare-fun m!450373 () Bool)

(assert (=> mapNonEmpty!21148 m!450373))

(declare-fun m!450375 () Bool)

(assert (=> start!41976 m!450375))

(declare-fun m!450377 () Bool)

(assert (=> start!41976 m!450377))

(declare-fun m!450379 () Bool)

(assert (=> start!41976 m!450379))

(check-sat (not b!468354) (not start!41976) (not b_next!11541) tp_is_empty!12969 (not b!468351) (not mapNonEmpty!21148) (not b!468353) (not b!468355) b_and!19957)
(check-sat b_and!19957 (not b_next!11541))
