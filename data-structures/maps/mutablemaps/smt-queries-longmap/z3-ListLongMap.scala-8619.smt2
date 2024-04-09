; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105018 () Bool)

(assert start!105018)

(declare-fun b_free!26751 () Bool)

(declare-fun b_next!26751 () Bool)

(assert (=> start!105018 (= b_free!26751 (not b_next!26751))))

(declare-fun tp!93749 () Bool)

(declare-fun b_and!44547 () Bool)

(assert (=> start!105018 (= tp!93749 b_and!44547)))

(declare-fun b!1251190 () Bool)

(declare-fun e!710492 () Bool)

(declare-fun e!710490 () Bool)

(assert (=> b!1251190 (= e!710492 (not e!710490))))

(declare-fun res!834616 () Bool)

(assert (=> b!1251190 (=> res!834616 e!710490)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1251190 (= res!834616 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47569 0))(
  ( (V!47570 (val!15889 Int)) )
))
(declare-datatypes ((tuple2!20632 0))(
  ( (tuple2!20633 (_1!10326 (_ BitVec 64)) (_2!10326 V!47569)) )
))
(declare-datatypes ((List!27885 0))(
  ( (Nil!27882) (Cons!27881 (h!29090 tuple2!20632) (t!41367 List!27885)) )
))
(declare-datatypes ((ListLongMap!18517 0))(
  ( (ListLongMap!18518 (toList!9274 List!27885)) )
))
(declare-fun lt!564674 () ListLongMap!18517)

(declare-fun lt!564675 () ListLongMap!18517)

(assert (=> b!1251190 (= lt!564674 lt!564675)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47569)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47569)

