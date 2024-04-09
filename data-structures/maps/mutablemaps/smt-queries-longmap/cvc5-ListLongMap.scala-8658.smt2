; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105324 () Bool)

(assert start!105324)

(declare-fun b_free!26983 () Bool)

(declare-fun b_next!26983 () Bool)

(assert (=> start!105324 (= b_free!26983 (not b_next!26983))))

(declare-fun tp!94457 () Bool)

(declare-fun b_and!44819 () Bool)

(assert (=> start!105324 (= tp!94457 b_and!44819)))

(declare-fun b!1254507 () Bool)

(declare-fun res!836545 () Bool)

(declare-fun e!712906 () Bool)

(assert (=> b!1254507 (=> (not res!836545) (not e!712906))))

(declare-datatypes ((array!81403 0))(
  ( (array!81404 (arr!39258 (Array (_ BitVec 32) (_ BitVec 64))) (size!39795 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81403)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81403 (_ BitVec 32)) Bool)

(assert (=> b!1254507 (= res!836545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254509 () Bool)

(declare-fun e!712909 () Bool)

(assert (=> b!1254509 (= e!712909 true)))

(declare-datatypes ((V!47879 0))(
  ( (V!47880 (val!16005 Int)) )
))
(declare-datatypes ((tuple2!20806 0))(
  ( (tuple2!20807 (_1!10413 (_ BitVec 64)) (_2!10413 V!47879)) )
))
(declare-datatypes ((List!28048 0))(
  ( (Nil!28045) (Cons!28044 (h!29253 tuple2!20806) (t!41538 List!28048)) )
))
(declare-datatypes ((ListLongMap!18691 0))(
  ( (ListLongMap!18692 (toList!9361 List!28048)) )
))
(declare-fun lt!567029 () ListLongMap!18691)

(declare-fun lt!567028 () ListLongMap!18691)

(declare-fun -!2070 (ListLongMap!18691 (_ BitVec 64)) ListLongMap!18691)

(assert (=> b!1254509 (= lt!567029 (-!2070 lt!567028 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!567026 () ListLongMap!18691)

(declare-fun lt!567032 () ListLongMap!18691)

(assert (=> b!1254509 (= (-!2070 lt!567026 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567032)))

(declare-datatypes ((Unit!41694 0))(
  ( (Unit!41695) )
))
(declare-fun lt!567031 () Unit!41694)

(declare-fun minValueBefore!43 () V!47879)

(declare-fun addThenRemoveForNewKeyIsSame!330 (ListLongMap!18691 (_ BitVec 64) V!47879) Unit!41694)

(assert (=> b!1254509 (= lt!567031 (addThenRemoveForNewKeyIsSame!330 lt!567032 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!567030 () ListLongMap!18691)

(declare-fun lt!567025 () ListLongMap!18691)

(assert (=> b!1254509 (and (= lt!567028 lt!567026) (= lt!567025 lt!567030))))

(declare-fun +!4161 (ListLongMap!18691 tuple2!20806) ListLongMap!18691)

(assert (=> b!1254509 (= lt!567026 (+!4161 lt!567032 (tuple2!20807 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47879)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47879)

(declare-datatypes ((ValueCell!15179 0))(
  ( (ValueCellFull!15179 (v!18704 V!47879)) (EmptyCell!15179) )
))
(declare-datatypes ((array!81405 0))(
  ( (array!81406 (arr!39259 (Array (_ BitVec 32) ValueCell!15179)) (size!39796 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81405)

(declare-fun getCurrentListMap!4548 (array!81403 array!81405 (_ BitVec 32) (_ BitVec 32) V!47879 V!47879 (_ BitVec 32) Int) ListLongMap!18691)

(assert (=> b!1254509 (= lt!567025 (getCurrentListMap!4548 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254509 (= lt!567028 (getCurrentListMap!4548 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49606 () Bool)

(declare-fun mapRes!49606 () Bool)

(assert (=> mapIsEmpty!49606 mapRes!49606))

(declare-fun b!1254510 () Bool)

(declare-fun res!836544 () Bool)

(assert (=> b!1254510 (=> (not res!836544) (not e!712906))))

(assert (=> b!1254510 (= res!836544 (and (= (size!39796 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39795 _keys!1118) (size!39796 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254511 () Bool)

(declare-fun res!836546 () Bool)

(assert (=> b!1254511 (=> (not res!836546) (not e!712906))))

(declare-datatypes ((List!28049 0))(
  ( (Nil!28046) (Cons!28045 (h!29254 (_ BitVec 64)) (t!41539 List!28049)) )
))
(declare-fun arrayNoDuplicates!0 (array!81403 (_ BitVec 32) List!28049) Bool)

(assert (=> b!1254511 (= res!836546 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28046))))

(declare-fun b!1254512 () Bool)

(declare-fun e!712905 () Bool)

(declare-fun tp_is_empty!31885 () Bool)

(assert (=> b!1254512 (= e!712905 tp_is_empty!31885)))

(declare-fun mapNonEmpty!49606 () Bool)

(declare-fun tp!94458 () Bool)

(declare-fun e!712904 () Bool)

(assert (=> mapNonEmpty!49606 (= mapRes!49606 (and tp!94458 e!712904))))

(declare-fun mapValue!49606 () ValueCell!15179)

(declare-fun mapKey!49606 () (_ BitVec 32))

(declare-fun mapRest!49606 () (Array (_ BitVec 32) ValueCell!15179))

(assert (=> mapNonEmpty!49606 (= (arr!39259 _values!914) (store mapRest!49606 mapKey!49606 mapValue!49606))))

(declare-fun b!1254513 () Bool)

(declare-fun e!712907 () Bool)

(assert (=> b!1254513 (= e!712907 (and e!712905 mapRes!49606))))

(declare-fun condMapEmpty!49606 () Bool)

(declare-fun mapDefault!49606 () ValueCell!15179)

