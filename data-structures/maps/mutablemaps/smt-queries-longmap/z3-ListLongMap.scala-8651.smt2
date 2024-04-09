; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105284 () Bool)

(assert start!105284)

(declare-fun b_free!26943 () Bool)

(declare-fun b_next!26943 () Bool)

(assert (=> start!105284 (= b_free!26943 (not b_next!26943))))

(declare-fun tp!94337 () Bool)

(declare-fun b_and!44779 () Bool)

(assert (=> start!105284 (= tp!94337 b_and!44779)))

(declare-fun b!1254027 () Bool)

(declare-fun e!712545 () Bool)

(declare-fun tp_is_empty!31845 () Bool)

(assert (=> b!1254027 (= e!712545 tp_is_empty!31845)))

(declare-fun b!1254028 () Bool)

(declare-fun e!712548 () Bool)

(assert (=> b!1254028 (= e!712548 true)))

(declare-datatypes ((V!47825 0))(
  ( (V!47826 (val!15985 Int)) )
))
(declare-datatypes ((tuple2!20778 0))(
  ( (tuple2!20779 (_1!10399 (_ BitVec 64)) (_2!10399 V!47825)) )
))
(declare-datatypes ((List!28023 0))(
  ( (Nil!28020) (Cons!28019 (h!29228 tuple2!20778) (t!41513 List!28023)) )
))
(declare-datatypes ((ListLongMap!18663 0))(
  ( (ListLongMap!18664 (toList!9347 List!28023)) )
))
(declare-fun lt!566546 () ListLongMap!18663)

(declare-fun lt!566547 () ListLongMap!18663)

(declare-fun -!2057 (ListLongMap!18663 (_ BitVec 64)) ListLongMap!18663)

