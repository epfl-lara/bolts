; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105244 () Bool)

(assert start!105244)

(declare-fun b_free!26925 () Bool)

(declare-fun b_next!26925 () Bool)

(assert (=> start!105244 (= b_free!26925 (not b_next!26925))))

(declare-fun tp!94281 () Bool)

(declare-fun b_and!44749 () Bool)

(assert (=> start!105244 (= tp!94281 b_and!44749)))

(declare-fun b!1253627 () Bool)

(declare-fun e!712263 () Bool)

(declare-fun e!712266 () Bool)

(assert (=> b!1253627 (= e!712263 (not e!712266))))

(declare-fun res!836028 () Bool)

(assert (=> b!1253627 (=> res!836028 e!712266)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253627 (= res!836028 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47801 0))(
  ( (V!47802 (val!15976 Int)) )
))
(declare-datatypes ((tuple2!20770 0))(
  ( (tuple2!20771 (_1!10395 (_ BitVec 64)) (_2!10395 V!47801)) )
))
(declare-datatypes ((List!28016 0))(
  ( (Nil!28013) (Cons!28012 (h!29221 tuple2!20770) (t!41504 List!28016)) )
))
(declare-datatypes ((ListLongMap!18655 0))(
  ( (ListLongMap!18656 (toList!9343 List!28016)) )
))
(declare-fun lt!566192 () ListLongMap!18655)

(declare-fun lt!566193 () ListLongMap!18655)

(assert (=> b!1253627 (= lt!566192 lt!566193)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47801)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47801)

