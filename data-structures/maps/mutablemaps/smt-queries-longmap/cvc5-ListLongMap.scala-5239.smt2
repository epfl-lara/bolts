; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70538 () Bool)

(assert start!70538)

(declare-fun b_free!12841 () Bool)

(declare-fun b_next!12841 () Bool)

(assert (=> start!70538 (= b_free!12841 (not b_next!12841))))

(declare-fun tp!45256 () Bool)

(declare-fun b_and!21689 () Bool)

(assert (=> start!70538 (= tp!45256 b_and!21689)))

(declare-fun b!818952 () Bool)

(declare-fun res!558989 () Bool)

(declare-fun e!454770 () Bool)

(assert (=> b!818952 (=> (not res!558989) (not e!454770))))

(declare-datatypes ((array!45272 0))(
  ( (array!45273 (arr!21686 (Array (_ BitVec 32) (_ BitVec 64))) (size!22107 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45272)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45272 (_ BitVec 32)) Bool)

(assert (=> b!818952 (= res!558989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818953 () Bool)

(declare-fun e!454765 () Bool)

(assert (=> b!818953 (= e!454765 true)))

(declare-datatypes ((V!24403 0))(
  ( (V!24404 (val!7323 Int)) )
))
(declare-datatypes ((tuple2!9646 0))(
  ( (tuple2!9647 (_1!4833 (_ BitVec 64)) (_2!4833 V!24403)) )
))
(declare-datatypes ((List!15507 0))(
  ( (Nil!15504) (Cons!15503 (h!16632 tuple2!9646) (t!21844 List!15507)) )
))
(declare-datatypes ((ListLongMap!8483 0))(
  ( (ListLongMap!8484 (toList!4257 List!15507)) )
))
(declare-fun lt!367351 () ListLongMap!8483)

(declare-fun lt!367353 () tuple2!9646)

(declare-fun lt!367349 () tuple2!9646)

(declare-fun lt!367355 () ListLongMap!8483)

(declare-fun +!1801 (ListLongMap!8483 tuple2!9646) ListLongMap!8483)

(assert (=> b!818953 (= lt!367351 (+!1801 (+!1801 lt!367355 lt!367349) lt!367353))))

(declare-fun lt!367350 () ListLongMap!8483)

(declare-fun lt!367354 () ListLongMap!8483)

(assert (=> b!818953 (= (+!1801 lt!367350 lt!367353) (+!1801 lt!367354 lt!367353))))

(declare-fun zeroValueBefore!34 () V!24403)

(declare-fun zeroValueAfter!34 () V!24403)

(declare-datatypes ((Unit!27963 0))(
  ( (Unit!27964) )
))
(declare-fun lt!367357 () Unit!27963)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!180 (ListLongMap!8483 (_ BitVec 64) V!24403 V!24403) Unit!27963)

(assert (=> b!818953 (= lt!367357 (addSameAsAddTwiceSameKeyDiffValues!180 lt!367350 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818953 (= lt!367353 (tuple2!9647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454769 () Bool)

(assert (=> b!818953 e!454769))

(declare-fun res!558985 () Bool)

(assert (=> b!818953 (=> (not res!558985) (not e!454769))))

(declare-fun lt!367348 () ListLongMap!8483)

(assert (=> b!818953 (= res!558985 (= lt!367348 lt!367354))))

(assert (=> b!818953 (= lt!367354 (+!1801 lt!367350 lt!367349))))

(assert (=> b!818953 (= lt!367349 (tuple2!9647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367352 () ListLongMap!8483)

(declare-fun minValue!754 () V!24403)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6860 0))(
  ( (ValueCellFull!6860 (v!9748 V!24403)) (EmptyCell!6860) )
))
(declare-datatypes ((array!45274 0))(
  ( (array!45275 (arr!21687 (Array (_ BitVec 32) ValueCell!6860)) (size!22108 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45274)

(declare-fun getCurrentListMap!2415 (array!45272 array!45274 (_ BitVec 32) (_ BitVec 32) V!24403 V!24403 (_ BitVec 32) Int) ListLongMap!8483)

(assert (=> b!818953 (= lt!367352 (getCurrentListMap!2415 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818953 (= lt!367348 (getCurrentListMap!2415 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818954 () Bool)

(declare-fun res!558984 () Bool)

(assert (=> b!818954 (=> (not res!558984) (not e!454770))))

(declare-datatypes ((List!15508 0))(
  ( (Nil!15505) (Cons!15504 (h!16633 (_ BitVec 64)) (t!21845 List!15508)) )
))
(declare-fun arrayNoDuplicates!0 (array!45272 (_ BitVec 32) List!15508) Bool)

(assert (=> b!818954 (= res!558984 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15505))))

(declare-fun b!818955 () Bool)

(declare-fun res!558988 () Bool)

(assert (=> b!818955 (=> (not res!558988) (not e!454770))))

(assert (=> b!818955 (= res!558988 (and (= (size!22108 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22107 _keys!976) (size!22108 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558986 () Bool)

(assert (=> start!70538 (=> (not res!558986) (not e!454770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70538 (= res!558986 (validMask!0 mask!1312))))

(assert (=> start!70538 e!454770))

(declare-fun tp_is_empty!14551 () Bool)

(assert (=> start!70538 tp_is_empty!14551))

(declare-fun array_inv!17305 (array!45272) Bool)

(assert (=> start!70538 (array_inv!17305 _keys!976)))

(assert (=> start!70538 true))

(declare-fun e!454766 () Bool)

(declare-fun array_inv!17306 (array!45274) Bool)

(assert (=> start!70538 (and (array_inv!17306 _values!788) e!454766)))

(assert (=> start!70538 tp!45256))

(declare-fun b!818956 () Bool)

(assert (=> b!818956 (= e!454770 (not e!454765))))

(declare-fun res!558987 () Bool)

(assert (=> b!818956 (=> res!558987 e!454765)))

(assert (=> b!818956 (= res!558987 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!818956 (= lt!367350 lt!367355)))

(declare-fun lt!367356 () Unit!27963)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!412 (array!45272 array!45274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24403 V!24403 V!24403 V!24403 (_ BitVec 32) Int) Unit!27963)

(assert (=> b!818956 (= lt!367356 (lemmaNoChangeToArrayThenSameMapNoExtras!412 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2296 (array!45272 array!45274 (_ BitVec 32) (_ BitVec 32) V!24403 V!24403 (_ BitVec 32) Int) ListLongMap!8483)

(assert (=> b!818956 (= lt!367355 (getCurrentListMapNoExtraKeys!2296 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818956 (= lt!367350 (getCurrentListMapNoExtraKeys!2296 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818957 () Bool)

(declare-fun e!454768 () Bool)

(declare-fun mapRes!23425 () Bool)

(assert (=> b!818957 (= e!454766 (and e!454768 mapRes!23425))))

(declare-fun condMapEmpty!23425 () Bool)

(declare-fun mapDefault!23425 () ValueCell!6860)

