; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105088 () Bool)

(assert start!105088)

(declare-fun b_free!26799 () Bool)

(declare-fun b_next!26799 () Bool)

(assert (=> start!105088 (= b_free!26799 (not b_next!26799))))

(declare-fun tp!93897 () Bool)

(declare-fun b_and!44605 () Bool)

(assert (=> start!105088 (= tp!93897 b_and!44605)))

(declare-fun b!1251913 () Bool)

(declare-fun e!711014 () Bool)

(declare-fun tp_is_empty!31701 () Bool)

(assert (=> b!1251913 (= e!711014 tp_is_empty!31701)))

(declare-fun b!1251914 () Bool)

(declare-fun e!711013 () Bool)

(declare-fun mapRes!49321 () Bool)

(assert (=> b!1251914 (= e!711013 (and e!711014 mapRes!49321))))

(declare-fun condMapEmpty!49321 () Bool)

(declare-datatypes ((V!47633 0))(
  ( (V!47634 (val!15913 Int)) )
))
(declare-datatypes ((ValueCell!15087 0))(
  ( (ValueCellFull!15087 (v!18611 V!47633)) (EmptyCell!15087) )
))
(declare-datatypes ((array!81045 0))(
  ( (array!81046 (arr!39082 (Array (_ BitVec 32) ValueCell!15087)) (size!39619 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81045)

(declare-fun mapDefault!49321 () ValueCell!15087)

(assert (=> b!1251914 (= condMapEmpty!49321 (= (arr!39082 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15087)) mapDefault!49321)))))

(declare-fun mapNonEmpty!49321 () Bool)

(declare-fun tp!93896 () Bool)

(declare-fun e!711012 () Bool)

(assert (=> mapNonEmpty!49321 (= mapRes!49321 (and tp!93896 e!711012))))

(declare-fun mapRest!49321 () (Array (_ BitVec 32) ValueCell!15087))

(declare-fun mapKey!49321 () (_ BitVec 32))

(declare-fun mapValue!49321 () ValueCell!15087)

(assert (=> mapNonEmpty!49321 (= (arr!39082 _values!914) (store mapRest!49321 mapKey!49321 mapValue!49321))))

(declare-fun b!1251915 () Bool)

(declare-fun res!835024 () Bool)

(declare-fun e!711015 () Bool)

(assert (=> b!1251915 (=> (not res!835024) (not e!711015))))

(declare-datatypes ((array!81047 0))(
  ( (array!81048 (arr!39083 (Array (_ BitVec 32) (_ BitVec 64))) (size!39620 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81047)

(declare-datatypes ((List!27916 0))(
  ( (Nil!27913) (Cons!27912 (h!29121 (_ BitVec 64)) (t!41400 List!27916)) )
))
(declare-fun arrayNoDuplicates!0 (array!81047 (_ BitVec 32) List!27916) Bool)

(assert (=> b!1251915 (= res!835024 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27913))))

(declare-fun b!1251916 () Bool)

(declare-fun res!835025 () Bool)

(assert (=> b!1251916 (=> (not res!835025) (not e!711015))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81047 (_ BitVec 32)) Bool)

(assert (=> b!1251916 (= res!835025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49321 () Bool)

(assert (=> mapIsEmpty!49321 mapRes!49321))

(declare-fun b!1251917 () Bool)

(declare-fun res!835026 () Bool)

(assert (=> b!1251917 (=> (not res!835026) (not e!711015))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251917 (= res!835026 (and (= (size!39619 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39620 _keys!1118) (size!39619 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!835023 () Bool)

(assert (=> start!105088 (=> (not res!835023) (not e!711015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105088 (= res!835023 (validMask!0 mask!1466))))

(assert (=> start!105088 e!711015))

(assert (=> start!105088 true))

(assert (=> start!105088 tp!93897))

(assert (=> start!105088 tp_is_empty!31701))

(declare-fun array_inv!29739 (array!81047) Bool)

(assert (=> start!105088 (array_inv!29739 _keys!1118)))

(declare-fun array_inv!29740 (array!81045) Bool)

(assert (=> start!105088 (and (array_inv!29740 _values!914) e!711013)))

(declare-fun b!1251918 () Bool)

(assert (=> b!1251918 (= e!711012 tp_is_empty!31701)))

(declare-fun b!1251919 () Bool)

(assert (=> b!1251919 (= e!711015 (not true))))

(declare-datatypes ((tuple2!20666 0))(
  ( (tuple2!20667 (_1!10343 (_ BitVec 64)) (_2!10343 V!47633)) )
))
(declare-datatypes ((List!27917 0))(
  ( (Nil!27914) (Cons!27913 (h!29122 tuple2!20666) (t!41401 List!27917)) )
))
(declare-datatypes ((ListLongMap!18551 0))(
  ( (ListLongMap!18552 (toList!9291 List!27917)) )
))
(declare-fun lt!565076 () ListLongMap!18551)

(declare-fun lt!565077 () ListLongMap!18551)

(assert (=> b!1251919 (= lt!565076 lt!565077)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47633)

(declare-fun zeroValue!871 () V!47633)

(declare-fun minValueBefore!43 () V!47633)

(declare-datatypes ((Unit!41559 0))(
  ( (Unit!41560) )
))
(declare-fun lt!565075 () Unit!41559)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!982 (array!81047 array!81045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47633 V!47633 V!47633 V!47633 (_ BitVec 32) Int) Unit!41559)

(assert (=> b!1251919 (= lt!565075 (lemmaNoChangeToArrayThenSameMapNoExtras!982 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5664 (array!81047 array!81045 (_ BitVec 32) (_ BitVec 32) V!47633 V!47633 (_ BitVec 32) Int) ListLongMap!18551)

(assert (=> b!1251919 (= lt!565077 (getCurrentListMapNoExtraKeys!5664 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251919 (= lt!565076 (getCurrentListMapNoExtraKeys!5664 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105088 res!835023) b!1251917))

(assert (= (and b!1251917 res!835026) b!1251916))

(assert (= (and b!1251916 res!835025) b!1251915))

(assert (= (and b!1251915 res!835024) b!1251919))

(assert (= (and b!1251914 condMapEmpty!49321) mapIsEmpty!49321))

(assert (= (and b!1251914 (not condMapEmpty!49321)) mapNonEmpty!49321))

(get-info :version)

(assert (= (and mapNonEmpty!49321 ((_ is ValueCellFull!15087) mapValue!49321)) b!1251918))

(assert (= (and b!1251914 ((_ is ValueCellFull!15087) mapDefault!49321)) b!1251913))

(assert (= start!105088 b!1251914))

(declare-fun m!1152653 () Bool)

(assert (=> start!105088 m!1152653))

(declare-fun m!1152655 () Bool)

(assert (=> start!105088 m!1152655))

(declare-fun m!1152657 () Bool)

(assert (=> start!105088 m!1152657))

(declare-fun m!1152659 () Bool)

(assert (=> b!1251919 m!1152659))

(declare-fun m!1152661 () Bool)

(assert (=> b!1251919 m!1152661))

(declare-fun m!1152663 () Bool)

(assert (=> b!1251919 m!1152663))

(declare-fun m!1152665 () Bool)

(assert (=> b!1251916 m!1152665))

(declare-fun m!1152667 () Bool)

(assert (=> mapNonEmpty!49321 m!1152667))

(declare-fun m!1152669 () Bool)

(assert (=> b!1251915 m!1152669))

(check-sat (not b_next!26799) b_and!44605 (not b!1251915) (not mapNonEmpty!49321) (not b!1251916) (not start!105088) (not b!1251919) tp_is_empty!31701)
(check-sat b_and!44605 (not b_next!26799))
