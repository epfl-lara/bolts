; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42498 () Bool)

(assert start!42498)

(declare-fun b_free!11945 () Bool)

(declare-fun b_next!11945 () Bool)

(assert (=> start!42498 (= b_free!11945 (not b_next!11945))))

(declare-fun tp!41872 () Bool)

(declare-fun b_and!20431 () Bool)

(assert (=> start!42498 (= tp!41872 b_and!20431)))

(declare-fun b!473898 () Bool)

(declare-fun res!283126 () Bool)

(declare-fun e!278112 () Bool)

(assert (=> b!473898 (=> (not res!283126) (not e!278112))))

(declare-datatypes ((array!30463 0))(
  ( (array!30464 (arr!14647 (Array (_ BitVec 32) (_ BitVec 64))) (size!14999 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30463)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30463 (_ BitVec 32)) Bool)

(assert (=> b!473898 (= res!283126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473899 () Bool)

(declare-fun e!278117 () Bool)

(declare-fun tp_is_empty!13373 () Bool)

(assert (=> b!473899 (= e!278117 tp_is_empty!13373)))

(declare-fun b!473900 () Bool)

(declare-fun res!283129 () Bool)

(assert (=> b!473900 (=> (not res!283129) (not e!278112))))

(declare-datatypes ((List!8976 0))(
  ( (Nil!8973) (Cons!8972 (h!9828 (_ BitVec 64)) (t!14956 List!8976)) )
))
(declare-fun arrayNoDuplicates!0 (array!30463 (_ BitVec 32) List!8976) Bool)

(assert (=> b!473900 (= res!283129 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8973))))

(declare-fun b!473901 () Bool)

(declare-fun res!283127 () Bool)

(assert (=> b!473901 (=> (not res!283127) (not e!278112))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18935 0))(
  ( (V!18936 (val!6731 Int)) )
))
(declare-datatypes ((ValueCell!6343 0))(
  ( (ValueCellFull!6343 (v!9019 V!18935)) (EmptyCell!6343) )
))
(declare-datatypes ((array!30465 0))(
  ( (array!30466 (arr!14648 (Array (_ BitVec 32) ValueCell!6343)) (size!15000 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30465)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473901 (= res!283127 (and (= (size!15000 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14999 _keys!1025) (size!15000 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21775 () Bool)

(declare-fun mapRes!21775 () Bool)

(declare-fun tp!41871 () Bool)

(declare-fun e!278114 () Bool)

(assert (=> mapNonEmpty!21775 (= mapRes!21775 (and tp!41871 e!278114))))

(declare-fun mapKey!21775 () (_ BitVec 32))

(declare-fun mapRest!21775 () (Array (_ BitVec 32) ValueCell!6343))

(declare-fun mapValue!21775 () ValueCell!6343)

(assert (=> mapNonEmpty!21775 (= (arr!14648 _values!833) (store mapRest!21775 mapKey!21775 mapValue!21775))))

(declare-fun b!473902 () Bool)

(assert (=> b!473902 (= e!278114 tp_is_empty!13373)))

(declare-fun b!473903 () Bool)

(declare-fun e!278116 () Bool)

(assert (=> b!473903 (= e!278116 true)))

(declare-datatypes ((tuple2!8868 0))(
  ( (tuple2!8869 (_1!4444 (_ BitVec 64)) (_2!4444 V!18935)) )
))
(declare-datatypes ((List!8977 0))(
  ( (Nil!8974) (Cons!8973 (h!9829 tuple2!8868) (t!14957 List!8977)) )
))
(declare-datatypes ((ListLongMap!7795 0))(
  ( (ListLongMap!7796 (toList!3913 List!8977)) )
))
(declare-fun lt!215736 () ListLongMap!7795)

(declare-fun lt!215730 () tuple2!8868)

(declare-fun minValueBefore!38 () V!18935)

(declare-fun +!1719 (ListLongMap!7795 tuple2!8868) ListLongMap!7795)

(assert (=> b!473903 (= (+!1719 lt!215736 lt!215730) (+!1719 (+!1719 lt!215736 (tuple2!8869 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215730))))

(declare-fun minValueAfter!38 () V!18935)

(assert (=> b!473903 (= lt!215730 (tuple2!8869 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13949 0))(
  ( (Unit!13950) )
))
(declare-fun lt!215735 () Unit!13949)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!156 (ListLongMap!7795 (_ BitVec 64) V!18935 V!18935) Unit!13949)

(assert (=> b!473903 (= lt!215735 (addSameAsAddTwiceSameKeyDiffValues!156 lt!215736 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215734 () ListLongMap!7795)

(declare-fun zeroValue!794 () V!18935)

(assert (=> b!473903 (= lt!215736 (+!1719 lt!215734 (tuple2!8869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215737 () ListLongMap!7795)

(declare-fun getCurrentListMap!2256 (array!30463 array!30465 (_ BitVec 32) (_ BitVec 32) V!18935 V!18935 (_ BitVec 32) Int) ListLongMap!7795)

(assert (=> b!473903 (= lt!215737 (getCurrentListMap!2256 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215731 () ListLongMap!7795)

(assert (=> b!473903 (= lt!215731 (getCurrentListMap!2256 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283128 () Bool)

(assert (=> start!42498 (=> (not res!283128) (not e!278112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42498 (= res!283128 (validMask!0 mask!1365))))

(assert (=> start!42498 e!278112))

(assert (=> start!42498 tp_is_empty!13373))

(assert (=> start!42498 tp!41872))

(assert (=> start!42498 true))

(declare-fun array_inv!10556 (array!30463) Bool)

(assert (=> start!42498 (array_inv!10556 _keys!1025)))

(declare-fun e!278115 () Bool)

(declare-fun array_inv!10557 (array!30465) Bool)

(assert (=> start!42498 (and (array_inv!10557 _values!833) e!278115)))

(declare-fun mapIsEmpty!21775 () Bool)

(assert (=> mapIsEmpty!21775 mapRes!21775))

(declare-fun b!473904 () Bool)

(assert (=> b!473904 (= e!278112 (not e!278116))))

(declare-fun res!283130 () Bool)

(assert (=> b!473904 (=> res!283130 e!278116)))

(assert (=> b!473904 (= res!283130 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215733 () ListLongMap!7795)

(assert (=> b!473904 (= lt!215734 lt!215733)))

(declare-fun lt!215732 () Unit!13949)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!263 (array!30463 array!30465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18935 V!18935 V!18935 V!18935 (_ BitVec 32) Int) Unit!13949)

(assert (=> b!473904 (= lt!215732 (lemmaNoChangeToArrayThenSameMapNoExtras!263 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2068 (array!30463 array!30465 (_ BitVec 32) (_ BitVec 32) V!18935 V!18935 (_ BitVec 32) Int) ListLongMap!7795)

(assert (=> b!473904 (= lt!215733 (getCurrentListMapNoExtraKeys!2068 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473904 (= lt!215734 (getCurrentListMapNoExtraKeys!2068 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473905 () Bool)

(assert (=> b!473905 (= e!278115 (and e!278117 mapRes!21775))))

(declare-fun condMapEmpty!21775 () Bool)

(declare-fun mapDefault!21775 () ValueCell!6343)

