; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105824 () Bool)

(assert start!105824)

(declare-fun b_free!27351 () Bool)

(declare-fun b_next!27351 () Bool)

(assert (=> start!105824 (= b_free!27351 (not b_next!27351))))

(declare-fun tp!95583 () Bool)

(declare-fun b_and!45257 () Bool)

(assert (=> start!105824 (= tp!95583 b_and!45257)))

(declare-fun b!1260049 () Bool)

(declare-fun e!716988 () Bool)

(assert (=> b!1260049 (= e!716988 true)))

(declare-datatypes ((V!48369 0))(
  ( (V!48370 (val!16189 Int)) )
))
(declare-datatypes ((tuple2!21092 0))(
  ( (tuple2!21093 (_1!10556 (_ BitVec 64)) (_2!10556 V!48369)) )
))
(declare-datatypes ((List!28316 0))(
  ( (Nil!28313) (Cons!28312 (h!29521 tuple2!21092) (t!41820 List!28316)) )
))
(declare-datatypes ((ListLongMap!18977 0))(
  ( (ListLongMap!18978 (toList!9504 List!28316)) )
))
(declare-fun lt!570735 () ListLongMap!18977)

(declare-fun lt!570736 () ListLongMap!18977)

(declare-fun -!2133 (ListLongMap!18977 (_ BitVec 64)) ListLongMap!18977)

