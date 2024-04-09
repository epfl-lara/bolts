; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104844 () Bool)

(assert start!104844)

(declare-fun b_free!26613 () Bool)

(declare-fun b_next!26613 () Bool)

(assert (=> start!104844 (= b_free!26613 (not b_next!26613))))

(declare-fun tp!93330 () Bool)

(declare-fun b_and!44391 () Bool)

(assert (=> start!104844 (= tp!93330 b_and!44391)))

(declare-fun mapNonEmpty!49033 () Bool)

(declare-fun mapRes!49033 () Bool)

(declare-fun tp!93329 () Bool)

(declare-fun e!709032 () Bool)

(assert (=> mapNonEmpty!49033 (= mapRes!49033 (and tp!93329 e!709032))))

(declare-fun mapKey!49033 () (_ BitVec 32))

(declare-datatypes ((V!47385 0))(
  ( (V!47386 (val!15820 Int)) )
))
(declare-datatypes ((ValueCell!14994 0))(
  ( (ValueCellFull!14994 (v!18516 V!47385)) (EmptyCell!14994) )
))
(declare-fun mapValue!49033 () ValueCell!14994)

(declare-datatypes ((array!80689 0))(
  ( (array!80690 (arr!38907 (Array (_ BitVec 32) ValueCell!14994)) (size!39444 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80689)

(declare-fun mapRest!49033 () (Array (_ BitVec 32) ValueCell!14994))

(assert (=> mapNonEmpty!49033 (= (arr!38907 _values!914) (store mapRest!49033 mapKey!49033 mapValue!49033))))

(declare-fun b!1249228 () Bool)

(declare-fun res!833422 () Bool)

(declare-fun e!709031 () Bool)

(assert (=> b!1249228 (=> (not res!833422) (not e!709031))))

(declare-datatypes ((array!80691 0))(
  ( (array!80692 (arr!38908 (Array (_ BitVec 32) (_ BitVec 64))) (size!39445 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80691)

(declare-datatypes ((List!27786 0))(
  ( (Nil!27783) (Cons!27782 (h!28991 (_ BitVec 64)) (t!41264 List!27786)) )
))
(declare-fun arrayNoDuplicates!0 (array!80691 (_ BitVec 32) List!27786) Bool)

(assert (=> b!1249228 (= res!833422 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27783))))

(declare-fun res!833421 () Bool)

(assert (=> start!104844 (=> (not res!833421) (not e!709031))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104844 (= res!833421 (validMask!0 mask!1466))))

(assert (=> start!104844 e!709031))

(assert (=> start!104844 true))

(assert (=> start!104844 tp!93330))

(declare-fun tp_is_empty!31515 () Bool)

(assert (=> start!104844 tp_is_empty!31515))

(declare-fun array_inv!29623 (array!80691) Bool)

(assert (=> start!104844 (array_inv!29623 _keys!1118)))

(declare-fun e!709030 () Bool)

(declare-fun array_inv!29624 (array!80689) Bool)

(assert (=> start!104844 (and (array_inv!29624 _values!914) e!709030)))

(declare-fun b!1249229 () Bool)

(declare-fun res!833423 () Bool)

(assert (=> b!1249229 (=> (not res!833423) (not e!709031))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1249229 (= res!833423 (and (= (size!39444 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39445 _keys!1118) (size!39444 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49033 () Bool)

(assert (=> mapIsEmpty!49033 mapRes!49033))

(declare-fun b!1249230 () Bool)

(assert (=> b!1249230 (= e!709032 tp_is_empty!31515)))

(declare-fun b!1249231 () Bool)

(assert (=> b!1249231 (= e!709031 (not true))))

(declare-datatypes ((tuple2!20526 0))(
  ( (tuple2!20527 (_1!10273 (_ BitVec 64)) (_2!10273 V!47385)) )
))
(declare-datatypes ((List!27787 0))(
  ( (Nil!27784) (Cons!27783 (h!28992 tuple2!20526) (t!41265 List!27787)) )
))
(declare-datatypes ((ListLongMap!18411 0))(
  ( (ListLongMap!18412 (toList!9221 List!27787)) )
))
(declare-fun lt!563619 () ListLongMap!18411)

(declare-fun lt!563617 () ListLongMap!18411)

(assert (=> b!1249231 (= lt!563619 lt!563617)))

(declare-fun minValueAfter!43 () V!47385)

(declare-fun zeroValue!871 () V!47385)

(declare-fun minValueBefore!43 () V!47385)

(declare-datatypes ((Unit!41425 0))(
  ( (Unit!41426) )
))
(declare-fun lt!563618 () Unit!41425)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!922 (array!80691 array!80689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47385 V!47385 V!47385 V!47385 (_ BitVec 32) Int) Unit!41425)

(assert (=> b!1249231 (= lt!563618 (lemmaNoChangeToArrayThenSameMapNoExtras!922 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5604 (array!80691 array!80689 (_ BitVec 32) (_ BitVec 32) V!47385 V!47385 (_ BitVec 32) Int) ListLongMap!18411)

(assert (=> b!1249231 (= lt!563617 (getCurrentListMapNoExtraKeys!5604 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249231 (= lt!563619 (getCurrentListMapNoExtraKeys!5604 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249232 () Bool)

(declare-fun e!709029 () Bool)

(assert (=> b!1249232 (= e!709029 tp_is_empty!31515)))

(declare-fun b!1249233 () Bool)

(assert (=> b!1249233 (= e!709030 (and e!709029 mapRes!49033))))

(declare-fun condMapEmpty!49033 () Bool)

(declare-fun mapDefault!49033 () ValueCell!14994)

(assert (=> b!1249233 (= condMapEmpty!49033 (= (arr!38907 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14994)) mapDefault!49033)))))

(declare-fun b!1249234 () Bool)

(declare-fun res!833424 () Bool)

(assert (=> b!1249234 (=> (not res!833424) (not e!709031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80691 (_ BitVec 32)) Bool)

(assert (=> b!1249234 (= res!833424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104844 res!833421) b!1249229))

(assert (= (and b!1249229 res!833423) b!1249234))

(assert (= (and b!1249234 res!833424) b!1249228))

(assert (= (and b!1249228 res!833422) b!1249231))

(assert (= (and b!1249233 condMapEmpty!49033) mapIsEmpty!49033))

(assert (= (and b!1249233 (not condMapEmpty!49033)) mapNonEmpty!49033))

(get-info :version)

(assert (= (and mapNonEmpty!49033 ((_ is ValueCellFull!14994) mapValue!49033)) b!1249230))

(assert (= (and b!1249233 ((_ is ValueCellFull!14994) mapDefault!49033)) b!1249232))

(assert (= start!104844 b!1249233))

(declare-fun m!1150217 () Bool)

(assert (=> start!104844 m!1150217))

(declare-fun m!1150219 () Bool)

(assert (=> start!104844 m!1150219))

(declare-fun m!1150221 () Bool)

(assert (=> start!104844 m!1150221))

(declare-fun m!1150223 () Bool)

(assert (=> b!1249231 m!1150223))

(declare-fun m!1150225 () Bool)

(assert (=> b!1249231 m!1150225))

(declare-fun m!1150227 () Bool)

(assert (=> b!1249231 m!1150227))

(declare-fun m!1150229 () Bool)

(assert (=> mapNonEmpty!49033 m!1150229))

(declare-fun m!1150231 () Bool)

(assert (=> b!1249234 m!1150231))

(declare-fun m!1150233 () Bool)

(assert (=> b!1249228 m!1150233))

(check-sat (not mapNonEmpty!49033) (not start!104844) (not b!1249231) b_and!44391 (not b_next!26613) (not b!1249228) tp_is_empty!31515 (not b!1249234))
(check-sat b_and!44391 (not b_next!26613))
