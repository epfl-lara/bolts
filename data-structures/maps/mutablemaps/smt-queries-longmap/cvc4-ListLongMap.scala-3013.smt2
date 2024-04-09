; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42424 () Bool)

(assert start!42424)

(declare-fun b_free!11891 () Bool)

(declare-fun b_next!11891 () Bool)

(assert (=> start!42424 (= b_free!11891 (not b_next!11891))))

(declare-fun tp!41707 () Bool)

(declare-fun b_and!20365 () Bool)

(assert (=> start!42424 (= tp!41707 b_and!20365)))

(declare-fun b!473069 () Bool)

(declare-fun e!277515 () Bool)

(declare-fun tp_is_empty!13319 () Bool)

(assert (=> b!473069 (= e!277515 tp_is_empty!13319)))

(declare-fun b!473070 () Bool)

(declare-fun res!282643 () Bool)

(declare-fun e!277513 () Bool)

(assert (=> b!473070 (=> (not res!282643) (not e!277513))))

(declare-datatypes ((array!30359 0))(
  ( (array!30360 (arr!14596 (Array (_ BitVec 32) (_ BitVec 64))) (size!14948 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30359)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30359 (_ BitVec 32)) Bool)

(assert (=> b!473070 (= res!282643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473071 () Bool)

(declare-fun res!282646 () Bool)

(assert (=> b!473071 (=> (not res!282646) (not e!277513))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18863 0))(
  ( (V!18864 (val!6704 Int)) )
))
(declare-datatypes ((ValueCell!6316 0))(
  ( (ValueCellFull!6316 (v!8991 V!18863)) (EmptyCell!6316) )
))
(declare-datatypes ((array!30361 0))(
  ( (array!30362 (arr!14597 (Array (_ BitVec 32) ValueCell!6316)) (size!14949 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30361)

(assert (=> b!473071 (= res!282646 (and (= (size!14949 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14948 _keys!1025) (size!14949 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473072 () Bool)

(declare-fun res!282642 () Bool)

(assert (=> b!473072 (=> (not res!282642) (not e!277513))))

(declare-datatypes ((List!8939 0))(
  ( (Nil!8936) (Cons!8935 (h!9791 (_ BitVec 64)) (t!14917 List!8939)) )
))
(declare-fun arrayNoDuplicates!0 (array!30359 (_ BitVec 32) List!8939) Bool)

(assert (=> b!473072 (= res!282642 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8936))))

(declare-fun b!473073 () Bool)

(declare-fun e!277516 () Bool)

(assert (=> b!473073 (= e!277516 tp_is_empty!13319)))

(declare-fun b!473074 () Bool)

(declare-fun e!277518 () Bool)

(assert (=> b!473074 (= e!277513 (not e!277518))))

(declare-fun res!282644 () Bool)

(assert (=> b!473074 (=> res!282644 e!277518)))

(assert (=> b!473074 (= res!282644 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8826 0))(
  ( (tuple2!8827 (_1!4423 (_ BitVec 64)) (_2!4423 V!18863)) )
))
(declare-datatypes ((List!8940 0))(
  ( (Nil!8937) (Cons!8936 (h!9792 tuple2!8826) (t!14918 List!8940)) )
))
(declare-datatypes ((ListLongMap!7753 0))(
  ( (ListLongMap!7754 (toList!3892 List!8940)) )
))
(declare-fun lt!214930 () ListLongMap!7753)

(declare-fun lt!214929 () ListLongMap!7753)

(assert (=> b!473074 (= lt!214930 lt!214929)))

(declare-fun minValueBefore!38 () V!18863)

(declare-fun zeroValue!794 () V!18863)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13905 0))(
  ( (Unit!13906) )
))
(declare-fun lt!214934 () Unit!13905)

(declare-fun minValueAfter!38 () V!18863)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!246 (array!30359 array!30361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18863 V!18863 V!18863 V!18863 (_ BitVec 32) Int) Unit!13905)

(assert (=> b!473074 (= lt!214934 (lemmaNoChangeToArrayThenSameMapNoExtras!246 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2051 (array!30359 array!30361 (_ BitVec 32) (_ BitVec 32) V!18863 V!18863 (_ BitVec 32) Int) ListLongMap!7753)

(assert (=> b!473074 (= lt!214929 (getCurrentListMapNoExtraKeys!2051 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473074 (= lt!214930 (getCurrentListMapNoExtraKeys!2051 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21691 () Bool)

(declare-fun mapRes!21691 () Bool)

(declare-fun tp!41706 () Bool)

(assert (=> mapNonEmpty!21691 (= mapRes!21691 (and tp!41706 e!277516))))

(declare-fun mapKey!21691 () (_ BitVec 32))

(declare-fun mapValue!21691 () ValueCell!6316)

(declare-fun mapRest!21691 () (Array (_ BitVec 32) ValueCell!6316))

(assert (=> mapNonEmpty!21691 (= (arr!14597 _values!833) (store mapRest!21691 mapKey!21691 mapValue!21691))))

(declare-fun b!473075 () Bool)

(assert (=> b!473075 (= e!277518 true)))

(declare-fun lt!214932 () ListLongMap!7753)

(declare-fun lt!214933 () tuple2!8826)

(declare-fun +!1699 (ListLongMap!7753 tuple2!8826) ListLongMap!7753)

(assert (=> b!473075 (= (+!1699 lt!214932 lt!214933) (+!1699 (+!1699 lt!214932 (tuple2!8827 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214933))))

(assert (=> b!473075 (= lt!214933 (tuple2!8827 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!214931 () Unit!13905)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!136 (ListLongMap!7753 (_ BitVec 64) V!18863 V!18863) Unit!13905)

(assert (=> b!473075 (= lt!214931 (addSameAsAddTwiceSameKeyDiffValues!136 lt!214932 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473075 (= lt!214932 (+!1699 lt!214930 (tuple2!8827 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214928 () ListLongMap!7753)

(declare-fun getCurrentListMap!2236 (array!30359 array!30361 (_ BitVec 32) (_ BitVec 32) V!18863 V!18863 (_ BitVec 32) Int) ListLongMap!7753)

(assert (=> b!473075 (= lt!214928 (getCurrentListMap!2236 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214927 () ListLongMap!7753)

(assert (=> b!473075 (= lt!214927 (getCurrentListMap!2236 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473076 () Bool)

(declare-fun e!277517 () Bool)

(assert (=> b!473076 (= e!277517 (and e!277515 mapRes!21691))))

(declare-fun condMapEmpty!21691 () Bool)

(declare-fun mapDefault!21691 () ValueCell!6316)

