; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104918 () Bool)

(assert start!104918)

(declare-fun b_free!26673 () Bool)

(declare-fun b_next!26673 () Bool)

(assert (=> start!104918 (= b_free!26673 (not b_next!26673))))

(declare-fun tp!93513 () Bool)

(declare-fun b_and!44459 () Bool)

(assert (=> start!104918 (= tp!93513 b_and!44459)))

(declare-fun res!833853 () Bool)

(declare-fun e!709576 () Bool)

(assert (=> start!104918 (=> (not res!833853) (not e!709576))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104918 (= res!833853 (validMask!0 mask!1466))))

(assert (=> start!104918 e!709576))

(assert (=> start!104918 true))

(assert (=> start!104918 tp!93513))

(declare-fun tp_is_empty!31575 () Bool)

(assert (=> start!104918 tp_is_empty!31575))

(declare-datatypes ((array!80803 0))(
  ( (array!80804 (arr!38963 (Array (_ BitVec 32) (_ BitVec 64))) (size!39500 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80803)

(declare-fun array_inv!29657 (array!80803) Bool)

(assert (=> start!104918 (array_inv!29657 _keys!1118)))

(declare-datatypes ((V!47465 0))(
  ( (V!47466 (val!15850 Int)) )
))
(declare-datatypes ((ValueCell!15024 0))(
  ( (ValueCellFull!15024 (v!18546 V!47465)) (EmptyCell!15024) )
))
(declare-datatypes ((array!80805 0))(
  ( (array!80806 (arr!38964 (Array (_ BitVec 32) ValueCell!15024)) (size!39501 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80805)

(declare-fun e!709573 () Bool)

(declare-fun array_inv!29658 (array!80805) Bool)

(assert (=> start!104918 (and (array_inv!29658 _values!914) e!709573)))

(declare-fun b!1249980 () Bool)

(declare-fun res!833850 () Bool)

(assert (=> b!1249980 (=> (not res!833850) (not e!709576))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1249980 (= res!833850 (and (= (size!39501 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39500 _keys!1118) (size!39501 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49126 () Bool)

(declare-fun mapRes!49126 () Bool)

(declare-fun tp!93512 () Bool)

(declare-fun e!709571 () Bool)

(assert (=> mapNonEmpty!49126 (= mapRes!49126 (and tp!93512 e!709571))))

(declare-fun mapKey!49126 () (_ BitVec 32))

(declare-fun mapRest!49126 () (Array (_ BitVec 32) ValueCell!15024))

(declare-fun mapValue!49126 () ValueCell!15024)

(assert (=> mapNonEmpty!49126 (= (arr!38964 _values!914) (store mapRest!49126 mapKey!49126 mapValue!49126))))

(declare-fun b!1249981 () Bool)

(declare-fun res!833849 () Bool)

(assert (=> b!1249981 (=> (not res!833849) (not e!709576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80803 (_ BitVec 32)) Bool)

(assert (=> b!1249981 (= res!833849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49126 () Bool)

(assert (=> mapIsEmpty!49126 mapRes!49126))

(declare-fun b!1249982 () Bool)

(declare-fun e!709574 () Bool)

(assert (=> b!1249982 (= e!709576 (not e!709574))))

(declare-fun res!833851 () Bool)

(assert (=> b!1249982 (=> res!833851 e!709574)))

(assert (=> b!1249982 (= res!833851 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20562 0))(
  ( (tuple2!20563 (_1!10291 (_ BitVec 64)) (_2!10291 V!47465)) )
))
(declare-datatypes ((List!27822 0))(
  ( (Nil!27819) (Cons!27818 (h!29027 tuple2!20562) (t!41302 List!27822)) )
))
(declare-datatypes ((ListLongMap!18447 0))(
  ( (ListLongMap!18448 (toList!9239 List!27822)) )
))
(declare-fun lt!563967 () ListLongMap!18447)

(declare-fun lt!563965 () ListLongMap!18447)

(assert (=> b!1249982 (= lt!563967 lt!563965)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41461 0))(
  ( (Unit!41462) )
))
(declare-fun lt!563968 () Unit!41461)

(declare-fun minValueAfter!43 () V!47465)

(declare-fun zeroValue!871 () V!47465)

(declare-fun minValueBefore!43 () V!47465)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!940 (array!80803 array!80805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47465 V!47465 V!47465 V!47465 (_ BitVec 32) Int) Unit!41461)

(assert (=> b!1249982 (= lt!563968 (lemmaNoChangeToArrayThenSameMapNoExtras!940 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5622 (array!80803 array!80805 (_ BitVec 32) (_ BitVec 32) V!47465 V!47465 (_ BitVec 32) Int) ListLongMap!18447)

(assert (=> b!1249982 (= lt!563965 (getCurrentListMapNoExtraKeys!5622 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249982 (= lt!563967 (getCurrentListMapNoExtraKeys!5622 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249983 () Bool)

(declare-fun e!709572 () Bool)

(assert (=> b!1249983 (= e!709572 tp_is_empty!31575)))

(declare-fun b!1249984 () Bool)

(declare-fun e!709570 () Bool)

(assert (=> b!1249984 (= e!709574 e!709570)))

(declare-fun res!833854 () Bool)

(assert (=> b!1249984 (=> res!833854 e!709570)))

(declare-fun lt!563964 () ListLongMap!18447)

(declare-fun contains!7495 (ListLongMap!18447 (_ BitVec 64)) Bool)

(assert (=> b!1249984 (= res!833854 (contains!7495 lt!563964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4461 (array!80803 array!80805 (_ BitVec 32) (_ BitVec 32) V!47465 V!47465 (_ BitVec 32) Int) ListLongMap!18447)

(assert (=> b!1249984 (= lt!563964 (getCurrentListMap!4461 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249985 () Bool)

(assert (=> b!1249985 (= e!709573 (and e!709572 mapRes!49126))))

(declare-fun condMapEmpty!49126 () Bool)

(declare-fun mapDefault!49126 () ValueCell!15024)

(assert (=> b!1249985 (= condMapEmpty!49126 (= (arr!38964 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15024)) mapDefault!49126)))))

(declare-fun b!1249986 () Bool)

(assert (=> b!1249986 (= e!709571 tp_is_empty!31575)))

(declare-fun b!1249987 () Bool)

(declare-fun res!833852 () Bool)

(assert (=> b!1249987 (=> (not res!833852) (not e!709576))))

(declare-datatypes ((List!27823 0))(
  ( (Nil!27820) (Cons!27819 (h!29028 (_ BitVec 64)) (t!41303 List!27823)) )
))
(declare-fun arrayNoDuplicates!0 (array!80803 (_ BitVec 32) List!27823) Bool)

(assert (=> b!1249987 (= res!833852 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27820))))

(declare-fun b!1249988 () Bool)

(assert (=> b!1249988 (= e!709570 true)))

(declare-fun -!2011 (ListLongMap!18447 (_ BitVec 64)) ListLongMap!18447)

(assert (=> b!1249988 (= (-!2011 lt!563964 #b1000000000000000000000000000000000000000000000000000000000000000) lt!563964)))

(declare-fun lt!563966 () Unit!41461)

(declare-fun removeNotPresentStillSame!78 (ListLongMap!18447 (_ BitVec 64)) Unit!41461)

(assert (=> b!1249988 (= lt!563966 (removeNotPresentStillSame!78 lt!563964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104918 res!833853) b!1249980))

(assert (= (and b!1249980 res!833850) b!1249981))

(assert (= (and b!1249981 res!833849) b!1249987))

(assert (= (and b!1249987 res!833852) b!1249982))

(assert (= (and b!1249982 (not res!833851)) b!1249984))

(assert (= (and b!1249984 (not res!833854)) b!1249988))

(assert (= (and b!1249985 condMapEmpty!49126) mapIsEmpty!49126))

(assert (= (and b!1249985 (not condMapEmpty!49126)) mapNonEmpty!49126))

(get-info :version)

(assert (= (and mapNonEmpty!49126 ((_ is ValueCellFull!15024) mapValue!49126)) b!1249986))

(assert (= (and b!1249985 ((_ is ValueCellFull!15024) mapDefault!49126)) b!1249983))

(assert (= start!104918 b!1249985))

(declare-fun m!1150867 () Bool)

(assert (=> b!1249982 m!1150867))

(declare-fun m!1150869 () Bool)

(assert (=> b!1249982 m!1150869))

(declare-fun m!1150871 () Bool)

(assert (=> b!1249982 m!1150871))

(declare-fun m!1150873 () Bool)

(assert (=> start!104918 m!1150873))

(declare-fun m!1150875 () Bool)

(assert (=> start!104918 m!1150875))

(declare-fun m!1150877 () Bool)

(assert (=> start!104918 m!1150877))

(declare-fun m!1150879 () Bool)

(assert (=> b!1249981 m!1150879))

(declare-fun m!1150881 () Bool)

(assert (=> mapNonEmpty!49126 m!1150881))

(declare-fun m!1150883 () Bool)

(assert (=> b!1249984 m!1150883))

(declare-fun m!1150885 () Bool)

(assert (=> b!1249984 m!1150885))

(declare-fun m!1150887 () Bool)

(assert (=> b!1249987 m!1150887))

(declare-fun m!1150889 () Bool)

(assert (=> b!1249988 m!1150889))

(declare-fun m!1150891 () Bool)

(assert (=> b!1249988 m!1150891))

(check-sat (not mapNonEmpty!49126) tp_is_empty!31575 (not b!1249984) (not b!1249988) (not start!104918) (not b!1249982) (not b!1249981) b_and!44459 (not b!1249987) (not b_next!26673))
(check-sat b_and!44459 (not b_next!26673))
