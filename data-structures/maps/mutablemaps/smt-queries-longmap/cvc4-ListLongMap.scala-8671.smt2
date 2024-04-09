; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105442 () Bool)

(assert start!105442)

(declare-fun b_free!27065 () Bool)

(declare-fun b_next!27065 () Bool)

(assert (=> start!105442 (= b_free!27065 (not b_next!27065))))

(declare-fun tp!94709 () Bool)

(declare-fun b_and!44921 () Bool)

(assert (=> start!105442 (= tp!94709 b_and!44921)))

(declare-fun b!1255696 () Bool)

(declare-fun res!837207 () Bool)

(declare-fun e!713755 () Bool)

(assert (=> b!1255696 (=> (not res!837207) (not e!713755))))

(declare-datatypes ((array!81567 0))(
  ( (array!81568 (arr!39338 (Array (_ BitVec 32) (_ BitVec 64))) (size!39875 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81567)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81567 (_ BitVec 32)) Bool)

(assert (=> b!1255696 (= res!837207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255697 () Bool)

(declare-fun res!837210 () Bool)

(assert (=> b!1255697 (=> (not res!837210) (not e!713755))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47987 0))(
  ( (V!47988 (val!16046 Int)) )
))
(declare-datatypes ((ValueCell!15220 0))(
  ( (ValueCellFull!15220 (v!18746 V!47987)) (EmptyCell!15220) )
))
(declare-datatypes ((array!81569 0))(
  ( (array!81570 (arr!39339 (Array (_ BitVec 32) ValueCell!15220)) (size!39876 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81569)

(assert (=> b!1255697 (= res!837210 (and (= (size!39876 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39875 _keys!1118) (size!39876 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255698 () Bool)

(declare-fun e!713752 () Bool)

(assert (=> b!1255698 (= e!713755 (not e!713752))))

(declare-fun res!837208 () Bool)

(assert (=> b!1255698 (=> res!837208 e!713752)))

(assert (=> b!1255698 (= res!837208 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20870 0))(
  ( (tuple2!20871 (_1!10445 (_ BitVec 64)) (_2!10445 V!47987)) )
))
(declare-datatypes ((List!28108 0))(
  ( (Nil!28105) (Cons!28104 (h!29313 tuple2!20870) (t!41602 List!28108)) )
))
(declare-datatypes ((ListLongMap!18755 0))(
  ( (ListLongMap!18756 (toList!9393 List!28108)) )
))
(declare-fun lt!567697 () ListLongMap!18755)

(declare-fun lt!567695 () ListLongMap!18755)

(assert (=> b!1255698 (= lt!567697 lt!567695)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47987)

(declare-fun zeroValue!871 () V!47987)

(declare-fun minValueBefore!43 () V!47987)

(declare-datatypes ((Unit!41758 0))(
  ( (Unit!41759) )
))
(declare-fun lt!567696 () Unit!41758)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1070 (array!81567 array!81569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47987 V!47987 V!47987 V!47987 (_ BitVec 32) Int) Unit!41758)

(assert (=> b!1255698 (= lt!567696 (lemmaNoChangeToArrayThenSameMapNoExtras!1070 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5752 (array!81567 array!81569 (_ BitVec 32) (_ BitVec 32) V!47987 V!47987 (_ BitVec 32) Int) ListLongMap!18755)

(assert (=> b!1255698 (= lt!567695 (getCurrentListMapNoExtraKeys!5752 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255698 (= lt!567697 (getCurrentListMapNoExtraKeys!5752 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255699 () Bool)

(declare-fun e!713754 () Bool)

(declare-fun tp_is_empty!31967 () Bool)

(assert (=> b!1255699 (= e!713754 tp_is_empty!31967)))

(declare-fun b!1255700 () Bool)

(declare-fun e!713756 () Bool)

(declare-fun e!713753 () Bool)

(declare-fun mapRes!49735 () Bool)

(assert (=> b!1255700 (= e!713756 (and e!713753 mapRes!49735))))

(declare-fun condMapEmpty!49735 () Bool)

(declare-fun mapDefault!49735 () ValueCell!15220)

