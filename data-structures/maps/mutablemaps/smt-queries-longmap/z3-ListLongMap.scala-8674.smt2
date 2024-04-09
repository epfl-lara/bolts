; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105458 () Bool)

(assert start!105458)

(declare-fun b_free!27081 () Bool)

(declare-fun b_next!27081 () Bool)

(assert (=> start!105458 (= b_free!27081 (not b_next!27081))))

(declare-fun tp!94757 () Bool)

(declare-fun b_and!44937 () Bool)

(assert (=> start!105458 (= tp!94757 b_and!44937)))

(declare-fun b!1255912 () Bool)

(declare-fun e!713926 () Bool)

(assert (=> b!1255912 (= e!713926 true)))

(declare-datatypes ((V!48009 0))(
  ( (V!48010 (val!16054 Int)) )
))
(declare-datatypes ((tuple2!20884 0))(
  ( (tuple2!20885 (_1!10452 (_ BitVec 64)) (_2!10452 V!48009)) )
))
(declare-datatypes ((List!28120 0))(
  ( (Nil!28117) (Cons!28116 (h!29325 tuple2!20884) (t!41614 List!28120)) )
))
(declare-datatypes ((ListLongMap!18769 0))(
  ( (ListLongMap!18770 (toList!9400 List!28120)) )
))
(declare-fun lt!567816 () ListLongMap!18769)

(declare-fun -!2081 (ListLongMap!18769 (_ BitVec 64)) ListLongMap!18769)

