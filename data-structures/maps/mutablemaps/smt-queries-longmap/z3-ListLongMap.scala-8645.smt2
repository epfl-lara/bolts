; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105226 () Bool)

(assert start!105226)

(declare-fun b_free!26907 () Bool)

(declare-fun b_next!26907 () Bool)

(assert (=> start!105226 (= b_free!26907 (not b_next!26907))))

(declare-fun tp!94226 () Bool)

(declare-fun b_and!44731 () Bool)

(assert (=> start!105226 (= tp!94226 b_and!44731)))

(declare-fun b!1253411 () Bool)

(declare-fun e!712101 () Bool)

(declare-fun e!712102 () Bool)

(declare-fun mapRes!49489 () Bool)

(assert (=> b!1253411 (= e!712101 (and e!712102 mapRes!49489))))

(declare-fun condMapEmpty!49489 () Bool)

(declare-datatypes ((V!47777 0))(
  ( (V!47778 (val!15967 Int)) )
))
(declare-datatypes ((ValueCell!15141 0))(
  ( (ValueCellFull!15141 (v!18665 V!47777)) (EmptyCell!15141) )
))
(declare-datatypes ((array!81259 0))(
  ( (array!81260 (arr!39187 (Array (_ BitVec 32) ValueCell!15141)) (size!39724 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81259)

(declare-fun mapDefault!49489 () ValueCell!15141)

(assert (=> b!1253411 (= condMapEmpty!49489 (= (arr!39187 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15141)) mapDefault!49489)))))

(declare-fun b!1253412 () Bool)

(declare-fun res!835895 () Bool)

(declare-fun e!712103 () Bool)

(assert (=> b!1253412 (=> (not res!835895) (not e!712103))))

(declare-datatypes ((array!81261 0))(
  ( (array!81262 (arr!39188 (Array (_ BitVec 32) (_ BitVec 64))) (size!39725 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81261)

(declare-datatypes ((List!28001 0))(
  ( (Nil!27998) (Cons!27997 (h!29206 (_ BitVec 64)) (t!41489 List!28001)) )
))
(declare-fun arrayNoDuplicates!0 (array!81261 (_ BitVec 32) List!28001) Bool)

(assert (=> b!1253412 (= res!835895 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27998))))

(declare-fun b!1253413 () Bool)

(declare-fun res!835893 () Bool)

(assert (=> b!1253413 (=> (not res!835893) (not e!712103))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81261 (_ BitVec 32)) Bool)

(assert (=> b!1253413 (= res!835893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253414 () Bool)

(declare-fun e!712105 () Bool)

(assert (=> b!1253414 (= e!712105 true)))

(declare-datatypes ((tuple2!20754 0))(
  ( (tuple2!20755 (_1!10387 (_ BitVec 64)) (_2!10387 V!47777)) )
))
(declare-datatypes ((List!28002 0))(
  ( (Nil!27999) (Cons!27998 (h!29207 tuple2!20754) (t!41490 List!28002)) )
))
(declare-datatypes ((ListLongMap!18639 0))(
  ( (ListLongMap!18640 (toList!9335 List!28002)) )
))
(declare-fun lt!565976 () ListLongMap!18639)

(declare-fun lt!565982 () ListLongMap!18639)

(declare-fun -!2048 (ListLongMap!18639 (_ BitVec 64)) ListLongMap!18639)

(assert (=> b!1253414 (= lt!565976 (-!2048 lt!565982 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565979 () ListLongMap!18639)

(declare-fun lt!565978 () ListLongMap!18639)

(assert (=> b!1253414 (= (-!2048 lt!565979 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565978)))

(declare-datatypes ((Unit!41640 0))(
  ( (Unit!41641) )
))
(declare-fun lt!565981 () Unit!41640)

(declare-fun minValueBefore!43 () V!47777)

(declare-fun addThenRemoveForNewKeyIsSame!308 (ListLongMap!18639 (_ BitVec 64) V!47777) Unit!41640)

(assert (=> b!1253414 (= lt!565981 (addThenRemoveForNewKeyIsSame!308 lt!565978 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565977 () ListLongMap!18639)

(declare-fun lt!565975 () ListLongMap!18639)

(assert (=> b!1253414 (and (= lt!565982 lt!565979) (= lt!565975 lt!565977))))

(declare-fun +!4139 (ListLongMap!18639 tuple2!20754) ListLongMap!18639)

(assert (=> b!1253414 (= lt!565979 (+!4139 lt!565978 (tuple2!20755 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47777)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47777)

(declare-fun getCurrentListMap!4526 (array!81261 array!81259 (_ BitVec 32) (_ BitVec 32) V!47777 V!47777 (_ BitVec 32) Int) ListLongMap!18639)

(assert (=> b!1253414 (= lt!565975 (getCurrentListMap!4526 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253414 (= lt!565982 (getCurrentListMap!4526 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253415 () Bool)

(declare-fun e!712106 () Bool)

(declare-fun tp_is_empty!31809 () Bool)

(assert (=> b!1253415 (= e!712106 tp_is_empty!31809)))

(declare-fun b!1253416 () Bool)

(assert (=> b!1253416 (= e!712102 tp_is_empty!31809)))

(declare-fun res!835892 () Bool)

(assert (=> start!105226 (=> (not res!835892) (not e!712103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105226 (= res!835892 (validMask!0 mask!1466))))

(assert (=> start!105226 e!712103))

(assert (=> start!105226 true))

(assert (=> start!105226 tp!94226))

(assert (=> start!105226 tp_is_empty!31809))

(declare-fun array_inv!29815 (array!81261) Bool)

(assert (=> start!105226 (array_inv!29815 _keys!1118)))

(declare-fun array_inv!29816 (array!81259) Bool)

(assert (=> start!105226 (and (array_inv!29816 _values!914) e!712101)))

(declare-fun mapNonEmpty!49489 () Bool)

(declare-fun tp!94227 () Bool)

(assert (=> mapNonEmpty!49489 (= mapRes!49489 (and tp!94227 e!712106))))

(declare-fun mapKey!49489 () (_ BitVec 32))

(declare-fun mapRest!49489 () (Array (_ BitVec 32) ValueCell!15141))

(declare-fun mapValue!49489 () ValueCell!15141)

(assert (=> mapNonEmpty!49489 (= (arr!39187 _values!914) (store mapRest!49489 mapKey!49489 mapValue!49489))))

(declare-fun b!1253417 () Bool)

(assert (=> b!1253417 (= e!712103 (not e!712105))))

(declare-fun res!835894 () Bool)

(assert (=> b!1253417 (=> res!835894 e!712105)))

(assert (=> b!1253417 (= res!835894 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253417 (= lt!565978 lt!565977)))

(declare-fun lt!565980 () Unit!41640)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1020 (array!81261 array!81259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47777 V!47777 V!47777 V!47777 (_ BitVec 32) Int) Unit!41640)

(assert (=> b!1253417 (= lt!565980 (lemmaNoChangeToArrayThenSameMapNoExtras!1020 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5702 (array!81261 array!81259 (_ BitVec 32) (_ BitVec 32) V!47777 V!47777 (_ BitVec 32) Int) ListLongMap!18639)

(assert (=> b!1253417 (= lt!565977 (getCurrentListMapNoExtraKeys!5702 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253417 (= lt!565978 (getCurrentListMapNoExtraKeys!5702 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49489 () Bool)

(assert (=> mapIsEmpty!49489 mapRes!49489))

(declare-fun b!1253418 () Bool)

(declare-fun res!835891 () Bool)

(assert (=> b!1253418 (=> (not res!835891) (not e!712103))))

(assert (=> b!1253418 (= res!835891 (and (= (size!39724 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39725 _keys!1118) (size!39724 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105226 res!835892) b!1253418))

(assert (= (and b!1253418 res!835891) b!1253413))

(assert (= (and b!1253413 res!835893) b!1253412))

(assert (= (and b!1253412 res!835895) b!1253417))

(assert (= (and b!1253417 (not res!835894)) b!1253414))

(assert (= (and b!1253411 condMapEmpty!49489) mapIsEmpty!49489))

(assert (= (and b!1253411 (not condMapEmpty!49489)) mapNonEmpty!49489))

(get-info :version)

(assert (= (and mapNonEmpty!49489 ((_ is ValueCellFull!15141) mapValue!49489)) b!1253415))

(assert (= (and b!1253411 ((_ is ValueCellFull!15141) mapDefault!49489)) b!1253416))

(assert (= start!105226 b!1253411))

(declare-fun m!1154001 () Bool)

(assert (=> b!1253413 m!1154001))

(declare-fun m!1154003 () Bool)

(assert (=> start!105226 m!1154003))

(declare-fun m!1154005 () Bool)

(assert (=> start!105226 m!1154005))

(declare-fun m!1154007 () Bool)

(assert (=> start!105226 m!1154007))

(declare-fun m!1154009 () Bool)

(assert (=> b!1253414 m!1154009))

(declare-fun m!1154011 () Bool)

(assert (=> b!1253414 m!1154011))

(declare-fun m!1154013 () Bool)

(assert (=> b!1253414 m!1154013))

(declare-fun m!1154015 () Bool)

(assert (=> b!1253414 m!1154015))

(declare-fun m!1154017 () Bool)

(assert (=> b!1253414 m!1154017))

(declare-fun m!1154019 () Bool)

(assert (=> b!1253414 m!1154019))

(declare-fun m!1154021 () Bool)

(assert (=> b!1253412 m!1154021))

(declare-fun m!1154023 () Bool)

(assert (=> b!1253417 m!1154023))

(declare-fun m!1154025 () Bool)

(assert (=> b!1253417 m!1154025))

(declare-fun m!1154027 () Bool)

(assert (=> b!1253417 m!1154027))

(declare-fun m!1154029 () Bool)

(assert (=> mapNonEmpty!49489 m!1154029))

(check-sat (not b!1253417) (not mapNonEmpty!49489) (not start!105226) (not b!1253414) tp_is_empty!31809 (not b!1253412) (not b!1253413) (not b_next!26907) b_and!44731)
(check-sat b_and!44731 (not b_next!26907))
