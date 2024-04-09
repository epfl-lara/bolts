; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105434 () Bool)

(assert start!105434)

(declare-fun b_free!27057 () Bool)

(declare-fun b_next!27057 () Bool)

(assert (=> start!105434 (= b_free!27057 (not b_next!27057))))

(declare-fun tp!94685 () Bool)

(declare-fun b_and!44913 () Bool)

(assert (=> start!105434 (= tp!94685 b_and!44913)))

(declare-fun b!1255588 () Bool)

(declare-fun e!713672 () Bool)

(assert (=> b!1255588 (= e!713672 true)))

(declare-datatypes ((V!47977 0))(
  ( (V!47978 (val!16042 Int)) )
))
(declare-datatypes ((tuple2!20864 0))(
  ( (tuple2!20865 (_1!10442 (_ BitVec 64)) (_2!10442 V!47977)) )
))
(declare-datatypes ((List!28102 0))(
  ( (Nil!28099) (Cons!28098 (h!29307 tuple2!20864) (t!41596 List!28102)) )
))
(declare-datatypes ((ListLongMap!18749 0))(
  ( (ListLongMap!18750 (toList!9390 List!28102)) )
))
(declare-fun lt!567639 () ListLongMap!18749)

(declare-fun -!2075 (ListLongMap!18749 (_ BitVec 64)) ListLongMap!18749)

