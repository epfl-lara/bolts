; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105766 () Bool)

(assert start!105766)

(declare-fun b_free!27315 () Bool)

(declare-fun b_next!27315 () Bool)

(assert (=> start!105766 (= b_free!27315 (not b_next!27315))))

(declare-fun tp!95471 () Bool)

(declare-fun b_and!45209 () Bool)

(assert (=> start!105766 (= tp!95471 b_and!45209)))

(declare-fun b!1259375 () Bool)

(declare-fun res!839425 () Bool)

(declare-fun e!716489 () Bool)

(assert (=> b!1259375 (=> (not res!839425) (not e!716489))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82047 0))(
  ( (array!82048 (arr!39574 (Array (_ BitVec 32) (_ BitVec 64))) (size!40111 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82047)

(declare-datatypes ((V!48321 0))(
  ( (V!48322 (val!16171 Int)) )
))
(declare-datatypes ((ValueCell!15345 0))(
  ( (ValueCellFull!15345 (v!18873 V!48321)) (EmptyCell!15345) )
))
(declare-datatypes ((array!82049 0))(
  ( (array!82050 (arr!39575 (Array (_ BitVec 32) ValueCell!15345)) (size!40112 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82049)

(assert (=> b!1259375 (= res!839425 (and (= (size!40112 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40111 _keys!1118) (size!40112 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259376 () Bool)

(declare-fun res!839428 () Bool)

(assert (=> b!1259376 (=> (not res!839428) (not e!716489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82047 (_ BitVec 32)) Bool)

(assert (=> b!1259376 (= res!839428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259377 () Bool)

(declare-fun e!716488 () Bool)

(assert (=> b!1259377 (= e!716489 (not e!716488))))

(declare-fun res!839429 () Bool)

(assert (=> b!1259377 (=> res!839429 e!716488)))

(assert (=> b!1259377 (= res!839429 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21064 0))(
  ( (tuple2!21065 (_1!10542 (_ BitVec 64)) (_2!10542 V!48321)) )
))
(declare-datatypes ((List!28292 0))(
  ( (Nil!28289) (Cons!28288 (h!29497 tuple2!21064) (t!41794 List!28292)) )
))
(declare-datatypes ((ListLongMap!18949 0))(
  ( (ListLongMap!18950 (toList!9490 List!28292)) )
))
(declare-fun lt!570047 () ListLongMap!18949)

(declare-fun lt!570043 () ListLongMap!18949)

(assert (=> b!1259377 (= lt!570047 lt!570043)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41949 0))(
  ( (Unit!41950) )
))
(declare-fun lt!570046 () Unit!41949)

(declare-fun minValueAfter!43 () V!48321)

(declare-fun zeroValue!871 () V!48321)

(declare-fun minValueBefore!43 () V!48321)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1156 (array!82047 array!82049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48321 V!48321 V!48321 V!48321 (_ BitVec 32) Int) Unit!41949)

(assert (=> b!1259377 (= lt!570046 (lemmaNoChangeToArrayThenSameMapNoExtras!1156 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5838 (array!82047 array!82049 (_ BitVec 32) (_ BitVec 32) V!48321 V!48321 (_ BitVec 32) Int) ListLongMap!18949)

(assert (=> b!1259377 (= lt!570043 (getCurrentListMapNoExtraKeys!5838 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259377 (= lt!570047 (getCurrentListMapNoExtraKeys!5838 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259378 () Bool)

(declare-fun res!839426 () Bool)

(assert (=> b!1259378 (=> (not res!839426) (not e!716489))))

(declare-datatypes ((List!28293 0))(
  ( (Nil!28290) (Cons!28289 (h!29498 (_ BitVec 64)) (t!41795 List!28293)) )
))
(declare-fun arrayNoDuplicates!0 (array!82047 (_ BitVec 32) List!28293) Bool)

(assert (=> b!1259378 (= res!839426 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28290))))

(declare-fun res!839427 () Bool)

(assert (=> start!105766 (=> (not res!839427) (not e!716489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105766 (= res!839427 (validMask!0 mask!1466))))

(assert (=> start!105766 e!716489))

(assert (=> start!105766 true))

(assert (=> start!105766 tp!95471))

(declare-fun tp_is_empty!32217 () Bool)

(assert (=> start!105766 tp_is_empty!32217))

(declare-fun array_inv!30087 (array!82047) Bool)

(assert (=> start!105766 (array_inv!30087 _keys!1118)))

(declare-fun e!716483 () Bool)

(declare-fun array_inv!30088 (array!82049) Bool)

(assert (=> start!105766 (and (array_inv!30088 _values!914) e!716483)))

(declare-fun b!1259379 () Bool)

(declare-fun e!716486 () Bool)

(assert (=> b!1259379 (= e!716486 tp_is_empty!32217)))

(declare-fun b!1259380 () Bool)

(declare-fun e!716484 () Bool)

(assert (=> b!1259380 (= e!716484 tp_is_empty!32217)))

(declare-fun lt!570050 () tuple2!21064)

(declare-fun lt!570052 () ListLongMap!18949)

(declare-fun b!1259381 () Bool)

(declare-fun e!716487 () Bool)

(declare-fun +!4188 (ListLongMap!18949 tuple2!21064) ListLongMap!18949)

(assert (=> b!1259381 (= e!716487 (= lt!570052 (+!4188 lt!570043 lt!570050)))))

(declare-fun b!1259382 () Bool)

(assert (=> b!1259382 (= e!716488 true)))

(declare-fun lt!570051 () ListLongMap!18949)

(declare-fun lt!570045 () ListLongMap!18949)

(declare-fun -!2123 (ListLongMap!18949 (_ BitVec 64)) ListLongMap!18949)

(assert (=> b!1259382 (= lt!570051 (-!2123 lt!570045 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570044 () ListLongMap!18949)

(declare-fun lt!570049 () ListLongMap!18949)

(assert (=> b!1259382 (= (-!2123 lt!570044 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570049)))

(declare-fun lt!570048 () Unit!41949)

(declare-fun addThenRemoveForNewKeyIsSame!348 (ListLongMap!18949 (_ BitVec 64) V!48321) Unit!41949)

(assert (=> b!1259382 (= lt!570048 (addThenRemoveForNewKeyIsSame!348 lt!570049 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259382 e!716487))

(declare-fun res!839430 () Bool)

(assert (=> b!1259382 (=> (not res!839430) (not e!716487))))

(assert (=> b!1259382 (= res!839430 (= lt!570045 lt!570044))))

(assert (=> b!1259382 (= lt!570044 (+!4188 lt!570049 (tuple2!21065 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259382 (= lt!570049 (+!4188 lt!570047 lt!570050))))

(assert (=> b!1259382 (= lt!570050 (tuple2!21065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4627 (array!82047 array!82049 (_ BitVec 32) (_ BitVec 32) V!48321 V!48321 (_ BitVec 32) Int) ListLongMap!18949)

(assert (=> b!1259382 (= lt!570052 (getCurrentListMap!4627 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259382 (= lt!570045 (getCurrentListMap!4627 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259383 () Bool)

(declare-fun mapRes!50122 () Bool)

(assert (=> b!1259383 (= e!716483 (and e!716484 mapRes!50122))))

(declare-fun condMapEmpty!50122 () Bool)

(declare-fun mapDefault!50122 () ValueCell!15345)

(assert (=> b!1259383 (= condMapEmpty!50122 (= (arr!39575 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15345)) mapDefault!50122)))))

(declare-fun mapNonEmpty!50122 () Bool)

(declare-fun tp!95472 () Bool)

(assert (=> mapNonEmpty!50122 (= mapRes!50122 (and tp!95472 e!716486))))

(declare-fun mapKey!50122 () (_ BitVec 32))

(declare-fun mapRest!50122 () (Array (_ BitVec 32) ValueCell!15345))

(declare-fun mapValue!50122 () ValueCell!15345)

(assert (=> mapNonEmpty!50122 (= (arr!39575 _values!914) (store mapRest!50122 mapKey!50122 mapValue!50122))))

(declare-fun mapIsEmpty!50122 () Bool)

(assert (=> mapIsEmpty!50122 mapRes!50122))

(assert (= (and start!105766 res!839427) b!1259375))

(assert (= (and b!1259375 res!839425) b!1259376))

(assert (= (and b!1259376 res!839428) b!1259378))

(assert (= (and b!1259378 res!839426) b!1259377))

(assert (= (and b!1259377 (not res!839429)) b!1259382))

(assert (= (and b!1259382 res!839430) b!1259381))

(assert (= (and b!1259383 condMapEmpty!50122) mapIsEmpty!50122))

(assert (= (and b!1259383 (not condMapEmpty!50122)) mapNonEmpty!50122))

(get-info :version)

(assert (= (and mapNonEmpty!50122 ((_ is ValueCellFull!15345) mapValue!50122)) b!1259379))

(assert (= (and b!1259383 ((_ is ValueCellFull!15345) mapDefault!50122)) b!1259380))

(assert (= start!105766 b!1259383))

(declare-fun m!1159903 () Bool)

(assert (=> b!1259378 m!1159903))

(declare-fun m!1159905 () Bool)

(assert (=> b!1259381 m!1159905))

(declare-fun m!1159907 () Bool)

(assert (=> b!1259377 m!1159907))

(declare-fun m!1159909 () Bool)

(assert (=> b!1259377 m!1159909))

(declare-fun m!1159911 () Bool)

(assert (=> b!1259377 m!1159911))

(declare-fun m!1159913 () Bool)

(assert (=> start!105766 m!1159913))

(declare-fun m!1159915 () Bool)

(assert (=> start!105766 m!1159915))

(declare-fun m!1159917 () Bool)

(assert (=> start!105766 m!1159917))

(declare-fun m!1159919 () Bool)

(assert (=> b!1259382 m!1159919))

(declare-fun m!1159921 () Bool)

(assert (=> b!1259382 m!1159921))

(declare-fun m!1159923 () Bool)

(assert (=> b!1259382 m!1159923))

(declare-fun m!1159925 () Bool)

(assert (=> b!1259382 m!1159925))

(declare-fun m!1159927 () Bool)

(assert (=> b!1259382 m!1159927))

(declare-fun m!1159929 () Bool)

(assert (=> b!1259382 m!1159929))

(declare-fun m!1159931 () Bool)

(assert (=> b!1259382 m!1159931))

(declare-fun m!1159933 () Bool)

(assert (=> mapNonEmpty!50122 m!1159933))

(declare-fun m!1159935 () Bool)

(assert (=> b!1259376 m!1159935))

(check-sat (not start!105766) (not b!1259378) b_and!45209 tp_is_empty!32217 (not b!1259377) (not b_next!27315) (not b!1259381) (not b!1259376) (not b!1259382) (not mapNonEmpty!50122))
(check-sat b_and!45209 (not b_next!27315))
