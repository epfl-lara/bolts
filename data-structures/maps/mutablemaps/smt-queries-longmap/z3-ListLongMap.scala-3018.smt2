; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42472 () Bool)

(assert start!42472)

(declare-fun b_free!11919 () Bool)

(declare-fun b_next!11919 () Bool)

(assert (=> start!42472 (= b_free!11919 (not b_next!11919))))

(declare-fun tp!41793 () Bool)

(declare-fun b_and!20405 () Bool)

(assert (=> start!42472 (= tp!41793 b_and!20405)))

(declare-fun b!473586 () Bool)

(declare-fun e!277879 () Bool)

(declare-fun e!277880 () Bool)

(declare-fun mapRes!21736 () Bool)

(assert (=> b!473586 (= e!277879 (and e!277880 mapRes!21736))))

(declare-fun condMapEmpty!21736 () Bool)

(declare-datatypes ((V!18901 0))(
  ( (V!18902 (val!6718 Int)) )
))
(declare-datatypes ((ValueCell!6330 0))(
  ( (ValueCellFull!6330 (v!9006 V!18901)) (EmptyCell!6330) )
))
(declare-datatypes ((array!30413 0))(
  ( (array!30414 (arr!14622 (Array (_ BitVec 32) ValueCell!6330)) (size!14974 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30413)

(declare-fun mapDefault!21736 () ValueCell!6330)

(assert (=> b!473586 (= condMapEmpty!21736 (= (arr!14622 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6330)) mapDefault!21736)))))

(declare-fun mapIsEmpty!21736 () Bool)

(assert (=> mapIsEmpty!21736 mapRes!21736))

(declare-fun b!473587 () Bool)

(declare-fun res!282933 () Bool)

(declare-fun e!277878 () Bool)

(assert (=> b!473587 (=> (not res!282933) (not e!277878))))

(declare-datatypes ((array!30415 0))(
  ( (array!30416 (arr!14623 (Array (_ BitVec 32) (_ BitVec 64))) (size!14975 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30415)

(declare-datatypes ((List!8958 0))(
  ( (Nil!8955) (Cons!8954 (h!9810 (_ BitVec 64)) (t!14938 List!8958)) )
))
(declare-fun arrayNoDuplicates!0 (array!30415 (_ BitVec 32) List!8958) Bool)

(assert (=> b!473587 (= res!282933 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8955))))

(declare-fun b!473588 () Bool)

(declare-fun e!277883 () Bool)

(declare-fun tp_is_empty!13347 () Bool)

(assert (=> b!473588 (= e!277883 tp_is_empty!13347)))

(declare-fun b!473589 () Bool)

(assert (=> b!473589 (= e!277880 tp_is_empty!13347)))

(declare-fun b!473590 () Bool)

(declare-fun e!277881 () Bool)

(assert (=> b!473590 (= e!277881 true)))

(declare-datatypes ((tuple2!8848 0))(
  ( (tuple2!8849 (_1!4434 (_ BitVec 64)) (_2!4434 V!18901)) )
))
(declare-datatypes ((List!8959 0))(
  ( (Nil!8956) (Cons!8955 (h!9811 tuple2!8848) (t!14939 List!8959)) )
))
(declare-datatypes ((ListLongMap!7775 0))(
  ( (ListLongMap!7776 (toList!3903 List!8959)) )
))
(declare-fun lt!215421 () ListLongMap!7775)

(declare-fun lt!215422 () tuple2!8848)

(declare-fun minValueBefore!38 () V!18901)

(declare-fun +!1710 (ListLongMap!7775 tuple2!8848) ListLongMap!7775)

(assert (=> b!473590 (= (+!1710 lt!215421 lt!215422) (+!1710 (+!1710 lt!215421 (tuple2!8849 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215422))))

(declare-fun minValueAfter!38 () V!18901)

(assert (=> b!473590 (= lt!215422 (tuple2!8849 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13929 0))(
  ( (Unit!13930) )
))
(declare-fun lt!215418 () Unit!13929)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!147 (ListLongMap!7775 (_ BitVec 64) V!18901 V!18901) Unit!13929)

(assert (=> b!473590 (= lt!215418 (addSameAsAddTwiceSameKeyDiffValues!147 lt!215421 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215425 () ListLongMap!7775)

(declare-fun zeroValue!794 () V!18901)

(assert (=> b!473590 (= lt!215421 (+!1710 lt!215425 (tuple2!8849 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215423 () ListLongMap!7775)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2247 (array!30415 array!30413 (_ BitVec 32) (_ BitVec 32) V!18901 V!18901 (_ BitVec 32) Int) ListLongMap!7775)

(assert (=> b!473590 (= lt!215423 (getCurrentListMap!2247 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215424 () ListLongMap!7775)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473590 (= lt!215424 (getCurrentListMap!2247 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473591 () Bool)

(assert (=> b!473591 (= e!277878 (not e!277881))))

(declare-fun res!282932 () Bool)

(assert (=> b!473591 (=> res!282932 e!277881)))

(assert (=> b!473591 (= res!282932 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215420 () ListLongMap!7775)

(assert (=> b!473591 (= lt!215425 lt!215420)))

(declare-fun lt!215419 () Unit!13929)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!255 (array!30415 array!30413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18901 V!18901 V!18901 V!18901 (_ BitVec 32) Int) Unit!13929)

(assert (=> b!473591 (= lt!215419 (lemmaNoChangeToArrayThenSameMapNoExtras!255 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2060 (array!30415 array!30413 (_ BitVec 32) (_ BitVec 32) V!18901 V!18901 (_ BitVec 32) Int) ListLongMap!7775)

(assert (=> b!473591 (= lt!215420 (getCurrentListMapNoExtraKeys!2060 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473591 (= lt!215425 (getCurrentListMapNoExtraKeys!2060 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21736 () Bool)

(declare-fun tp!41794 () Bool)

(assert (=> mapNonEmpty!21736 (= mapRes!21736 (and tp!41794 e!277883))))

(declare-fun mapValue!21736 () ValueCell!6330)

(declare-fun mapRest!21736 () (Array (_ BitVec 32) ValueCell!6330))

(declare-fun mapKey!21736 () (_ BitVec 32))

(assert (=> mapNonEmpty!21736 (= (arr!14622 _values!833) (store mapRest!21736 mapKey!21736 mapValue!21736))))

(declare-fun res!282935 () Bool)

(assert (=> start!42472 (=> (not res!282935) (not e!277878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42472 (= res!282935 (validMask!0 mask!1365))))

(assert (=> start!42472 e!277878))

(assert (=> start!42472 tp_is_empty!13347))

(assert (=> start!42472 tp!41793))

(assert (=> start!42472 true))

(declare-fun array_inv!10540 (array!30415) Bool)

(assert (=> start!42472 (array_inv!10540 _keys!1025)))

(declare-fun array_inv!10541 (array!30413) Bool)

(assert (=> start!42472 (and (array_inv!10541 _values!833) e!277879)))

(declare-fun b!473592 () Bool)

(declare-fun res!282931 () Bool)

(assert (=> b!473592 (=> (not res!282931) (not e!277878))))

(assert (=> b!473592 (= res!282931 (and (= (size!14974 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14975 _keys!1025) (size!14974 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473593 () Bool)

(declare-fun res!282934 () Bool)

(assert (=> b!473593 (=> (not res!282934) (not e!277878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30415 (_ BitVec 32)) Bool)

(assert (=> b!473593 (= res!282934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42472 res!282935) b!473592))

(assert (= (and b!473592 res!282931) b!473593))

(assert (= (and b!473593 res!282934) b!473587))

(assert (= (and b!473587 res!282933) b!473591))

(assert (= (and b!473591 (not res!282932)) b!473590))

(assert (= (and b!473586 condMapEmpty!21736) mapIsEmpty!21736))

(assert (= (and b!473586 (not condMapEmpty!21736)) mapNonEmpty!21736))

(get-info :version)

(assert (= (and mapNonEmpty!21736 ((_ is ValueCellFull!6330) mapValue!21736)) b!473588))

(assert (= (and b!473586 ((_ is ValueCellFull!6330) mapDefault!21736)) b!473589))

(assert (= start!42472 b!473586))

(declare-fun m!455757 () Bool)

(assert (=> b!473593 m!455757))

(declare-fun m!455759 () Bool)

(assert (=> b!473590 m!455759))

(declare-fun m!455761 () Bool)

(assert (=> b!473590 m!455761))

(declare-fun m!455763 () Bool)

(assert (=> b!473590 m!455763))

(declare-fun m!455765 () Bool)

(assert (=> b!473590 m!455765))

(assert (=> b!473590 m!455759))

(declare-fun m!455767 () Bool)

(assert (=> b!473590 m!455767))

(declare-fun m!455769 () Bool)

(assert (=> b!473590 m!455769))

(declare-fun m!455771 () Bool)

(assert (=> b!473590 m!455771))

(declare-fun m!455773 () Bool)

(assert (=> b!473587 m!455773))

(declare-fun m!455775 () Bool)

(assert (=> b!473591 m!455775))

(declare-fun m!455777 () Bool)

(assert (=> b!473591 m!455777))

(declare-fun m!455779 () Bool)

(assert (=> b!473591 m!455779))

(declare-fun m!455781 () Bool)

(assert (=> start!42472 m!455781))

(declare-fun m!455783 () Bool)

(assert (=> start!42472 m!455783))

(declare-fun m!455785 () Bool)

(assert (=> start!42472 m!455785))

(declare-fun m!455787 () Bool)

(assert (=> mapNonEmpty!21736 m!455787))

(check-sat tp_is_empty!13347 (not b!473590) (not start!42472) (not b!473587) (not b!473593) (not b_next!11919) b_and!20405 (not mapNonEmpty!21736) (not b!473591))
(check-sat b_and!20405 (not b_next!11919))
