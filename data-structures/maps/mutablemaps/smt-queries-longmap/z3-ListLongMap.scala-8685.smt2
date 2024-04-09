; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105546 () Bool)

(assert start!105546)

(declare-fun b_free!27147 () Bool)

(declare-fun b_next!27147 () Bool)

(assert (=> start!105546 (= b_free!27147 (not b_next!27147))))

(declare-fun tp!94959 () Bool)

(declare-fun b_and!45013 () Bool)

(assert (=> start!105546 (= tp!94959 b_and!45013)))

(declare-fun b!1256960 () Bool)

(declare-fun res!838011 () Bool)

(declare-fun e!714714 () Bool)

(assert (=> b!1256960 (=> (not res!838011) (not e!714714))))

(declare-datatypes ((array!81731 0))(
  ( (array!81732 (arr!39419 (Array (_ BitVec 32) (_ BitVec 64))) (size!39956 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81731)

(declare-datatypes ((List!28171 0))(
  ( (Nil!28168) (Cons!28167 (h!29376 (_ BitVec 64)) (t!41667 List!28171)) )
))
(declare-fun arrayNoDuplicates!0 (array!81731 (_ BitVec 32) List!28171) Bool)

(assert (=> b!1256960 (= res!838011 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28168))))

(declare-fun b!1256961 () Bool)

(declare-fun e!714716 () Bool)

(assert (=> b!1256961 (= e!714716 true)))

(declare-datatypes ((V!48097 0))(
  ( (V!48098 (val!16087 Int)) )
))
(declare-datatypes ((tuple2!20938 0))(
  ( (tuple2!20939 (_1!10479 (_ BitVec 64)) (_2!10479 V!48097)) )
))
(declare-datatypes ((List!28172 0))(
  ( (Nil!28169) (Cons!28168 (h!29377 tuple2!20938) (t!41668 List!28172)) )
))
(declare-datatypes ((ListLongMap!18823 0))(
  ( (ListLongMap!18824 (toList!9427 List!28172)) )
))
(declare-fun lt!568436 () ListLongMap!18823)

(declare-fun -!2103 (ListLongMap!18823 (_ BitVec 64)) ListLongMap!18823)

(assert (=> b!1256961 (= (-!2103 lt!568436 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568436)))

(declare-datatypes ((Unit!41826 0))(
  ( (Unit!41827) )
))
(declare-fun lt!568437 () Unit!41826)

(declare-fun removeNotPresentStillSame!136 (ListLongMap!18823 (_ BitVec 64)) Unit!41826)

(assert (=> b!1256961 (= lt!568437 (removeNotPresentStillSame!136 lt!568436 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256962 () Bool)

(declare-fun e!714719 () Bool)

(declare-fun tp_is_empty!32049 () Bool)

(assert (=> b!1256962 (= e!714719 tp_is_empty!32049)))

(declare-fun b!1256963 () Bool)

(declare-fun e!714713 () Bool)

(assert (=> b!1256963 (= e!714713 e!714716)))

(declare-fun res!838006 () Bool)

(assert (=> b!1256963 (=> res!838006 e!714716)))

(declare-fun contains!7581 (ListLongMap!18823 (_ BitVec 64)) Bool)

(assert (=> b!1256963 (= res!838006 (contains!7581 lt!568436 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48097)

(declare-fun minValueBefore!43 () V!48097)

(declare-datatypes ((ValueCell!15261 0))(
  ( (ValueCellFull!15261 (v!18788 V!48097)) (EmptyCell!15261) )
))
(declare-datatypes ((array!81733 0))(
  ( (array!81734 (arr!39420 (Array (_ BitVec 32) ValueCell!15261)) (size!39957 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81733)

(declare-fun getCurrentListMap!4585 (array!81731 array!81733 (_ BitVec 32) (_ BitVec 32) V!48097 V!48097 (_ BitVec 32) Int) ListLongMap!18823)

(assert (=> b!1256963 (= lt!568436 (getCurrentListMap!4585 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256964 () Bool)

(assert (=> b!1256964 (= e!714714 (not e!714713))))

(declare-fun res!838010 () Bool)

(assert (=> b!1256964 (=> res!838010 e!714713)))

(assert (=> b!1256964 (= res!838010 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568435 () ListLongMap!18823)

(declare-fun lt!568434 () ListLongMap!18823)

(assert (=> b!1256964 (= lt!568435 lt!568434)))

(declare-fun lt!568438 () Unit!41826)

(declare-fun minValueAfter!43 () V!48097)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1097 (array!81731 array!81733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48097 V!48097 V!48097 V!48097 (_ BitVec 32) Int) Unit!41826)

(assert (=> b!1256964 (= lt!568438 (lemmaNoChangeToArrayThenSameMapNoExtras!1097 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5779 (array!81731 array!81733 (_ BitVec 32) (_ BitVec 32) V!48097 V!48097 (_ BitVec 32) Int) ListLongMap!18823)

(assert (=> b!1256964 (= lt!568434 (getCurrentListMapNoExtraKeys!5779 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256964 (= lt!568435 (getCurrentListMapNoExtraKeys!5779 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256965 () Bool)

(declare-fun e!714717 () Bool)

(declare-fun mapRes!49861 () Bool)

(assert (=> b!1256965 (= e!714717 (and e!714719 mapRes!49861))))

(declare-fun condMapEmpty!49861 () Bool)

(declare-fun mapDefault!49861 () ValueCell!15261)

(assert (=> b!1256965 (= condMapEmpty!49861 (= (arr!39420 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15261)) mapDefault!49861)))))

(declare-fun b!1256966 () Bool)

(declare-fun res!838009 () Bool)

(assert (=> b!1256966 (=> (not res!838009) (not e!714714))))

(assert (=> b!1256966 (= res!838009 (and (= (size!39957 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39956 _keys!1118) (size!39957 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49861 () Bool)

(declare-fun tp!94958 () Bool)

(declare-fun e!714718 () Bool)

(assert (=> mapNonEmpty!49861 (= mapRes!49861 (and tp!94958 e!714718))))

(declare-fun mapRest!49861 () (Array (_ BitVec 32) ValueCell!15261))

(declare-fun mapValue!49861 () ValueCell!15261)

(declare-fun mapKey!49861 () (_ BitVec 32))

(assert (=> mapNonEmpty!49861 (= (arr!39420 _values!914) (store mapRest!49861 mapKey!49861 mapValue!49861))))

(declare-fun res!838007 () Bool)

(assert (=> start!105546 (=> (not res!838007) (not e!714714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105546 (= res!838007 (validMask!0 mask!1466))))

(assert (=> start!105546 e!714714))

(assert (=> start!105546 true))

(assert (=> start!105546 tp!94959))

(assert (=> start!105546 tp_is_empty!32049))

(declare-fun array_inv!29973 (array!81731) Bool)

(assert (=> start!105546 (array_inv!29973 _keys!1118)))

(declare-fun array_inv!29974 (array!81733) Bool)

(assert (=> start!105546 (and (array_inv!29974 _values!914) e!714717)))

(declare-fun mapIsEmpty!49861 () Bool)

(assert (=> mapIsEmpty!49861 mapRes!49861))

(declare-fun b!1256967 () Bool)

(assert (=> b!1256967 (= e!714718 tp_is_empty!32049)))

(declare-fun b!1256968 () Bool)

(declare-fun res!838008 () Bool)

(assert (=> b!1256968 (=> (not res!838008) (not e!714714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81731 (_ BitVec 32)) Bool)

(assert (=> b!1256968 (= res!838008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105546 res!838007) b!1256966))

(assert (= (and b!1256966 res!838009) b!1256968))

(assert (= (and b!1256968 res!838008) b!1256960))

(assert (= (and b!1256960 res!838011) b!1256964))

(assert (= (and b!1256964 (not res!838010)) b!1256963))

(assert (= (and b!1256963 (not res!838006)) b!1256961))

(assert (= (and b!1256965 condMapEmpty!49861) mapIsEmpty!49861))

(assert (= (and b!1256965 (not condMapEmpty!49861)) mapNonEmpty!49861))

(get-info :version)

(assert (= (and mapNonEmpty!49861 ((_ is ValueCellFull!15261) mapValue!49861)) b!1256967))

(assert (= (and b!1256965 ((_ is ValueCellFull!15261) mapDefault!49861)) b!1256962))

(assert (= start!105546 b!1256965))

(declare-fun m!1157629 () Bool)

(assert (=> b!1256963 m!1157629))

(declare-fun m!1157631 () Bool)

(assert (=> b!1256963 m!1157631))

(declare-fun m!1157633 () Bool)

(assert (=> mapNonEmpty!49861 m!1157633))

(declare-fun m!1157635 () Bool)

(assert (=> b!1256960 m!1157635))

(declare-fun m!1157637 () Bool)

(assert (=> b!1256968 m!1157637))

(declare-fun m!1157639 () Bool)

(assert (=> b!1256961 m!1157639))

(declare-fun m!1157641 () Bool)

(assert (=> b!1256961 m!1157641))

(declare-fun m!1157643 () Bool)

(assert (=> b!1256964 m!1157643))

(declare-fun m!1157645 () Bool)

(assert (=> b!1256964 m!1157645))

(declare-fun m!1157647 () Bool)

(assert (=> b!1256964 m!1157647))

(declare-fun m!1157649 () Bool)

(assert (=> start!105546 m!1157649))

(declare-fun m!1157651 () Bool)

(assert (=> start!105546 m!1157651))

(declare-fun m!1157653 () Bool)

(assert (=> start!105546 m!1157653))

(check-sat (not b!1256960) (not b!1256963) tp_is_empty!32049 (not b!1256964) b_and!45013 (not b!1256968) (not b_next!27147) (not start!105546) (not mapNonEmpty!49861) (not b!1256961))
(check-sat b_and!45013 (not b_next!27147))
