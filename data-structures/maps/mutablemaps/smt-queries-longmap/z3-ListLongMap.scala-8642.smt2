; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105208 () Bool)

(assert start!105208)

(declare-fun b_free!26889 () Bool)

(declare-fun b_next!26889 () Bool)

(assert (=> start!105208 (= b_free!26889 (not b_next!26889))))

(declare-fun tp!94172 () Bool)

(declare-fun b_and!44713 () Bool)

(assert (=> start!105208 (= tp!94172 b_and!44713)))

(declare-fun b!1253195 () Bool)

(declare-fun res!835758 () Bool)

(declare-fun e!711943 () Bool)

(assert (=> b!1253195 (=> (not res!835758) (not e!711943))))

(declare-datatypes ((array!81223 0))(
  ( (array!81224 (arr!39169 (Array (_ BitVec 32) (_ BitVec 64))) (size!39706 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81223)

(declare-datatypes ((List!27985 0))(
  ( (Nil!27982) (Cons!27981 (h!29190 (_ BitVec 64)) (t!41473 List!27985)) )
))
(declare-fun arrayNoDuplicates!0 (array!81223 (_ BitVec 32) List!27985) Bool)

(assert (=> b!1253195 (= res!835758 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27982))))

(declare-fun res!835759 () Bool)

(assert (=> start!105208 (=> (not res!835759) (not e!711943))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105208 (= res!835759 (validMask!0 mask!1466))))

(assert (=> start!105208 e!711943))

(assert (=> start!105208 true))

(assert (=> start!105208 tp!94172))

(declare-fun tp_is_empty!31791 () Bool)

(assert (=> start!105208 tp_is_empty!31791))

(declare-fun array_inv!29803 (array!81223) Bool)

(assert (=> start!105208 (array_inv!29803 _keys!1118)))

(declare-datatypes ((V!47753 0))(
  ( (V!47754 (val!15958 Int)) )
))
(declare-datatypes ((ValueCell!15132 0))(
  ( (ValueCellFull!15132 (v!18656 V!47753)) (EmptyCell!15132) )
))
(declare-datatypes ((array!81225 0))(
  ( (array!81226 (arr!39170 (Array (_ BitVec 32) ValueCell!15132)) (size!39707 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81225)

(declare-fun e!711939 () Bool)

(declare-fun array_inv!29804 (array!81225) Bool)

(assert (=> start!105208 (and (array_inv!29804 _values!914) e!711939)))

(declare-fun b!1253196 () Bool)

(declare-fun e!711940 () Bool)

(assert (=> b!1253196 (= e!711940 true)))

(declare-datatypes ((tuple2!20738 0))(
  ( (tuple2!20739 (_1!10379 (_ BitVec 64)) (_2!10379 V!47753)) )
))
(declare-datatypes ((List!27986 0))(
  ( (Nil!27983) (Cons!27982 (h!29191 tuple2!20738) (t!41474 List!27986)) )
))
(declare-datatypes ((ListLongMap!18623 0))(
  ( (ListLongMap!18624 (toList!9327 List!27986)) )
))
(declare-fun lt!565761 () ListLongMap!18623)

(declare-fun lt!565764 () ListLongMap!18623)

(declare-fun -!2041 (ListLongMap!18623 (_ BitVec 64)) ListLongMap!18623)

(assert (=> b!1253196 (= lt!565761 (-!2041 lt!565764 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565760 () ListLongMap!18623)

(declare-fun lt!565759 () ListLongMap!18623)

(assert (=> b!1253196 (= (-!2041 lt!565760 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565759)))

(declare-datatypes ((Unit!41624 0))(
  ( (Unit!41625) )
))
(declare-fun lt!565763 () Unit!41624)

(declare-fun minValueBefore!43 () V!47753)

(declare-fun addThenRemoveForNewKeyIsSame!301 (ListLongMap!18623 (_ BitVec 64) V!47753) Unit!41624)

(assert (=> b!1253196 (= lt!565763 (addThenRemoveForNewKeyIsSame!301 lt!565759 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565762 () ListLongMap!18623)

(declare-fun lt!565765 () ListLongMap!18623)

(assert (=> b!1253196 (and (= lt!565764 lt!565760) (= lt!565765 lt!565762))))

(declare-fun +!4132 (ListLongMap!18623 tuple2!20738) ListLongMap!18623)

(assert (=> b!1253196 (= lt!565760 (+!4132 lt!565759 (tuple2!20739 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47753)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47753)

(declare-fun getCurrentListMap!4519 (array!81223 array!81225 (_ BitVec 32) (_ BitVec 32) V!47753 V!47753 (_ BitVec 32) Int) ListLongMap!18623)

(assert (=> b!1253196 (= lt!565765 (getCurrentListMap!4519 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253196 (= lt!565764 (getCurrentListMap!4519 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253197 () Bool)

(declare-fun e!711944 () Bool)

(assert (=> b!1253197 (= e!711944 tp_is_empty!31791)))

(declare-fun b!1253198 () Bool)

(assert (=> b!1253198 (= e!711943 (not e!711940))))

(declare-fun res!835760 () Bool)

(assert (=> b!1253198 (=> res!835760 e!711940)))

(assert (=> b!1253198 (= res!835760 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253198 (= lt!565759 lt!565762)))

(declare-fun lt!565766 () Unit!41624)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1014 (array!81223 array!81225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47753 V!47753 V!47753 V!47753 (_ BitVec 32) Int) Unit!41624)

(assert (=> b!1253198 (= lt!565766 (lemmaNoChangeToArrayThenSameMapNoExtras!1014 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5696 (array!81223 array!81225 (_ BitVec 32) (_ BitVec 32) V!47753 V!47753 (_ BitVec 32) Int) ListLongMap!18623)

(assert (=> b!1253198 (= lt!565762 (getCurrentListMapNoExtraKeys!5696 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253198 (= lt!565759 (getCurrentListMapNoExtraKeys!5696 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253199 () Bool)

(declare-fun mapRes!49462 () Bool)

(assert (=> b!1253199 (= e!711939 (and e!711944 mapRes!49462))))

(declare-fun condMapEmpty!49462 () Bool)

(declare-fun mapDefault!49462 () ValueCell!15132)

(assert (=> b!1253199 (= condMapEmpty!49462 (= (arr!39170 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15132)) mapDefault!49462)))))

(declare-fun mapNonEmpty!49462 () Bool)

(declare-fun tp!94173 () Bool)

(declare-fun e!711942 () Bool)

(assert (=> mapNonEmpty!49462 (= mapRes!49462 (and tp!94173 e!711942))))

(declare-fun mapValue!49462 () ValueCell!15132)

(declare-fun mapRest!49462 () (Array (_ BitVec 32) ValueCell!15132))

(declare-fun mapKey!49462 () (_ BitVec 32))

(assert (=> mapNonEmpty!49462 (= (arr!39170 _values!914) (store mapRest!49462 mapKey!49462 mapValue!49462))))

(declare-fun b!1253200 () Bool)

(assert (=> b!1253200 (= e!711942 tp_is_empty!31791)))

(declare-fun b!1253201 () Bool)

(declare-fun res!835756 () Bool)

(assert (=> b!1253201 (=> (not res!835756) (not e!711943))))

(assert (=> b!1253201 (= res!835756 (and (= (size!39707 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39706 _keys!1118) (size!39707 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253202 () Bool)

(declare-fun res!835757 () Bool)

(assert (=> b!1253202 (=> (not res!835757) (not e!711943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81223 (_ BitVec 32)) Bool)

(assert (=> b!1253202 (= res!835757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49462 () Bool)

(assert (=> mapIsEmpty!49462 mapRes!49462))

(assert (= (and start!105208 res!835759) b!1253201))

(assert (= (and b!1253201 res!835756) b!1253202))

(assert (= (and b!1253202 res!835757) b!1253195))

(assert (= (and b!1253195 res!835758) b!1253198))

(assert (= (and b!1253198 (not res!835760)) b!1253196))

(assert (= (and b!1253199 condMapEmpty!49462) mapIsEmpty!49462))

(assert (= (and b!1253199 (not condMapEmpty!49462)) mapNonEmpty!49462))

(get-info :version)

(assert (= (and mapNonEmpty!49462 ((_ is ValueCellFull!15132) mapValue!49462)) b!1253200))

(assert (= (and b!1253199 ((_ is ValueCellFull!15132) mapDefault!49462)) b!1253197))

(assert (= start!105208 b!1253199))

(declare-fun m!1153731 () Bool)

(assert (=> b!1253195 m!1153731))

(declare-fun m!1153733 () Bool)

(assert (=> mapNonEmpty!49462 m!1153733))

(declare-fun m!1153735 () Bool)

(assert (=> b!1253202 m!1153735))

(declare-fun m!1153737 () Bool)

(assert (=> b!1253196 m!1153737))

(declare-fun m!1153739 () Bool)

(assert (=> b!1253196 m!1153739))

(declare-fun m!1153741 () Bool)

(assert (=> b!1253196 m!1153741))

(declare-fun m!1153743 () Bool)

(assert (=> b!1253196 m!1153743))

(declare-fun m!1153745 () Bool)

(assert (=> b!1253196 m!1153745))

(declare-fun m!1153747 () Bool)

(assert (=> b!1253196 m!1153747))

(declare-fun m!1153749 () Bool)

(assert (=> start!105208 m!1153749))

(declare-fun m!1153751 () Bool)

(assert (=> start!105208 m!1153751))

(declare-fun m!1153753 () Bool)

(assert (=> start!105208 m!1153753))

(declare-fun m!1153755 () Bool)

(assert (=> b!1253198 m!1153755))

(declare-fun m!1153757 () Bool)

(assert (=> b!1253198 m!1153757))

(declare-fun m!1153759 () Bool)

(assert (=> b!1253198 m!1153759))

(check-sat (not b!1253202) (not start!105208) (not b_next!26889) (not b!1253198) (not b!1253196) (not mapNonEmpty!49462) b_and!44713 (not b!1253195) tp_is_empty!31791)
(check-sat b_and!44713 (not b_next!26889))
