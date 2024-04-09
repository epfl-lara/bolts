; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105678 () Bool)

(assert start!105678)

(declare-fun b_free!27243 () Bool)

(declare-fun b_next!27243 () Bool)

(assert (=> start!105678 (= b_free!27243 (not b_next!27243))))

(declare-fun tp!95252 () Bool)

(declare-fun b_and!45127 () Bool)

(assert (=> start!105678 (= tp!95252 b_and!45127)))

(declare-fun mapIsEmpty!50011 () Bool)

(declare-fun mapRes!50011 () Bool)

(assert (=> mapIsEmpty!50011 mapRes!50011))

(declare-fun b!1258296 () Bool)

(declare-fun res!838762 () Bool)

(declare-fun e!715673 () Bool)

(assert (=> b!1258296 (=> (not res!838762) (not e!715673))))

(declare-datatypes ((array!81911 0))(
  ( (array!81912 (arr!39507 (Array (_ BitVec 32) (_ BitVec 64))) (size!40044 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81911)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81911 (_ BitVec 32)) Bool)

(assert (=> b!1258296 (= res!838762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258297 () Bool)

(declare-fun res!838763 () Bool)

(assert (=> b!1258297 (=> (not res!838763) (not e!715673))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48225 0))(
  ( (V!48226 (val!16135 Int)) )
))
(declare-datatypes ((ValueCell!15309 0))(
  ( (ValueCellFull!15309 (v!18837 V!48225)) (EmptyCell!15309) )
))
(declare-datatypes ((array!81913 0))(
  ( (array!81914 (arr!39508 (Array (_ BitVec 32) ValueCell!15309)) (size!40045 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81913)

(assert (=> b!1258297 (= res!838763 (and (= (size!40045 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40044 _keys!1118) (size!40045 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258298 () Bool)

(declare-fun e!715677 () Bool)

(declare-fun tp_is_empty!32145 () Bool)

(assert (=> b!1258298 (= e!715677 tp_is_empty!32145)))

(declare-fun b!1258299 () Bool)

(declare-fun e!715674 () Bool)

(assert (=> b!1258299 (= e!715673 (not e!715674))))

(declare-fun res!838759 () Bool)

(assert (=> b!1258299 (=> res!838759 e!715674)))

(assert (=> b!1258299 (= res!838759 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21006 0))(
  ( (tuple2!21007 (_1!10513 (_ BitVec 64)) (_2!10513 V!48225)) )
))
(declare-datatypes ((List!28238 0))(
  ( (Nil!28235) (Cons!28234 (h!29443 tuple2!21006) (t!41738 List!28238)) )
))
(declare-datatypes ((ListLongMap!18891 0))(
  ( (ListLongMap!18892 (toList!9461 List!28238)) )
))
(declare-fun lt!569115 () ListLongMap!18891)

(declare-fun lt!569116 () ListLongMap!18891)

(assert (=> b!1258299 (= lt!569115 lt!569116)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41894 0))(
  ( (Unit!41895) )
))
(declare-fun lt!569118 () Unit!41894)

(declare-fun minValueAfter!43 () V!48225)

(declare-fun zeroValue!871 () V!48225)

(declare-fun minValueBefore!43 () V!48225)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1130 (array!81911 array!81913 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48225 V!48225 V!48225 V!48225 (_ BitVec 32) Int) Unit!41894)

(assert (=> b!1258299 (= lt!569118 (lemmaNoChangeToArrayThenSameMapNoExtras!1130 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5812 (array!81911 array!81913 (_ BitVec 32) (_ BitVec 32) V!48225 V!48225 (_ BitVec 32) Int) ListLongMap!18891)

(assert (=> b!1258299 (= lt!569116 (getCurrentListMapNoExtraKeys!5812 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258299 (= lt!569115 (getCurrentListMapNoExtraKeys!5812 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50011 () Bool)

(declare-fun tp!95253 () Bool)

(assert (=> mapNonEmpty!50011 (= mapRes!50011 (and tp!95253 e!715677))))

(declare-fun mapKey!50011 () (_ BitVec 32))

(declare-fun mapRest!50011 () (Array (_ BitVec 32) ValueCell!15309))

(declare-fun mapValue!50011 () ValueCell!15309)

(assert (=> mapNonEmpty!50011 (= (arr!39508 _values!914) (store mapRest!50011 mapKey!50011 mapValue!50011))))

(declare-fun b!1258300 () Bool)

(declare-fun res!838760 () Bool)

(assert (=> b!1258300 (=> (not res!838760) (not e!715673))))

(declare-datatypes ((List!28239 0))(
  ( (Nil!28236) (Cons!28235 (h!29444 (_ BitVec 64)) (t!41739 List!28239)) )
))
(declare-fun arrayNoDuplicates!0 (array!81911 (_ BitVec 32) List!28239) Bool)

(assert (=> b!1258300 (= res!838760 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28236))))

(declare-fun b!1258295 () Bool)

(declare-fun e!715678 () Bool)

(declare-fun e!715676 () Bool)

(assert (=> b!1258295 (= e!715678 (and e!715676 mapRes!50011))))

(declare-fun condMapEmpty!50011 () Bool)

(declare-fun mapDefault!50011 () ValueCell!15309)

(assert (=> b!1258295 (= condMapEmpty!50011 (= (arr!39508 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15309)) mapDefault!50011)))))

(declare-fun res!838761 () Bool)

(assert (=> start!105678 (=> (not res!838761) (not e!715673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105678 (= res!838761 (validMask!0 mask!1466))))

(assert (=> start!105678 e!715673))

(assert (=> start!105678 true))

(assert (=> start!105678 tp!95252))

(assert (=> start!105678 tp_is_empty!32145))

(declare-fun array_inv!30039 (array!81911) Bool)

(assert (=> start!105678 (array_inv!30039 _keys!1118)))

(declare-fun array_inv!30040 (array!81913) Bool)

(assert (=> start!105678 (and (array_inv!30040 _values!914) e!715678)))

(declare-fun b!1258301 () Bool)

(assert (=> b!1258301 (= e!715674 true)))

(declare-fun lt!569117 () ListLongMap!18891)

(declare-fun getCurrentListMap!4601 (array!81911 array!81913 (_ BitVec 32) (_ BitVec 32) V!48225 V!48225 (_ BitVec 32) Int) ListLongMap!18891)

(assert (=> b!1258301 (= lt!569117 (getCurrentListMap!4601 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258302 () Bool)

(assert (=> b!1258302 (= e!715676 tp_is_empty!32145)))

(assert (= (and start!105678 res!838761) b!1258297))

(assert (= (and b!1258297 res!838763) b!1258296))

(assert (= (and b!1258296 res!838762) b!1258300))

(assert (= (and b!1258300 res!838760) b!1258299))

(assert (= (and b!1258299 (not res!838759)) b!1258301))

(assert (= (and b!1258295 condMapEmpty!50011) mapIsEmpty!50011))

(assert (= (and b!1258295 (not condMapEmpty!50011)) mapNonEmpty!50011))

(get-info :version)

(assert (= (and mapNonEmpty!50011 ((_ is ValueCellFull!15309) mapValue!50011)) b!1258298))

(assert (= (and b!1258295 ((_ is ValueCellFull!15309) mapDefault!50011)) b!1258302))

(assert (= start!105678 b!1258295))

(declare-fun m!1158775 () Bool)

(assert (=> b!1258299 m!1158775))

(declare-fun m!1158777 () Bool)

(assert (=> b!1258299 m!1158777))

(declare-fun m!1158779 () Bool)

(assert (=> b!1258299 m!1158779))

(declare-fun m!1158781 () Bool)

(assert (=> b!1258300 m!1158781))

(declare-fun m!1158783 () Bool)

(assert (=> b!1258301 m!1158783))

(declare-fun m!1158785 () Bool)

(assert (=> mapNonEmpty!50011 m!1158785))

(declare-fun m!1158787 () Bool)

(assert (=> b!1258296 m!1158787))

(declare-fun m!1158789 () Bool)

(assert (=> start!105678 m!1158789))

(declare-fun m!1158791 () Bool)

(assert (=> start!105678 m!1158791))

(declare-fun m!1158793 () Bool)

(assert (=> start!105678 m!1158793))

(check-sat (not b!1258299) b_and!45127 (not start!105678) (not mapNonEmpty!50011) (not b!1258296) tp_is_empty!32145 (not b_next!27243) (not b!1258300) (not b!1258301))
(check-sat b_and!45127 (not b_next!27243))
