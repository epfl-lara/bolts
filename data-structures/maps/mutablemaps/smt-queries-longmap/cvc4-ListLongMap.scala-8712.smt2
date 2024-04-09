; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105762 () Bool)

(assert start!105762)

(declare-fun b_free!27311 () Bool)

(declare-fun b_next!27311 () Bool)

(assert (=> start!105762 (= b_free!27311 (not b_next!27311))))

(declare-fun tp!95460 () Bool)

(declare-fun b_and!45205 () Bool)

(assert (=> start!105762 (= tp!95460 b_and!45205)))

(declare-fun mapIsEmpty!50116 () Bool)

(declare-fun mapRes!50116 () Bool)

(assert (=> mapIsEmpty!50116 mapRes!50116))

(declare-fun b!1259322 () Bool)

(declare-fun e!716442 () Bool)

(declare-fun tp_is_empty!32213 () Bool)

(assert (=> b!1259322 (= e!716442 tp_is_empty!32213)))

(declare-datatypes ((V!48315 0))(
  ( (V!48316 (val!16169 Int)) )
))
(declare-datatypes ((tuple2!21060 0))(
  ( (tuple2!21061 (_1!10540 (_ BitVec 64)) (_2!10540 V!48315)) )
))
(declare-fun lt!569987 () tuple2!21060)

(declare-datatypes ((List!28288 0))(
  ( (Nil!28285) (Cons!28284 (h!29493 tuple2!21060) (t!41790 List!28288)) )
))
(declare-datatypes ((ListLongMap!18945 0))(
  ( (ListLongMap!18946 (toList!9488 List!28288)) )
))
(declare-fun lt!569989 () ListLongMap!18945)

(declare-fun b!1259323 () Bool)

(declare-fun lt!569992 () ListLongMap!18945)

(declare-fun e!716447 () Bool)

(declare-fun +!4186 (ListLongMap!18945 tuple2!21060) ListLongMap!18945)

(assert (=> b!1259323 (= e!716447 (= lt!569989 (+!4186 lt!569992 lt!569987)))))

(declare-fun b!1259324 () Bool)

(declare-fun res!839389 () Bool)

(declare-fun e!716441 () Bool)

(assert (=> b!1259324 (=> (not res!839389) (not e!716441))))

