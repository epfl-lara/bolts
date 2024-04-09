; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105836 () Bool)

(assert start!105836)

(declare-fun b_free!27363 () Bool)

(declare-fun b_next!27363 () Bool)

(assert (=> start!105836 (= b_free!27363 (not b_next!27363))))

(declare-fun tp!95618 () Bool)

(declare-fun b_and!45269 () Bool)

(assert (=> start!105836 (= tp!95618 b_and!45269)))

(declare-fun e!717114 () Bool)

(declare-datatypes ((V!48385 0))(
  ( (V!48386 (val!16195 Int)) )
))
(declare-datatypes ((tuple2!21100 0))(
  ( (tuple2!21101 (_1!10560 (_ BitVec 64)) (_2!10560 V!48385)) )
))
(declare-fun lt!570918 () tuple2!21100)

(declare-datatypes ((List!28323 0))(
  ( (Nil!28320) (Cons!28319 (h!29528 tuple2!21100) (t!41827 List!28323)) )
))
(declare-datatypes ((ListLongMap!18985 0))(
  ( (ListLongMap!18986 (toList!9508 List!28323)) )
))
(declare-fun lt!570915 () ListLongMap!18985)

(declare-fun b!1260211 () Bool)

(declare-fun lt!570913 () ListLongMap!18985)

(declare-fun +!4205 (ListLongMap!18985 tuple2!21100) ListLongMap!18985)

(assert (=> b!1260211 (= e!717114 (= lt!570913 (+!4205 lt!570915 lt!570918)))))

(declare-fun mapIsEmpty!50197 () Bool)

(declare-fun mapRes!50197 () Bool)

(assert (=> mapIsEmpty!50197 mapRes!50197))

(declare-fun res!839948 () Bool)

(declare-fun e!717110 () Bool)

(assert (=> start!105836 (=> (not res!839948) (not e!717110))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105836 (= res!839948 (validMask!0 mask!1466))))

(assert (=> start!105836 e!717110))

(assert (=> start!105836 true))

(assert (=> start!105836 tp!95618))

(declare-fun tp_is_empty!32265 () Bool)

(assert (=> start!105836 tp_is_empty!32265))