(assert (=> b!1260049 (= lt!570735 (-!2133 lt!570736 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570732 () ListLongMap!18977)

(declare-fun lt!570738 () ListLongMap!18977)

(assert (=> b!1260049 (= (-!2133 lt!570732 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570738)))

(declare-datatypes ((Unit!41975 0))(
  ( (Unit!41976) )
))
(declare-fun lt!570731 () Unit!41975)

(declare-fun minValueBefore!43 () V!48369)

(declare-fun addThenRemoveForNewKeyIsSame!358 (ListLongMap!18977 (_ BitVec 64) V!48369) Unit!41975)

(assert (=> b!1260049 (= lt!570731 (addThenRemoveForNewKeyIsSame!358 lt!570738 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716986 () Bool)

(assert (=> b!1260049 e!716986))

(declare-fun res!839835 () Bool)

(assert (=> b!1260049 (=> (not res!839835) (not e!716986))))

(assert (=> b!1260049 (= res!839835 (= lt!570736 lt!570732))))

(declare-fun +!4201 (ListLongMap!18977 tuple2!21092) ListLongMap!18977)

(assert (=> b!1260049 (= lt!570732 (+!4201 lt!570738 (tuple2!21093 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570737 () ListLongMap!18977)

(declare-fun lt!570729 () tuple2!21092)

(assert (=> b!1260049 (= lt!570738 (+!4201 lt!570737 lt!570729))))

(declare-fun zeroValue!871 () V!48369)

(assert (=> b!1260049 (= lt!570729 (tuple2!21093 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48369)

(declare-fun lt!570733 () ListLongMap!18977)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82115 0))(
  ( (array!82116 (arr!39607 (Array (_ BitVec 32) (_ BitVec 64))) (size!40144 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82115)

(declare-datatypes ((ValueCell!15363 0))(
  ( (ValueCellFull!15363 (v!18892 V!48369)) (EmptyCell!15363) )
))
(declare-datatypes ((array!82117 0))(
  ( (array!82118 (arr!39608 (Array (_ BitVec 32) ValueCell!15363)) (size!40145 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82117)

(declare-fun getCurrentListMap!4637 (array!82115 array!82117 (_ BitVec 32) (_ BitVec 32) V!48369 V!48369 (_ BitVec 32) Int) ListLongMap!18977)

(assert (=> b!1260049 (= lt!570733 (getCurrentListMap!4637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260049 (= lt!570736 (getCurrentListMap!4637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260050 () Bool)

(declare-fun e!716985 () Bool)

(declare-fun tp_is_empty!32253 () Bool)

(assert (=> b!1260050 (= e!716985 tp_is_empty!32253)))

(declare-fun b!1260051 () Bool)

(declare-fun e!716983 () Bool)

(assert (=> b!1260051 (= e!716983 (not e!716988))))

(declare-fun res!839840 () Bool)

(assert (=> b!1260051 (=> res!839840 e!716988)))

(assert (=> b!1260051 (= res!839840 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!570730 () ListLongMap!18977)

(assert (=> b!1260051 (= lt!570737 lt!570730)))

(declare-fun lt!570734 () Unit!41975)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1165 (array!82115 array!82117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48369 V!48369 V!48369 V!48369 (_ BitVec 32) Int) Unit!41975)

(assert (=> b!1260051 (= lt!570734 (lemmaNoChangeToArrayThenSameMapNoExtras!1165 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5847 (array!82115 array!82117 (_ BitVec 32) (_ BitVec 32) V!48369 V!48369 (_ BitVec 32) Int) ListLongMap!18977)

(assert (=> b!1260051 (= lt!570730 (getCurrentListMapNoExtraKeys!5847 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260051 (= lt!570737 (getCurrentListMapNoExtraKeys!5847 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50179 () Bool)

(declare-fun mapRes!50179 () Bool)

(declare-fun tp!95582 () Bool)

(assert (=> mapNonEmpty!50179 (= mapRes!50179 (and tp!95582 e!716985))))

(declare-fun mapRest!50179 () (Array (_ BitVec 32) ValueCell!15363))

(declare-fun mapValue!50179 () ValueCell!15363)

(declare-fun mapKey!50179 () (_ BitVec 32))

(assert (=> mapNonEmpty!50179 (= (arr!39608 _values!914) (store mapRest!50179 mapKey!50179 mapValue!50179))))

(declare-fun b!1260052 () Bool)

(declare-fun res!839838 () Bool)

(assert (=> b!1260052 (=> (not res!839838) (not e!716983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82115 (_ BitVec 32)) Bool)

(assert (=> b!1260052 (= res!839838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!839836 () Bool)

(assert (=> start!105824 (=> (not res!839836) (not e!716983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105824 (= res!839836 (validMask!0 mask!1466))))

(assert (=> start!105824 e!716983))

(assert (=> start!105824 true))

(assert (=> start!105824 tp!95583))

(assert (=> start!105824 tp_is_empty!32253))

(declare-fun array_inv!30107 (array!82115) Bool)

(assert (=> start!105824 (array_inv!30107 _keys!1118)))

(declare-fun e!716982 () Bool)

(declare-fun array_inv!30108 (array!82117) Bool)

(assert (=> start!105824 (and (array_inv!30108 _values!914) e!716982)))

(declare-fun b!1260053 () Bool)

(declare-fun e!716984 () Bool)

(assert (=> b!1260053 (= e!716984 tp_is_empty!32253)))

(declare-fun b!1260054 () Bool)

(assert (=> b!1260054 (= e!716982 (and e!716984 mapRes!50179))))

(declare-fun condMapEmpty!50179 () Bool)

(declare-fun mapDefault!50179 () ValueCell!15363)

(assert (=> b!1260054 (= condMapEmpty!50179 (= (arr!39608 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15363)) mapDefault!50179)))))

(declare-fun mapIsEmpty!50179 () Bool)

(assert (=> mapIsEmpty!50179 mapRes!50179))

(declare-fun b!1260055 () Bool)

(declare-fun res!839837 () Bool)

(assert (=> b!1260055 (=> (not res!839837) (not e!716983))))

(declare-datatypes ((List!28317 0))(
  ( (Nil!28314) (Cons!28313 (h!29522 (_ BitVec 64)) (t!41821 List!28317)) )
))
(declare-fun arrayNoDuplicates!0 (array!82115 (_ BitVec 32) List!28317) Bool)

(assert (=> b!1260055 (= res!839837 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28314))))

(declare-fun b!1260056 () Bool)

(assert (=> b!1260056 (= e!716986 (= lt!570733 (+!4201 lt!570730 lt!570729)))))

(declare-fun b!1260057 () Bool)

(declare-fun res!839839 () Bool)

(assert (=> b!1260057 (=> (not res!839839) (not e!716983))))

(assert (=> b!1260057 (= res!839839 (and (= (size!40145 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40144 _keys!1118) (size!40145 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105824 res!839836) b!1260057))

(assert (= (and b!1260057 res!839839) b!1260052))

(assert (= (and b!1260052 res!839838) b!1260055))

(assert (= (and b!1260055 res!839837) b!1260051))

(assert (= (and b!1260051 (not res!839840)) b!1260049))

(assert (= (and b!1260049 res!839835) b!1260056))

(assert (= (and b!1260054 condMapEmpty!50179) mapIsEmpty!50179))

(assert (= (and b!1260054 (not condMapEmpty!50179)) mapNonEmpty!50179))

(get-info :version)

(assert (= (and mapNonEmpty!50179 ((_ is ValueCellFull!15363) mapValue!50179)) b!1260050))

(assert (= (and b!1260054 ((_ is ValueCellFull!15363) mapDefault!50179)) b!1260053))

(assert (= start!105824 b!1260054))

(declare-fun m!1160723 () Bool)

(assert (=> b!1260055 m!1160723))

(declare-fun m!1160725 () Bool)

(assert (=> b!1260056 m!1160725))

(declare-fun m!1160727 () Bool)

(assert (=> mapNonEmpty!50179 m!1160727))

(declare-fun m!1160729 () Bool)

(assert (=> b!1260049 m!1160729))

(declare-fun m!1160731 () Bool)

(assert (=> b!1260049 m!1160731))

(declare-fun m!1160733 () Bool)

(assert (=> b!1260049 m!1160733))

(declare-fun m!1160735 () Bool)

(assert (=> b!1260049 m!1160735))

(declare-fun m!1160737 () Bool)

(assert (=> b!1260049 m!1160737))

(declare-fun m!1160739 () Bool)

(assert (=> b!1260049 m!1160739))

(declare-fun m!1160741 () Bool)

(assert (=> b!1260049 m!1160741))

(declare-fun m!1160743 () Bool)

(assert (=> b!1260051 m!1160743))

(declare-fun m!1160745 () Bool)

(assert (=> b!1260051 m!1160745))

(declare-fun m!1160747 () Bool)

(assert (=> b!1260051 m!1160747))

(declare-fun m!1160749 () Bool)

(assert (=> start!105824 m!1160749))

(declare-fun m!1160751 () Bool)

(assert (=> start!105824 m!1160751))

(declare-fun m!1160753 () Bool)

(assert (=> start!105824 m!1160753))

(declare-fun m!1160755 () Bool)

(assert (=> b!1260052 m!1160755))

(check-sat (not b!1260049) (not start!105824) (not b!1260051) b_and!45257 (not b!1260055) (not b_next!27351) tp_is_empty!32253 (not b!1260056) (not mapNonEmpty!50179) (not b!1260052))
(check-sat b_and!45257 (not b_next!27351))
