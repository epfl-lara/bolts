; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105100 () Bool)

(assert start!105100)

(declare-fun b_free!26811 () Bool)

(declare-fun b_next!26811 () Bool)

(assert (=> start!105100 (= b_free!26811 (not b_next!26811))))

(declare-fun tp!93932 () Bool)

(declare-fun b_and!44617 () Bool)

(assert (=> start!105100 (= tp!93932 b_and!44617)))

(declare-fun mapNonEmpty!49339 () Bool)

(declare-fun mapRes!49339 () Bool)

(declare-fun tp!93933 () Bool)

(declare-fun e!711101 () Bool)

(assert (=> mapNonEmpty!49339 (= mapRes!49339 (and tp!93933 e!711101))))

(declare-fun mapKey!49339 () (_ BitVec 32))

(declare-datatypes ((V!47649 0))(
  ( (V!47650 (val!15919 Int)) )
))
(declare-datatypes ((ValueCell!15093 0))(
  ( (ValueCellFull!15093 (v!18617 V!47649)) (EmptyCell!15093) )
))
(declare-datatypes ((array!81069 0))(
  ( (array!81070 (arr!39094 (Array (_ BitVec 32) ValueCell!15093)) (size!39631 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81069)

(declare-fun mapRest!49339 () (Array (_ BitVec 32) ValueCell!15093))

(declare-fun mapValue!49339 () ValueCell!15093)

(assert (=> mapNonEmpty!49339 (= (arr!39094 _values!914) (store mapRest!49339 mapKey!49339 mapValue!49339))))

(declare-fun b!1252039 () Bool)

(declare-fun e!711104 () Bool)

(declare-fun tp_is_empty!31713 () Bool)

(assert (=> b!1252039 (= e!711104 tp_is_empty!31713)))

(declare-fun b!1252041 () Bool)

(declare-fun e!711105 () Bool)

(assert (=> b!1252041 (= e!711105 (not true))))

(declare-datatypes ((tuple2!20672 0))(
  ( (tuple2!20673 (_1!10346 (_ BitVec 64)) (_2!10346 V!47649)) )
))
(declare-datatypes ((List!27924 0))(
  ( (Nil!27921) (Cons!27920 (h!29129 tuple2!20672) (t!41408 List!27924)) )
))
(declare-datatypes ((ListLongMap!18557 0))(
  ( (ListLongMap!18558 (toList!9294 List!27924)) )
))
(declare-fun lt!565131 () ListLongMap!18557)

(declare-fun lt!565129 () ListLongMap!18557)

(assert (=> b!1252041 (= lt!565131 lt!565129)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47649)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47649)

(declare-datatypes ((array!81071 0))(
  ( (array!81072 (arr!39095 (Array (_ BitVec 32) (_ BitVec 64))) (size!39632 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81071)

(declare-fun minValueBefore!43 () V!47649)

(declare-datatypes ((Unit!41565 0))(
  ( (Unit!41566) )
))
(declare-fun lt!565130 () Unit!41565)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!985 (array!81071 array!81069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47649 V!47649 V!47649 V!47649 (_ BitVec 32) Int) Unit!41565)

(assert (=> b!1252041 (= lt!565130 (lemmaNoChangeToArrayThenSameMapNoExtras!985 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5667 (array!81071 array!81069 (_ BitVec 32) (_ BitVec 32) V!47649 V!47649 (_ BitVec 32) Int) ListLongMap!18557)

(assert (=> b!1252041 (= lt!565129 (getCurrentListMapNoExtraKeys!5667 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252041 (= lt!565131 (getCurrentListMapNoExtraKeys!5667 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252042 () Bool)

(declare-fun res!835098 () Bool)

(assert (=> b!1252042 (=> (not res!835098) (not e!711105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81071 (_ BitVec 32)) Bool)

(assert (=> b!1252042 (= res!835098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252043 () Bool)

(declare-fun res!835097 () Bool)

(assert (=> b!1252043 (=> (not res!835097) (not e!711105))))

(assert (=> b!1252043 (= res!835097 (and (= (size!39631 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39632 _keys!1118) (size!39631 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49339 () Bool)

(assert (=> mapIsEmpty!49339 mapRes!49339))

(declare-fun res!835096 () Bool)

(assert (=> start!105100 (=> (not res!835096) (not e!711105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105100 (= res!835096 (validMask!0 mask!1466))))

(assert (=> start!105100 e!711105))

(assert (=> start!105100 true))

(assert (=> start!105100 tp!93932))

(assert (=> start!105100 tp_is_empty!31713))

(declare-fun array_inv!29747 (array!81071) Bool)

(assert (=> start!105100 (array_inv!29747 _keys!1118)))

(declare-fun e!711103 () Bool)

(declare-fun array_inv!29748 (array!81069) Bool)

(assert (=> start!105100 (and (array_inv!29748 _values!914) e!711103)))

(declare-fun b!1252040 () Bool)

(declare-fun res!835095 () Bool)

(assert (=> b!1252040 (=> (not res!835095) (not e!711105))))

(declare-datatypes ((List!27925 0))(
  ( (Nil!27922) (Cons!27921 (h!29130 (_ BitVec 64)) (t!41409 List!27925)) )
))
(declare-fun arrayNoDuplicates!0 (array!81071 (_ BitVec 32) List!27925) Bool)

(assert (=> b!1252040 (= res!835095 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27922))))

(declare-fun b!1252044 () Bool)

(assert (=> b!1252044 (= e!711103 (and e!711104 mapRes!49339))))

(declare-fun condMapEmpty!49339 () Bool)

(declare-fun mapDefault!49339 () ValueCell!15093)

(assert (=> b!1252044 (= condMapEmpty!49339 (= (arr!39094 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15093)) mapDefault!49339)))))

(declare-fun b!1252045 () Bool)

(assert (=> b!1252045 (= e!711101 tp_is_empty!31713)))

(assert (= (and start!105100 res!835096) b!1252043))

(assert (= (and b!1252043 res!835097) b!1252042))

(assert (= (and b!1252042 res!835098) b!1252040))

(assert (= (and b!1252040 res!835095) b!1252041))

(assert (= (and b!1252044 condMapEmpty!49339) mapIsEmpty!49339))

(assert (= (and b!1252044 (not condMapEmpty!49339)) mapNonEmpty!49339))

(get-info :version)

(assert (= (and mapNonEmpty!49339 ((_ is ValueCellFull!15093) mapValue!49339)) b!1252045))

(assert (= (and b!1252044 ((_ is ValueCellFull!15093) mapDefault!49339)) b!1252039))

(assert (= start!105100 b!1252044))

(declare-fun m!1152761 () Bool)

(assert (=> mapNonEmpty!49339 m!1152761))

(declare-fun m!1152763 () Bool)

(assert (=> b!1252040 m!1152763))

(declare-fun m!1152765 () Bool)

(assert (=> start!105100 m!1152765))

(declare-fun m!1152767 () Bool)

(assert (=> start!105100 m!1152767))

(declare-fun m!1152769 () Bool)

(assert (=> start!105100 m!1152769))

(declare-fun m!1152771 () Bool)

(assert (=> b!1252041 m!1152771))

(declare-fun m!1152773 () Bool)

(assert (=> b!1252041 m!1152773))

(declare-fun m!1152775 () Bool)

(assert (=> b!1252041 m!1152775))

(declare-fun m!1152777 () Bool)

(assert (=> b!1252042 m!1152777))

(check-sat b_and!44617 (not b!1252041) (not start!105100) (not b!1252042) (not b_next!26811) tp_is_empty!31713 (not b!1252040) (not mapNonEmpty!49339))
(check-sat b_and!44617 (not b_next!26811))
