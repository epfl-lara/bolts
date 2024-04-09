; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71342 () Bool)

(assert start!71342)

(declare-fun b_free!13435 () Bool)

(declare-fun b_next!13435 () Bool)

(assert (=> start!71342 (= b_free!13435 (not b_next!13435))))

(declare-fun tp!47073 () Bool)

(declare-fun b_and!22411 () Bool)

(assert (=> start!71342 (= tp!47073 b_and!22411)))

(declare-fun mapNonEmpty!24352 () Bool)

(declare-fun mapRes!24352 () Bool)

(declare-fun tp!47074 () Bool)

(declare-fun e!461478 () Bool)

(assert (=> mapNonEmpty!24352 (= mapRes!24352 (and tp!47074 e!461478))))

(declare-datatypes ((V!25195 0))(
  ( (V!25196 (val!7620 Int)) )
))
(declare-datatypes ((ValueCell!7157 0))(
  ( (ValueCellFull!7157 (v!10052 V!25195)) (EmptyCell!7157) )
))
(declare-fun mapValue!24352 () ValueCell!7157)

(declare-datatypes ((array!46428 0))(
  ( (array!46429 (arr!22252 (Array (_ BitVec 32) ValueCell!7157)) (size!22673 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46428)

(declare-fun mapRest!24352 () (Array (_ BitVec 32) ValueCell!7157))

(declare-fun mapKey!24352 () (_ BitVec 32))

(assert (=> mapNonEmpty!24352 (= (arr!22252 _values!788) (store mapRest!24352 mapKey!24352 mapValue!24352))))

(declare-fun b!828137 () Bool)

(declare-fun e!461480 () Bool)

(declare-fun e!461481 () Bool)

(assert (=> b!828137 (= e!461480 (not e!461481))))

(declare-fun res!564440 () Bool)

(assert (=> b!828137 (=> res!564440 e!461481)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828137 (= res!564440 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10122 0))(
  ( (tuple2!10123 (_1!5071 (_ BitVec 64)) (_2!5071 V!25195)) )
))
(declare-datatypes ((List!15958 0))(
  ( (Nil!15955) (Cons!15954 (h!17083 tuple2!10122) (t!22319 List!15958)) )
))
(declare-datatypes ((ListLongMap!8959 0))(
  ( (ListLongMap!8960 (toList!4495 List!15958)) )
))
(declare-fun lt!375235 () ListLongMap!8959)

(declare-fun lt!375233 () ListLongMap!8959)

(assert (=> b!828137 (= lt!375235 lt!375233)))

(declare-datatypes ((Unit!28375 0))(
  ( (Unit!28376) )
))
(declare-fun lt!375234 () Unit!28375)

(declare-fun zeroValueBefore!34 () V!25195)

(declare-datatypes ((array!46430 0))(
  ( (array!46431 (arr!22253 (Array (_ BitVec 32) (_ BitVec 64))) (size!22674 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46430)

(declare-fun zeroValueAfter!34 () V!25195)

(declare-fun minValue!754 () V!25195)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!590 (array!46430 array!46428 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25195 V!25195 V!25195 V!25195 (_ BitVec 32) Int) Unit!28375)

(assert (=> b!828137 (= lt!375234 (lemmaNoChangeToArrayThenSameMapNoExtras!590 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2500 (array!46430 array!46428 (_ BitVec 32) (_ BitVec 32) V!25195 V!25195 (_ BitVec 32) Int) ListLongMap!8959)

(assert (=> b!828137 (= lt!375233 (getCurrentListMapNoExtraKeys!2500 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828137 (= lt!375235 (getCurrentListMapNoExtraKeys!2500 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828138 () Bool)

(declare-fun res!564443 () Bool)

(assert (=> b!828138 (=> (not res!564443) (not e!461480))))

(declare-datatypes ((List!15959 0))(
  ( (Nil!15956) (Cons!15955 (h!17084 (_ BitVec 64)) (t!22320 List!15959)) )
))
(declare-fun arrayNoDuplicates!0 (array!46430 (_ BitVec 32) List!15959) Bool)

(assert (=> b!828138 (= res!564443 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15956))))

(declare-fun b!828139 () Bool)

(declare-fun e!461482 () Bool)

(declare-fun tp_is_empty!15145 () Bool)

(assert (=> b!828139 (= e!461482 tp_is_empty!15145)))

(declare-fun b!828140 () Bool)

(declare-fun getCurrentListMap!2570 (array!46430 array!46428 (_ BitVec 32) (_ BitVec 32) V!25195 V!25195 (_ BitVec 32) Int) ListLongMap!8959)

(declare-fun +!1928 (ListLongMap!8959 tuple2!10122) ListLongMap!8959)

(assert (=> b!828140 (= e!461481 (= (getCurrentListMap!2570 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1928 lt!375235 (tuple2!10123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!375232 () ListLongMap!8959)

(assert (=> b!828140 (= lt!375232 (getCurrentListMap!2570 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828141 () Bool)

(declare-fun e!461479 () Bool)

(assert (=> b!828141 (= e!461479 (and e!461482 mapRes!24352))))

(declare-fun condMapEmpty!24352 () Bool)

(declare-fun mapDefault!24352 () ValueCell!7157)