(declare-datatypes ((array!81293 0))(
  ( (array!81294 (arr!39204 (Array (_ BitVec 32) (_ BitVec 64))) (size!39741 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81293)

(declare-fun minValueBefore!43 () V!47801)

(declare-datatypes ((Unit!41656 0))(
  ( (Unit!41657) )
))
(declare-fun lt!566194 () Unit!41656)

(declare-datatypes ((ValueCell!15150 0))(
  ( (ValueCellFull!15150 (v!18674 V!47801)) (EmptyCell!15150) )
))
(declare-datatypes ((array!81295 0))(
  ( (array!81296 (arr!39205 (Array (_ BitVec 32) ValueCell!15150)) (size!39742 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81295)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1027 (array!81293 array!81295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47801 V!47801 V!47801 V!47801 (_ BitVec 32) Int) Unit!41656)

(assert (=> b!1253627 (= lt!566194 (lemmaNoChangeToArrayThenSameMapNoExtras!1027 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5709 (array!81293 array!81295 (_ BitVec 32) (_ BitVec 32) V!47801 V!47801 (_ BitVec 32) Int) ListLongMap!18655)

(assert (=> b!1253627 (= lt!566193 (getCurrentListMapNoExtraKeys!5709 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253627 (= lt!566192 (getCurrentListMapNoExtraKeys!5709 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!836029 () Bool)

(assert (=> start!105244 (=> (not res!836029) (not e!712263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105244 (= res!836029 (validMask!0 mask!1466))))

(assert (=> start!105244 e!712263))

(assert (=> start!105244 true))

(assert (=> start!105244 tp!94281))

(declare-fun tp_is_empty!31827 () Bool)

(assert (=> start!105244 tp_is_empty!31827))

(declare-fun array_inv!29827 (array!81293) Bool)

(assert (=> start!105244 (array_inv!29827 _keys!1118)))

(declare-fun e!712265 () Bool)

(declare-fun array_inv!29828 (array!81295) Bool)

(assert (=> start!105244 (and (array_inv!29828 _values!914) e!712265)))

(declare-fun b!1253628 () Bool)

(declare-fun res!836030 () Bool)

(assert (=> b!1253628 (=> (not res!836030) (not e!712263))))

(declare-datatypes ((List!28017 0))(
  ( (Nil!28014) (Cons!28013 (h!29222 (_ BitVec 64)) (t!41505 List!28017)) )
))
(declare-fun arrayNoDuplicates!0 (array!81293 (_ BitVec 32) List!28017) Bool)

(assert (=> b!1253628 (= res!836030 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28014))))

(declare-fun b!1253629 () Bool)

(declare-fun e!712268 () Bool)

(assert (=> b!1253629 (= e!712268 tp_is_empty!31827)))

(declare-fun b!1253630 () Bool)

(declare-fun e!712264 () Bool)

(assert (=> b!1253630 (= e!712264 tp_is_empty!31827)))

(declare-fun b!1253631 () Bool)

(declare-fun res!836027 () Bool)

(assert (=> b!1253631 (=> (not res!836027) (not e!712263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81293 (_ BitVec 32)) Bool)

(assert (=> b!1253631 (= res!836027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253632 () Bool)

(assert (=> b!1253632 (= e!712266 true)))

(declare-fun lt!566198 () ListLongMap!18655)

(declare-fun lt!566197 () ListLongMap!18655)

(declare-fun -!2053 (ListLongMap!18655 (_ BitVec 64)) ListLongMap!18655)

(assert (=> b!1253632 (= lt!566198 (-!2053 lt!566197 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566195 () ListLongMap!18655)

(assert (=> b!1253632 (= (-!2053 lt!566195 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566192)))

(declare-fun lt!566196 () Unit!41656)

(declare-fun addThenRemoveForNewKeyIsSame!313 (ListLongMap!18655 (_ BitVec 64) V!47801) Unit!41656)

(assert (=> b!1253632 (= lt!566196 (addThenRemoveForNewKeyIsSame!313 lt!566192 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566191 () ListLongMap!18655)

(assert (=> b!1253632 (and (= lt!566197 lt!566195) (= lt!566191 lt!566193))))

(declare-fun +!4144 (ListLongMap!18655 tuple2!20770) ListLongMap!18655)

(assert (=> b!1253632 (= lt!566195 (+!4144 lt!566192 (tuple2!20771 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4531 (array!81293 array!81295 (_ BitVec 32) (_ BitVec 32) V!47801 V!47801 (_ BitVec 32) Int) ListLongMap!18655)

(assert (=> b!1253632 (= lt!566191 (getCurrentListMap!4531 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253632 (= lt!566197 (getCurrentListMap!4531 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253633 () Bool)

(declare-fun res!836026 () Bool)

(assert (=> b!1253633 (=> (not res!836026) (not e!712263))))

(assert (=> b!1253633 (= res!836026 (and (= (size!39742 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39741 _keys!1118) (size!39742 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49516 () Bool)

(declare-fun mapRes!49516 () Bool)

(assert (=> mapIsEmpty!49516 mapRes!49516))

(declare-fun mapNonEmpty!49516 () Bool)

(declare-fun tp!94280 () Bool)

(assert (=> mapNonEmpty!49516 (= mapRes!49516 (and tp!94280 e!712264))))

(declare-fun mapRest!49516 () (Array (_ BitVec 32) ValueCell!15150))

(declare-fun mapValue!49516 () ValueCell!15150)

(declare-fun mapKey!49516 () (_ BitVec 32))

(assert (=> mapNonEmpty!49516 (= (arr!39205 _values!914) (store mapRest!49516 mapKey!49516 mapValue!49516))))

(declare-fun b!1253634 () Bool)

(assert (=> b!1253634 (= e!712265 (and e!712268 mapRes!49516))))

(declare-fun condMapEmpty!49516 () Bool)

(declare-fun mapDefault!49516 () ValueCell!15150)

(assert (=> b!1253634 (= condMapEmpty!49516 (= (arr!39205 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15150)) mapDefault!49516)))))

(assert (= (and start!105244 res!836029) b!1253633))

(assert (= (and b!1253633 res!836026) b!1253631))

(assert (= (and b!1253631 res!836027) b!1253628))

(assert (= (and b!1253628 res!836030) b!1253627))

(assert (= (and b!1253627 (not res!836028)) b!1253632))

(assert (= (and b!1253634 condMapEmpty!49516) mapIsEmpty!49516))

(assert (= (and b!1253634 (not condMapEmpty!49516)) mapNonEmpty!49516))

(get-info :version)

(assert (= (and mapNonEmpty!49516 ((_ is ValueCellFull!15150) mapValue!49516)) b!1253630))

(assert (= (and b!1253634 ((_ is ValueCellFull!15150) mapDefault!49516)) b!1253629))

(assert (= start!105244 b!1253634))

(declare-fun m!1154271 () Bool)

(assert (=> start!105244 m!1154271))

(declare-fun m!1154273 () Bool)

(assert (=> start!105244 m!1154273))

(declare-fun m!1154275 () Bool)

(assert (=> start!105244 m!1154275))

(declare-fun m!1154277 () Bool)

(assert (=> b!1253631 m!1154277))

(declare-fun m!1154279 () Bool)

(assert (=> b!1253627 m!1154279))

(declare-fun m!1154281 () Bool)

(assert (=> b!1253627 m!1154281))

(declare-fun m!1154283 () Bool)

(assert (=> b!1253627 m!1154283))

(declare-fun m!1154285 () Bool)

(assert (=> mapNonEmpty!49516 m!1154285))

(declare-fun m!1154287 () Bool)

(assert (=> b!1253632 m!1154287))

(declare-fun m!1154289 () Bool)

(assert (=> b!1253632 m!1154289))

(declare-fun m!1154291 () Bool)

(assert (=> b!1253632 m!1154291))

(declare-fun m!1154293 () Bool)

(assert (=> b!1253632 m!1154293))

(declare-fun m!1154295 () Bool)

(assert (=> b!1253632 m!1154295))

(declare-fun m!1154297 () Bool)

(assert (=> b!1253632 m!1154297))

(declare-fun m!1154299 () Bool)

(assert (=> b!1253628 m!1154299))

(check-sat (not start!105244) tp_is_empty!31827 b_and!44749 (not b_next!26925) (not mapNonEmpty!49516) (not b!1253627) (not b!1253632) (not b!1253631) (not b!1253628))
(check-sat b_and!44749 (not b_next!26925))
