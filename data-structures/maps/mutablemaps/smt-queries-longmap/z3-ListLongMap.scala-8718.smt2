; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105818 () Bool)

(assert start!105818)

(declare-fun b_free!27345 () Bool)

(declare-fun b_next!27345 () Bool)

(assert (=> start!105818 (= b_free!27345 (not b_next!27345))))

(declare-fun tp!95565 () Bool)

(declare-fun b_and!45251 () Bool)

(assert (=> start!105818 (= tp!95565 b_and!45251)))

(declare-fun b!1259968 () Bool)

(declare-fun e!716921 () Bool)

(assert (=> b!1259968 (= e!716921 true)))

(declare-datatypes ((V!48361 0))(
  ( (V!48362 (val!16186 Int)) )
))
(declare-datatypes ((tuple2!21090 0))(
  ( (tuple2!21091 (_1!10555 (_ BitVec 64)) (_2!10555 V!48361)) )
))
(declare-datatypes ((List!28314 0))(
  ( (Nil!28311) (Cons!28310 (h!29519 tuple2!21090) (t!41818 List!28314)) )
))
(declare-datatypes ((ListLongMap!18975 0))(
  ( (ListLongMap!18976 (toList!9503 List!28314)) )
))
(declare-fun lt!570641 () ListLongMap!18975)

(declare-fun lt!570647 () ListLongMap!18975)

(declare-fun -!2132 (ListLongMap!18975 (_ BitVec 64)) ListLongMap!18975)

