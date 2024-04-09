; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70532 () Bool)

(assert start!70532)

(declare-fun b_free!12835 () Bool)

(declare-fun b_next!12835 () Bool)

(assert (=> start!70532 (= b_free!12835 (not b_next!12835))))

(declare-fun tp!45238 () Bool)

(declare-fun b_and!21683 () Bool)

(assert (=> start!70532 (= tp!45238 b_and!21683)))

(declare-fun res!558933 () Bool)

(declare-fun e!454704 () Bool)

(assert (=> start!70532 (=> (not res!558933) (not e!454704))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70532 (= res!558933 (validMask!0 mask!1312))))

(assert (=> start!70532 e!454704))

(declare-fun tp_is_empty!14545 () Bool)

(assert (=> start!70532 tp_is_empty!14545))

(declare-datatypes ((array!45262 0))(
  ( (array!45263 (arr!21681 (Array (_ BitVec 32) (_ BitVec 64))) (size!22102 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45262)

(declare-fun array_inv!17301 (array!45262) Bool)

(assert (=> start!70532 (array_inv!17301 _keys!976)))

(assert (=> start!70532 true))

(declare-datatypes ((V!24395 0))(
  ( (V!24396 (val!7320 Int)) )
))
(declare-datatypes ((ValueCell!6857 0))(
  ( (ValueCellFull!6857 (v!9745 V!24395)) (EmptyCell!6857) )
))
(declare-datatypes ((array!45264 0))(
  ( (array!45265 (arr!21682 (Array (_ BitVec 32) ValueCell!6857)) (size!22103 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45264)

(declare-fun e!454707 () Bool)

(declare-fun array_inv!17302 (array!45264) Bool)

(assert (=> start!70532 (and (array_inv!17302 _values!788) e!454707)))

(assert (=> start!70532 tp!45238))

(declare-fun mapNonEmpty!23416 () Bool)

(declare-fun mapRes!23416 () Bool)

(declare-fun tp!45237 () Bool)

(declare-fun e!454705 () Bool)

(assert (=> mapNonEmpty!23416 (= mapRes!23416 (and tp!45237 e!454705))))

(declare-fun mapValue!23416 () ValueCell!6857)

(declare-fun mapRest!23416 () (Array (_ BitVec 32) ValueCell!6857))

(declare-fun mapKey!23416 () (_ BitVec 32))

(assert (=> mapNonEmpty!23416 (= (arr!21682 _values!788) (store mapRest!23416 mapKey!23416 mapValue!23416))))

(declare-fun b!818871 () Bool)

(declare-fun res!558930 () Bool)

(assert (=> b!818871 (=> (not res!558930) (not e!454704))))

(declare-datatypes ((List!15503 0))(
  ( (Nil!15500) (Cons!15499 (h!16628 (_ BitVec 64)) (t!21840 List!15503)) )
))
(declare-fun arrayNoDuplicates!0 (array!45262 (_ BitVec 32) List!15503) Bool)

(assert (=> b!818871 (= res!558930 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15500))))

(declare-fun zeroValueAfter!34 () V!24395)

(declare-datatypes ((tuple2!9642 0))(
  ( (tuple2!9643 (_1!4831 (_ BitVec 64)) (_2!4831 V!24395)) )
))
(declare-datatypes ((List!15504 0))(
  ( (Nil!15501) (Cons!15500 (h!16629 tuple2!9642) (t!21841 List!15504)) )
))
(declare-datatypes ((ListLongMap!8479 0))(
  ( (ListLongMap!8480 (toList!4255 List!15504)) )
))
(declare-fun lt!367263 () ListLongMap!8479)

(declare-fun lt!367261 () ListLongMap!8479)

(declare-fun b!818872 () Bool)

(declare-fun e!454702 () Bool)

(declare-fun +!1799 (ListLongMap!8479 tuple2!9642) ListLongMap!8479)

(assert (=> b!818872 (= e!454702 (= lt!367261 (+!1799 lt!367263 (tuple2!9643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818873 () Bool)

(declare-fun e!454708 () Bool)

(assert (=> b!818873 (= e!454708 true)))

(declare-fun lt!367260 () ListLongMap!8479)

(declare-fun lt!367258 () tuple2!9642)

(declare-fun lt!367264 () tuple2!9642)

(assert (=> b!818873 (= lt!367260 (+!1799 (+!1799 lt!367263 lt!367258) lt!367264))))

(declare-fun lt!367266 () ListLongMap!8479)

(declare-fun lt!367262 () ListLongMap!8479)

(assert (=> b!818873 (= (+!1799 lt!367266 lt!367264) (+!1799 lt!367262 lt!367264))))

(declare-fun zeroValueBefore!34 () V!24395)

(declare-datatypes ((Unit!27959 0))(
  ( (Unit!27960) )
))
(declare-fun lt!367267 () Unit!27959)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!178 (ListLongMap!8479 (_ BitVec 64) V!24395 V!24395) Unit!27959)

(assert (=> b!818873 (= lt!367267 (addSameAsAddTwiceSameKeyDiffValues!178 lt!367266 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818873 (= lt!367264 (tuple2!9643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818873 e!454702))

(declare-fun res!558934 () Bool)

(assert (=> b!818873 (=> (not res!558934) (not e!454702))))

(declare-fun lt!367265 () ListLongMap!8479)

(assert (=> b!818873 (= res!558934 (= lt!367265 lt!367262))))

(assert (=> b!818873 (= lt!367262 (+!1799 lt!367266 lt!367258))))

(assert (=> b!818873 (= lt!367258 (tuple2!9643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24395)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2413 (array!45262 array!45264 (_ BitVec 32) (_ BitVec 32) V!24395 V!24395 (_ BitVec 32) Int) ListLongMap!8479)

(assert (=> b!818873 (= lt!367261 (getCurrentListMap!2413 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818873 (= lt!367265 (getCurrentListMap!2413 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818874 () Bool)

(assert (=> b!818874 (= e!454705 tp_is_empty!14545)))

(declare-fun b!818875 () Bool)

(declare-fun res!558935 () Bool)

(assert (=> b!818875 (=> (not res!558935) (not e!454704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45262 (_ BitVec 32)) Bool)

(assert (=> b!818875 (= res!558935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818876 () Bool)

(declare-fun e!454703 () Bool)

(assert (=> b!818876 (= e!454703 tp_is_empty!14545)))

(declare-fun mapIsEmpty!23416 () Bool)

(assert (=> mapIsEmpty!23416 mapRes!23416))

(declare-fun b!818877 () Bool)

(assert (=> b!818877 (= e!454704 (not e!454708))))

(declare-fun res!558932 () Bool)

(assert (=> b!818877 (=> res!558932 e!454708)))

(assert (=> b!818877 (= res!558932 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!818877 (= lt!367266 lt!367263)))

(declare-fun lt!367259 () Unit!27959)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!410 (array!45262 array!45264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24395 V!24395 V!24395 V!24395 (_ BitVec 32) Int) Unit!27959)

(assert (=> b!818877 (= lt!367259 (lemmaNoChangeToArrayThenSameMapNoExtras!410 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2294 (array!45262 array!45264 (_ BitVec 32) (_ BitVec 32) V!24395 V!24395 (_ BitVec 32) Int) ListLongMap!8479)

(assert (=> b!818877 (= lt!367263 (getCurrentListMapNoExtraKeys!2294 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818877 (= lt!367266 (getCurrentListMapNoExtraKeys!2294 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818878 () Bool)

(declare-fun res!558931 () Bool)

(assert (=> b!818878 (=> (not res!558931) (not e!454704))))

(assert (=> b!818878 (= res!558931 (and (= (size!22103 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22102 _keys!976) (size!22103 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818879 () Bool)

(assert (=> b!818879 (= e!454707 (and e!454703 mapRes!23416))))

(declare-fun condMapEmpty!23416 () Bool)

(declare-fun mapDefault!23416 () ValueCell!6857)