(declare-datatypes ((array!80953 0))(
  ( (array!80954 (arr!39037 (Array (_ BitVec 32) (_ BitVec 64))) (size!39574 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80953)

(declare-datatypes ((ValueCell!15063 0))(
  ( (ValueCellFull!15063 (v!18586 V!47569)) (EmptyCell!15063) )
))
(declare-datatypes ((array!80955 0))(
  ( (array!80956 (arr!39038 (Array (_ BitVec 32) ValueCell!15063)) (size!39575 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80955)

(declare-datatypes ((Unit!41523 0))(
  ( (Unit!41524) )
))
(declare-fun lt!564676 () Unit!41523)

(declare-fun minValueBefore!43 () V!47569)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!966 (array!80953 array!80955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47569 V!47569 V!47569 V!47569 (_ BitVec 32) Int) Unit!41523)

(assert (=> b!1251190 (= lt!564676 (lemmaNoChangeToArrayThenSameMapNoExtras!966 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5648 (array!80953 array!80955 (_ BitVec 32) (_ BitVec 32) V!47569 V!47569 (_ BitVec 32) Int) ListLongMap!18517)

(assert (=> b!1251190 (= lt!564675 (getCurrentListMapNoExtraKeys!5648 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251190 (= lt!564674 (getCurrentListMapNoExtraKeys!5648 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834617 () Bool)

(assert (=> start!105018 (=> (not res!834617) (not e!710492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105018 (= res!834617 (validMask!0 mask!1466))))

(assert (=> start!105018 e!710492))

(assert (=> start!105018 true))

(assert (=> start!105018 tp!93749))

(declare-fun tp_is_empty!31653 () Bool)

(assert (=> start!105018 tp_is_empty!31653))

(declare-fun array_inv!29707 (array!80953) Bool)

(assert (=> start!105018 (array_inv!29707 _keys!1118)))

(declare-fun e!710489 () Bool)

(declare-fun array_inv!29708 (array!80955) Bool)

(assert (=> start!105018 (and (array_inv!29708 _values!914) e!710489)))

(declare-fun b!1251191 () Bool)

(declare-fun e!710494 () Bool)

(declare-fun mapRes!49246 () Bool)

(assert (=> b!1251191 (= e!710489 (and e!710494 mapRes!49246))))

(declare-fun condMapEmpty!49246 () Bool)

(declare-fun mapDefault!49246 () ValueCell!15063)

(assert (=> b!1251191 (= condMapEmpty!49246 (= (arr!39038 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15063)) mapDefault!49246)))))

(declare-fun mapNonEmpty!49246 () Bool)

(declare-fun tp!93750 () Bool)

(declare-fun e!710495 () Bool)

(assert (=> mapNonEmpty!49246 (= mapRes!49246 (and tp!93750 e!710495))))

(declare-fun mapRest!49246 () (Array (_ BitVec 32) ValueCell!15063))

(declare-fun mapValue!49246 () ValueCell!15063)

(declare-fun mapKey!49246 () (_ BitVec 32))

(assert (=> mapNonEmpty!49246 (= (arr!39038 _values!914) (store mapRest!49246 mapKey!49246 mapValue!49246))))

(declare-fun b!1251192 () Bool)

(declare-fun e!710491 () Bool)

(assert (=> b!1251192 (= e!710491 true)))

(declare-fun lt!564673 () ListLongMap!18517)

(declare-fun -!2033 (ListLongMap!18517 (_ BitVec 64)) ListLongMap!18517)

(assert (=> b!1251192 (= (-!2033 lt!564673 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564673)))

(declare-fun lt!564677 () Unit!41523)

(declare-fun removeNotPresentStillSame!100 (ListLongMap!18517 (_ BitVec 64)) Unit!41523)

(assert (=> b!1251192 (= lt!564677 (removeNotPresentStillSame!100 lt!564673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251193 () Bool)

(assert (=> b!1251193 (= e!710495 tp_is_empty!31653)))

(declare-fun b!1251194 () Bool)

(declare-fun res!834612 () Bool)

(assert (=> b!1251194 (=> (not res!834612) (not e!710492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80953 (_ BitVec 32)) Bool)

(assert (=> b!1251194 (= res!834612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251195 () Bool)

(declare-fun res!834613 () Bool)

(assert (=> b!1251195 (=> (not res!834613) (not e!710492))))

(assert (=> b!1251195 (= res!834613 (and (= (size!39575 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39574 _keys!1118) (size!39575 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251196 () Bool)

(assert (=> b!1251196 (= e!710490 e!710491)))

(declare-fun res!834614 () Bool)

(assert (=> b!1251196 (=> res!834614 e!710491)))

(declare-fun contains!7525 (ListLongMap!18517 (_ BitVec 64)) Bool)

(assert (=> b!1251196 (= res!834614 (contains!7525 lt!564673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4490 (array!80953 array!80955 (_ BitVec 32) (_ BitVec 32) V!47569 V!47569 (_ BitVec 32) Int) ListLongMap!18517)

(assert (=> b!1251196 (= lt!564673 (getCurrentListMap!4490 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251197 () Bool)

(declare-fun res!834615 () Bool)

(assert (=> b!1251197 (=> (not res!834615) (not e!710492))))

(declare-datatypes ((List!27886 0))(
  ( (Nil!27883) (Cons!27882 (h!29091 (_ BitVec 64)) (t!41368 List!27886)) )
))
(declare-fun arrayNoDuplicates!0 (array!80953 (_ BitVec 32) List!27886) Bool)

(assert (=> b!1251197 (= res!834615 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27883))))

(declare-fun b!1251198 () Bool)

(assert (=> b!1251198 (= e!710494 tp_is_empty!31653)))

(declare-fun mapIsEmpty!49246 () Bool)

(assert (=> mapIsEmpty!49246 mapRes!49246))

(assert (= (and start!105018 res!834617) b!1251195))

(assert (= (and b!1251195 res!834613) b!1251194))

(assert (= (and b!1251194 res!834612) b!1251197))

(assert (= (and b!1251197 res!834615) b!1251190))

(assert (= (and b!1251190 (not res!834616)) b!1251196))

(assert (= (and b!1251196 (not res!834614)) b!1251192))

(assert (= (and b!1251191 condMapEmpty!49246) mapIsEmpty!49246))

(assert (= (and b!1251191 (not condMapEmpty!49246)) mapNonEmpty!49246))

(get-info :version)

(assert (= (and mapNonEmpty!49246 ((_ is ValueCellFull!15063) mapValue!49246)) b!1251193))

(assert (= (and b!1251191 ((_ is ValueCellFull!15063) mapDefault!49246)) b!1251198))

(assert (= start!105018 b!1251191))

(declare-fun m!1152007 () Bool)

(assert (=> start!105018 m!1152007))

(declare-fun m!1152009 () Bool)

(assert (=> start!105018 m!1152009))

(declare-fun m!1152011 () Bool)

(assert (=> start!105018 m!1152011))

(declare-fun m!1152013 () Bool)

(assert (=> b!1251196 m!1152013))

(declare-fun m!1152015 () Bool)

(assert (=> b!1251196 m!1152015))

(declare-fun m!1152017 () Bool)

(assert (=> mapNonEmpty!49246 m!1152017))

(declare-fun m!1152019 () Bool)

(assert (=> b!1251197 m!1152019))

(declare-fun m!1152021 () Bool)

(assert (=> b!1251190 m!1152021))

(declare-fun m!1152023 () Bool)

(assert (=> b!1251190 m!1152023))

(declare-fun m!1152025 () Bool)

(assert (=> b!1251190 m!1152025))

(declare-fun m!1152027 () Bool)

(assert (=> b!1251194 m!1152027))

(declare-fun m!1152029 () Bool)

(assert (=> b!1251192 m!1152029))

(declare-fun m!1152031 () Bool)

(assert (=> b!1251192 m!1152031))

(check-sat (not b!1251197) b_and!44547 (not b!1251196) tp_is_empty!31653 (not mapNonEmpty!49246) (not start!105018) (not b_next!26751) (not b!1251190) (not b!1251194) (not b!1251192))
(check-sat b_and!44547 (not b_next!26751))
