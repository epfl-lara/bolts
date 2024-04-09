; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70224 () Bool)

(assert start!70224)

(declare-fun b_free!12593 () Bool)

(declare-fun b_next!12593 () Bool)

(assert (=> start!70224 (= b_free!12593 (not b_next!12593))))

(declare-fun tp!44500 () Bool)

(declare-fun b_and!21399 () Bool)

(assert (=> start!70224 (= tp!44500 b_and!21399)))

(declare-fun b!815400 () Bool)

(declare-fun res!556898 () Bool)

(declare-fun e!452192 () Bool)

(assert (=> b!815400 (=> (not res!556898) (not e!452192))))

(declare-datatypes ((array!44794 0))(
  ( (array!44795 (arr!21451 (Array (_ BitVec 32) (_ BitVec 64))) (size!21872 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44794)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24071 0))(
  ( (V!24072 (val!7199 Int)) )
))
(declare-datatypes ((ValueCell!6736 0))(
  ( (ValueCellFull!6736 (v!9622 V!24071)) (EmptyCell!6736) )
))
(declare-datatypes ((array!44796 0))(
  ( (array!44797 (arr!21452 (Array (_ BitVec 32) ValueCell!6736)) (size!21873 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44796)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815400 (= res!556898 (and (= (size!21873 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21872 _keys!976) (size!21873 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815401 () Bool)

(declare-fun res!556897 () Bool)

(assert (=> b!815401 (=> (not res!556897) (not e!452192))))

(declare-datatypes ((List!15327 0))(
  ( (Nil!15324) (Cons!15323 (h!16452 (_ BitVec 64)) (t!21656 List!15327)) )
))
(declare-fun arrayNoDuplicates!0 (array!44794 (_ BitVec 32) List!15327) Bool)

(assert (=> b!815401 (= res!556897 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15324))))

(declare-fun res!556899 () Bool)

(assert (=> start!70224 (=> (not res!556899) (not e!452192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70224 (= res!556899 (validMask!0 mask!1312))))

(assert (=> start!70224 e!452192))

(declare-fun tp_is_empty!14303 () Bool)

(assert (=> start!70224 tp_is_empty!14303))

(declare-fun array_inv!17143 (array!44794) Bool)

(assert (=> start!70224 (array_inv!17143 _keys!976)))

(assert (=> start!70224 true))

(declare-fun e!452193 () Bool)

(declare-fun array_inv!17144 (array!44796) Bool)

(assert (=> start!70224 (and (array_inv!17144 _values!788) e!452193)))

(assert (=> start!70224 tp!44500))

(declare-fun b!815402 () Bool)

(declare-fun e!452189 () Bool)

(assert (=> b!815402 (= e!452189 tp_is_empty!14303)))

(declare-fun b!815403 () Bool)

(declare-fun e!452190 () Bool)

(assert (=> b!815403 (= e!452190 true)))

(declare-fun zeroValueAfter!34 () V!24071)

(declare-fun minValue!754 () V!24071)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9456 0))(
  ( (tuple2!9457 (_1!4738 (_ BitVec 64)) (_2!4738 V!24071)) )
))
(declare-datatypes ((List!15328 0))(
  ( (Nil!15325) (Cons!15324 (h!16453 tuple2!9456) (t!21657 List!15328)) )
))
(declare-datatypes ((ListLongMap!8293 0))(
  ( (ListLongMap!8294 (toList!4162 List!15328)) )
))
(declare-fun lt!365061 () ListLongMap!8293)

(declare-fun getCurrentListMap!2355 (array!44794 array!44796 (_ BitVec 32) (_ BitVec 32) V!24071 V!24071 (_ BitVec 32) Int) ListLongMap!8293)

(assert (=> b!815403 (= lt!365061 (getCurrentListMap!2355 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24071)

(declare-fun lt!365065 () ListLongMap!8293)

(declare-fun +!1754 (ListLongMap!8293 tuple2!9456) ListLongMap!8293)

(assert (=> b!815403 (= lt!365065 (+!1754 (getCurrentListMap!2355 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9457 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815404 () Bool)

(assert (=> b!815404 (= e!452192 (not e!452190))))

(declare-fun res!556896 () Bool)

(assert (=> b!815404 (=> res!556896 e!452190)))

(assert (=> b!815404 (= res!556896 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365064 () ListLongMap!8293)

(declare-fun lt!365062 () ListLongMap!8293)

(assert (=> b!815404 (= lt!365064 lt!365062)))

(declare-datatypes ((Unit!27780 0))(
  ( (Unit!27781) )
))
(declare-fun lt!365063 () Unit!27780)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!327 (array!44794 array!44796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24071 V!24071 V!24071 V!24071 (_ BitVec 32) Int) Unit!27780)

(assert (=> b!815404 (= lt!365063 (lemmaNoChangeToArrayThenSameMapNoExtras!327 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2211 (array!44794 array!44796 (_ BitVec 32) (_ BitVec 32) V!24071 V!24071 (_ BitVec 32) Int) ListLongMap!8293)

(assert (=> b!815404 (= lt!365062 (getCurrentListMapNoExtraKeys!2211 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815404 (= lt!365064 (getCurrentListMapNoExtraKeys!2211 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23041 () Bool)

(declare-fun mapRes!23041 () Bool)

(declare-fun tp!44499 () Bool)

(assert (=> mapNonEmpty!23041 (= mapRes!23041 (and tp!44499 e!452189))))

(declare-fun mapRest!23041 () (Array (_ BitVec 32) ValueCell!6736))

(declare-fun mapValue!23041 () ValueCell!6736)

(declare-fun mapKey!23041 () (_ BitVec 32))

(assert (=> mapNonEmpty!23041 (= (arr!21452 _values!788) (store mapRest!23041 mapKey!23041 mapValue!23041))))

(declare-fun b!815405 () Bool)

(declare-fun e!452194 () Bool)

(assert (=> b!815405 (= e!452193 (and e!452194 mapRes!23041))))

(declare-fun condMapEmpty!23041 () Bool)

(declare-fun mapDefault!23041 () ValueCell!6736)