(assert (=> b!1255912 (= (-!2081 lt!567816 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567816)))

(declare-datatypes ((Unit!41772 0))(
  ( (Unit!41773) )
))
(declare-fun lt!567818 () Unit!41772)

(declare-fun removeNotPresentStillSame!114 (ListLongMap!18769 (_ BitVec 64)) Unit!41772)

(assert (=> b!1255912 (= lt!567818 (removeNotPresentStillSame!114 lt!567816 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!49759 () Bool)

(declare-fun mapRes!49759 () Bool)

(declare-fun tp!94758 () Bool)

(declare-fun e!713920 () Bool)

(assert (=> mapNonEmpty!49759 (= mapRes!49759 (and tp!94758 e!713920))))

(declare-datatypes ((ValueCell!15228 0))(
  ( (ValueCellFull!15228 (v!18754 V!48009)) (EmptyCell!15228) )
))
(declare-fun mapValue!49759 () ValueCell!15228)

(declare-fun mapKey!49759 () (_ BitVec 32))

(declare-datatypes ((array!81599 0))(
  ( (array!81600 (arr!39354 (Array (_ BitVec 32) ValueCell!15228)) (size!39891 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81599)

(declare-fun mapRest!49759 () (Array (_ BitVec 32) ValueCell!15228))

(assert (=> mapNonEmpty!49759 (= (arr!39354 _values!914) (store mapRest!49759 mapKey!49759 mapValue!49759))))

(declare-fun b!1255913 () Bool)

(declare-fun e!713921 () Bool)

(declare-fun e!713924 () Bool)

(assert (=> b!1255913 (= e!713921 (and e!713924 mapRes!49759))))

(declare-fun condMapEmpty!49759 () Bool)

(declare-fun mapDefault!49759 () ValueCell!15228)

(assert (=> b!1255913 (= condMapEmpty!49759 (= (arr!39354 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15228)) mapDefault!49759)))))

(declare-fun b!1255914 () Bool)

(declare-fun e!713922 () Bool)

(assert (=> b!1255914 (= e!713922 e!713926)))

(declare-fun res!837356 () Bool)

(assert (=> b!1255914 (=> res!837356 e!713926)))

(declare-fun contains!7558 (ListLongMap!18769 (_ BitVec 64)) Bool)

(assert (=> b!1255914 (= res!837356 (contains!7558 lt!567816 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48009)

(declare-datatypes ((array!81601 0))(
  ( (array!81602 (arr!39355 (Array (_ BitVec 32) (_ BitVec 64))) (size!39892 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81601)

(declare-fun minValueBefore!43 () V!48009)

(declare-fun getCurrentListMap!4563 (array!81601 array!81599 (_ BitVec 32) (_ BitVec 32) V!48009 V!48009 (_ BitVec 32) Int) ListLongMap!18769)

(assert (=> b!1255914 (= lt!567816 (getCurrentListMap!4563 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255915 () Bool)

(declare-fun res!837352 () Bool)

(declare-fun e!713925 () Bool)

(assert (=> b!1255915 (=> (not res!837352) (not e!713925))))

(declare-datatypes ((List!28121 0))(
  ( (Nil!28118) (Cons!28117 (h!29326 (_ BitVec 64)) (t!41615 List!28121)) )
))
(declare-fun arrayNoDuplicates!0 (array!81601 (_ BitVec 32) List!28121) Bool)

(assert (=> b!1255915 (= res!837352 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28118))))

(declare-fun b!1255916 () Bool)

(declare-fun tp_is_empty!31983 () Bool)

(assert (=> b!1255916 (= e!713924 tp_is_empty!31983)))

(declare-fun b!1255917 () Bool)

(declare-fun res!837354 () Bool)

(assert (=> b!1255917 (=> (not res!837354) (not e!713925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81601 (_ BitVec 32)) Bool)

(assert (=> b!1255917 (= res!837354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49759 () Bool)

(assert (=> mapIsEmpty!49759 mapRes!49759))

(declare-fun res!837351 () Bool)

(assert (=> start!105458 (=> (not res!837351) (not e!713925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105458 (= res!837351 (validMask!0 mask!1466))))

(assert (=> start!105458 e!713925))

(assert (=> start!105458 true))

(assert (=> start!105458 tp!94757))

(assert (=> start!105458 tp_is_empty!31983))

(declare-fun array_inv!29931 (array!81601) Bool)

(assert (=> start!105458 (array_inv!29931 _keys!1118)))

(declare-fun array_inv!29932 (array!81599) Bool)

(assert (=> start!105458 (and (array_inv!29932 _values!914) e!713921)))

(declare-fun b!1255918 () Bool)

(assert (=> b!1255918 (= e!713920 tp_is_empty!31983)))

(declare-fun b!1255919 () Bool)

(assert (=> b!1255919 (= e!713925 (not e!713922))))

(declare-fun res!837353 () Bool)

(assert (=> b!1255919 (=> res!837353 e!713922)))

(assert (=> b!1255919 (= res!837353 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567815 () ListLongMap!18769)

(declare-fun lt!567819 () ListLongMap!18769)

(assert (=> b!1255919 (= lt!567815 lt!567819)))

(declare-fun minValueAfter!43 () V!48009)

(declare-fun lt!567817 () Unit!41772)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1076 (array!81601 array!81599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48009 V!48009 V!48009 V!48009 (_ BitVec 32) Int) Unit!41772)

(assert (=> b!1255919 (= lt!567817 (lemmaNoChangeToArrayThenSameMapNoExtras!1076 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5758 (array!81601 array!81599 (_ BitVec 32) (_ BitVec 32) V!48009 V!48009 (_ BitVec 32) Int) ListLongMap!18769)

(assert (=> b!1255919 (= lt!567819 (getCurrentListMapNoExtraKeys!5758 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255919 (= lt!567815 (getCurrentListMapNoExtraKeys!5758 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255920 () Bool)

(declare-fun res!837355 () Bool)

(assert (=> b!1255920 (=> (not res!837355) (not e!713925))))

(assert (=> b!1255920 (= res!837355 (and (= (size!39891 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39892 _keys!1118) (size!39891 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105458 res!837351) b!1255920))

(assert (= (and b!1255920 res!837355) b!1255917))

(assert (= (and b!1255917 res!837354) b!1255915))

(assert (= (and b!1255915 res!837352) b!1255919))

(assert (= (and b!1255919 (not res!837353)) b!1255914))

(assert (= (and b!1255914 (not res!837356)) b!1255912))

(assert (= (and b!1255913 condMapEmpty!49759) mapIsEmpty!49759))

(assert (= (and b!1255913 (not condMapEmpty!49759)) mapNonEmpty!49759))

(get-info :version)

(assert (= (and mapNonEmpty!49759 ((_ is ValueCellFull!15228) mapValue!49759)) b!1255918))

(assert (= (and b!1255913 ((_ is ValueCellFull!15228) mapDefault!49759)) b!1255916))

(assert (= start!105458 b!1255913))

(declare-fun m!1156645 () Bool)

(assert (=> b!1255915 m!1156645))

(declare-fun m!1156647 () Bool)

(assert (=> b!1255919 m!1156647))

(declare-fun m!1156649 () Bool)

(assert (=> b!1255919 m!1156649))

(declare-fun m!1156651 () Bool)

(assert (=> b!1255919 m!1156651))

(declare-fun m!1156653 () Bool)

(assert (=> start!105458 m!1156653))

(declare-fun m!1156655 () Bool)

(assert (=> start!105458 m!1156655))

(declare-fun m!1156657 () Bool)

(assert (=> start!105458 m!1156657))

(declare-fun m!1156659 () Bool)

(assert (=> b!1255912 m!1156659))

(declare-fun m!1156661 () Bool)

(assert (=> b!1255912 m!1156661))

(declare-fun m!1156663 () Bool)

(assert (=> b!1255914 m!1156663))

(declare-fun m!1156665 () Bool)

(assert (=> b!1255914 m!1156665))

(declare-fun m!1156667 () Bool)

(assert (=> b!1255917 m!1156667))

(declare-fun m!1156669 () Bool)

(assert (=> mapNonEmpty!49759 m!1156669))

(check-sat (not b!1255912) b_and!44937 (not b!1255919) (not b!1255915) (not b!1255917) (not b_next!27081) tp_is_empty!31983 (not mapNonEmpty!49759) (not start!105458) (not b!1255914))
(check-sat b_and!44937 (not b_next!27081))
