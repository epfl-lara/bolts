; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105242 () Bool)

(assert start!105242)

(declare-fun b_free!26923 () Bool)

(declare-fun b_next!26923 () Bool)

(assert (=> start!105242 (= b_free!26923 (not b_next!26923))))

(declare-fun tp!94274 () Bool)

(declare-fun b_and!44747 () Bool)

(assert (=> start!105242 (= tp!94274 b_and!44747)))

(declare-fun b!1253603 () Bool)

(declare-fun e!712249 () Bool)

(declare-fun tp_is_empty!31825 () Bool)

(assert (=> b!1253603 (= e!712249 tp_is_empty!31825)))

(declare-fun b!1253604 () Bool)

(declare-fun e!712248 () Bool)

(declare-fun e!712250 () Bool)

(assert (=> b!1253604 (= e!712248 (not e!712250))))

(declare-fun res!836013 () Bool)

(assert (=> b!1253604 (=> res!836013 e!712250)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253604 (= res!836013 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47799 0))(
  ( (V!47800 (val!15975 Int)) )
))
(declare-datatypes ((tuple2!20768 0))(
  ( (tuple2!20769 (_1!10394 (_ BitVec 64)) (_2!10394 V!47799)) )
))
(declare-datatypes ((List!28015 0))(
  ( (Nil!28012) (Cons!28011 (h!29220 tuple2!20768) (t!41503 List!28015)) )
))
(declare-datatypes ((ListLongMap!18653 0))(
  ( (ListLongMap!18654 (toList!9342 List!28015)) )
))
(declare-fun lt!566172 () ListLongMap!18653)

(declare-fun lt!566170 () ListLongMap!18653)

(assert (=> b!1253604 (= lt!566172 lt!566170)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41654 0))(
  ( (Unit!41655) )
))
(declare-fun lt!566167 () Unit!41654)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47799)

(declare-datatypes ((array!81289 0))(
  ( (array!81290 (arr!39202 (Array (_ BitVec 32) (_ BitVec 64))) (size!39739 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81289)

(declare-datatypes ((ValueCell!15149 0))(
  ( (ValueCellFull!15149 (v!18673 V!47799)) (EmptyCell!15149) )
))
(declare-datatypes ((array!81291 0))(
  ( (array!81292 (arr!39203 (Array (_ BitVec 32) ValueCell!15149)) (size!39740 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81291)

(declare-fun minValueBefore!43 () V!47799)

(declare-fun minValueAfter!43 () V!47799)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1026 (array!81289 array!81291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47799 V!47799 V!47799 V!47799 (_ BitVec 32) Int) Unit!41654)

(assert (=> b!1253604 (= lt!566167 (lemmaNoChangeToArrayThenSameMapNoExtras!1026 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5708 (array!81289 array!81291 (_ BitVec 32) (_ BitVec 32) V!47799 V!47799 (_ BitVec 32) Int) ListLongMap!18653)

(assert (=> b!1253604 (= lt!566170 (getCurrentListMapNoExtraKeys!5708 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253604 (= lt!566172 (getCurrentListMapNoExtraKeys!5708 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49513 () Bool)

(declare-fun mapRes!49513 () Bool)

(declare-fun tp!94275 () Bool)

(declare-fun e!712247 () Bool)

(assert (=> mapNonEmpty!49513 (= mapRes!49513 (and tp!94275 e!712247))))

(declare-fun mapKey!49513 () (_ BitVec 32))

(declare-fun mapRest!49513 () (Array (_ BitVec 32) ValueCell!15149))

(declare-fun mapValue!49513 () ValueCell!15149)

(assert (=> mapNonEmpty!49513 (= (arr!39203 _values!914) (store mapRest!49513 mapKey!49513 mapValue!49513))))

(declare-fun b!1253605 () Bool)

(assert (=> b!1253605 (= e!712247 tp_is_empty!31825)))

(declare-fun b!1253606 () Bool)

(declare-fun res!836015 () Bool)

(assert (=> b!1253606 (=> (not res!836015) (not e!712248))))

(assert (=> b!1253606 (= res!836015 (and (= (size!39740 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39739 _keys!1118) (size!39740 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253607 () Bool)

(declare-fun e!712246 () Bool)

(assert (=> b!1253607 (= e!712246 (and e!712249 mapRes!49513))))

(declare-fun condMapEmpty!49513 () Bool)

(declare-fun mapDefault!49513 () ValueCell!15149)