(assert (=> b!1259968 (= lt!570641 (-!2132 lt!570647 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570646 () ListLongMap!18975)

(declare-fun lt!570645 () ListLongMap!18975)

(assert (=> b!1259968 (= (-!2132 lt!570646 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570645)))

(declare-datatypes ((Unit!41973 0))(
  ( (Unit!41974) )
))
(declare-fun lt!570640 () Unit!41973)

(declare-fun minValueBefore!43 () V!48361)

(declare-fun addThenRemoveForNewKeyIsSame!357 (ListLongMap!18975 (_ BitVec 64) V!48361) Unit!41973)

(assert (=> b!1259968 (= lt!570640 (addThenRemoveForNewKeyIsSame!357 lt!570645 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716923 () Bool)

(assert (=> b!1259968 e!716923))

(declare-fun res!839784 () Bool)

(assert (=> b!1259968 (=> (not res!839784) (not e!716923))))

(assert (=> b!1259968 (= res!839784 (= lt!570647 lt!570646))))

(declare-fun +!4200 (ListLongMap!18975 tuple2!21090) ListLongMap!18975)

(assert (=> b!1259968 (= lt!570646 (+!4200 lt!570645 (tuple2!21091 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570643 () ListLongMap!18975)

(declare-fun lt!570642 () tuple2!21090)

(assert (=> b!1259968 (= lt!570645 (+!4200 lt!570643 lt!570642))))

(declare-fun zeroValue!871 () V!48361)

(assert (=> b!1259968 (= lt!570642 (tuple2!21091 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48361)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82105 0))(
  ( (array!82106 (arr!39602 (Array (_ BitVec 32) (_ BitVec 64))) (size!40139 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82105)

(declare-datatypes ((ValueCell!15360 0))(
  ( (ValueCellFull!15360 (v!18889 V!48361)) (EmptyCell!15360) )
))
(declare-datatypes ((array!82107 0))(
  ( (array!82108 (arr!39603 (Array (_ BitVec 32) ValueCell!15360)) (size!40140 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82107)

(declare-fun lt!570644 () ListLongMap!18975)

(declare-fun getCurrentListMap!4636 (array!82105 array!82107 (_ BitVec 32) (_ BitVec 32) V!48361 V!48361 (_ BitVec 32) Int) ListLongMap!18975)

(assert (=> b!1259968 (= lt!570644 (getCurrentListMap!4636 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259968 (= lt!570647 (getCurrentListMap!4636 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839785 () Bool)

(declare-fun e!716920 () Bool)

(assert (=> start!105818 (=> (not res!839785) (not e!716920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105818 (= res!839785 (validMask!0 mask!1466))))

(assert (=> start!105818 e!716920))

(assert (=> start!105818 true))

(assert (=> start!105818 tp!95565))

(declare-fun tp_is_empty!32247 () Bool)

(assert (=> start!105818 tp_is_empty!32247))

(declare-fun array_inv!30103 (array!82105) Bool)

(assert (=> start!105818 (array_inv!30103 _keys!1118)))

(declare-fun e!716922 () Bool)

(declare-fun array_inv!30104 (array!82107) Bool)

(assert (=> start!105818 (and (array_inv!30104 _values!914) e!716922)))

(declare-fun mapNonEmpty!50170 () Bool)

(declare-fun mapRes!50170 () Bool)

(declare-fun tp!95564 () Bool)

(declare-fun e!716925 () Bool)

(assert (=> mapNonEmpty!50170 (= mapRes!50170 (and tp!95564 e!716925))))

(declare-fun mapKey!50170 () (_ BitVec 32))

(declare-fun mapValue!50170 () ValueCell!15360)

(declare-fun mapRest!50170 () (Array (_ BitVec 32) ValueCell!15360))

(assert (=> mapNonEmpty!50170 (= (arr!39603 _values!914) (store mapRest!50170 mapKey!50170 mapValue!50170))))

(declare-fun b!1259969 () Bool)

(declare-fun res!839781 () Bool)

(assert (=> b!1259969 (=> (not res!839781) (not e!716920))))

(assert (=> b!1259969 (= res!839781 (and (= (size!40140 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40139 _keys!1118) (size!40140 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259970 () Bool)

(declare-fun res!839786 () Bool)

(assert (=> b!1259970 (=> (not res!839786) (not e!716920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82105 (_ BitVec 32)) Bool)

(assert (=> b!1259970 (= res!839786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259971 () Bool)

(declare-fun res!839783 () Bool)

(assert (=> b!1259971 (=> (not res!839783) (not e!716920))))

(declare-datatypes ((List!28315 0))(
  ( (Nil!28312) (Cons!28311 (h!29520 (_ BitVec 64)) (t!41819 List!28315)) )
))
(declare-fun arrayNoDuplicates!0 (array!82105 (_ BitVec 32) List!28315) Bool)

(assert (=> b!1259971 (= res!839783 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28312))))

(declare-fun b!1259972 () Bool)

(declare-fun e!716919 () Bool)

(assert (=> b!1259972 (= e!716922 (and e!716919 mapRes!50170))))

(declare-fun condMapEmpty!50170 () Bool)

(declare-fun mapDefault!50170 () ValueCell!15360)

(assert (=> b!1259972 (= condMapEmpty!50170 (= (arr!39603 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15360)) mapDefault!50170)))))

(declare-fun b!1259973 () Bool)

(assert (=> b!1259973 (= e!716919 tp_is_empty!32247)))

(declare-fun b!1259974 () Bool)

(assert (=> b!1259974 (= e!716925 tp_is_empty!32247)))

(declare-fun mapIsEmpty!50170 () Bool)

(assert (=> mapIsEmpty!50170 mapRes!50170))

(declare-fun lt!570648 () ListLongMap!18975)

(declare-fun b!1259975 () Bool)

(assert (=> b!1259975 (= e!716923 (= lt!570644 (+!4200 lt!570648 lt!570642)))))

(declare-fun b!1259976 () Bool)

(assert (=> b!1259976 (= e!716920 (not e!716921))))

(declare-fun res!839782 () Bool)

(assert (=> b!1259976 (=> res!839782 e!716921)))

(assert (=> b!1259976 (= res!839782 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259976 (= lt!570643 lt!570648)))

(declare-fun lt!570639 () Unit!41973)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1164 (array!82105 array!82107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48361 V!48361 V!48361 V!48361 (_ BitVec 32) Int) Unit!41973)

(assert (=> b!1259976 (= lt!570639 (lemmaNoChangeToArrayThenSameMapNoExtras!1164 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5846 (array!82105 array!82107 (_ BitVec 32) (_ BitVec 32) V!48361 V!48361 (_ BitVec 32) Int) ListLongMap!18975)

(assert (=> b!1259976 (= lt!570648 (getCurrentListMapNoExtraKeys!5846 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259976 (= lt!570643 (getCurrentListMapNoExtraKeys!5846 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105818 res!839785) b!1259969))

(assert (= (and b!1259969 res!839781) b!1259970))

(assert (= (and b!1259970 res!839786) b!1259971))

(assert (= (and b!1259971 res!839783) b!1259976))

(assert (= (and b!1259976 (not res!839782)) b!1259968))

(assert (= (and b!1259968 res!839784) b!1259975))

(assert (= (and b!1259972 condMapEmpty!50170) mapIsEmpty!50170))

(assert (= (and b!1259972 (not condMapEmpty!50170)) mapNonEmpty!50170))

(get-info :version)

(assert (= (and mapNonEmpty!50170 ((_ is ValueCellFull!15360) mapValue!50170)) b!1259974))

(assert (= (and b!1259972 ((_ is ValueCellFull!15360) mapDefault!50170)) b!1259973))

(assert (= start!105818 b!1259972))

(declare-fun m!1160621 () Bool)

(assert (=> mapNonEmpty!50170 m!1160621))

(declare-fun m!1160623 () Bool)

(assert (=> start!105818 m!1160623))

(declare-fun m!1160625 () Bool)

(assert (=> start!105818 m!1160625))

(declare-fun m!1160627 () Bool)

(assert (=> start!105818 m!1160627))

(declare-fun m!1160629 () Bool)

(assert (=> b!1259968 m!1160629))

(declare-fun m!1160631 () Bool)

(assert (=> b!1259968 m!1160631))

(declare-fun m!1160633 () Bool)

(assert (=> b!1259968 m!1160633))

(declare-fun m!1160635 () Bool)

(assert (=> b!1259968 m!1160635))

(declare-fun m!1160637 () Bool)

(assert (=> b!1259968 m!1160637))

(declare-fun m!1160639 () Bool)

(assert (=> b!1259968 m!1160639))

(declare-fun m!1160641 () Bool)

(assert (=> b!1259968 m!1160641))

(declare-fun m!1160643 () Bool)

(assert (=> b!1259970 m!1160643))

(declare-fun m!1160645 () Bool)

(assert (=> b!1259975 m!1160645))

(declare-fun m!1160647 () Bool)

(assert (=> b!1259976 m!1160647))

(declare-fun m!1160649 () Bool)

(assert (=> b!1259976 m!1160649))

(declare-fun m!1160651 () Bool)

(assert (=> b!1259976 m!1160651))

(declare-fun m!1160653 () Bool)

(assert (=> b!1259971 m!1160653))

(check-sat (not b!1259968) (not b!1259971) b_and!45251 (not b_next!27345) tp_is_empty!32247 (not b!1259970) (not b!1259976) (not b!1259975) (not start!105818) (not mapNonEmpty!50170))
(check-sat b_and!45251 (not b_next!27345))
