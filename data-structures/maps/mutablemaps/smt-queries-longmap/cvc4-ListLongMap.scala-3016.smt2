; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42442 () Bool)

(assert start!42442)

(declare-fun b_free!11909 () Bool)

(declare-fun b_next!11909 () Bool)

(assert (=> start!42442 (= b_free!11909 (not b_next!11909))))

(declare-fun tp!41761 () Bool)

(declare-fun b_and!20383 () Bool)

(assert (=> start!42442 (= tp!41761 b_and!20383)))

(declare-fun mapIsEmpty!21718 () Bool)

(declare-fun mapRes!21718 () Bool)

(assert (=> mapIsEmpty!21718 mapRes!21718))

(declare-fun b!473285 () Bool)

(declare-fun e!277680 () Bool)

(declare-fun e!277678 () Bool)

(assert (=> b!473285 (= e!277680 (not e!277678))))

(declare-fun res!282779 () Bool)

(assert (=> b!473285 (=> res!282779 e!277678)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473285 (= res!282779 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18887 0))(
  ( (V!18888 (val!6713 Int)) )
))
(declare-datatypes ((tuple2!8842 0))(
  ( (tuple2!8843 (_1!4431 (_ BitVec 64)) (_2!4431 V!18887)) )
))
(declare-datatypes ((List!8954 0))(
  ( (Nil!8951) (Cons!8950 (h!9806 tuple2!8842) (t!14932 List!8954)) )
))
(declare-datatypes ((ListLongMap!7769 0))(
  ( (ListLongMap!7770 (toList!3900 List!8954)) )
))
(declare-fun lt!215145 () ListLongMap!7769)

(declare-fun lt!215147 () ListLongMap!7769)

(assert (=> b!473285 (= lt!215145 lt!215147)))

(declare-datatypes ((Unit!13921 0))(
  ( (Unit!13922) )
))
(declare-fun lt!215144 () Unit!13921)

(declare-fun minValueBefore!38 () V!18887)

(declare-fun zeroValue!794 () V!18887)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30395 0))(
  ( (array!30396 (arr!14614 (Array (_ BitVec 32) (_ BitVec 64))) (size!14966 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30395)

(declare-datatypes ((ValueCell!6325 0))(
  ( (ValueCellFull!6325 (v!9000 V!18887)) (EmptyCell!6325) )
))
(declare-datatypes ((array!30397 0))(
  ( (array!30398 (arr!14615 (Array (_ BitVec 32) ValueCell!6325)) (size!14967 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30397)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18887)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!252 (array!30395 array!30397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18887 V!18887 V!18887 V!18887 (_ BitVec 32) Int) Unit!13921)

(assert (=> b!473285 (= lt!215144 (lemmaNoChangeToArrayThenSameMapNoExtras!252 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2057 (array!30395 array!30397 (_ BitVec 32) (_ BitVec 32) V!18887 V!18887 (_ BitVec 32) Int) ListLongMap!7769)

(assert (=> b!473285 (= lt!215147 (getCurrentListMapNoExtraKeys!2057 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473285 (= lt!215145 (getCurrentListMapNoExtraKeys!2057 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282777 () Bool)

(assert (=> start!42442 (=> (not res!282777) (not e!277680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42442 (= res!282777 (validMask!0 mask!1365))))

(assert (=> start!42442 e!277680))

(declare-fun tp_is_empty!13337 () Bool)

(assert (=> start!42442 tp_is_empty!13337))

(assert (=> start!42442 tp!41761))

(assert (=> start!42442 true))

(declare-fun array_inv!10536 (array!30395) Bool)

(assert (=> start!42442 (array_inv!10536 _keys!1025)))

(declare-fun e!277675 () Bool)

(declare-fun array_inv!10537 (array!30397) Bool)

(assert (=> start!42442 (and (array_inv!10537 _values!833) e!277675)))

(declare-fun b!473286 () Bool)

(declare-fun e!277679 () Bool)

(assert (=> b!473286 (= e!277679 tp_is_empty!13337)))

(declare-fun b!473287 () Bool)

(assert (=> b!473287 (= e!277678 true)))

(declare-fun lt!215143 () ListLongMap!7769)

(declare-fun lt!215146 () tuple2!8842)

(declare-fun +!1707 (ListLongMap!7769 tuple2!8842) ListLongMap!7769)

(assert (=> b!473287 (= (+!1707 lt!215143 lt!215146) (+!1707 (+!1707 lt!215143 (tuple2!8843 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215146))))

(assert (=> b!473287 (= lt!215146 (tuple2!8843 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215149 () Unit!13921)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!144 (ListLongMap!7769 (_ BitVec 64) V!18887 V!18887) Unit!13921)

(assert (=> b!473287 (= lt!215149 (addSameAsAddTwiceSameKeyDiffValues!144 lt!215143 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473287 (= lt!215143 (+!1707 lt!215145 (tuple2!8843 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215148 () ListLongMap!7769)

(declare-fun getCurrentListMap!2244 (array!30395 array!30397 (_ BitVec 32) (_ BitVec 32) V!18887 V!18887 (_ BitVec 32) Int) ListLongMap!7769)

(assert (=> b!473287 (= lt!215148 (getCurrentListMap!2244 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215150 () ListLongMap!7769)

(assert (=> b!473287 (= lt!215150 (getCurrentListMap!2244 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473288 () Bool)

(declare-fun e!277676 () Bool)

(assert (=> b!473288 (= e!277675 (and e!277676 mapRes!21718))))

(declare-fun condMapEmpty!21718 () Bool)

(declare-fun mapDefault!21718 () ValueCell!6325)

