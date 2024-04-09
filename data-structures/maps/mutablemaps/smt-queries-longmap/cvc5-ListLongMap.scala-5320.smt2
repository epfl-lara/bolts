; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71184 () Bool)

(assert start!71184)

(declare-fun b_free!13327 () Bool)

(declare-fun b_next!13327 () Bool)

(assert (=> start!71184 (= b_free!13327 (not b_next!13327))))

(declare-fun tp!46740 () Bool)

(declare-fun b_and!22271 () Bool)

(assert (=> start!71184 (= tp!46740 b_and!22271)))

(declare-fun b!826415 () Bool)

(declare-fun res!563467 () Bool)

(declare-fun e!460257 () Bool)

(assert (=> b!826415 (=> (not res!563467) (not e!460257))))

(declare-datatypes ((array!46214 0))(
  ( (array!46215 (arr!22148 (Array (_ BitVec 32) (_ BitVec 64))) (size!22569 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46214)

(declare-datatypes ((List!15872 0))(
  ( (Nil!15869) (Cons!15868 (h!16997 (_ BitVec 64)) (t!22227 List!15872)) )
))
(declare-fun arrayNoDuplicates!0 (array!46214 (_ BitVec 32) List!15872) Bool)

(assert (=> b!826415 (= res!563467 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15869))))

(declare-fun b!826416 () Bool)

(declare-fun e!460252 () Bool)

(assert (=> b!826416 (= e!460252 true)))

(declare-datatypes ((V!25051 0))(
  ( (V!25052 (val!7566 Int)) )
))
(declare-datatypes ((tuple2!10034 0))(
  ( (tuple2!10035 (_1!5027 (_ BitVec 64)) (_2!5027 V!25051)) )
))
(declare-fun lt!374098 () tuple2!10034)

(declare-fun lt!374096 () tuple2!10034)

(declare-datatypes ((List!15873 0))(
  ( (Nil!15870) (Cons!15869 (h!16998 tuple2!10034) (t!22228 List!15873)) )
))
(declare-datatypes ((ListLongMap!8871 0))(
  ( (ListLongMap!8872 (toList!4451 List!15873)) )
))
(declare-fun lt!374107 () ListLongMap!8871)

(declare-fun lt!374106 () ListLongMap!8871)

(declare-fun +!1912 (ListLongMap!8871 tuple2!10034) ListLongMap!8871)

(assert (=> b!826416 (= lt!374106 (+!1912 (+!1912 lt!374107 lt!374098) lt!374096))))

(declare-fun lt!374100 () ListLongMap!8871)

(declare-fun lt!374102 () ListLongMap!8871)

(declare-fun lt!374103 () ListLongMap!8871)

(assert (=> b!826416 (and (= lt!374100 lt!374102) (= lt!374103 lt!374102) (= lt!374103 lt!374100))))

(declare-fun lt!374108 () ListLongMap!8871)

(assert (=> b!826416 (= lt!374102 (+!1912 lt!374108 lt!374098))))

(declare-fun lt!374101 () ListLongMap!8871)

(assert (=> b!826416 (= lt!374100 (+!1912 lt!374101 lt!374098))))

(declare-fun zeroValueBefore!34 () V!25051)

(declare-datatypes ((Unit!28337 0))(
  ( (Unit!28338) )
))
(declare-fun lt!374109 () Unit!28337)

(declare-fun zeroValueAfter!34 () V!25051)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!234 (ListLongMap!8871 (_ BitVec 64) V!25051 V!25051) Unit!28337)

(assert (=> b!826416 (= lt!374109 (addSameAsAddTwiceSameKeyDiffValues!234 lt!374101 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460254 () Bool)

(assert (=> b!826416 e!460254))

(declare-fun res!563462 () Bool)

(assert (=> b!826416 (=> (not res!563462) (not e!460254))))

(declare-fun lt!374097 () ListLongMap!8871)

(assert (=> b!826416 (= res!563462 (= lt!374097 lt!374108))))

(declare-fun lt!374099 () tuple2!10034)

(assert (=> b!826416 (= lt!374108 (+!1912 lt!374101 lt!374099))))

(assert (=> b!826416 (= lt!374101 (+!1912 lt!374107 lt!374096))))

(assert (=> b!826416 (= lt!374098 (tuple2!10035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460250 () Bool)

(assert (=> b!826416 e!460250))

(declare-fun res!563463 () Bool)

(assert (=> b!826416 (=> (not res!563463) (not e!460250))))

(assert (=> b!826416 (= res!563463 (= lt!374097 (+!1912 (+!1912 lt!374107 lt!374099) lt!374096)))))

(declare-fun minValue!754 () V!25051)

(assert (=> b!826416 (= lt!374096 (tuple2!10035 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826416 (= lt!374099 (tuple2!10035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((ValueCell!7103 0))(
  ( (ValueCellFull!7103 (v!9996 V!25051)) (EmptyCell!7103) )
))
(declare-datatypes ((array!46216 0))(
  ( (array!46217 (arr!22149 (Array (_ BitVec 32) ValueCell!7103)) (size!22570 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46216)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2556 (array!46214 array!46216 (_ BitVec 32) (_ BitVec 32) V!25051 V!25051 (_ BitVec 32) Int) ListLongMap!8871)

(assert (=> b!826416 (= lt!374103 (getCurrentListMap!2556 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826416 (= lt!374097 (getCurrentListMap!2556 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826417 () Bool)

(declare-fun e!460256 () Bool)

(declare-fun tp_is_empty!15037 () Bool)

(assert (=> b!826417 (= e!460256 tp_is_empty!15037)))

(declare-fun res!563468 () Bool)

(assert (=> start!71184 (=> (not res!563468) (not e!460257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71184 (= res!563468 (validMask!0 mask!1312))))

(assert (=> start!71184 e!460257))

(assert (=> start!71184 tp_is_empty!15037))

(declare-fun array_inv!17637 (array!46214) Bool)

(assert (=> start!71184 (array_inv!17637 _keys!976)))

(assert (=> start!71184 true))

(declare-fun e!460255 () Bool)

(declare-fun array_inv!17638 (array!46216) Bool)

(assert (=> start!71184 (and (array_inv!17638 _values!788) e!460255)))

(assert (=> start!71184 tp!46740))

(declare-fun lt!374104 () ListLongMap!8871)

(declare-fun b!826418 () Bool)

(assert (=> b!826418 (= e!460250 (= lt!374103 (+!1912 (+!1912 lt!374104 (tuple2!10035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374096)))))

(declare-fun b!826419 () Bool)

(assert (=> b!826419 (= e!460257 (not e!460252))))

(declare-fun res!563465 () Bool)

(assert (=> b!826419 (=> res!563465 e!460252)))

(assert (=> b!826419 (= res!563465 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826419 (= lt!374107 lt!374104)))

(declare-fun lt!374105 () Unit!28337)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!576 (array!46214 array!46216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25051 V!25051 V!25051 V!25051 (_ BitVec 32) Int) Unit!28337)

(assert (=> b!826419 (= lt!374105 (lemmaNoChangeToArrayThenSameMapNoExtras!576 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2460 (array!46214 array!46216 (_ BitVec 32) (_ BitVec 32) V!25051 V!25051 (_ BitVec 32) Int) ListLongMap!8871)

(assert (=> b!826419 (= lt!374104 (getCurrentListMapNoExtraKeys!2460 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826419 (= lt!374107 (getCurrentListMapNoExtraKeys!2460 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826420 () Bool)

(assert (=> b!826420 (= e!460254 (= lt!374103 (+!1912 (+!1912 lt!374104 lt!374096) lt!374098)))))

(declare-fun mapIsEmpty!24181 () Bool)

(declare-fun mapRes!24181 () Bool)

(assert (=> mapIsEmpty!24181 mapRes!24181))

(declare-fun b!826421 () Bool)

(declare-fun res!563466 () Bool)

(assert (=> b!826421 (=> (not res!563466) (not e!460257))))

(assert (=> b!826421 (= res!563466 (and (= (size!22570 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22569 _keys!976) (size!22570 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24181 () Bool)

(declare-fun tp!46741 () Bool)

(assert (=> mapNonEmpty!24181 (= mapRes!24181 (and tp!46741 e!460256))))

(declare-fun mapValue!24181 () ValueCell!7103)

(declare-fun mapKey!24181 () (_ BitVec 32))

(declare-fun mapRest!24181 () (Array (_ BitVec 32) ValueCell!7103))

(assert (=> mapNonEmpty!24181 (= (arr!22149 _values!788) (store mapRest!24181 mapKey!24181 mapValue!24181))))

(declare-fun b!826422 () Bool)

(declare-fun e!460251 () Bool)

(assert (=> b!826422 (= e!460255 (and e!460251 mapRes!24181))))

(declare-fun condMapEmpty!24181 () Bool)

(declare-fun mapDefault!24181 () ValueCell!7103)

