; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71346 () Bool)

(assert start!71346)

(declare-fun b_free!13439 () Bool)

(declare-fun b_next!13439 () Bool)

(assert (=> start!71346 (= b_free!13439 (not b_next!13439))))

(declare-fun tp!47085 () Bool)

(declare-fun b_and!22415 () Bool)

(assert (=> start!71346 (= tp!47085 b_and!22415)))

(declare-fun b!828185 () Bool)

(declare-fun e!461515 () Bool)

(declare-fun tp_is_empty!15149 () Bool)

(assert (=> b!828185 (= e!461515 tp_is_empty!15149)))

(declare-fun mapNonEmpty!24358 () Bool)

(declare-fun mapRes!24358 () Bool)

(declare-fun tp!47086 () Bool)

(assert (=> mapNonEmpty!24358 (= mapRes!24358 (and tp!47086 e!461515))))

(declare-fun mapKey!24358 () (_ BitVec 32))

(declare-datatypes ((V!25199 0))(
  ( (V!25200 (val!7622 Int)) )
))
(declare-datatypes ((ValueCell!7159 0))(
  ( (ValueCellFull!7159 (v!10054 V!25199)) (EmptyCell!7159) )
))
(declare-datatypes ((array!46436 0))(
  ( (array!46437 (arr!22256 (Array (_ BitVec 32) ValueCell!7159)) (size!22677 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46436)

(declare-fun mapRest!24358 () (Array (_ BitVec 32) ValueCell!7159))

(declare-fun mapValue!24358 () ValueCell!7159)

(assert (=> mapNonEmpty!24358 (= (arr!22256 _values!788) (store mapRest!24358 mapKey!24358 mapValue!24358))))

(declare-fun zeroValueBefore!34 () V!25199)

(declare-fun e!461514 () Bool)

(declare-datatypes ((array!46438 0))(
  ( (array!46439 (arr!22257 (Array (_ BitVec 32) (_ BitVec 64))) (size!22678 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46438)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun b!828186 () Bool)

(declare-fun minValue!754 () V!25199)

(declare-datatypes ((tuple2!10126 0))(
  ( (tuple2!10127 (_1!5073 (_ BitVec 64)) (_2!5073 V!25199)) )
))
(declare-datatypes ((List!15962 0))(
  ( (Nil!15959) (Cons!15958 (h!17087 tuple2!10126) (t!22323 List!15962)) )
))
(declare-datatypes ((ListLongMap!8963 0))(
  ( (ListLongMap!8964 (toList!4497 List!15962)) )
))
(declare-fun lt!375256 () ListLongMap!8963)

(declare-fun getCurrentListMap!2572 (array!46438 array!46436 (_ BitVec 32) (_ BitVec 32) V!25199 V!25199 (_ BitVec 32) Int) ListLongMap!8963)

(declare-fun +!1930 (ListLongMap!8963 tuple2!10126) ListLongMap!8963)

(assert (=> b!828186 (= e!461514 (= (getCurrentListMap!2572 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1930 lt!375256 (tuple2!10127 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun zeroValueAfter!34 () V!25199)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!375258 () ListLongMap!8963)

(assert (=> b!828186 (= lt!375258 (getCurrentListMap!2572 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828187 () Bool)

(declare-fun res!564471 () Bool)

(declare-fun e!461517 () Bool)

(assert (=> b!828187 (=> (not res!564471) (not e!461517))))

(declare-datatypes ((List!15963 0))(
  ( (Nil!15960) (Cons!15959 (h!17088 (_ BitVec 64)) (t!22324 List!15963)) )
))
(declare-fun arrayNoDuplicates!0 (array!46438 (_ BitVec 32) List!15963) Bool)

(assert (=> b!828187 (= res!564471 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15960))))

(declare-fun b!828188 () Bool)

(assert (=> b!828188 (= e!461517 (not e!461514))))

(declare-fun res!564474 () Bool)

(assert (=> b!828188 (=> res!564474 e!461514)))

(assert (=> b!828188 (= res!564474 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!375257 () ListLongMap!8963)

(assert (=> b!828188 (= lt!375256 lt!375257)))

(declare-datatypes ((Unit!28379 0))(
  ( (Unit!28380) )
))
(declare-fun lt!375259 () Unit!28379)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!592 (array!46438 array!46436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25199 V!25199 V!25199 V!25199 (_ BitVec 32) Int) Unit!28379)

(assert (=> b!828188 (= lt!375259 (lemmaNoChangeToArrayThenSameMapNoExtras!592 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2502 (array!46438 array!46436 (_ BitVec 32) (_ BitVec 32) V!25199 V!25199 (_ BitVec 32) Int) ListLongMap!8963)

(assert (=> b!828188 (= lt!375257 (getCurrentListMapNoExtraKeys!2502 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828188 (= lt!375256 (getCurrentListMapNoExtraKeys!2502 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828189 () Bool)

(declare-fun e!461518 () Bool)

(declare-fun e!461516 () Bool)

(assert (=> b!828189 (= e!461518 (and e!461516 mapRes!24358))))

(declare-fun condMapEmpty!24358 () Bool)

(declare-fun mapDefault!24358 () ValueCell!7159)