(declare-datatypes ((array!82039 0))(
  ( (array!82040 (arr!39570 (Array (_ BitVec 32) (_ BitVec 64))) (size!40107 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82039)

(declare-datatypes ((List!28289 0))(
  ( (Nil!28286) (Cons!28285 (h!29494 (_ BitVec 64)) (t!41791 List!28289)) )
))
(declare-fun arrayNoDuplicates!0 (array!82039 (_ BitVec 32) List!28289) Bool)

(assert (=> b!1259324 (= res!839389 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28286))))

(declare-fun b!1259325 () Bool)

(declare-fun res!839391 () Bool)

(assert (=> b!1259325 (=> (not res!839391) (not e!716441))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82039 (_ BitVec 32)) Bool)

(assert (=> b!1259325 (= res!839391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259326 () Bool)

(declare-fun res!839393 () Bool)

(assert (=> b!1259326 (=> (not res!839393) (not e!716441))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15343 0))(
  ( (ValueCellFull!15343 (v!18871 V!48315)) (EmptyCell!15343) )
))
(declare-datatypes ((array!82041 0))(
  ( (array!82042 (arr!39571 (Array (_ BitVec 32) ValueCell!15343)) (size!40108 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82041)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259326 (= res!839393 (and (= (size!40108 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40107 _keys!1118) (size!40108 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259327 () Bool)

(declare-fun e!716443 () Bool)

(assert (=> b!1259327 (= e!716441 (not e!716443))))

(declare-fun res!839392 () Bool)

(assert (=> b!1259327 (=> res!839392 e!716443)))

(assert (=> b!1259327 (= res!839392 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569990 () ListLongMap!18945)

(assert (=> b!1259327 (= lt!569990 lt!569992)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48315)

(declare-fun zeroValue!871 () V!48315)

(declare-datatypes ((Unit!41945 0))(
  ( (Unit!41946) )
))
(declare-fun lt!569983 () Unit!41945)

(declare-fun minValueBefore!43 () V!48315)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1154 (array!82039 array!82041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48315 V!48315 V!48315 V!48315 (_ BitVec 32) Int) Unit!41945)

(assert (=> b!1259327 (= lt!569983 (lemmaNoChangeToArrayThenSameMapNoExtras!1154 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5836 (array!82039 array!82041 (_ BitVec 32) (_ BitVec 32) V!48315 V!48315 (_ BitVec 32) Int) ListLongMap!18945)

(assert (=> b!1259327 (= lt!569992 (getCurrentListMapNoExtraKeys!5836 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259327 (= lt!569990 (getCurrentListMapNoExtraKeys!5836 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259328 () Bool)

(declare-fun e!716444 () Bool)

(assert (=> b!1259328 (= e!716444 tp_is_empty!32213)))

(declare-fun res!839394 () Bool)

(assert (=> start!105762 (=> (not res!839394) (not e!716441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105762 (= res!839394 (validMask!0 mask!1466))))

(assert (=> start!105762 e!716441))

(assert (=> start!105762 true))

(assert (=> start!105762 tp!95460))

(assert (=> start!105762 tp_is_empty!32213))

(declare-fun array_inv!30085 (array!82039) Bool)

(assert (=> start!105762 (array_inv!30085 _keys!1118)))

(declare-fun e!716446 () Bool)

(declare-fun array_inv!30086 (array!82041) Bool)

(assert (=> start!105762 (and (array_inv!30086 _values!914) e!716446)))

(declare-fun b!1259321 () Bool)

(assert (=> b!1259321 (= e!716443 true)))

(declare-fun lt!569985 () ListLongMap!18945)

(declare-fun lt!569984 () ListLongMap!18945)

(declare-fun -!2121 (ListLongMap!18945 (_ BitVec 64)) ListLongMap!18945)

(assert (=> b!1259321 (= lt!569985 (-!2121 lt!569984 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569991 () ListLongMap!18945)

(declare-fun lt!569988 () ListLongMap!18945)

(assert (=> b!1259321 (= (-!2121 lt!569991 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569988)))

(declare-fun lt!569986 () Unit!41945)

(declare-fun addThenRemoveForNewKeyIsSame!346 (ListLongMap!18945 (_ BitVec 64) V!48315) Unit!41945)

(assert (=> b!1259321 (= lt!569986 (addThenRemoveForNewKeyIsSame!346 lt!569988 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259321 e!716447))

(declare-fun res!839390 () Bool)

(assert (=> b!1259321 (=> (not res!839390) (not e!716447))))

(assert (=> b!1259321 (= res!839390 (= lt!569984 lt!569991))))

(assert (=> b!1259321 (= lt!569991 (+!4186 lt!569988 (tuple2!21061 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259321 (= lt!569988 (+!4186 lt!569990 lt!569987))))

(assert (=> b!1259321 (= lt!569987 (tuple2!21061 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4625 (array!82039 array!82041 (_ BitVec 32) (_ BitVec 32) V!48315 V!48315 (_ BitVec 32) Int) ListLongMap!18945)

(assert (=> b!1259321 (= lt!569989 (getCurrentListMap!4625 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259321 (= lt!569984 (getCurrentListMap!4625 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50116 () Bool)

(declare-fun tp!95459 () Bool)

(assert (=> mapNonEmpty!50116 (= mapRes!50116 (and tp!95459 e!716442))))

(declare-fun mapValue!50116 () ValueCell!15343)

(declare-fun mapRest!50116 () (Array (_ BitVec 32) ValueCell!15343))

(declare-fun mapKey!50116 () (_ BitVec 32))

(assert (=> mapNonEmpty!50116 (= (arr!39571 _values!914) (store mapRest!50116 mapKey!50116 mapValue!50116))))

(declare-fun b!1259329 () Bool)

(assert (=> b!1259329 (= e!716446 (and e!716444 mapRes!50116))))

(declare-fun condMapEmpty!50116 () Bool)

(declare-fun mapDefault!50116 () ValueCell!15343)

