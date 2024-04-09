; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70548 () Bool)

(assert start!70548)

(declare-fun b_free!12851 () Bool)

(declare-fun b_next!12851 () Bool)

(assert (=> start!70548 (= b_free!12851 (not b_next!12851))))

(declare-fun tp!45286 () Bool)

(declare-fun b_and!21699 () Bool)

(assert (=> start!70548 (= tp!45286 b_and!21699)))

(declare-fun b!819087 () Bool)

(declare-fun res!559076 () Bool)

(declare-fun e!454875 () Bool)

(assert (=> b!819087 (=> (not res!559076) (not e!454875))))

(declare-datatypes ((array!45290 0))(
  ( (array!45291 (arr!21695 (Array (_ BitVec 32) (_ BitVec 64))) (size!22116 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45290)

(declare-datatypes ((List!15514 0))(
  ( (Nil!15511) (Cons!15510 (h!16639 (_ BitVec 64)) (t!21851 List!15514)) )
))
(declare-fun arrayNoDuplicates!0 (array!45290 (_ BitVec 32) List!15514) Bool)

(assert (=> b!819087 (= res!559076 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15511))))

(declare-fun b!819088 () Bool)

(declare-fun e!454871 () Bool)

(assert (=> b!819088 (= e!454875 (not e!454871))))

(declare-fun res!559075 () Bool)

(assert (=> b!819088 (=> res!559075 e!454871)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819088 (= res!559075 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24415 0))(
  ( (V!24416 (val!7328 Int)) )
))
(declare-datatypes ((tuple2!9654 0))(
  ( (tuple2!9655 (_1!4837 (_ BitVec 64)) (_2!4837 V!24415)) )
))
(declare-datatypes ((List!15515 0))(
  ( (Nil!15512) (Cons!15511 (h!16640 tuple2!9654) (t!21852 List!15515)) )
))
(declare-datatypes ((ListLongMap!8491 0))(
  ( (ListLongMap!8492 (toList!4261 List!15515)) )
))
(declare-fun lt!367503 () ListLongMap!8491)

(declare-fun lt!367502 () ListLongMap!8491)

(assert (=> b!819088 (= lt!367503 lt!367502)))

(declare-fun zeroValueBefore!34 () V!24415)

(declare-datatypes ((Unit!27971 0))(
  ( (Unit!27972) )
))
(declare-fun lt!367498 () Unit!27971)

(declare-fun zeroValueAfter!34 () V!24415)

(declare-fun minValue!754 () V!24415)

(declare-datatypes ((ValueCell!6865 0))(
  ( (ValueCellFull!6865 (v!9753 V!24415)) (EmptyCell!6865) )
))
(declare-datatypes ((array!45292 0))(
  ( (array!45293 (arr!21696 (Array (_ BitVec 32) ValueCell!6865)) (size!22117 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45292)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!416 (array!45290 array!45292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24415 V!24415 V!24415 V!24415 (_ BitVec 32) Int) Unit!27971)

(assert (=> b!819088 (= lt!367498 (lemmaNoChangeToArrayThenSameMapNoExtras!416 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2300 (array!45290 array!45292 (_ BitVec 32) (_ BitVec 32) V!24415 V!24415 (_ BitVec 32) Int) ListLongMap!8491)

(assert (=> b!819088 (= lt!367502 (getCurrentListMapNoExtraKeys!2300 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819088 (= lt!367503 (getCurrentListMapNoExtraKeys!2300 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819089 () Bool)

(assert (=> b!819089 (= e!454871 true)))

(declare-fun lt!367500 () tuple2!9654)

(declare-fun lt!367507 () tuple2!9654)

(declare-fun lt!367505 () ListLongMap!8491)

(declare-fun +!1804 (ListLongMap!8491 tuple2!9654) ListLongMap!8491)

(assert (=> b!819089 (= lt!367505 (+!1804 (+!1804 lt!367502 lt!367507) lt!367500))))

(declare-fun lt!367499 () ListLongMap!8491)

(assert (=> b!819089 (= (+!1804 lt!367503 lt!367500) (+!1804 lt!367499 lt!367500))))

(declare-fun lt!367501 () Unit!27971)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!183 (ListLongMap!8491 (_ BitVec 64) V!24415 V!24415) Unit!27971)

(assert (=> b!819089 (= lt!367501 (addSameAsAddTwiceSameKeyDiffValues!183 lt!367503 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819089 (= lt!367500 (tuple2!9655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454876 () Bool)

(assert (=> b!819089 e!454876))

(declare-fun res!559077 () Bool)

(assert (=> b!819089 (=> (not res!559077) (not e!454876))))

(declare-fun lt!367506 () ListLongMap!8491)

(assert (=> b!819089 (= res!559077 (= lt!367506 lt!367499))))

(assert (=> b!819089 (= lt!367499 (+!1804 lt!367503 lt!367507))))

(assert (=> b!819089 (= lt!367507 (tuple2!9655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367504 () ListLongMap!8491)

(declare-fun getCurrentListMap!2418 (array!45290 array!45292 (_ BitVec 32) (_ BitVec 32) V!24415 V!24415 (_ BitVec 32) Int) ListLongMap!8491)

(assert (=> b!819089 (= lt!367504 (getCurrentListMap!2418 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819089 (= lt!367506 (getCurrentListMap!2418 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23440 () Bool)

(declare-fun mapRes!23440 () Bool)

(assert (=> mapIsEmpty!23440 mapRes!23440))

(declare-fun res!559078 () Bool)

(assert (=> start!70548 (=> (not res!559078) (not e!454875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70548 (= res!559078 (validMask!0 mask!1312))))

(assert (=> start!70548 e!454875))

(declare-fun tp_is_empty!14561 () Bool)

(assert (=> start!70548 tp_is_empty!14561))

(declare-fun array_inv!17313 (array!45290) Bool)

(assert (=> start!70548 (array_inv!17313 _keys!976)))

(assert (=> start!70548 true))

(declare-fun e!454873 () Bool)

(declare-fun array_inv!17314 (array!45292) Bool)

(assert (=> start!70548 (and (array_inv!17314 _values!788) e!454873)))

(assert (=> start!70548 tp!45286))

(declare-fun b!819090 () Bool)

(declare-fun e!454870 () Bool)

(assert (=> b!819090 (= e!454870 tp_is_empty!14561)))

(declare-fun b!819091 () Bool)

(declare-fun res!559074 () Bool)

(assert (=> b!819091 (=> (not res!559074) (not e!454875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45290 (_ BitVec 32)) Bool)

(assert (=> b!819091 (= res!559074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819092 () Bool)

(declare-fun res!559079 () Bool)

(assert (=> b!819092 (=> (not res!559079) (not e!454875))))

(assert (=> b!819092 (= res!559079 (and (= (size!22117 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22116 _keys!976) (size!22117 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819093 () Bool)

(declare-fun e!454872 () Bool)

(assert (=> b!819093 (= e!454872 tp_is_empty!14561)))

(declare-fun mapNonEmpty!23440 () Bool)

(declare-fun tp!45285 () Bool)

(assert (=> mapNonEmpty!23440 (= mapRes!23440 (and tp!45285 e!454870))))

(declare-fun mapKey!23440 () (_ BitVec 32))

(declare-fun mapValue!23440 () ValueCell!6865)

(declare-fun mapRest!23440 () (Array (_ BitVec 32) ValueCell!6865))

(assert (=> mapNonEmpty!23440 (= (arr!21696 _values!788) (store mapRest!23440 mapKey!23440 mapValue!23440))))

(declare-fun b!819094 () Bool)

(assert (=> b!819094 (= e!454876 (= lt!367504 (+!1804 lt!367502 (tuple2!9655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819095 () Bool)

(assert (=> b!819095 (= e!454873 (and e!454872 mapRes!23440))))

(declare-fun condMapEmpty!23440 () Bool)

(declare-fun mapDefault!23440 () ValueCell!6865)

