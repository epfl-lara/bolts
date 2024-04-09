; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42066 () Bool)

(assert start!42066)

(declare-fun b_free!11611 () Bool)

(declare-fun b_next!11611 () Bool)

(assert (=> start!42066 (= b_free!11611 (not b_next!11611))))

(declare-fun tp!40852 () Bool)

(declare-fun b_and!20039 () Bool)

(assert (=> start!42066 (= tp!40852 b_and!20039)))

(declare-fun b!469370 () Bool)

(declare-fun res!280561 () Bool)

(declare-fun e!274869 () Bool)

(assert (=> b!469370 (=> (not res!280561) (not e!274869))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29813 0))(
  ( (array!29814 (arr!14328 (Array (_ BitVec 32) (_ BitVec 64))) (size!14680 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29813)

(declare-datatypes ((V!18491 0))(
  ( (V!18492 (val!6564 Int)) )
))
(declare-datatypes ((ValueCell!6176 0))(
  ( (ValueCellFull!6176 (v!8850 V!18491)) (EmptyCell!6176) )
))
(declare-datatypes ((array!29815 0))(
  ( (array!29816 (arr!14329 (Array (_ BitVec 32) ValueCell!6176)) (size!14681 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29815)

(assert (=> b!469370 (= res!280561 (and (= (size!14681 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14680 _keys!1025) (size!14681 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469371 () Bool)

(declare-fun e!274870 () Bool)

(assert (=> b!469371 (= e!274870 true)))

(declare-datatypes ((tuple2!8614 0))(
  ( (tuple2!8615 (_1!4317 (_ BitVec 64)) (_2!4317 V!18491)) )
))
(declare-datatypes ((List!8733 0))(
  ( (Nil!8730) (Cons!8729 (h!9585 tuple2!8614) (t!14701 List!8733)) )
))
(declare-datatypes ((ListLongMap!7541 0))(
  ( (ListLongMap!7542 (toList!3786 List!8733)) )
))
(declare-fun lt!212784 () ListLongMap!7541)

(declare-fun lt!212785 () tuple2!8614)

(declare-fun minValueBefore!38 () V!18491)

(declare-fun +!1674 (ListLongMap!7541 tuple2!8614) ListLongMap!7541)

(assert (=> b!469371 (= (+!1674 lt!212784 lt!212785) (+!1674 (+!1674 lt!212784 (tuple2!8615 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212785))))

(declare-fun minValueAfter!38 () V!18491)

(assert (=> b!469371 (= lt!212785 (tuple2!8615 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13696 0))(
  ( (Unit!13697) )
))
(declare-fun lt!212781 () Unit!13696)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!115 (ListLongMap!7541 (_ BitVec 64) V!18491 V!18491) Unit!13696)

(assert (=> b!469371 (= lt!212781 (addSameAsAddTwiceSameKeyDiffValues!115 lt!212784 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18491)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212786 () ListLongMap!7541)

(declare-fun getCurrentListMap!2196 (array!29813 array!29815 (_ BitVec 32) (_ BitVec 32) V!18491 V!18491 (_ BitVec 32) Int) ListLongMap!7541)

(assert (=> b!469371 (= lt!212786 (getCurrentListMap!2196 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212783 () ListLongMap!7541)

(assert (=> b!469371 (= lt!212783 (getCurrentListMap!2196 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469372 () Bool)

(declare-fun e!274867 () Bool)

(declare-fun tp_is_empty!13039 () Bool)

(assert (=> b!469372 (= e!274867 tp_is_empty!13039)))

(declare-fun b!469373 () Bool)

(assert (=> b!469373 (= e!274869 (not e!274870))))

(declare-fun res!280557 () Bool)

(assert (=> b!469373 (=> res!280557 e!274870)))

(assert (=> b!469373 (= res!280557 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212782 () ListLongMap!7541)

(assert (=> b!469373 (= lt!212784 lt!212782)))

(declare-fun lt!212787 () Unit!13696)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!144 (array!29813 array!29815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18491 V!18491 V!18491 V!18491 (_ BitVec 32) Int) Unit!13696)

(assert (=> b!469373 (= lt!212787 (lemmaNoChangeToArrayThenSameMapNoExtras!144 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1949 (array!29813 array!29815 (_ BitVec 32) (_ BitVec 32) V!18491 V!18491 (_ BitVec 32) Int) ListLongMap!7541)

(assert (=> b!469373 (= lt!212782 (getCurrentListMapNoExtraKeys!1949 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469373 (= lt!212784 (getCurrentListMapNoExtraKeys!1949 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21256 () Bool)

(declare-fun mapRes!21256 () Bool)

(assert (=> mapIsEmpty!21256 mapRes!21256))

(declare-fun b!469374 () Bool)

(declare-fun e!274866 () Bool)

(assert (=> b!469374 (= e!274866 tp_is_empty!13039)))

(declare-fun b!469375 () Bool)

(declare-fun e!274868 () Bool)

(assert (=> b!469375 (= e!274868 (and e!274867 mapRes!21256))))

(declare-fun condMapEmpty!21256 () Bool)

(declare-fun mapDefault!21256 () ValueCell!6176)