(declare-datatypes ((array!82137 0))(
  ( (array!82138 (arr!39618 (Array (_ BitVec 32) (_ BitVec 64))) (size!40155 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82137)

(declare-fun array_inv!30113 (array!82137) Bool)

(assert (=> start!105836 (array_inv!30113 _keys!1118)))

(declare-datatypes ((ValueCell!15369 0))(
  ( (ValueCellFull!15369 (v!18898 V!48385)) (EmptyCell!15369) )
))
(declare-datatypes ((array!82139 0))(
  ( (array!82140 (arr!39619 (Array (_ BitVec 32) ValueCell!15369)) (size!40156 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82139)

(declare-fun e!717108 () Bool)

(declare-fun array_inv!30114 (array!82139) Bool)

(assert (=> start!105836 (and (array_inv!30114 _values!914) e!717108)))

(declare-fun b!1260212 () Bool)

(declare-fun e!717113 () Bool)

(assert (=> b!1260212 (= e!717113 tp_is_empty!32265)))

(declare-fun b!1260213 () Bool)

(declare-fun res!839947 () Bool)

(assert (=> b!1260213 (=> (not res!839947) (not e!717110))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1260213 (= res!839947 (and (= (size!40156 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40155 _keys!1118) (size!40156 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260214 () Bool)

(declare-fun res!839945 () Bool)

(assert (=> b!1260214 (=> (not res!839945) (not e!717110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82137 (_ BitVec 32)) Bool)

(assert (=> b!1260214 (= res!839945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260215 () Bool)

(declare-fun res!839944 () Bool)

(assert (=> b!1260215 (=> (not res!839944) (not e!717110))))

(declare-datatypes ((List!28324 0))(
  ( (Nil!28321) (Cons!28320 (h!29529 (_ BitVec 64)) (t!41828 List!28324)) )
))
(declare-fun arrayNoDuplicates!0 (array!82137 (_ BitVec 32) List!28324) Bool)

(assert (=> b!1260215 (= res!839944 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28321))))

(declare-fun b!1260216 () Bool)

(declare-fun e!717112 () Bool)

(assert (=> b!1260216 (= e!717108 (and e!717112 mapRes!50197))))

(declare-fun condMapEmpty!50197 () Bool)

(declare-fun mapDefault!50197 () ValueCell!15369)

(assert (=> b!1260216 (= condMapEmpty!50197 (= (arr!39619 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15369)) mapDefault!50197)))))

(declare-fun mapNonEmpty!50197 () Bool)

(declare-fun tp!95619 () Bool)

(assert (=> mapNonEmpty!50197 (= mapRes!50197 (and tp!95619 e!717113))))

(declare-fun mapRest!50197 () (Array (_ BitVec 32) ValueCell!15369))

(declare-fun mapKey!50197 () (_ BitVec 32))

(declare-fun mapValue!50197 () ValueCell!15369)

(assert (=> mapNonEmpty!50197 (= (arr!39619 _values!914) (store mapRest!50197 mapKey!50197 mapValue!50197))))

(declare-fun b!1260217 () Bool)

(declare-fun e!717109 () Bool)

(assert (=> b!1260217 (= e!717109 true)))

(declare-fun lt!570917 () ListLongMap!18985)

(declare-fun lt!570914 () ListLongMap!18985)

(declare-fun -!2137 (ListLongMap!18985 (_ BitVec 64)) ListLongMap!18985)

(assert (=> b!1260217 (= lt!570917 (-!2137 lt!570914 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570912 () ListLongMap!18985)

(declare-fun lt!570910 () ListLongMap!18985)

(assert (=> b!1260217 (= (-!2137 lt!570912 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570910)))

(declare-datatypes ((Unit!41983 0))(
  ( (Unit!41984) )
))
(declare-fun lt!570916 () Unit!41983)

(declare-fun minValueBefore!43 () V!48385)

(declare-fun addThenRemoveForNewKeyIsSame!362 (ListLongMap!18985 (_ BitVec 64) V!48385) Unit!41983)

(assert (=> b!1260217 (= lt!570916 (addThenRemoveForNewKeyIsSame!362 lt!570910 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1260217 e!717114))

(declare-fun res!839943 () Bool)

(assert (=> b!1260217 (=> (not res!839943) (not e!717114))))

(assert (=> b!1260217 (= res!839943 (= lt!570914 lt!570912))))

(assert (=> b!1260217 (= lt!570912 (+!4205 lt!570910 (tuple2!21101 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570909 () ListLongMap!18985)

(assert (=> b!1260217 (= lt!570910 (+!4205 lt!570909 lt!570918))))

(declare-fun zeroValue!871 () V!48385)

(assert (=> b!1260217 (= lt!570918 (tuple2!21101 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48385)

(declare-fun getCurrentListMap!4641 (array!82137 array!82139 (_ BitVec 32) (_ BitVec 32) V!48385 V!48385 (_ BitVec 32) Int) ListLongMap!18985)

(assert (=> b!1260217 (= lt!570913 (getCurrentListMap!4641 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260217 (= lt!570914 (getCurrentListMap!4641 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260218 () Bool)

(assert (=> b!1260218 (= e!717110 (not e!717109))))

(declare-fun res!839946 () Bool)

(assert (=> b!1260218 (=> res!839946 e!717109)))

(assert (=> b!1260218 (= res!839946 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1260218 (= lt!570909 lt!570915)))

(declare-fun lt!570911 () Unit!41983)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1168 (array!82137 array!82139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48385 V!48385 V!48385 V!48385 (_ BitVec 32) Int) Unit!41983)

(assert (=> b!1260218 (= lt!570911 (lemmaNoChangeToArrayThenSameMapNoExtras!1168 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5850 (array!82137 array!82139 (_ BitVec 32) (_ BitVec 32) V!48385 V!48385 (_ BitVec 32) Int) ListLongMap!18985)

(assert (=> b!1260218 (= lt!570915 (getCurrentListMapNoExtraKeys!5850 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260218 (= lt!570909 (getCurrentListMapNoExtraKeys!5850 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260219 () Bool)

(assert (=> b!1260219 (= e!717112 tp_is_empty!32265)))

(assert (= (and start!105836 res!839948) b!1260213))

(assert (= (and b!1260213 res!839947) b!1260214))

(assert (= (and b!1260214 res!839945) b!1260215))

(assert (= (and b!1260215 res!839944) b!1260218))

(assert (= (and b!1260218 (not res!839946)) b!1260217))

(assert (= (and b!1260217 res!839943) b!1260211))

(assert (= (and b!1260216 condMapEmpty!50197) mapIsEmpty!50197))

(assert (= (and b!1260216 (not condMapEmpty!50197)) mapNonEmpty!50197))

(get-info :version)

(assert (= (and mapNonEmpty!50197 ((_ is ValueCellFull!15369) mapValue!50197)) b!1260212))

(assert (= (and b!1260216 ((_ is ValueCellFull!15369) mapDefault!50197)) b!1260219))

(assert (= start!105836 b!1260216))

(declare-fun m!1160927 () Bool)

(assert (=> mapNonEmpty!50197 m!1160927))

(declare-fun m!1160929 () Bool)

(assert (=> b!1260215 m!1160929))

(declare-fun m!1160931 () Bool)

(assert (=> b!1260217 m!1160931))

(declare-fun m!1160933 () Bool)

(assert (=> b!1260217 m!1160933))

(declare-fun m!1160935 () Bool)

(assert (=> b!1260217 m!1160935))

(declare-fun m!1160937 () Bool)

(assert (=> b!1260217 m!1160937))

(declare-fun m!1160939 () Bool)

(assert (=> b!1260217 m!1160939))

(declare-fun m!1160941 () Bool)

(assert (=> b!1260217 m!1160941))

(declare-fun m!1160943 () Bool)

(assert (=> b!1260217 m!1160943))

(declare-fun m!1160945 () Bool)

(assert (=> start!105836 m!1160945))

(declare-fun m!1160947 () Bool)

(assert (=> start!105836 m!1160947))

(declare-fun m!1160949 () Bool)

(assert (=> start!105836 m!1160949))

(declare-fun m!1160951 () Bool)

(assert (=> b!1260214 m!1160951))

(declare-fun m!1160953 () Bool)

(assert (=> b!1260211 m!1160953))

(declare-fun m!1160955 () Bool)

(assert (=> b!1260218 m!1160955))

(declare-fun m!1160957 () Bool)

(assert (=> b!1260218 m!1160957))

(declare-fun m!1160959 () Bool)

(assert (=> b!1260218 m!1160959))

(check-sat (not b!1260211) b_and!45269 (not b!1260214) (not b!1260215) (not start!105836) (not b_next!27363) (not b!1260218) (not mapNonEmpty!50197) (not b!1260217) tp_is_empty!32265)
(check-sat b_and!45269 (not b_next!27363))
