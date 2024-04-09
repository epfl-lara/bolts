; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105616 () Bool)

(assert start!105616)

(declare-fun b_free!27195 () Bool)

(declare-fun b_next!27195 () Bool)

(assert (=> start!105616 (= b_free!27195 (not b_next!27195))))

(declare-fun tp!95106 () Bool)

(declare-fun b_and!45071 () Bool)

(assert (=> start!105616 (= tp!95106 b_and!45071)))

(declare-fun b!1257665 () Bool)

(declare-fun res!838401 () Bool)

(declare-fun e!715217 () Bool)

(assert (=> b!1257665 (=> (not res!838401) (not e!715217))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81821 0))(
  ( (array!81822 (arr!39463 (Array (_ BitVec 32) (_ BitVec 64))) (size!40000 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81821)

(declare-datatypes ((V!48161 0))(
  ( (V!48162 (val!16111 Int)) )
))
(declare-datatypes ((ValueCell!15285 0))(
  ( (ValueCellFull!15285 (v!18813 V!48161)) (EmptyCell!15285) )
))
(declare-datatypes ((array!81823 0))(
  ( (array!81824 (arr!39464 (Array (_ BitVec 32) ValueCell!15285)) (size!40001 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81823)

(assert (=> b!1257665 (= res!838401 (and (= (size!40001 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40000 _keys!1118) (size!40001 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257666 () Bool)

(declare-fun e!715218 () Bool)

(declare-fun tp_is_empty!32097 () Bool)

(assert (=> b!1257666 (= e!715218 tp_is_empty!32097)))

(declare-fun mapIsEmpty!49936 () Bool)

(declare-fun mapRes!49936 () Bool)

(assert (=> mapIsEmpty!49936 mapRes!49936))

(declare-fun b!1257667 () Bool)

(declare-fun e!715219 () Bool)

(assert (=> b!1257667 (= e!715219 tp_is_empty!32097)))

(declare-fun res!838402 () Bool)

(assert (=> start!105616 (=> (not res!838402) (not e!715217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105616 (= res!838402 (validMask!0 mask!1466))))

(assert (=> start!105616 e!715217))

(assert (=> start!105616 true))

(assert (=> start!105616 tp!95106))

(assert (=> start!105616 tp_is_empty!32097))

(declare-fun array_inv!30009 (array!81821) Bool)

(assert (=> start!105616 (array_inv!30009 _keys!1118)))

(declare-fun e!715221 () Bool)

(declare-fun array_inv!30010 (array!81823) Bool)

(assert (=> start!105616 (and (array_inv!30010 _values!914) e!715221)))

(declare-fun b!1257668 () Bool)

(assert (=> b!1257668 (= e!715221 (and e!715218 mapRes!49936))))

(declare-fun condMapEmpty!49936 () Bool)

(declare-fun mapDefault!49936 () ValueCell!15285)

(assert (=> b!1257668 (= condMapEmpty!49936 (= (arr!39464 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15285)) mapDefault!49936)))))

(declare-fun b!1257669 () Bool)

(declare-fun res!838400 () Bool)

(assert (=> b!1257669 (=> (not res!838400) (not e!715217))))

(declare-datatypes ((List!28205 0))(
  ( (Nil!28202) (Cons!28201 (h!29410 (_ BitVec 64)) (t!41703 List!28205)) )
))
(declare-fun arrayNoDuplicates!0 (array!81821 (_ BitVec 32) List!28205) Bool)

(assert (=> b!1257669 (= res!838400 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28202))))

(declare-fun b!1257670 () Bool)

(declare-fun res!838399 () Bool)

(assert (=> b!1257670 (=> (not res!838399) (not e!715217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81821 (_ BitVec 32)) Bool)

(assert (=> b!1257670 (= res!838399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49936 () Bool)

(declare-fun tp!95105 () Bool)

(assert (=> mapNonEmpty!49936 (= mapRes!49936 (and tp!95105 e!715219))))

(declare-fun mapValue!49936 () ValueCell!15285)

(declare-fun mapKey!49936 () (_ BitVec 32))

(declare-fun mapRest!49936 () (Array (_ BitVec 32) ValueCell!15285))

(assert (=> mapNonEmpty!49936 (= (arr!39464 _values!914) (store mapRest!49936 mapKey!49936 mapValue!49936))))

(declare-fun b!1257671 () Bool)

(assert (=> b!1257671 (= e!715217 (not true))))

(declare-datatypes ((tuple2!20974 0))(
  ( (tuple2!20975 (_1!10497 (_ BitVec 64)) (_2!10497 V!48161)) )
))
(declare-datatypes ((List!28206 0))(
  ( (Nil!28203) (Cons!28202 (h!29411 tuple2!20974) (t!41704 List!28206)) )
))
(declare-datatypes ((ListLongMap!18859 0))(
  ( (ListLongMap!18860 (toList!9445 List!28206)) )
))
(declare-fun lt!568818 () ListLongMap!18859)

(declare-fun lt!568820 () ListLongMap!18859)

(assert (=> b!1257671 (= lt!568818 lt!568820)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48161)

(declare-fun minValueBefore!43 () V!48161)

(declare-datatypes ((Unit!41864 0))(
  ( (Unit!41865) )
))
(declare-fun lt!568819 () Unit!41864)

(declare-fun minValueAfter!43 () V!48161)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1115 (array!81821 array!81823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48161 V!48161 V!48161 V!48161 (_ BitVec 32) Int) Unit!41864)

(assert (=> b!1257671 (= lt!568819 (lemmaNoChangeToArrayThenSameMapNoExtras!1115 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5797 (array!81821 array!81823 (_ BitVec 32) (_ BitVec 32) V!48161 V!48161 (_ BitVec 32) Int) ListLongMap!18859)

(assert (=> b!1257671 (= lt!568820 (getCurrentListMapNoExtraKeys!5797 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257671 (= lt!568818 (getCurrentListMapNoExtraKeys!5797 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105616 res!838402) b!1257665))

(assert (= (and b!1257665 res!838401) b!1257670))

(assert (= (and b!1257670 res!838399) b!1257669))

(assert (= (and b!1257669 res!838400) b!1257671))

(assert (= (and b!1257668 condMapEmpty!49936) mapIsEmpty!49936))

(assert (= (and b!1257668 (not condMapEmpty!49936)) mapNonEmpty!49936))

(get-info :version)

(assert (= (and mapNonEmpty!49936 ((_ is ValueCellFull!15285) mapValue!49936)) b!1257667))

(assert (= (and b!1257668 ((_ is ValueCellFull!15285) mapDefault!49936)) b!1257666))

(assert (= start!105616 b!1257668))

(declare-fun m!1158251 () Bool)

(assert (=> b!1257671 m!1158251))

(declare-fun m!1158253 () Bool)

(assert (=> b!1257671 m!1158253))

(declare-fun m!1158255 () Bool)

(assert (=> b!1257671 m!1158255))

(declare-fun m!1158257 () Bool)

(assert (=> mapNonEmpty!49936 m!1158257))

(declare-fun m!1158259 () Bool)

(assert (=> start!105616 m!1158259))

(declare-fun m!1158261 () Bool)

(assert (=> start!105616 m!1158261))

(declare-fun m!1158263 () Bool)

(assert (=> start!105616 m!1158263))

(declare-fun m!1158265 () Bool)

(assert (=> b!1257669 m!1158265))

(declare-fun m!1158267 () Bool)

(assert (=> b!1257670 m!1158267))

(check-sat (not start!105616) b_and!45071 (not b!1257670) tp_is_empty!32097 (not mapNonEmpty!49936) (not b!1257671) (not b_next!27195) (not b!1257669))
(check-sat b_and!45071 (not b_next!27195))
