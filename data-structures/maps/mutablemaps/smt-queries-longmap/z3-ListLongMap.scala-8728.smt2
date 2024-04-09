; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105900 () Bool)

(assert start!105900)

(declare-fun b_free!27405 () Bool)

(declare-fun b_next!27405 () Bool)

(assert (=> start!105900 (= b_free!27405 (not b_next!27405))))

(declare-fun tp!95748 () Bool)

(declare-fun b_and!45323 () Bool)

(assert (=> start!105900 (= tp!95748 b_and!45323)))

(declare-fun b!1260902 () Bool)

(declare-fun res!840345 () Bool)

(declare-fun e!717609 () Bool)

(assert (=> b!1260902 (=> (not res!840345) (not e!717609))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82219 0))(
  ( (array!82220 (arr!39658 (Array (_ BitVec 32) (_ BitVec 64))) (size!40195 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82219)

(declare-datatypes ((V!48441 0))(
  ( (V!48442 (val!16216 Int)) )
))
(declare-datatypes ((ValueCell!15390 0))(
  ( (ValueCellFull!15390 (v!18920 V!48441)) (EmptyCell!15390) )
))
(declare-datatypes ((array!82221 0))(
  ( (array!82222 (arr!39659 (Array (_ BitVec 32) ValueCell!15390)) (size!40196 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82221)

(assert (=> b!1260902 (= res!840345 (and (= (size!40196 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40195 _keys!1118) (size!40196 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50263 () Bool)

(declare-fun mapRes!50263 () Bool)

(declare-fun tp!95747 () Bool)

(declare-fun e!717607 () Bool)

(assert (=> mapNonEmpty!50263 (= mapRes!50263 (and tp!95747 e!717607))))

(declare-fun mapKey!50263 () (_ BitVec 32))

(declare-fun mapValue!50263 () ValueCell!15390)

(declare-fun mapRest!50263 () (Array (_ BitVec 32) ValueCell!15390))

(assert (=> mapNonEmpty!50263 (= (arr!39659 _values!914) (store mapRest!50263 mapKey!50263 mapValue!50263))))

(declare-fun mapIsEmpty!50263 () Bool)

(assert (=> mapIsEmpty!50263 mapRes!50263))

(declare-fun res!840344 () Bool)

(assert (=> start!105900 (=> (not res!840344) (not e!717609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105900 (= res!840344 (validMask!0 mask!1466))))

(assert (=> start!105900 e!717609))

(assert (=> start!105900 true))

(assert (=> start!105900 tp!95748))

(declare-fun tp_is_empty!32307 () Bool)

(assert (=> start!105900 tp_is_empty!32307))

(declare-fun array_inv!30145 (array!82219) Bool)

(assert (=> start!105900 (array_inv!30145 _keys!1118)))

(declare-fun e!717610 () Bool)

(declare-fun array_inv!30146 (array!82221) Bool)

(assert (=> start!105900 (and (array_inv!30146 _values!914) e!717610)))

(declare-fun b!1260903 () Bool)

(assert (=> b!1260903 (= e!717609 false)))

(declare-fun minValueAfter!43 () V!48441)

(declare-fun zeroValue!871 () V!48441)

(declare-datatypes ((tuple2!21130 0))(
  ( (tuple2!21131 (_1!10575 (_ BitVec 64)) (_2!10575 V!48441)) )
))
(declare-datatypes ((List!28352 0))(
  ( (Nil!28349) (Cons!28348 (h!29557 tuple2!21130) (t!41858 List!28352)) )
))
(declare-datatypes ((ListLongMap!19015 0))(
  ( (ListLongMap!19016 (toList!9523 List!28352)) )
))
(declare-fun lt!571439 () ListLongMap!19015)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5864 (array!82219 array!82221 (_ BitVec 32) (_ BitVec 32) V!48441 V!48441 (_ BitVec 32) Int) ListLongMap!19015)

(assert (=> b!1260903 (= lt!571439 (getCurrentListMapNoExtraKeys!5864 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48441)

(declare-fun lt!571438 () ListLongMap!19015)

(assert (=> b!1260903 (= lt!571438 (getCurrentListMapNoExtraKeys!5864 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260904 () Bool)

(declare-fun e!717608 () Bool)

(assert (=> b!1260904 (= e!717610 (and e!717608 mapRes!50263))))

(declare-fun condMapEmpty!50263 () Bool)

(declare-fun mapDefault!50263 () ValueCell!15390)

(assert (=> b!1260904 (= condMapEmpty!50263 (= (arr!39659 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15390)) mapDefault!50263)))))

(declare-fun b!1260905 () Bool)

(declare-fun res!840346 () Bool)

(assert (=> b!1260905 (=> (not res!840346) (not e!717609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82219 (_ BitVec 32)) Bool)

(assert (=> b!1260905 (= res!840346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260906 () Bool)

(assert (=> b!1260906 (= e!717607 tp_is_empty!32307)))

(declare-fun b!1260907 () Bool)

(assert (=> b!1260907 (= e!717608 tp_is_empty!32307)))

(declare-fun b!1260908 () Bool)

(declare-fun res!840343 () Bool)

(assert (=> b!1260908 (=> (not res!840343) (not e!717609))))

(declare-datatypes ((List!28353 0))(
  ( (Nil!28350) (Cons!28349 (h!29558 (_ BitVec 64)) (t!41859 List!28353)) )
))
(declare-fun arrayNoDuplicates!0 (array!82219 (_ BitVec 32) List!28353) Bool)

(assert (=> b!1260908 (= res!840343 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28350))))

(assert (= (and start!105900 res!840344) b!1260902))

(assert (= (and b!1260902 res!840345) b!1260905))

(assert (= (and b!1260905 res!840346) b!1260908))

(assert (= (and b!1260908 res!840343) b!1260903))

(assert (= (and b!1260904 condMapEmpty!50263) mapIsEmpty!50263))

(assert (= (and b!1260904 (not condMapEmpty!50263)) mapNonEmpty!50263))

(get-info :version)

(assert (= (and mapNonEmpty!50263 ((_ is ValueCellFull!15390) mapValue!50263)) b!1260906))

(assert (= (and b!1260904 ((_ is ValueCellFull!15390) mapDefault!50263)) b!1260907))

(assert (= start!105900 b!1260904))

(declare-fun m!1161675 () Bool)

(assert (=> start!105900 m!1161675))

(declare-fun m!1161677 () Bool)

(assert (=> start!105900 m!1161677))

(declare-fun m!1161679 () Bool)

(assert (=> start!105900 m!1161679))

(declare-fun m!1161681 () Bool)

(assert (=> b!1260903 m!1161681))

(declare-fun m!1161683 () Bool)

(assert (=> b!1260903 m!1161683))

(declare-fun m!1161685 () Bool)

(assert (=> mapNonEmpty!50263 m!1161685))

(declare-fun m!1161687 () Bool)

(assert (=> b!1260905 m!1161687))

(declare-fun m!1161689 () Bool)

(assert (=> b!1260908 m!1161689))

(check-sat (not b!1260908) (not b!1260905) (not start!105900) (not mapNonEmpty!50263) b_and!45323 tp_is_empty!32307 (not b!1260903) (not b_next!27405))
(check-sat b_and!45323 (not b_next!27405))
