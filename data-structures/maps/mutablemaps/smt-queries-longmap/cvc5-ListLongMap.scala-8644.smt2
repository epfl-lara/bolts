; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105218 () Bool)

(assert start!105218)

(declare-fun b_free!26899 () Bool)

(declare-fun b_next!26899 () Bool)

(assert (=> start!105218 (= b_free!26899 (not b_next!26899))))

(declare-fun tp!94203 () Bool)

(declare-fun b_and!44723 () Bool)

(assert (=> start!105218 (= tp!94203 b_and!44723)))

(declare-fun b!1253315 () Bool)

(declare-fun e!712032 () Bool)

(declare-fun tp_is_empty!31801 () Bool)

(assert (=> b!1253315 (= e!712032 tp_is_empty!31801)))

(declare-fun b!1253316 () Bool)

(declare-fun res!835832 () Bool)

(declare-fun e!712034 () Bool)

(assert (=> b!1253316 (=> (not res!835832) (not e!712034))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81243 0))(
  ( (array!81244 (arr!39179 (Array (_ BitVec 32) (_ BitVec 64))) (size!39716 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81243)

(declare-datatypes ((V!47767 0))(
  ( (V!47768 (val!15963 Int)) )
))
(declare-datatypes ((ValueCell!15137 0))(
  ( (ValueCellFull!15137 (v!18661 V!47767)) (EmptyCell!15137) )
))
(declare-datatypes ((array!81245 0))(
  ( (array!81246 (arr!39180 (Array (_ BitVec 32) ValueCell!15137)) (size!39717 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81245)

(declare-fun mask!1466 () (_ BitVec 32))

(assert (=> b!1253316 (= res!835832 (and (= (size!39717 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39716 _keys!1118) (size!39717 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253317 () Bool)

(declare-fun res!835834 () Bool)

(assert (=> b!1253317 (=> (not res!835834) (not e!712034))))

(declare-datatypes ((List!27994 0))(
  ( (Nil!27991) (Cons!27990 (h!29199 (_ BitVec 64)) (t!41482 List!27994)) )
))
(declare-fun arrayNoDuplicates!0 (array!81243 (_ BitVec 32) List!27994) Bool)

(assert (=> b!1253317 (= res!835834 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27991))))

(declare-fun b!1253318 () Bool)

(declare-fun e!712031 () Bool)

(assert (=> b!1253318 (= e!712031 true)))

(declare-datatypes ((tuple2!20746 0))(
  ( (tuple2!20747 (_1!10383 (_ BitVec 64)) (_2!10383 V!47767)) )
))
(declare-datatypes ((List!27995 0))(
  ( (Nil!27992) (Cons!27991 (h!29200 tuple2!20746) (t!41483 List!27995)) )
))
(declare-datatypes ((ListLongMap!18631 0))(
  ( (ListLongMap!18632 (toList!9331 List!27995)) )
))
(declare-fun lt!565880 () ListLongMap!18631)

(declare-fun lt!565882 () ListLongMap!18631)

(declare-fun -!2044 (ListLongMap!18631 (_ BitVec 64)) ListLongMap!18631)

(assert (=> b!1253318 (= lt!565880 (-!2044 lt!565882 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565881 () ListLongMap!18631)

(declare-fun lt!565885 () ListLongMap!18631)

(assert (=> b!1253318 (= (-!2044 lt!565881 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565885)))

(declare-datatypes ((Unit!41632 0))(
  ( (Unit!41633) )
))
(declare-fun lt!565879 () Unit!41632)

(declare-fun minValueBefore!43 () V!47767)

(declare-fun addThenRemoveForNewKeyIsSame!304 (ListLongMap!18631 (_ BitVec 64) V!47767) Unit!41632)

(assert (=> b!1253318 (= lt!565879 (addThenRemoveForNewKeyIsSame!304 lt!565885 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565886 () ListLongMap!18631)

(declare-fun lt!565884 () ListLongMap!18631)

(assert (=> b!1253318 (and (= lt!565882 lt!565881) (= lt!565886 lt!565884))))

(declare-fun +!4135 (ListLongMap!18631 tuple2!20746) ListLongMap!18631)

(assert (=> b!1253318 (= lt!565881 (+!4135 lt!565885 (tuple2!20747 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47767)

(declare-fun zeroValue!871 () V!47767)

(declare-fun getCurrentListMap!4522 (array!81243 array!81245 (_ BitVec 32) (_ BitVec 32) V!47767 V!47767 (_ BitVec 32) Int) ListLongMap!18631)

(assert (=> b!1253318 (= lt!565886 (getCurrentListMap!4522 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253318 (= lt!565882 (getCurrentListMap!4522 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49477 () Bool)

(declare-fun mapRes!49477 () Bool)

(declare-fun tp!94202 () Bool)

(assert (=> mapNonEmpty!49477 (= mapRes!49477 (and tp!94202 e!712032))))

(declare-fun mapKey!49477 () (_ BitVec 32))

(declare-fun mapValue!49477 () ValueCell!15137)

(declare-fun mapRest!49477 () (Array (_ BitVec 32) ValueCell!15137))

(assert (=> mapNonEmpty!49477 (= (arr!39180 _values!914) (store mapRest!49477 mapKey!49477 mapValue!49477))))

(declare-fun b!1253319 () Bool)

(assert (=> b!1253319 (= e!712034 (not e!712031))))

(declare-fun res!835835 () Bool)

(assert (=> b!1253319 (=> res!835835 e!712031)))

(assert (=> b!1253319 (= res!835835 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253319 (= lt!565885 lt!565884)))

(declare-fun lt!565883 () Unit!41632)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1017 (array!81243 array!81245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47767 V!47767 V!47767 V!47767 (_ BitVec 32) Int) Unit!41632)

(assert (=> b!1253319 (= lt!565883 (lemmaNoChangeToArrayThenSameMapNoExtras!1017 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5699 (array!81243 array!81245 (_ BitVec 32) (_ BitVec 32) V!47767 V!47767 (_ BitVec 32) Int) ListLongMap!18631)

(assert (=> b!1253319 (= lt!565884 (getCurrentListMapNoExtraKeys!5699 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253319 (= lt!565885 (getCurrentListMapNoExtraKeys!5699 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253320 () Bool)

(declare-fun e!712030 () Bool)

(declare-fun e!712033 () Bool)

(assert (=> b!1253320 (= e!712030 (and e!712033 mapRes!49477))))

(declare-fun condMapEmpty!49477 () Bool)

(declare-fun mapDefault!49477 () ValueCell!15137)