(assert (=> b!1254028 (= lt!566546 (-!2057 lt!566547 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566551 () ListLongMap!18663)

(declare-fun lt!566545 () ListLongMap!18663)

(assert (=> b!1254028 (= (-!2057 lt!566551 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566545)))

(declare-datatypes ((Unit!41666 0))(
  ( (Unit!41667) )
))
(declare-fun lt!566549 () Unit!41666)

(declare-fun minValueBefore!43 () V!47825)

(declare-fun addThenRemoveForNewKeyIsSame!317 (ListLongMap!18663 (_ BitVec 64) V!47825) Unit!41666)

(assert (=> b!1254028 (= lt!566549 (addThenRemoveForNewKeyIsSame!317 lt!566545 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566548 () ListLongMap!18663)

(declare-fun lt!566552 () ListLongMap!18663)

(assert (=> b!1254028 (and (= lt!566547 lt!566551) (= lt!566548 lt!566552))))

(declare-fun +!4148 (ListLongMap!18663 tuple2!20778) ListLongMap!18663)

(assert (=> b!1254028 (= lt!566551 (+!4148 lt!566545 (tuple2!20779 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47825)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47825)

(declare-datatypes ((array!81327 0))(
  ( (array!81328 (arr!39220 (Array (_ BitVec 32) (_ BitVec 64))) (size!39757 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81327)

(declare-datatypes ((ValueCell!15159 0))(
  ( (ValueCellFull!15159 (v!18684 V!47825)) (EmptyCell!15159) )
))
(declare-datatypes ((array!81329 0))(
  ( (array!81330 (arr!39221 (Array (_ BitVec 32) ValueCell!15159)) (size!39758 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81329)

(declare-fun getCurrentListMap!4535 (array!81327 array!81329 (_ BitVec 32) (_ BitVec 32) V!47825 V!47825 (_ BitVec 32) Int) ListLongMap!18663)

(assert (=> b!1254028 (= lt!566548 (getCurrentListMap!4535 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254028 (= lt!566547 (getCurrentListMap!4535 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254029 () Bool)

(declare-fun res!836243 () Bool)

(declare-fun e!712547 () Bool)

(assert (=> b!1254029 (=> (not res!836243) (not e!712547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81327 (_ BitVec 32)) Bool)

(assert (=> b!1254029 (= res!836243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49546 () Bool)

(declare-fun mapRes!49546 () Bool)

(assert (=> mapIsEmpty!49546 mapRes!49546))

(declare-fun b!1254030 () Bool)

(assert (=> b!1254030 (= e!712547 (not e!712548))))

(declare-fun res!836246 () Bool)

(assert (=> b!1254030 (=> res!836246 e!712548)))

(assert (=> b!1254030 (= res!836246 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1254030 (= lt!566545 lt!566552)))

(declare-fun lt!566550 () Unit!41666)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1031 (array!81327 array!81329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47825 V!47825 V!47825 V!47825 (_ BitVec 32) Int) Unit!41666)

(assert (=> b!1254030 (= lt!566550 (lemmaNoChangeToArrayThenSameMapNoExtras!1031 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5713 (array!81327 array!81329 (_ BitVec 32) (_ BitVec 32) V!47825 V!47825 (_ BitVec 32) Int) ListLongMap!18663)

(assert (=> b!1254030 (= lt!566552 (getCurrentListMapNoExtraKeys!5713 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254030 (= lt!566545 (getCurrentListMapNoExtraKeys!5713 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254031 () Bool)

(declare-fun res!836244 () Bool)

(assert (=> b!1254031 (=> (not res!836244) (not e!712547))))

(declare-datatypes ((List!28024 0))(
  ( (Nil!28021) (Cons!28020 (h!29229 (_ BitVec 64)) (t!41514 List!28024)) )
))
(declare-fun arrayNoDuplicates!0 (array!81327 (_ BitVec 32) List!28024) Bool)

(assert (=> b!1254031 (= res!836244 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28021))))

(declare-fun mapNonEmpty!49546 () Bool)

(declare-fun tp!94338 () Bool)

(assert (=> mapNonEmpty!49546 (= mapRes!49546 (and tp!94338 e!712545))))

(declare-fun mapKey!49546 () (_ BitVec 32))

(declare-fun mapValue!49546 () ValueCell!15159)

(declare-fun mapRest!49546 () (Array (_ BitVec 32) ValueCell!15159))

(assert (=> mapNonEmpty!49546 (= (arr!39221 _values!914) (store mapRest!49546 mapKey!49546 mapValue!49546))))

(declare-fun b!1254033 () Bool)

(declare-fun e!712544 () Bool)

(assert (=> b!1254033 (= e!712544 tp_is_empty!31845)))

(declare-fun b!1254034 () Bool)

(declare-fun e!712546 () Bool)

(assert (=> b!1254034 (= e!712546 (and e!712544 mapRes!49546))))

(declare-fun condMapEmpty!49546 () Bool)

(declare-fun mapDefault!49546 () ValueCell!15159)

(assert (=> b!1254034 (= condMapEmpty!49546 (= (arr!39221 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15159)) mapDefault!49546)))))

(declare-fun res!836247 () Bool)

(assert (=> start!105284 (=> (not res!836247) (not e!712547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105284 (= res!836247 (validMask!0 mask!1466))))

(assert (=> start!105284 e!712547))

(assert (=> start!105284 true))

(assert (=> start!105284 tp!94337))

(assert (=> start!105284 tp_is_empty!31845))

(declare-fun array_inv!29837 (array!81327) Bool)

(assert (=> start!105284 (array_inv!29837 _keys!1118)))

(declare-fun array_inv!29838 (array!81329) Bool)

(assert (=> start!105284 (and (array_inv!29838 _values!914) e!712546)))

(declare-fun b!1254032 () Bool)

(declare-fun res!836245 () Bool)

(assert (=> b!1254032 (=> (not res!836245) (not e!712547))))

(assert (=> b!1254032 (= res!836245 (and (= (size!39758 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39757 _keys!1118) (size!39758 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105284 res!836247) b!1254032))

(assert (= (and b!1254032 res!836245) b!1254029))

(assert (= (and b!1254029 res!836243) b!1254031))

(assert (= (and b!1254031 res!836244) b!1254030))

(assert (= (and b!1254030 (not res!836246)) b!1254028))

(assert (= (and b!1254034 condMapEmpty!49546) mapIsEmpty!49546))

(assert (= (and b!1254034 (not condMapEmpty!49546)) mapNonEmpty!49546))

(get-info :version)

(assert (= (and mapNonEmpty!49546 ((_ is ValueCellFull!15159) mapValue!49546)) b!1254027))

(assert (= (and b!1254034 ((_ is ValueCellFull!15159) mapDefault!49546)) b!1254033))

(assert (= start!105284 b!1254034))

(declare-fun m!1154725 () Bool)

(assert (=> b!1254031 m!1154725))

(declare-fun m!1154727 () Bool)

(assert (=> b!1254030 m!1154727))

(declare-fun m!1154729 () Bool)

(assert (=> b!1254030 m!1154729))

(declare-fun m!1154731 () Bool)

(assert (=> b!1254030 m!1154731))

(declare-fun m!1154733 () Bool)

(assert (=> b!1254029 m!1154733))

(declare-fun m!1154735 () Bool)

(assert (=> b!1254028 m!1154735))

(declare-fun m!1154737 () Bool)

(assert (=> b!1254028 m!1154737))

(declare-fun m!1154739 () Bool)

(assert (=> b!1254028 m!1154739))

(declare-fun m!1154741 () Bool)

(assert (=> b!1254028 m!1154741))

(declare-fun m!1154743 () Bool)

(assert (=> b!1254028 m!1154743))

(declare-fun m!1154745 () Bool)

(assert (=> b!1254028 m!1154745))

(declare-fun m!1154747 () Bool)

(assert (=> mapNonEmpty!49546 m!1154747))

(declare-fun m!1154749 () Bool)

(assert (=> start!105284 m!1154749))

(declare-fun m!1154751 () Bool)

(assert (=> start!105284 m!1154751))

(declare-fun m!1154753 () Bool)

(assert (=> start!105284 m!1154753))

(check-sat (not mapNonEmpty!49546) (not b!1254030) b_and!44779 tp_is_empty!31845 (not b_next!26943) (not b!1254029) (not b!1254028) (not start!105284) (not b!1254031))
(check-sat b_and!44779 (not b_next!26943))
