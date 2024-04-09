; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104906 () Bool)

(assert start!104906)

(declare-fun b_free!26661 () Bool)

(declare-fun b_next!26661 () Bool)

(assert (=> start!104906 (= b_free!26661 (not b_next!26661))))

(declare-fun tp!93477 () Bool)

(declare-fun b_and!44447 () Bool)

(assert (=> start!104906 (= tp!93477 b_and!44447)))

(declare-fun b!1249822 () Bool)

(declare-fun e!709450 () Bool)

(declare-fun e!709452 () Bool)

(declare-fun mapRes!49108 () Bool)

(assert (=> b!1249822 (= e!709450 (and e!709452 mapRes!49108))))

(declare-fun condMapEmpty!49108 () Bool)

(declare-datatypes ((V!47449 0))(
  ( (V!47450 (val!15844 Int)) )
))
(declare-datatypes ((ValueCell!15018 0))(
  ( (ValueCellFull!15018 (v!18540 V!47449)) (EmptyCell!15018) )
))
(declare-datatypes ((array!80779 0))(
  ( (array!80780 (arr!38951 (Array (_ BitVec 32) ValueCell!15018)) (size!39488 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80779)

(declare-fun mapDefault!49108 () ValueCell!15018)

(assert (=> b!1249822 (= condMapEmpty!49108 (= (arr!38951 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15018)) mapDefault!49108)))))

(declare-fun b!1249823 () Bool)

(declare-fun res!833747 () Bool)

(declare-fun e!709449 () Bool)

(assert (=> b!1249823 (=> (not res!833747) (not e!709449))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80781 0))(
  ( (array!80782 (arr!38952 (Array (_ BitVec 32) (_ BitVec 64))) (size!39489 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80781)

(assert (=> b!1249823 (= res!833747 (and (= (size!39488 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39489 _keys!1118) (size!39488 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249824 () Bool)

(declare-fun e!709453 () Bool)

(assert (=> b!1249824 (= e!709453 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun lt!563879 () Bool)

(declare-fun zeroValue!871 () V!47449)

(declare-fun minValueBefore!43 () V!47449)

(declare-datatypes ((tuple2!20550 0))(
  ( (tuple2!20551 (_1!10285 (_ BitVec 64)) (_2!10285 V!47449)) )
))
(declare-datatypes ((List!27813 0))(
  ( (Nil!27810) (Cons!27809 (h!29018 tuple2!20550) (t!41293 List!27813)) )
))
(declare-datatypes ((ListLongMap!18435 0))(
  ( (ListLongMap!18436 (toList!9233 List!27813)) )
))
(declare-fun contains!7490 (ListLongMap!18435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4456 (array!80781 array!80779 (_ BitVec 32) (_ BitVec 32) V!47449 V!47449 (_ BitVec 32) Int) ListLongMap!18435)

(assert (=> b!1249824 (= lt!563879 (contains!7490 (getCurrentListMap!4456 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1249825 () Bool)

(declare-fun res!833745 () Bool)

(assert (=> b!1249825 (=> (not res!833745) (not e!709449))))

(declare-datatypes ((List!27814 0))(
  ( (Nil!27811) (Cons!27810 (h!29019 (_ BitVec 64)) (t!41294 List!27814)) )
))
(declare-fun arrayNoDuplicates!0 (array!80781 (_ BitVec 32) List!27814) Bool)

(assert (=> b!1249825 (= res!833745 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27811))))

(declare-fun b!1249826 () Bool)

(declare-fun tp_is_empty!31563 () Bool)

(assert (=> b!1249826 (= e!709452 tp_is_empty!31563)))

(declare-fun mapNonEmpty!49108 () Bool)

(declare-fun tp!93476 () Bool)

(declare-fun e!709448 () Bool)

(assert (=> mapNonEmpty!49108 (= mapRes!49108 (and tp!93476 e!709448))))

(declare-fun mapKey!49108 () (_ BitVec 32))

(declare-fun mapRest!49108 () (Array (_ BitVec 32) ValueCell!15018))

(declare-fun mapValue!49108 () ValueCell!15018)

(assert (=> mapNonEmpty!49108 (= (arr!38951 _values!914) (store mapRest!49108 mapKey!49108 mapValue!49108))))

(declare-fun b!1249827 () Bool)

(declare-fun res!833749 () Bool)

(assert (=> b!1249827 (=> (not res!833749) (not e!709449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80781 (_ BitVec 32)) Bool)

(assert (=> b!1249827 (= res!833749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49108 () Bool)

(assert (=> mapIsEmpty!49108 mapRes!49108))

(declare-fun res!833748 () Bool)

(assert (=> start!104906 (=> (not res!833748) (not e!709449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104906 (= res!833748 (validMask!0 mask!1466))))

(assert (=> start!104906 e!709449))

(assert (=> start!104906 true))

(assert (=> start!104906 tp!93477))

(assert (=> start!104906 tp_is_empty!31563))

(declare-fun array_inv!29649 (array!80781) Bool)

(assert (=> start!104906 (array_inv!29649 _keys!1118)))

(declare-fun array_inv!29650 (array!80779) Bool)

(assert (=> start!104906 (and (array_inv!29650 _values!914) e!709450)))

(declare-fun b!1249828 () Bool)

(assert (=> b!1249828 (= e!709448 tp_is_empty!31563)))

(declare-fun b!1249829 () Bool)

(assert (=> b!1249829 (= e!709449 (not e!709453))))

(declare-fun res!833746 () Bool)

(assert (=> b!1249829 (=> res!833746 e!709453)))

(assert (=> b!1249829 (= res!833746 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!563881 () ListLongMap!18435)

(declare-fun lt!563880 () ListLongMap!18435)

(assert (=> b!1249829 (= lt!563881 lt!563880)))

(declare-datatypes ((Unit!41449 0))(
  ( (Unit!41450) )
))
(declare-fun lt!563878 () Unit!41449)

(declare-fun minValueAfter!43 () V!47449)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!934 (array!80781 array!80779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47449 V!47449 V!47449 V!47449 (_ BitVec 32) Int) Unit!41449)

(assert (=> b!1249829 (= lt!563878 (lemmaNoChangeToArrayThenSameMapNoExtras!934 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5616 (array!80781 array!80779 (_ BitVec 32) (_ BitVec 32) V!47449 V!47449 (_ BitVec 32) Int) ListLongMap!18435)

(assert (=> b!1249829 (= lt!563880 (getCurrentListMapNoExtraKeys!5616 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249829 (= lt!563881 (getCurrentListMapNoExtraKeys!5616 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104906 res!833748) b!1249823))

(assert (= (and b!1249823 res!833747) b!1249827))

(assert (= (and b!1249827 res!833749) b!1249825))

(assert (= (and b!1249825 res!833745) b!1249829))

(assert (= (and b!1249829 (not res!833746)) b!1249824))

(assert (= (and b!1249822 condMapEmpty!49108) mapIsEmpty!49108))

(assert (= (and b!1249822 (not condMapEmpty!49108)) mapNonEmpty!49108))

(get-info :version)

(assert (= (and mapNonEmpty!49108 ((_ is ValueCellFull!15018) mapValue!49108)) b!1249828))

(assert (= (and b!1249822 ((_ is ValueCellFull!15018) mapDefault!49108)) b!1249826))

(assert (= start!104906 b!1249822))

(declare-fun m!1150719 () Bool)

(assert (=> b!1249827 m!1150719))

(declare-fun m!1150721 () Bool)

(assert (=> mapNonEmpty!49108 m!1150721))

(declare-fun m!1150723 () Bool)

(assert (=> b!1249824 m!1150723))

(assert (=> b!1249824 m!1150723))

(declare-fun m!1150725 () Bool)

(assert (=> b!1249824 m!1150725))

(declare-fun m!1150727 () Bool)

(assert (=> b!1249829 m!1150727))

(declare-fun m!1150729 () Bool)

(assert (=> b!1249829 m!1150729))

(declare-fun m!1150731 () Bool)

(assert (=> b!1249829 m!1150731))

(declare-fun m!1150733 () Bool)

(assert (=> start!104906 m!1150733))

(declare-fun m!1150735 () Bool)

(assert (=> start!104906 m!1150735))

(declare-fun m!1150737 () Bool)

(assert (=> start!104906 m!1150737))

(declare-fun m!1150739 () Bool)

(assert (=> b!1249825 m!1150739))

(check-sat (not mapNonEmpty!49108) (not b_next!26661) (not b!1249824) (not start!104906) b_and!44447 (not b!1249825) tp_is_empty!31563 (not b!1249829) (not b!1249827))
(check-sat b_and!44447 (not b_next!26661))
