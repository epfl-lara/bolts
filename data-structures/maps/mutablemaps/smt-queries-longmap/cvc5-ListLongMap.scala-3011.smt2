; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42408 () Bool)

(assert start!42408)

(declare-fun b_free!11875 () Bool)

(declare-fun b_next!11875 () Bool)

(assert (=> start!42408 (= b_free!11875 (not b_next!11875))))

(declare-fun tp!41659 () Bool)

(declare-fun b_and!20349 () Bool)

(assert (=> start!42408 (= tp!41659 b_and!20349)))

(declare-fun b!472877 () Bool)

(declare-fun res!282524 () Bool)

(declare-fun e!277370 () Bool)

(assert (=> b!472877 (=> (not res!282524) (not e!277370))))

(declare-datatypes ((array!30329 0))(
  ( (array!30330 (arr!14581 (Array (_ BitVec 32) (_ BitVec 64))) (size!14933 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30329)

(declare-datatypes ((List!8927 0))(
  ( (Nil!8924) (Cons!8923 (h!9779 (_ BitVec 64)) (t!14905 List!8927)) )
))
(declare-fun arrayNoDuplicates!0 (array!30329 (_ BitVec 32) List!8927) Bool)

(assert (=> b!472877 (= res!282524 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8924))))

(declare-fun b!472878 () Bool)

(declare-fun e!277374 () Bool)

(assert (=> b!472878 (= e!277370 (not e!277374))))

(declare-fun res!282523 () Bool)

(assert (=> b!472878 (=> res!282523 e!277374)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472878 (= res!282523 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18843 0))(
  ( (V!18844 (val!6696 Int)) )
))
(declare-datatypes ((tuple2!8812 0))(
  ( (tuple2!8813 (_1!4416 (_ BitVec 64)) (_2!4416 V!18843)) )
))
(declare-datatypes ((List!8928 0))(
  ( (Nil!8925) (Cons!8924 (h!9780 tuple2!8812) (t!14906 List!8928)) )
))
(declare-datatypes ((ListLongMap!7739 0))(
  ( (ListLongMap!7740 (toList!3885 List!8928)) )
))
(declare-fun lt!214736 () ListLongMap!7739)

(declare-fun lt!214735 () ListLongMap!7739)

(assert (=> b!472878 (= lt!214736 lt!214735)))

(declare-datatypes ((Unit!13891 0))(
  ( (Unit!13892) )
))
(declare-fun lt!214737 () Unit!13891)

(declare-fun minValueBefore!38 () V!18843)

(declare-fun zeroValue!794 () V!18843)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6308 0))(
  ( (ValueCellFull!6308 (v!8983 V!18843)) (EmptyCell!6308) )
))
(declare-datatypes ((array!30331 0))(
  ( (array!30332 (arr!14582 (Array (_ BitVec 32) ValueCell!6308)) (size!14934 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30331)

(declare-fun minValueAfter!38 () V!18843)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!239 (array!30329 array!30331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18843 V!18843 V!18843 V!18843 (_ BitVec 32) Int) Unit!13891)

(assert (=> b!472878 (= lt!214737 (lemmaNoChangeToArrayThenSameMapNoExtras!239 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2044 (array!30329 array!30331 (_ BitVec 32) (_ BitVec 32) V!18843 V!18843 (_ BitVec 32) Int) ListLongMap!7739)

(assert (=> b!472878 (= lt!214735 (getCurrentListMapNoExtraKeys!2044 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472878 (= lt!214736 (getCurrentListMapNoExtraKeys!2044 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472879 () Bool)

(declare-fun res!282526 () Bool)

(assert (=> b!472879 (=> (not res!282526) (not e!277370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30329 (_ BitVec 32)) Bool)

(assert (=> b!472879 (= res!282526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21667 () Bool)

(declare-fun mapRes!21667 () Bool)

(declare-fun tp!41658 () Bool)

(declare-fun e!277372 () Bool)

(assert (=> mapNonEmpty!21667 (= mapRes!21667 (and tp!41658 e!277372))))

(declare-fun mapValue!21667 () ValueCell!6308)

(declare-fun mapRest!21667 () (Array (_ BitVec 32) ValueCell!6308))

(declare-fun mapKey!21667 () (_ BitVec 32))

(assert (=> mapNonEmpty!21667 (= (arr!14582 _values!833) (store mapRest!21667 mapKey!21667 mapValue!21667))))

(declare-fun mapIsEmpty!21667 () Bool)

(assert (=> mapIsEmpty!21667 mapRes!21667))

(declare-fun b!472880 () Bool)

(declare-fun tp_is_empty!13303 () Bool)

(assert (=> b!472880 (= e!277372 tp_is_empty!13303)))

(declare-fun b!472881 () Bool)

(declare-fun e!277369 () Bool)

(assert (=> b!472881 (= e!277369 tp_is_empty!13303)))

(declare-fun b!472882 () Bool)

(assert (=> b!472882 (= e!277374 true)))

(declare-fun lt!214741 () ListLongMap!7739)

(declare-fun lt!214740 () tuple2!8812)

(declare-fun +!1694 (ListLongMap!7739 tuple2!8812) ListLongMap!7739)

(assert (=> b!472882 (= (+!1694 lt!214741 lt!214740) (+!1694 (+!1694 lt!214741 (tuple2!8813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214740))))

(assert (=> b!472882 (= lt!214740 (tuple2!8813 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214742 () Unit!13891)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!131 (ListLongMap!7739 (_ BitVec 64) V!18843 V!18843) Unit!13891)

(assert (=> b!472882 (= lt!214742 (addSameAsAddTwiceSameKeyDiffValues!131 lt!214741 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!472882 (= lt!214741 (+!1694 lt!214736 (tuple2!8813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214738 () ListLongMap!7739)

(declare-fun getCurrentListMap!2231 (array!30329 array!30331 (_ BitVec 32) (_ BitVec 32) V!18843 V!18843 (_ BitVec 32) Int) ListLongMap!7739)

(assert (=> b!472882 (= lt!214738 (getCurrentListMap!2231 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214739 () ListLongMap!7739)

(assert (=> b!472882 (= lt!214739 (getCurrentListMap!2231 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282525 () Bool)

(assert (=> start!42408 (=> (not res!282525) (not e!277370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42408 (= res!282525 (validMask!0 mask!1365))))

(assert (=> start!42408 e!277370))

(assert (=> start!42408 tp_is_empty!13303))

(assert (=> start!42408 tp!41659))

(assert (=> start!42408 true))

(declare-fun array_inv!10516 (array!30329) Bool)

(assert (=> start!42408 (array_inv!10516 _keys!1025)))

(declare-fun e!277371 () Bool)

(declare-fun array_inv!10517 (array!30331) Bool)

(assert (=> start!42408 (and (array_inv!10517 _values!833) e!277371)))

(declare-fun b!472883 () Bool)

(assert (=> b!472883 (= e!277371 (and e!277369 mapRes!21667))))

(declare-fun condMapEmpty!21667 () Bool)

(declare-fun mapDefault!21667 () ValueCell!6308)

