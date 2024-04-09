; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42026 () Bool)

(assert start!42026)

(declare-fun b_free!11591 () Bool)

(declare-fun b_next!11591 () Bool)

(assert (=> start!42026 (= b_free!11591 (not b_next!11591))))

(declare-fun tp!40788 () Bool)

(declare-fun b_and!20007 () Bool)

(assert (=> start!42026 (= tp!40788 b_and!20007)))

(declare-fun res!280333 () Bool)

(declare-fun e!274574 () Bool)

(assert (=> start!42026 (=> (not res!280333) (not e!274574))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42026 (= res!280333 (validMask!0 mask!1365))))

(assert (=> start!42026 e!274574))

(declare-fun tp_is_empty!13019 () Bool)

(assert (=> start!42026 tp_is_empty!13019))

(assert (=> start!42026 tp!40788))

(assert (=> start!42026 true))

(declare-datatypes ((array!29771 0))(
  ( (array!29772 (arr!14308 (Array (_ BitVec 32) (_ BitVec 64))) (size!14660 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29771)

(declare-fun array_inv!10324 (array!29771) Bool)

(assert (=> start!42026 (array_inv!10324 _keys!1025)))

(declare-datatypes ((V!18463 0))(
  ( (V!18464 (val!6554 Int)) )
))
(declare-datatypes ((ValueCell!6166 0))(
  ( (ValueCellFull!6166 (v!8839 V!18463)) (EmptyCell!6166) )
))
(declare-datatypes ((array!29773 0))(
  ( (array!29774 (arr!14309 (Array (_ BitVec 32) ValueCell!6166)) (size!14661 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29773)

(declare-fun e!274576 () Bool)

(declare-fun array_inv!10325 (array!29773) Bool)

(assert (=> start!42026 (and (array_inv!10325 _values!833) e!274576)))

(declare-fun b!468951 () Bool)

(declare-fun res!280330 () Bool)

(assert (=> b!468951 (=> (not res!280330) (not e!274574))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!468951 (= res!280330 (and (= (size!14661 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14660 _keys!1025) (size!14661 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468952 () Bool)

(declare-fun e!274577 () Bool)

(assert (=> b!468952 (= e!274574 (not e!274577))))

(declare-fun res!280332 () Bool)

(assert (=> b!468952 (=> res!280332 e!274577)))

(assert (=> b!468952 (= res!280332 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8600 0))(
  ( (tuple2!8601 (_1!4310 (_ BitVec 64)) (_2!4310 V!18463)) )
))
(declare-datatypes ((List!8719 0))(
  ( (Nil!8716) (Cons!8715 (h!9571 tuple2!8600) (t!14685 List!8719)) )
))
(declare-datatypes ((ListLongMap!7527 0))(
  ( (ListLongMap!7528 (toList!3779 List!8719)) )
))
(declare-fun lt!212426 () ListLongMap!7527)

(declare-fun lt!212422 () ListLongMap!7527)

(assert (=> b!468952 (= lt!212426 lt!212422)))

(declare-fun minValueBefore!38 () V!18463)

(declare-datatypes ((Unit!13680 0))(
  ( (Unit!13681) )
))
(declare-fun lt!212423 () Unit!13680)

(declare-fun zeroValue!794 () V!18463)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18463)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!138 (array!29771 array!29773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18463 V!18463 V!18463 V!18463 (_ BitVec 32) Int) Unit!13680)

(assert (=> b!468952 (= lt!212423 (lemmaNoChangeToArrayThenSameMapNoExtras!138 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1943 (array!29771 array!29773 (_ BitVec 32) (_ BitVec 32) V!18463 V!18463 (_ BitVec 32) Int) ListLongMap!7527)

(assert (=> b!468952 (= lt!212422 (getCurrentListMapNoExtraKeys!1943 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468952 (= lt!212426 (getCurrentListMapNoExtraKeys!1943 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21223 () Bool)

(declare-fun mapRes!21223 () Bool)

(declare-fun tp!40789 () Bool)

(declare-fun e!274575 () Bool)

(assert (=> mapNonEmpty!21223 (= mapRes!21223 (and tp!40789 e!274575))))

(declare-fun mapValue!21223 () ValueCell!6166)

(declare-fun mapRest!21223 () (Array (_ BitVec 32) ValueCell!6166))

(declare-fun mapKey!21223 () (_ BitVec 32))

(assert (=> mapNonEmpty!21223 (= (arr!14309 _values!833) (store mapRest!21223 mapKey!21223 mapValue!21223))))

(declare-fun b!468953 () Bool)

(assert (=> b!468953 (= e!274577 (bvsle #b00000000000000000000000000000000 (size!14660 _keys!1025)))))

(declare-fun lt!212420 () tuple2!8600)

(declare-fun +!1667 (ListLongMap!7527 tuple2!8600) ListLongMap!7527)

(assert (=> b!468953 (= (+!1667 lt!212426 lt!212420) (+!1667 (+!1667 lt!212426 (tuple2!8601 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212420))))

(assert (=> b!468953 (= lt!212420 (tuple2!8601 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212421 () Unit!13680)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!108 (ListLongMap!7527 (_ BitVec 64) V!18463 V!18463) Unit!13680)

(assert (=> b!468953 (= lt!212421 (addSameAsAddTwiceSameKeyDiffValues!108 lt!212426 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212424 () ListLongMap!7527)

(declare-fun getCurrentListMap!2189 (array!29771 array!29773 (_ BitVec 32) (_ BitVec 32) V!18463 V!18463 (_ BitVec 32) Int) ListLongMap!7527)

(assert (=> b!468953 (= lt!212424 (getCurrentListMap!2189 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212425 () ListLongMap!7527)

(assert (=> b!468953 (= lt!212425 (getCurrentListMap!2189 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468954 () Bool)

(declare-fun e!274573 () Bool)

(assert (=> b!468954 (= e!274573 tp_is_empty!13019)))

(declare-fun b!468955 () Bool)

(declare-fun res!280331 () Bool)

(assert (=> b!468955 (=> (not res!280331) (not e!274574))))

(declare-datatypes ((List!8720 0))(
  ( (Nil!8717) (Cons!8716 (h!9572 (_ BitVec 64)) (t!14686 List!8720)) )
))
(declare-fun arrayNoDuplicates!0 (array!29771 (_ BitVec 32) List!8720) Bool)

(assert (=> b!468955 (= res!280331 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8717))))

(declare-fun mapIsEmpty!21223 () Bool)

(assert (=> mapIsEmpty!21223 mapRes!21223))

(declare-fun b!468956 () Bool)

(assert (=> b!468956 (= e!274576 (and e!274573 mapRes!21223))))

(declare-fun condMapEmpty!21223 () Bool)

(declare-fun mapDefault!21223 () ValueCell!6166)

