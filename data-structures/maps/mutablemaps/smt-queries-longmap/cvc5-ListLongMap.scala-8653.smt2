; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105294 () Bool)

(assert start!105294)

(declare-fun b_free!26953 () Bool)

(declare-fun b_next!26953 () Bool)

(assert (=> start!105294 (= b_free!26953 (not b_next!26953))))

(declare-fun tp!94367 () Bool)

(declare-fun b_and!44789 () Bool)

(assert (=> start!105294 (= tp!94367 b_and!44789)))

(declare-fun b!1254147 () Bool)

(declare-fun res!836318 () Bool)

(declare-fun e!712635 () Bool)

(assert (=> b!1254147 (=> (not res!836318) (not e!712635))))

(declare-datatypes ((array!81345 0))(
  ( (array!81346 (arr!39229 (Array (_ BitVec 32) (_ BitVec 64))) (size!39766 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81345)

(declare-datatypes ((List!28027 0))(
  ( (Nil!28024) (Cons!28023 (h!29232 (_ BitVec 64)) (t!41517 List!28027)) )
))
(declare-fun arrayNoDuplicates!0 (array!81345 (_ BitVec 32) List!28027) Bool)

(assert (=> b!1254147 (= res!836318 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28024))))

(declare-fun mapIsEmpty!49561 () Bool)

(declare-fun mapRes!49561 () Bool)

(assert (=> mapIsEmpty!49561 mapRes!49561))

(declare-fun b!1254148 () Bool)

(declare-fun e!712639 () Bool)

(declare-fun tp_is_empty!31855 () Bool)

(assert (=> b!1254148 (= e!712639 tp_is_empty!31855)))

(declare-fun res!836319 () Bool)

(assert (=> start!105294 (=> (not res!836319) (not e!712635))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105294 (= res!836319 (validMask!0 mask!1466))))

(assert (=> start!105294 e!712635))

(assert (=> start!105294 true))

(assert (=> start!105294 tp!94367))

(assert (=> start!105294 tp_is_empty!31855))

(declare-fun array_inv!29841 (array!81345) Bool)

(assert (=> start!105294 (array_inv!29841 _keys!1118)))

(declare-datatypes ((V!47839 0))(
  ( (V!47840 (val!15990 Int)) )
))
(declare-datatypes ((ValueCell!15164 0))(
  ( (ValueCellFull!15164 (v!18689 V!47839)) (EmptyCell!15164) )
))
(declare-datatypes ((array!81347 0))(
  ( (array!81348 (arr!39230 (Array (_ BitVec 32) ValueCell!15164)) (size!39767 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81347)

(declare-fun e!712634 () Bool)

(declare-fun array_inv!29842 (array!81347) Bool)

(assert (=> start!105294 (and (array_inv!29842 _values!914) e!712634)))

(declare-fun b!1254149 () Bool)

(declare-fun res!836321 () Bool)

(assert (=> b!1254149 (=> (not res!836321) (not e!712635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81345 (_ BitVec 32)) Bool)

(assert (=> b!1254149 (= res!836321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49561 () Bool)

(declare-fun tp!94368 () Bool)

(assert (=> mapNonEmpty!49561 (= mapRes!49561 (and tp!94368 e!712639))))

(declare-fun mapRest!49561 () (Array (_ BitVec 32) ValueCell!15164))

(declare-fun mapKey!49561 () (_ BitVec 32))

(declare-fun mapValue!49561 () ValueCell!15164)

(assert (=> mapNonEmpty!49561 (= (arr!39230 _values!914) (store mapRest!49561 mapKey!49561 mapValue!49561))))

(declare-fun b!1254150 () Bool)

(declare-fun res!836322 () Bool)

(assert (=> b!1254150 (=> (not res!836322) (not e!712635))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1254150 (= res!836322 (and (= (size!39767 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39766 _keys!1118) (size!39767 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254151 () Bool)

(declare-fun e!712637 () Bool)

(assert (=> b!1254151 (= e!712635 (not e!712637))))

(declare-fun res!836320 () Bool)

(assert (=> b!1254151 (=> res!836320 e!712637)))

(assert (=> b!1254151 (= res!836320 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20782 0))(
  ( (tuple2!20783 (_1!10401 (_ BitVec 64)) (_2!10401 V!47839)) )
))
(declare-datatypes ((List!28028 0))(
  ( (Nil!28025) (Cons!28024 (h!29233 tuple2!20782) (t!41518 List!28028)) )
))
(declare-datatypes ((ListLongMap!18667 0))(
  ( (ListLongMap!18668 (toList!9349 List!28028)) )
))
(declare-fun lt!566672 () ListLongMap!18667)

(declare-fun lt!566669 () ListLongMap!18667)

(assert (=> b!1254151 (= lt!566672 lt!566669)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47839)

(declare-datatypes ((Unit!41670 0))(
  ( (Unit!41671) )
))
(declare-fun lt!566667 () Unit!41670)

(declare-fun minValueBefore!43 () V!47839)

(declare-fun zeroValue!871 () V!47839)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1033 (array!81345 array!81347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47839 V!47839 V!47839 V!47839 (_ BitVec 32) Int) Unit!41670)

(assert (=> b!1254151 (= lt!566667 (lemmaNoChangeToArrayThenSameMapNoExtras!1033 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5715 (array!81345 array!81347 (_ BitVec 32) (_ BitVec 32) V!47839 V!47839 (_ BitVec 32) Int) ListLongMap!18667)

(assert (=> b!1254151 (= lt!566669 (getCurrentListMapNoExtraKeys!5715 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254151 (= lt!566672 (getCurrentListMapNoExtraKeys!5715 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254152 () Bool)

(declare-fun e!712636 () Bool)

(assert (=> b!1254152 (= e!712634 (and e!712636 mapRes!49561))))

(declare-fun condMapEmpty!49561 () Bool)

(declare-fun mapDefault!49561 () ValueCell!15164)

