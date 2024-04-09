; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42470 () Bool)

(assert start!42470)

(declare-fun b_free!11917 () Bool)

(declare-fun b_next!11917 () Bool)

(assert (=> start!42470 (= b_free!11917 (not b_next!11917))))

(declare-fun tp!41788 () Bool)

(declare-fun b_and!20403 () Bool)

(assert (=> start!42470 (= tp!41788 b_and!20403)))

(declare-fun mapIsEmpty!21733 () Bool)

(declare-fun mapRes!21733 () Bool)

(assert (=> mapIsEmpty!21733 mapRes!21733))

(declare-fun b!473562 () Bool)

(declare-fun res!282919 () Bool)

(declare-fun e!277860 () Bool)

(assert (=> b!473562 (=> (not res!282919) (not e!277860))))

(declare-datatypes ((array!30409 0))(
  ( (array!30410 (arr!14620 (Array (_ BitVec 32) (_ BitVec 64))) (size!14972 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30409)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30409 (_ BitVec 32)) Bool)

(assert (=> b!473562 (= res!282919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473563 () Bool)

(declare-fun e!277865 () Bool)

(assert (=> b!473563 (= e!277865 true)))

(declare-datatypes ((V!18899 0))(
  ( (V!18900 (val!6717 Int)) )
))
(declare-datatypes ((tuple2!8846 0))(
  ( (tuple2!8847 (_1!4433 (_ BitVec 64)) (_2!4433 V!18899)) )
))
(declare-datatypes ((List!8957 0))(
  ( (Nil!8954) (Cons!8953 (h!9809 tuple2!8846) (t!14937 List!8957)) )
))
(declare-datatypes ((ListLongMap!7773 0))(
  ( (ListLongMap!7774 (toList!3902 List!8957)) )
))
(declare-fun lt!215399 () ListLongMap!7773)

(declare-fun lt!215394 () tuple2!8846)

(declare-fun minValueBefore!38 () V!18899)

(declare-fun +!1709 (ListLongMap!7773 tuple2!8846) ListLongMap!7773)

(assert (=> b!473563 (= (+!1709 lt!215399 lt!215394) (+!1709 (+!1709 lt!215399 (tuple2!8847 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215394))))

(declare-fun minValueAfter!38 () V!18899)

(assert (=> b!473563 (= lt!215394 (tuple2!8847 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13927 0))(
  ( (Unit!13928) )
))
(declare-fun lt!215396 () Unit!13927)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!146 (ListLongMap!7773 (_ BitVec 64) V!18899 V!18899) Unit!13927)

(assert (=> b!473563 (= lt!215396 (addSameAsAddTwiceSameKeyDiffValues!146 lt!215399 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215401 () ListLongMap!7773)

(declare-fun zeroValue!794 () V!18899)

(assert (=> b!473563 (= lt!215399 (+!1709 lt!215401 (tuple2!8847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215400 () ListLongMap!7773)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6329 0))(
  ( (ValueCellFull!6329 (v!9005 V!18899)) (EmptyCell!6329) )
))
(declare-datatypes ((array!30411 0))(
  ( (array!30412 (arr!14621 (Array (_ BitVec 32) ValueCell!6329)) (size!14973 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30411)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMap!2246 (array!30409 array!30411 (_ BitVec 32) (_ BitVec 32) V!18899 V!18899 (_ BitVec 32) Int) ListLongMap!7773)

(assert (=> b!473563 (= lt!215400 (getCurrentListMap!2246 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215398 () ListLongMap!7773)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473563 (= lt!215398 (getCurrentListMap!2246 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473565 () Bool)

(declare-fun e!277864 () Bool)

(declare-fun tp_is_empty!13345 () Bool)

(assert (=> b!473565 (= e!277864 tp_is_empty!13345)))

(declare-fun b!473566 () Bool)

(assert (=> b!473566 (= e!277860 (not e!277865))))

(declare-fun res!282918 () Bool)

(assert (=> b!473566 (=> res!282918 e!277865)))

(assert (=> b!473566 (= res!282918 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215395 () ListLongMap!7773)

(assert (=> b!473566 (= lt!215401 lt!215395)))

(declare-fun lt!215397 () Unit!13927)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!254 (array!30409 array!30411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18899 V!18899 V!18899 V!18899 (_ BitVec 32) Int) Unit!13927)

(assert (=> b!473566 (= lt!215397 (lemmaNoChangeToArrayThenSameMapNoExtras!254 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2059 (array!30409 array!30411 (_ BitVec 32) (_ BitVec 32) V!18899 V!18899 (_ BitVec 32) Int) ListLongMap!7773)

(assert (=> b!473566 (= lt!215395 (getCurrentListMapNoExtraKeys!2059 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473566 (= lt!215401 (getCurrentListMapNoExtraKeys!2059 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21733 () Bool)

(declare-fun tp!41787 () Bool)

(assert (=> mapNonEmpty!21733 (= mapRes!21733 (and tp!41787 e!277864))))

(declare-fun mapKey!21733 () (_ BitVec 32))

(declare-fun mapRest!21733 () (Array (_ BitVec 32) ValueCell!6329))

(declare-fun mapValue!21733 () ValueCell!6329)

(assert (=> mapNonEmpty!21733 (= (arr!14621 _values!833) (store mapRest!21733 mapKey!21733 mapValue!21733))))

(declare-fun b!473567 () Bool)

(declare-fun e!277862 () Bool)

(declare-fun e!277863 () Bool)

(assert (=> b!473567 (= e!277862 (and e!277863 mapRes!21733))))

(declare-fun condMapEmpty!21733 () Bool)

(declare-fun mapDefault!21733 () ValueCell!6329)

