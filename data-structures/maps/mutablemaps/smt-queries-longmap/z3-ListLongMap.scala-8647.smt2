; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105238 () Bool)

(assert start!105238)

(declare-fun b_free!26919 () Bool)

(declare-fun b_next!26919 () Bool)

(assert (=> start!105238 (= b_free!26919 (not b_next!26919))))

(declare-fun tp!94263 () Bool)

(declare-fun b_and!44743 () Bool)

(assert (=> start!105238 (= tp!94263 b_and!44743)))

(declare-fun mapNonEmpty!49507 () Bool)

(declare-fun mapRes!49507 () Bool)

(declare-fun tp!94262 () Bool)

(declare-fun e!712212 () Bool)

(assert (=> mapNonEmpty!49507 (= mapRes!49507 (and tp!94262 e!712212))))

(declare-datatypes ((V!47793 0))(
  ( (V!47794 (val!15973 Int)) )
))
(declare-datatypes ((ValueCell!15147 0))(
  ( (ValueCellFull!15147 (v!18671 V!47793)) (EmptyCell!15147) )
))
(declare-fun mapValue!49507 () ValueCell!15147)

(declare-fun mapRest!49507 () (Array (_ BitVec 32) ValueCell!15147))

(declare-datatypes ((array!81281 0))(
  ( (array!81282 (arr!39198 (Array (_ BitVec 32) ValueCell!15147)) (size!39735 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81281)

(declare-fun mapKey!49507 () (_ BitVec 32))

(assert (=> mapNonEmpty!49507 (= (arr!39198 _values!914) (store mapRest!49507 mapKey!49507 mapValue!49507))))

(declare-fun b!1253555 () Bool)

(declare-fun res!835983 () Bool)

(declare-fun e!712210 () Bool)

(assert (=> b!1253555 (=> (not res!835983) (not e!712210))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81283 0))(
  ( (array!81284 (arr!39199 (Array (_ BitVec 32) (_ BitVec 64))) (size!39736 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81283)

(assert (=> b!1253555 (= res!835983 (and (= (size!39735 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39736 _keys!1118) (size!39735 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253556 () Bool)

(declare-fun e!712211 () Bool)

(declare-fun e!712214 () Bool)

(assert (=> b!1253556 (= e!712211 (and e!712214 mapRes!49507))))

(declare-fun condMapEmpty!49507 () Bool)

(declare-fun mapDefault!49507 () ValueCell!15147)

(assert (=> b!1253556 (= condMapEmpty!49507 (= (arr!39198 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15147)) mapDefault!49507)))))

(declare-fun b!1253557 () Bool)

(declare-fun res!835981 () Bool)

(assert (=> b!1253557 (=> (not res!835981) (not e!712210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81283 (_ BitVec 32)) Bool)

(assert (=> b!1253557 (= res!835981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253558 () Bool)

(declare-fun tp_is_empty!31821 () Bool)

(assert (=> b!1253558 (= e!712214 tp_is_empty!31821)))

(declare-fun b!1253559 () Bool)

(assert (=> b!1253559 (= e!712212 tp_is_empty!31821)))

(declare-fun b!1253560 () Bool)

(declare-fun e!712213 () Bool)

(assert (=> b!1253560 (= e!712213 true)))

(declare-datatypes ((tuple2!20764 0))(
  ( (tuple2!20765 (_1!10392 (_ BitVec 64)) (_2!10392 V!47793)) )
))
(declare-datatypes ((List!28011 0))(
  ( (Nil!28008) (Cons!28007 (h!29216 tuple2!20764) (t!41499 List!28011)) )
))
(declare-datatypes ((ListLongMap!18649 0))(
  ( (ListLongMap!18650 (toList!9340 List!28011)) )
))
(declare-fun lt!566119 () ListLongMap!18649)

(declare-fun lt!566125 () ListLongMap!18649)

(declare-fun -!2052 (ListLongMap!18649 (_ BitVec 64)) ListLongMap!18649)

(assert (=> b!1253560 (= lt!566119 (-!2052 lt!566125 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566121 () ListLongMap!18649)

(declare-fun lt!566124 () ListLongMap!18649)

(assert (=> b!1253560 (= (-!2052 lt!566121 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566124)))

(declare-datatypes ((Unit!41650 0))(
  ( (Unit!41651) )
))
(declare-fun lt!566126 () Unit!41650)

(declare-fun minValueBefore!43 () V!47793)

(declare-fun addThenRemoveForNewKeyIsSame!312 (ListLongMap!18649 (_ BitVec 64) V!47793) Unit!41650)

(assert (=> b!1253560 (= lt!566126 (addThenRemoveForNewKeyIsSame!312 lt!566124 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566120 () ListLongMap!18649)

(declare-fun lt!566122 () ListLongMap!18649)

(assert (=> b!1253560 (and (= lt!566125 lt!566121) (= lt!566120 lt!566122))))

(declare-fun +!4143 (ListLongMap!18649 tuple2!20764) ListLongMap!18649)

(assert (=> b!1253560 (= lt!566121 (+!4143 lt!566124 (tuple2!20765 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47793)

(declare-fun zeroValue!871 () V!47793)

(declare-fun getCurrentListMap!4530 (array!81283 array!81281 (_ BitVec 32) (_ BitVec 32) V!47793 V!47793 (_ BitVec 32) Int) ListLongMap!18649)

(assert (=> b!1253560 (= lt!566120 (getCurrentListMap!4530 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253560 (= lt!566125 (getCurrentListMap!4530 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835982 () Bool)

(assert (=> start!105238 (=> (not res!835982) (not e!712210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105238 (= res!835982 (validMask!0 mask!1466))))

(assert (=> start!105238 e!712210))

(assert (=> start!105238 true))

(assert (=> start!105238 tp!94263))

(assert (=> start!105238 tp_is_empty!31821))

(declare-fun array_inv!29823 (array!81283) Bool)

(assert (=> start!105238 (array_inv!29823 _keys!1118)))

(declare-fun array_inv!29824 (array!81281) Bool)

(assert (=> start!105238 (and (array_inv!29824 _values!914) e!712211)))

(declare-fun mapIsEmpty!49507 () Bool)

(assert (=> mapIsEmpty!49507 mapRes!49507))

(declare-fun b!1253561 () Bool)

(declare-fun res!835985 () Bool)

(assert (=> b!1253561 (=> (not res!835985) (not e!712210))))

(declare-datatypes ((List!28012 0))(
  ( (Nil!28009) (Cons!28008 (h!29217 (_ BitVec 64)) (t!41500 List!28012)) )
))
(declare-fun arrayNoDuplicates!0 (array!81283 (_ BitVec 32) List!28012) Bool)

(assert (=> b!1253561 (= res!835985 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28009))))

(declare-fun b!1253562 () Bool)

(assert (=> b!1253562 (= e!712210 (not e!712213))))

(declare-fun res!835984 () Bool)

(assert (=> b!1253562 (=> res!835984 e!712213)))

(assert (=> b!1253562 (= res!835984 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253562 (= lt!566124 lt!566122)))

(declare-fun lt!566123 () Unit!41650)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1024 (array!81283 array!81281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47793 V!47793 V!47793 V!47793 (_ BitVec 32) Int) Unit!41650)

(assert (=> b!1253562 (= lt!566123 (lemmaNoChangeToArrayThenSameMapNoExtras!1024 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5706 (array!81283 array!81281 (_ BitVec 32) (_ BitVec 32) V!47793 V!47793 (_ BitVec 32) Int) ListLongMap!18649)

(assert (=> b!1253562 (= lt!566122 (getCurrentListMapNoExtraKeys!5706 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253562 (= lt!566124 (getCurrentListMapNoExtraKeys!5706 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105238 res!835982) b!1253555))

(assert (= (and b!1253555 res!835983) b!1253557))

(assert (= (and b!1253557 res!835981) b!1253561))

(assert (= (and b!1253561 res!835985) b!1253562))

(assert (= (and b!1253562 (not res!835984)) b!1253560))

(assert (= (and b!1253556 condMapEmpty!49507) mapIsEmpty!49507))

(assert (= (and b!1253556 (not condMapEmpty!49507)) mapNonEmpty!49507))

(get-info :version)

(assert (= (and mapNonEmpty!49507 ((_ is ValueCellFull!15147) mapValue!49507)) b!1253559))

(assert (= (and b!1253556 ((_ is ValueCellFull!15147) mapDefault!49507)) b!1253558))

(assert (= start!105238 b!1253556))

(declare-fun m!1154181 () Bool)

(assert (=> b!1253561 m!1154181))

(declare-fun m!1154183 () Bool)

(assert (=> b!1253562 m!1154183))

(declare-fun m!1154185 () Bool)

(assert (=> b!1253562 m!1154185))

(declare-fun m!1154187 () Bool)

(assert (=> b!1253562 m!1154187))

(declare-fun m!1154189 () Bool)

(assert (=> b!1253560 m!1154189))

(declare-fun m!1154191 () Bool)

(assert (=> b!1253560 m!1154191))

(declare-fun m!1154193 () Bool)

(assert (=> b!1253560 m!1154193))

(declare-fun m!1154195 () Bool)

(assert (=> b!1253560 m!1154195))

(declare-fun m!1154197 () Bool)

(assert (=> b!1253560 m!1154197))

(declare-fun m!1154199 () Bool)

(assert (=> b!1253560 m!1154199))

(declare-fun m!1154201 () Bool)

(assert (=> b!1253557 m!1154201))

(declare-fun m!1154203 () Bool)

(assert (=> mapNonEmpty!49507 m!1154203))

(declare-fun m!1154205 () Bool)

(assert (=> start!105238 m!1154205))

(declare-fun m!1154207 () Bool)

(assert (=> start!105238 m!1154207))

(declare-fun m!1154209 () Bool)

(assert (=> start!105238 m!1154209))

(check-sat b_and!44743 (not start!105238) (not b!1253560) (not b!1253561) (not b!1253562) tp_is_empty!31821 (not b_next!26919) (not mapNonEmpty!49507) (not b!1253557))
(check-sat b_and!44743 (not b_next!26919))
