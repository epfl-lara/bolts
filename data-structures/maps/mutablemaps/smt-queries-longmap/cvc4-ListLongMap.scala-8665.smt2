; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105392 () Bool)

(assert start!105392)

(declare-fun b_free!27029 () Bool)

(declare-fun b_next!27029 () Bool)

(assert (=> start!105392 (= b_free!27029 (not b_next!27029))))

(declare-fun tp!94598 () Bool)

(declare-fun b_and!44877 () Bool)

(assert (=> start!105392 (= tp!94598 b_and!44877)))

(declare-fun mapIsEmpty!49678 () Bool)

(declare-fun mapRes!49678 () Bool)

(assert (=> mapIsEmpty!49678 mapRes!49678))

(declare-fun res!836920 () Bool)

(declare-fun e!713387 () Bool)

(assert (=> start!105392 (=> (not res!836920) (not e!713387))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105392 (= res!836920 (validMask!0 mask!1466))))

(assert (=> start!105392 e!713387))

(assert (=> start!105392 true))

(assert (=> start!105392 tp!94598))

(declare-fun tp_is_empty!31931 () Bool)

(assert (=> start!105392 tp_is_empty!31931))

(declare-datatypes ((array!81497 0))(
  ( (array!81498 (arr!39304 (Array (_ BitVec 32) (_ BitVec 64))) (size!39841 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81497)

(declare-fun array_inv!29897 (array!81497) Bool)

(assert (=> start!105392 (array_inv!29897 _keys!1118)))

(declare-datatypes ((V!47939 0))(
  ( (V!47940 (val!16028 Int)) )
))
(declare-datatypes ((ValueCell!15202 0))(
  ( (ValueCellFull!15202 (v!18728 V!47939)) (EmptyCell!15202) )
))
(declare-datatypes ((array!81499 0))(
  ( (array!81500 (arr!39305 (Array (_ BitVec 32) ValueCell!15202)) (size!39842 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81499)

(declare-fun e!713386 () Bool)

(declare-fun array_inv!29898 (array!81499) Bool)

(assert (=> start!105392 (and (array_inv!29898 _values!914) e!713386)))

(declare-fun b!1255190 () Bool)

(declare-fun e!713388 () Bool)

(assert (=> b!1255190 (= e!713388 tp_is_empty!31931)))

(declare-fun b!1255191 () Bool)

(declare-fun res!836917 () Bool)

(assert (=> b!1255191 (=> (not res!836917) (not e!713387))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255191 (= res!836917 (and (= (size!39842 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39841 _keys!1118) (size!39842 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255192 () Bool)

(declare-fun res!836919 () Bool)

(assert (=> b!1255192 (=> (not res!836919) (not e!713387))))

(declare-datatypes ((List!28081 0))(
  ( (Nil!28078) (Cons!28077 (h!29286 (_ BitVec 64)) (t!41573 List!28081)) )
))
(declare-fun arrayNoDuplicates!0 (array!81497 (_ BitVec 32) List!28081) Bool)

(assert (=> b!1255192 (= res!836919 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28078))))

(declare-fun mapNonEmpty!49678 () Bool)

(declare-fun tp!94599 () Bool)

(assert (=> mapNonEmpty!49678 (= mapRes!49678 (and tp!94599 e!713388))))

(declare-fun mapValue!49678 () ValueCell!15202)

(declare-fun mapRest!49678 () (Array (_ BitVec 32) ValueCell!15202))

(declare-fun mapKey!49678 () (_ BitVec 32))

(assert (=> mapNonEmpty!49678 (= (arr!39305 _values!914) (store mapRest!49678 mapKey!49678 mapValue!49678))))

(declare-fun b!1255193 () Bool)

(assert (=> b!1255193 (= e!713387 (not true))))

(declare-datatypes ((tuple2!20842 0))(
  ( (tuple2!20843 (_1!10431 (_ BitVec 64)) (_2!10431 V!47939)) )
))
(declare-datatypes ((List!28082 0))(
  ( (Nil!28079) (Cons!28078 (h!29287 tuple2!20842) (t!41574 List!28082)) )
))
(declare-datatypes ((ListLongMap!18727 0))(
  ( (ListLongMap!18728 (toList!9379 List!28082)) )
))
(declare-fun lt!567450 () ListLongMap!18727)

(declare-fun lt!567451 () ListLongMap!18727)

(assert (=> b!1255193 (= lt!567450 lt!567451)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47939)

(declare-fun zeroValue!871 () V!47939)

(declare-fun minValueBefore!43 () V!47939)

(declare-datatypes ((Unit!41732 0))(
  ( (Unit!41733) )
))
(declare-fun lt!567452 () Unit!41732)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1058 (array!81497 array!81499 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47939 V!47939 V!47939 V!47939 (_ BitVec 32) Int) Unit!41732)

(assert (=> b!1255193 (= lt!567452 (lemmaNoChangeToArrayThenSameMapNoExtras!1058 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5740 (array!81497 array!81499 (_ BitVec 32) (_ BitVec 32) V!47939 V!47939 (_ BitVec 32) Int) ListLongMap!18727)

(assert (=> b!1255193 (= lt!567451 (getCurrentListMapNoExtraKeys!5740 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255193 (= lt!567450 (getCurrentListMapNoExtraKeys!5740 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255194 () Bool)

(declare-fun e!713384 () Bool)

(assert (=> b!1255194 (= e!713386 (and e!713384 mapRes!49678))))

(declare-fun condMapEmpty!49678 () Bool)

(declare-fun mapDefault!49678 () ValueCell!15202)

