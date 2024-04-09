; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105200 () Bool)

(assert start!105200)

(declare-fun b_free!26881 () Bool)

(declare-fun b_next!26881 () Bool)

(assert (=> start!105200 (= b_free!26881 (not b_next!26881))))

(declare-fun tp!94148 () Bool)

(declare-fun b_and!44705 () Bool)

(assert (=> start!105200 (= tp!94148 b_and!44705)))

(declare-fun b!1253092 () Bool)

(declare-fun res!835691 () Bool)

(declare-fun e!711864 () Bool)

(assert (=> b!1253092 (=> (not res!835691) (not e!711864))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81207 0))(
  ( (array!81208 (arr!39161 (Array (_ BitVec 32) (_ BitVec 64))) (size!39698 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81207)

(declare-datatypes ((V!47743 0))(
  ( (V!47744 (val!15954 Int)) )
))
(declare-datatypes ((ValueCell!15128 0))(
  ( (ValueCellFull!15128 (v!18652 V!47743)) (EmptyCell!15128) )
))
(declare-datatypes ((array!81209 0))(
  ( (array!81210 (arr!39162 (Array (_ BitVec 32) ValueCell!15128)) (size!39699 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81209)

(assert (=> b!1253092 (= res!835691 (and (= (size!39699 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39698 _keys!1118) (size!39699 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!835692 () Bool)

(assert (=> start!105200 (=> (not res!835692) (not e!711864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105200 (= res!835692 (validMask!0 mask!1466))))

(assert (=> start!105200 e!711864))

(assert (=> start!105200 true))

(assert (=> start!105200 tp!94148))

(declare-fun tp_is_empty!31783 () Bool)

(assert (=> start!105200 tp_is_empty!31783))

(declare-fun array_inv!29797 (array!81207) Bool)

(assert (=> start!105200 (array_inv!29797 _keys!1118)))

(declare-fun e!711862 () Bool)

(declare-fun array_inv!29798 (array!81209) Bool)

(assert (=> start!105200 (and (array_inv!29798 _values!914) e!711862)))

(declare-fun b!1253093 () Bool)

(declare-fun e!711865 () Bool)

(declare-datatypes ((tuple2!20732 0))(
  ( (tuple2!20733 (_1!10376 (_ BitVec 64)) (_2!10376 V!47743)) )
))
(declare-datatypes ((List!27979 0))(
  ( (Nil!27976) (Cons!27975 (h!29184 tuple2!20732) (t!41467 List!27979)) )
))
(declare-datatypes ((ListLongMap!18617 0))(
  ( (ListLongMap!18618 (toList!9324 List!27979)) )
))
(declare-fun lt!565682 () ListLongMap!18617)

(declare-fun lt!565677 () ListLongMap!18617)

(assert (=> b!1253093 (= e!711865 (= lt!565682 lt!565677))))

(declare-fun mapIsEmpty!49450 () Bool)

(declare-fun mapRes!49450 () Bool)

(assert (=> mapIsEmpty!49450 mapRes!49450))

(declare-fun b!1253094 () Bool)

(declare-fun e!711860 () Bool)

(assert (=> b!1253094 (= e!711860 tp_is_empty!31783)))

(declare-fun b!1253095 () Bool)

(declare-fun e!711863 () Bool)

(assert (=> b!1253095 (= e!711863 true)))

(declare-fun lt!565679 () Bool)

(declare-fun lt!565681 () ListLongMap!18617)

(declare-fun contains!7537 (ListLongMap!18617 (_ BitVec 64)) Bool)

(assert (=> b!1253095 (= lt!565679 (contains!7537 lt!565681 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1253095 e!711865))

(declare-fun res!835689 () Bool)

(assert (=> b!1253095 (=> (not res!835689) (not e!711865))))

(declare-fun lt!565678 () ListLongMap!18617)

(declare-fun minValueBefore!43 () V!47743)

(declare-fun +!4129 (ListLongMap!18617 tuple2!20732) ListLongMap!18617)

(assert (=> b!1253095 (= res!835689 (= lt!565678 (+!4129 lt!565681 (tuple2!20733 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47743)

(declare-fun zeroValue!871 () V!47743)

(declare-fun getCurrentListMap!4516 (array!81207 array!81209 (_ BitVec 32) (_ BitVec 32) V!47743 V!47743 (_ BitVec 32) Int) ListLongMap!18617)

(assert (=> b!1253095 (= lt!565682 (getCurrentListMap!4516 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253095 (= lt!565678 (getCurrentListMap!4516 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49450 () Bool)

(declare-fun tp!94149 () Bool)

(declare-fun e!711866 () Bool)

(assert (=> mapNonEmpty!49450 (= mapRes!49450 (and tp!94149 e!711866))))

(declare-fun mapRest!49450 () (Array (_ BitVec 32) ValueCell!15128))

(declare-fun mapKey!49450 () (_ BitVec 32))

(declare-fun mapValue!49450 () ValueCell!15128)

(assert (=> mapNonEmpty!49450 (= (arr!39162 _values!914) (store mapRest!49450 mapKey!49450 mapValue!49450))))

(declare-fun b!1253096 () Bool)

(declare-fun res!835690 () Bool)

(assert (=> b!1253096 (=> (not res!835690) (not e!711864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81207 (_ BitVec 32)) Bool)

(assert (=> b!1253096 (= res!835690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253097 () Bool)

(declare-fun res!835693 () Bool)

(assert (=> b!1253097 (=> (not res!835693) (not e!711864))))

(declare-datatypes ((List!27980 0))(
  ( (Nil!27977) (Cons!27976 (h!29185 (_ BitVec 64)) (t!41468 List!27980)) )
))
(declare-fun arrayNoDuplicates!0 (array!81207 (_ BitVec 32) List!27980) Bool)

(assert (=> b!1253097 (= res!835693 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27977))))

(declare-fun b!1253098 () Bool)

(assert (=> b!1253098 (= e!711862 (and e!711860 mapRes!49450))))

(declare-fun condMapEmpty!49450 () Bool)

(declare-fun mapDefault!49450 () ValueCell!15128)