(assert (=> b!1255588 (= (-!2075 lt!567639 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567639)))

(declare-datatypes ((Unit!41752 0))(
  ( (Unit!41753) )
))
(declare-fun lt!567637 () Unit!41752)

(declare-fun removeNotPresentStillSame!108 (ListLongMap!18749 (_ BitVec 64)) Unit!41752)

(assert (=> b!1255588 (= lt!567637 (removeNotPresentStillSame!108 lt!567639 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255589 () Bool)

(declare-fun e!713668 () Bool)

(declare-fun e!713669 () Bool)

(assert (=> b!1255589 (= e!713668 (not e!713669))))

(declare-fun res!837138 () Bool)

(assert (=> b!1255589 (=> res!837138 e!713669)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255589 (= res!837138 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567635 () ListLongMap!18749)

(declare-fun lt!567638 () ListLongMap!18749)

(assert (=> b!1255589 (= lt!567635 lt!567638)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47977)

(declare-fun lt!567636 () Unit!41752)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47977)

(declare-datatypes ((array!81553 0))(
  ( (array!81554 (arr!39331 (Array (_ BitVec 32) (_ BitVec 64))) (size!39868 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81553)

(declare-datatypes ((ValueCell!15216 0))(
  ( (ValueCellFull!15216 (v!18742 V!47977)) (EmptyCell!15216) )
))
(declare-datatypes ((array!81555 0))(
  ( (array!81556 (arr!39332 (Array (_ BitVec 32) ValueCell!15216)) (size!39869 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81555)

(declare-fun minValueBefore!43 () V!47977)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1067 (array!81553 array!81555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47977 V!47977 V!47977 V!47977 (_ BitVec 32) Int) Unit!41752)

(assert (=> b!1255589 (= lt!567636 (lemmaNoChangeToArrayThenSameMapNoExtras!1067 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5749 (array!81553 array!81555 (_ BitVec 32) (_ BitVec 32) V!47977 V!47977 (_ BitVec 32) Int) ListLongMap!18749)

(assert (=> b!1255589 (= lt!567638 (getCurrentListMapNoExtraKeys!5749 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255589 (= lt!567635 (getCurrentListMapNoExtraKeys!5749 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49723 () Bool)

(declare-fun mapRes!49723 () Bool)

(declare-fun tp!94686 () Bool)

(declare-fun e!713670 () Bool)

(assert (=> mapNonEmpty!49723 (= mapRes!49723 (and tp!94686 e!713670))))

(declare-fun mapKey!49723 () (_ BitVec 32))

(declare-fun mapValue!49723 () ValueCell!15216)

(declare-fun mapRest!49723 () (Array (_ BitVec 32) ValueCell!15216))

(assert (=> mapNonEmpty!49723 (= (arr!39332 _values!914) (store mapRest!49723 mapKey!49723 mapValue!49723))))

(declare-fun b!1255591 () Bool)

(declare-fun tp_is_empty!31959 () Bool)

(assert (=> b!1255591 (= e!713670 tp_is_empty!31959)))

(declare-fun b!1255592 () Bool)

(assert (=> b!1255592 (= e!713669 e!713672)))

(declare-fun res!837137 () Bool)

(assert (=> b!1255592 (=> res!837137 e!713672)))

(declare-fun contains!7550 (ListLongMap!18749 (_ BitVec 64)) Bool)

(assert (=> b!1255592 (= res!837137 (contains!7550 lt!567639 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4555 (array!81553 array!81555 (_ BitVec 32) (_ BitVec 32) V!47977 V!47977 (_ BitVec 32) Int) ListLongMap!18749)

(assert (=> b!1255592 (= lt!567639 (getCurrentListMap!4555 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255593 () Bool)

(declare-fun res!837140 () Bool)

(assert (=> b!1255593 (=> (not res!837140) (not e!713668))))

(declare-datatypes ((List!28103 0))(
  ( (Nil!28100) (Cons!28099 (h!29308 (_ BitVec 64)) (t!41597 List!28103)) )
))
(declare-fun arrayNoDuplicates!0 (array!81553 (_ BitVec 32) List!28103) Bool)

(assert (=> b!1255593 (= res!837140 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28100))))

(declare-fun b!1255594 () Bool)

(declare-fun res!837135 () Bool)

(assert (=> b!1255594 (=> (not res!837135) (not e!713668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81553 (_ BitVec 32)) Bool)

(assert (=> b!1255594 (= res!837135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255595 () Bool)

(declare-fun res!837136 () Bool)

(assert (=> b!1255595 (=> (not res!837136) (not e!713668))))

(assert (=> b!1255595 (= res!837136 (and (= (size!39869 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39868 _keys!1118) (size!39869 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255590 () Bool)

(declare-fun e!713671 () Bool)

(assert (=> b!1255590 (= e!713671 tp_is_empty!31959)))

(declare-fun res!837139 () Bool)

(assert (=> start!105434 (=> (not res!837139) (not e!713668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105434 (= res!837139 (validMask!0 mask!1466))))

(assert (=> start!105434 e!713668))

(assert (=> start!105434 true))

(assert (=> start!105434 tp!94685))

(assert (=> start!105434 tp_is_empty!31959))

(declare-fun array_inv!29915 (array!81553) Bool)

(assert (=> start!105434 (array_inv!29915 _keys!1118)))

(declare-fun e!713674 () Bool)

(declare-fun array_inv!29916 (array!81555) Bool)

(assert (=> start!105434 (and (array_inv!29916 _values!914) e!713674)))

(declare-fun b!1255596 () Bool)

(assert (=> b!1255596 (= e!713674 (and e!713671 mapRes!49723))))

(declare-fun condMapEmpty!49723 () Bool)

(declare-fun mapDefault!49723 () ValueCell!15216)

(assert (=> b!1255596 (= condMapEmpty!49723 (= (arr!39332 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15216)) mapDefault!49723)))))

(declare-fun mapIsEmpty!49723 () Bool)

(assert (=> mapIsEmpty!49723 mapRes!49723))

(assert (= (and start!105434 res!837139) b!1255595))

(assert (= (and b!1255595 res!837136) b!1255594))

(assert (= (and b!1255594 res!837135) b!1255593))

(assert (= (and b!1255593 res!837140) b!1255589))

(assert (= (and b!1255589 (not res!837138)) b!1255592))

(assert (= (and b!1255592 (not res!837137)) b!1255588))

(assert (= (and b!1255596 condMapEmpty!49723) mapIsEmpty!49723))

(assert (= (and b!1255596 (not condMapEmpty!49723)) mapNonEmpty!49723))

(get-info :version)

(assert (= (and mapNonEmpty!49723 ((_ is ValueCellFull!15216) mapValue!49723)) b!1255591))

(assert (= (and b!1255596 ((_ is ValueCellFull!15216) mapDefault!49723)) b!1255590))

(assert (= start!105434 b!1255596))

(declare-fun m!1156333 () Bool)

(assert (=> b!1255592 m!1156333))

(declare-fun m!1156335 () Bool)

(assert (=> b!1255592 m!1156335))

(declare-fun m!1156337 () Bool)

(assert (=> b!1255588 m!1156337))

(declare-fun m!1156339 () Bool)

(assert (=> b!1255588 m!1156339))

(declare-fun m!1156341 () Bool)

(assert (=> b!1255594 m!1156341))

(declare-fun m!1156343 () Bool)

(assert (=> b!1255589 m!1156343))

(declare-fun m!1156345 () Bool)

(assert (=> b!1255589 m!1156345))

(declare-fun m!1156347 () Bool)

(assert (=> b!1255589 m!1156347))

(declare-fun m!1156349 () Bool)

(assert (=> b!1255593 m!1156349))

(declare-fun m!1156351 () Bool)

(assert (=> mapNonEmpty!49723 m!1156351))

(declare-fun m!1156353 () Bool)

(assert (=> start!105434 m!1156353))

(declare-fun m!1156355 () Bool)

(assert (=> start!105434 m!1156355))

(declare-fun m!1156357 () Bool)

(assert (=> start!105434 m!1156357))

(check-sat b_and!44913 (not b!1255594) (not b!1255589) (not mapNonEmpty!49723) (not b!1255588) tp_is_empty!31959 (not b_next!27057) (not b!1255592) (not start!105434) (not b!1255593))
(check-sat b_and!44913 (not b_next!27057))
