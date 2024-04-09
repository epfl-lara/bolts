; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105030 () Bool)

(assert start!105030)

(declare-fun b_free!26763 () Bool)

(declare-fun b_next!26763 () Bool)

(assert (=> start!105030 (= b_free!26763 (not b_next!26763))))

(declare-fun tp!93786 () Bool)

(declare-fun b_and!44559 () Bool)

(assert (=> start!105030 (= tp!93786 b_and!44559)))

(declare-fun mapNonEmpty!49264 () Bool)

(declare-fun mapRes!49264 () Bool)

(declare-fun tp!93785 () Bool)

(declare-fun e!710621 () Bool)

(assert (=> mapNonEmpty!49264 (= mapRes!49264 (and tp!93785 e!710621))))

(declare-fun mapKey!49264 () (_ BitVec 32))

(declare-datatypes ((V!47585 0))(
  ( (V!47586 (val!15895 Int)) )
))
(declare-datatypes ((ValueCell!15069 0))(
  ( (ValueCellFull!15069 (v!18592 V!47585)) (EmptyCell!15069) )
))
(declare-datatypes ((array!80975 0))(
  ( (array!80976 (arr!39048 (Array (_ BitVec 32) ValueCell!15069)) (size!39585 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80975)

(declare-fun mapRest!49264 () (Array (_ BitVec 32) ValueCell!15069))

(declare-fun mapValue!49264 () ValueCell!15069)

(assert (=> mapNonEmpty!49264 (= (arr!39048 _values!914) (store mapRest!49264 mapKey!49264 mapValue!49264))))

(declare-fun b!1251352 () Bool)

(declare-fun e!710618 () Bool)

(assert (=> b!1251352 (= e!710618 true)))

(declare-datatypes ((tuple2!20642 0))(
  ( (tuple2!20643 (_1!10331 (_ BitVec 64)) (_2!10331 V!47585)) )
))
(declare-datatypes ((List!27893 0))(
  ( (Nil!27890) (Cons!27889 (h!29098 tuple2!20642) (t!41375 List!27893)) )
))
(declare-datatypes ((ListLongMap!18527 0))(
  ( (ListLongMap!18528 (toList!9279 List!27893)) )
))
(declare-fun lt!564765 () ListLongMap!18527)

(declare-fun -!2036 (ListLongMap!18527 (_ BitVec 64)) ListLongMap!18527)

(assert (=> b!1251352 (= (-!2036 lt!564765 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564765)))

(declare-datatypes ((Unit!41533 0))(
  ( (Unit!41534) )
))
(declare-fun lt!564764 () Unit!41533)

(declare-fun removeNotPresentStillSame!103 (ListLongMap!18527 (_ BitVec 64)) Unit!41533)

(assert (=> b!1251352 (= lt!564764 (removeNotPresentStillSame!103 lt!564765 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!49264 () Bool)

(assert (=> mapIsEmpty!49264 mapRes!49264))

(declare-fun b!1251353 () Bool)

(declare-fun e!710615 () Bool)

(assert (=> b!1251353 (= e!710615 e!710618)))

(declare-fun res!834720 () Bool)

(assert (=> b!1251353 (=> res!834720 e!710618)))

(declare-fun contains!7528 (ListLongMap!18527 (_ BitVec 64)) Bool)

(assert (=> b!1251353 (= res!834720 (contains!7528 lt!564765 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47585)

(declare-datatypes ((array!80977 0))(
  ( (array!80978 (arr!39049 (Array (_ BitVec 32) (_ BitVec 64))) (size!39586 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80977)

(declare-fun minValueBefore!43 () V!47585)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4493 (array!80977 array!80975 (_ BitVec 32) (_ BitVec 32) V!47585 V!47585 (_ BitVec 32) Int) ListLongMap!18527)

(assert (=> b!1251353 (= lt!564765 (getCurrentListMap!4493 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251354 () Bool)

(declare-fun res!834722 () Bool)

(declare-fun e!710617 () Bool)

(assert (=> b!1251354 (=> (not res!834722) (not e!710617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80977 (_ BitVec 32)) Bool)

(assert (=> b!1251354 (= res!834722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251355 () Bool)

(declare-fun res!834721 () Bool)

(assert (=> b!1251355 (=> (not res!834721) (not e!710617))))

(declare-datatypes ((List!27894 0))(
  ( (Nil!27891) (Cons!27890 (h!29099 (_ BitVec 64)) (t!41376 List!27894)) )
))
(declare-fun arrayNoDuplicates!0 (array!80977 (_ BitVec 32) List!27894) Bool)

(assert (=> b!1251355 (= res!834721 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27891))))

(declare-fun res!834723 () Bool)

(assert (=> start!105030 (=> (not res!834723) (not e!710617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105030 (= res!834723 (validMask!0 mask!1466))))

(assert (=> start!105030 e!710617))

(assert (=> start!105030 true))

(assert (=> start!105030 tp!93786))

(declare-fun tp_is_empty!31665 () Bool)

(assert (=> start!105030 tp_is_empty!31665))

(declare-fun array_inv!29715 (array!80977) Bool)

(assert (=> start!105030 (array_inv!29715 _keys!1118)))

(declare-fun e!710616 () Bool)

(declare-fun array_inv!29716 (array!80975) Bool)

(assert (=> start!105030 (and (array_inv!29716 _values!914) e!710616)))

(declare-fun b!1251356 () Bool)

(declare-fun e!710619 () Bool)

(assert (=> b!1251356 (= e!710619 tp_is_empty!31665)))

(declare-fun b!1251357 () Bool)

(assert (=> b!1251357 (= e!710617 (not e!710615))))

(declare-fun res!834725 () Bool)

(assert (=> b!1251357 (=> res!834725 e!710615)))

(assert (=> b!1251357 (= res!834725 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564766 () ListLongMap!18527)

(declare-fun lt!564767 () ListLongMap!18527)

(assert (=> b!1251357 (= lt!564766 lt!564767)))

(declare-fun minValueAfter!43 () V!47585)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!564763 () Unit!41533)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!970 (array!80977 array!80975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47585 V!47585 V!47585 V!47585 (_ BitVec 32) Int) Unit!41533)

(assert (=> b!1251357 (= lt!564763 (lemmaNoChangeToArrayThenSameMapNoExtras!970 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5652 (array!80977 array!80975 (_ BitVec 32) (_ BitVec 32) V!47585 V!47585 (_ BitVec 32) Int) ListLongMap!18527)

(assert (=> b!1251357 (= lt!564767 (getCurrentListMapNoExtraKeys!5652 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251357 (= lt!564766 (getCurrentListMapNoExtraKeys!5652 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251358 () Bool)

(declare-fun res!834724 () Bool)

(assert (=> b!1251358 (=> (not res!834724) (not e!710617))))

(assert (=> b!1251358 (= res!834724 (and (= (size!39585 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39586 _keys!1118) (size!39585 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251359 () Bool)

(assert (=> b!1251359 (= e!710616 (and e!710619 mapRes!49264))))

(declare-fun condMapEmpty!49264 () Bool)

(declare-fun mapDefault!49264 () ValueCell!15069)

(assert (=> b!1251359 (= condMapEmpty!49264 (= (arr!39048 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15069)) mapDefault!49264)))))

(declare-fun b!1251360 () Bool)

(assert (=> b!1251360 (= e!710621 tp_is_empty!31665)))

(assert (= (and start!105030 res!834723) b!1251358))

(assert (= (and b!1251358 res!834724) b!1251354))

(assert (= (and b!1251354 res!834722) b!1251355))

(assert (= (and b!1251355 res!834721) b!1251357))

(assert (= (and b!1251357 (not res!834725)) b!1251353))

(assert (= (and b!1251353 (not res!834720)) b!1251352))

(assert (= (and b!1251359 condMapEmpty!49264) mapIsEmpty!49264))

(assert (= (and b!1251359 (not condMapEmpty!49264)) mapNonEmpty!49264))

(get-info :version)

(assert (= (and mapNonEmpty!49264 ((_ is ValueCellFull!15069) mapValue!49264)) b!1251360))

(assert (= (and b!1251359 ((_ is ValueCellFull!15069) mapDefault!49264)) b!1251356))

(assert (= start!105030 b!1251359))

(declare-fun m!1152163 () Bool)

(assert (=> b!1251357 m!1152163))

(declare-fun m!1152165 () Bool)

(assert (=> b!1251357 m!1152165))

(declare-fun m!1152167 () Bool)

(assert (=> b!1251357 m!1152167))

(declare-fun m!1152169 () Bool)

(assert (=> start!105030 m!1152169))

(declare-fun m!1152171 () Bool)

(assert (=> start!105030 m!1152171))

(declare-fun m!1152173 () Bool)

(assert (=> start!105030 m!1152173))

(declare-fun m!1152175 () Bool)

(assert (=> mapNonEmpty!49264 m!1152175))

(declare-fun m!1152177 () Bool)

(assert (=> b!1251355 m!1152177))

(declare-fun m!1152179 () Bool)

(assert (=> b!1251354 m!1152179))

(declare-fun m!1152181 () Bool)

(assert (=> b!1251352 m!1152181))

(declare-fun m!1152183 () Bool)

(assert (=> b!1251352 m!1152183))

(declare-fun m!1152185 () Bool)

(assert (=> b!1251353 m!1152185))

(declare-fun m!1152187 () Bool)

(assert (=> b!1251353 m!1152187))

(check-sat (not b!1251352) (not b!1251355) (not b!1251357) (not mapNonEmpty!49264) (not b!1251353) (not b!1251354) (not b_next!26763) tp_is_empty!31665 b_and!44559 (not start!105030))
(check-sat b_and!44559 (not b_next!26763))
