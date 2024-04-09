; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71056 () Bool)

(assert start!71056)

(declare-fun b_free!13235 () Bool)

(declare-fun b_next!13235 () Bool)

(assert (=> start!71056 (= b_free!13235 (not b_next!13235))))

(declare-fun tp!46459 () Bool)

(declare-fun b_and!22157 () Bool)

(assert (=> start!71056 (= tp!46459 b_and!22157)))

(declare-fun mapNonEmpty!24037 () Bool)

(declare-fun mapRes!24037 () Bool)

(declare-fun tp!46458 () Bool)

(declare-fun e!458943 () Bool)

(assert (=> mapNonEmpty!24037 (= mapRes!24037 (and tp!46458 e!458943))))

(declare-datatypes ((V!24927 0))(
  ( (V!24928 (val!7520 Int)) )
))
(declare-datatypes ((ValueCell!7057 0))(
  ( (ValueCellFull!7057 (v!9949 V!24927)) (EmptyCell!7057) )
))
(declare-fun mapValue!24037 () ValueCell!7057)

(declare-fun mapRest!24037 () (Array (_ BitVec 32) ValueCell!7057))

(declare-datatypes ((array!46036 0))(
  ( (array!46037 (arr!22061 (Array (_ BitVec 32) ValueCell!7057)) (size!22482 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46036)

(declare-fun mapKey!24037 () (_ BitVec 32))

(assert (=> mapNonEmpty!24037 (= (arr!22061 _values!788) (store mapRest!24037 mapKey!24037 mapValue!24037))))

(declare-fun b!824701 () Bool)

(declare-fun e!458946 () Bool)

(assert (=> b!824701 (= e!458946 true)))

(declare-fun zeroValueBefore!34 () V!24927)

(declare-datatypes ((array!46038 0))(
  ( (array!46039 (arr!22062 (Array (_ BitVec 32) (_ BitVec 64))) (size!22483 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46038)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24927)

(declare-datatypes ((tuple2!9948 0))(
  ( (tuple2!9949 (_1!4984 (_ BitVec 64)) (_2!4984 V!24927)) )
))
(declare-datatypes ((List!15797 0))(
  ( (Nil!15794) (Cons!15793 (h!16922 tuple2!9948) (t!22148 List!15797)) )
))
(declare-datatypes ((ListLongMap!8785 0))(
  ( (ListLongMap!8786 (toList!4408 List!15797)) )
))
(declare-fun lt!371980 () ListLongMap!8785)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2520 (array!46038 array!46036 (_ BitVec 32) (_ BitVec 32) V!24927 V!24927 (_ BitVec 32) Int) ListLongMap!8785)

(assert (=> b!824701 (= lt!371980 (getCurrentListMap!2520 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824702 () Bool)

(declare-fun res!562356 () Bool)

(declare-fun e!458942 () Bool)

(assert (=> b!824702 (=> (not res!562356) (not e!458942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46038 (_ BitVec 32)) Bool)

(assert (=> b!824702 (= res!562356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24037 () Bool)

(assert (=> mapIsEmpty!24037 mapRes!24037))

(declare-fun b!824703 () Bool)

(declare-fun e!458947 () Bool)

(declare-fun tp_is_empty!14945 () Bool)

(assert (=> b!824703 (= e!458947 tp_is_empty!14945)))

(declare-fun b!824705 () Bool)

(assert (=> b!824705 (= e!458943 tp_is_empty!14945)))

(declare-fun b!824706 () Bool)

(assert (=> b!824706 (= e!458942 (not e!458946))))

(declare-fun res!562354 () Bool)

(assert (=> b!824706 (=> res!562354 e!458946)))

(assert (=> b!824706 (= res!562354 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371981 () ListLongMap!8785)

(declare-fun lt!371982 () ListLongMap!8785)

(assert (=> b!824706 (= lt!371981 lt!371982)))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28258 0))(
  ( (Unit!28259) )
))
(declare-fun lt!371983 () Unit!28258)

(declare-fun zeroValueAfter!34 () V!24927)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!544 (array!46038 array!46036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24927 V!24927 V!24927 V!24927 (_ BitVec 32) Int) Unit!28258)

(assert (=> b!824706 (= lt!371983 (lemmaNoChangeToArrayThenSameMapNoExtras!544 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2428 (array!46038 array!46036 (_ BitVec 32) (_ BitVec 32) V!24927 V!24927 (_ BitVec 32) Int) ListLongMap!8785)

(assert (=> b!824706 (= lt!371982 (getCurrentListMapNoExtraKeys!2428 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824706 (= lt!371981 (getCurrentListMapNoExtraKeys!2428 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824707 () Bool)

(declare-fun res!562355 () Bool)

(assert (=> b!824707 (=> (not res!562355) (not e!458942))))

(declare-datatypes ((List!15798 0))(
  ( (Nil!15795) (Cons!15794 (h!16923 (_ BitVec 64)) (t!22149 List!15798)) )
))
(declare-fun arrayNoDuplicates!0 (array!46038 (_ BitVec 32) List!15798) Bool)

(assert (=> b!824707 (= res!562355 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15795))))

(declare-fun b!824708 () Bool)

(declare-fun e!458945 () Bool)

(assert (=> b!824708 (= e!458945 (and e!458947 mapRes!24037))))

(declare-fun condMapEmpty!24037 () Bool)

(declare-fun mapDefault!24037 () ValueCell!7057)

