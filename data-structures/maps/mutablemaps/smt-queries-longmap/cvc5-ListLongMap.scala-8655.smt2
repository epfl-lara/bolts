; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105306 () Bool)

(assert start!105306)

(declare-fun b_free!26965 () Bool)

(declare-fun b_next!26965 () Bool)

(assert (=> start!105306 (= b_free!26965 (not b_next!26965))))

(declare-fun tp!94404 () Bool)

(declare-fun b_and!44801 () Bool)

(assert (=> start!105306 (= tp!94404 b_and!44801)))

(declare-fun b!1254291 () Bool)

(declare-fun res!836412 () Bool)

(declare-fun e!712743 () Bool)

(assert (=> b!1254291 (=> (not res!836412) (not e!712743))))

(declare-datatypes ((array!81369 0))(
  ( (array!81370 (arr!39241 (Array (_ BitVec 32) (_ BitVec 64))) (size!39778 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81369)

(declare-datatypes ((List!28037 0))(
  ( (Nil!28034) (Cons!28033 (h!29242 (_ BitVec 64)) (t!41527 List!28037)) )
))
(declare-fun arrayNoDuplicates!0 (array!81369 (_ BitVec 32) List!28037) Bool)

(assert (=> b!1254291 (= res!836412 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28034))))

(declare-fun b!1254292 () Bool)

(declare-fun e!712746 () Bool)

(declare-fun tp_is_empty!31867 () Bool)

(assert (=> b!1254292 (= e!712746 tp_is_empty!31867)))

(declare-fun b!1254293 () Bool)

(declare-fun e!712747 () Bool)

(assert (=> b!1254293 (= e!712747 true)))

(declare-datatypes ((V!47855 0))(
  ( (V!47856 (val!15996 Int)) )
))
(declare-datatypes ((tuple2!20794 0))(
  ( (tuple2!20795 (_1!10407 (_ BitVec 64)) (_2!10407 V!47855)) )
))
(declare-datatypes ((List!28038 0))(
  ( (Nil!28035) (Cons!28034 (h!29243 tuple2!20794) (t!41528 List!28038)) )
))
(declare-datatypes ((ListLongMap!18679 0))(
  ( (ListLongMap!18680 (toList!9355 List!28038)) )
))
(declare-fun lt!566813 () ListLongMap!18679)

(declare-fun lt!566810 () ListLongMap!18679)

(declare-fun -!2064 (ListLongMap!18679 (_ BitVec 64)) ListLongMap!18679)

(assert (=> b!1254293 (= lt!566813 (-!2064 lt!566810 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566814 () ListLongMap!18679)

(declare-fun lt!566815 () ListLongMap!18679)

(assert (=> b!1254293 (= (-!2064 lt!566814 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566815)))

(declare-datatypes ((Unit!41682 0))(
  ( (Unit!41683) )
))
(declare-fun lt!566816 () Unit!41682)

(declare-fun minValueBefore!43 () V!47855)

(declare-fun addThenRemoveForNewKeyIsSame!324 (ListLongMap!18679 (_ BitVec 64) V!47855) Unit!41682)

(assert (=> b!1254293 (= lt!566816 (addThenRemoveForNewKeyIsSame!324 lt!566815 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566811 () ListLongMap!18679)

(declare-fun lt!566812 () ListLongMap!18679)

(assert (=> b!1254293 (and (= lt!566810 lt!566814) (= lt!566811 lt!566812))))

(declare-fun +!4155 (ListLongMap!18679 tuple2!20794) ListLongMap!18679)

(assert (=> b!1254293 (= lt!566814 (+!4155 lt!566815 (tuple2!20795 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47855)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47855)

(declare-datatypes ((ValueCell!15170 0))(
  ( (ValueCellFull!15170 (v!18695 V!47855)) (EmptyCell!15170) )
))
(declare-datatypes ((array!81371 0))(
  ( (array!81372 (arr!39242 (Array (_ BitVec 32) ValueCell!15170)) (size!39779 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81371)

(declare-fun getCurrentListMap!4542 (array!81369 array!81371 (_ BitVec 32) (_ BitVec 32) V!47855 V!47855 (_ BitVec 32) Int) ListLongMap!18679)

(assert (=> b!1254293 (= lt!566811 (getCurrentListMap!4542 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254293 (= lt!566810 (getCurrentListMap!4542 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254294 () Bool)

(declare-fun res!836410 () Bool)

(assert (=> b!1254294 (=> (not res!836410) (not e!712743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81369 (_ BitVec 32)) Bool)

(assert (=> b!1254294 (= res!836410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254295 () Bool)

(assert (=> b!1254295 (= e!712743 (not e!712747))))

(declare-fun res!836411 () Bool)

(assert (=> b!1254295 (=> res!836411 e!712747)))

(assert (=> b!1254295 (= res!836411 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1254295 (= lt!566815 lt!566812)))

(declare-fun lt!566809 () Unit!41682)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1037 (array!81369 array!81371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47855 V!47855 V!47855 V!47855 (_ BitVec 32) Int) Unit!41682)

(assert (=> b!1254295 (= lt!566809 (lemmaNoChangeToArrayThenSameMapNoExtras!1037 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5719 (array!81369 array!81371 (_ BitVec 32) (_ BitVec 32) V!47855 V!47855 (_ BitVec 32) Int) ListLongMap!18679)

(assert (=> b!1254295 (= lt!566812 (getCurrentListMapNoExtraKeys!5719 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254295 (= lt!566815 (getCurrentListMapNoExtraKeys!5719 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49579 () Bool)

(declare-fun mapRes!49579 () Bool)

(assert (=> mapIsEmpty!49579 mapRes!49579))

(declare-fun res!836408 () Bool)

(assert (=> start!105306 (=> (not res!836408) (not e!712743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105306 (= res!836408 (validMask!0 mask!1466))))

(assert (=> start!105306 e!712743))

(assert (=> start!105306 true))

(assert (=> start!105306 tp!94404))

(assert (=> start!105306 tp_is_empty!31867))

(declare-fun array_inv!29851 (array!81369) Bool)

(assert (=> start!105306 (array_inv!29851 _keys!1118)))

(declare-fun e!712744 () Bool)

(declare-fun array_inv!29852 (array!81371) Bool)

(assert (=> start!105306 (and (array_inv!29852 _values!914) e!712744)))

(declare-fun b!1254296 () Bool)

(declare-fun res!836409 () Bool)

(assert (=> b!1254296 (=> (not res!836409) (not e!712743))))

(assert (=> b!1254296 (= res!836409 (and (= (size!39779 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39778 _keys!1118) (size!39779 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254297 () Bool)

(declare-fun e!712742 () Bool)

(assert (=> b!1254297 (= e!712742 tp_is_empty!31867)))

(declare-fun mapNonEmpty!49579 () Bool)

(declare-fun tp!94403 () Bool)

(assert (=> mapNonEmpty!49579 (= mapRes!49579 (and tp!94403 e!712746))))

(declare-fun mapKey!49579 () (_ BitVec 32))

(declare-fun mapValue!49579 () ValueCell!15170)

(declare-fun mapRest!49579 () (Array (_ BitVec 32) ValueCell!15170))

(assert (=> mapNonEmpty!49579 (= (arr!39242 _values!914) (store mapRest!49579 mapKey!49579 mapValue!49579))))

(declare-fun b!1254298 () Bool)

(assert (=> b!1254298 (= e!712744 (and e!712742 mapRes!49579))))

(declare-fun condMapEmpty!49579 () Bool)

(declare-fun mapDefault!49579 () ValueCell!15170)

