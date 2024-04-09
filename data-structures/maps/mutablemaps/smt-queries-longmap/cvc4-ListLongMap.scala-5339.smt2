; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71370 () Bool)

(assert start!71370)

(declare-fun b_free!13445 () Bool)

(declare-fun b_next!13445 () Bool)

(assert (=> start!71370 (= b_free!13445 (not b_next!13445))))

(declare-fun tp!47107 () Bool)

(declare-fun b_and!22433 () Bool)

(assert (=> start!71370 (= tp!47107 b_and!22433)))

(declare-fun mapIsEmpty!24370 () Bool)

(declare-fun mapRes!24370 () Bool)

(assert (=> mapIsEmpty!24370 mapRes!24370))

(declare-fun b!828448 () Bool)

(declare-fun res!564605 () Bool)

(declare-fun e!461700 () Bool)

(assert (=> b!828448 (=> (not res!564605) (not e!461700))))

(declare-datatypes ((array!46448 0))(
  ( (array!46449 (arr!22261 (Array (_ BitVec 32) (_ BitVec 64))) (size!22682 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46448)

(declare-datatypes ((List!15966 0))(
  ( (Nil!15963) (Cons!15962 (h!17091 (_ BitVec 64)) (t!22329 List!15966)) )
))
(declare-fun arrayNoDuplicates!0 (array!46448 (_ BitVec 32) List!15966) Bool)

(assert (=> b!828448 (= res!564605 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15963))))

(declare-fun b!828449 () Bool)

(declare-fun e!461694 () Bool)

(assert (=> b!828449 (= e!461700 (not e!461694))))

(declare-fun res!564606 () Bool)

(assert (=> b!828449 (=> res!564606 e!461694)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828449 (= res!564606 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461699 () Bool)

(assert (=> b!828449 e!461699))

(declare-fun res!564607 () Bool)

(assert (=> b!828449 (=> (not res!564607) (not e!461699))))

(declare-datatypes ((V!25207 0))(
  ( (V!25208 (val!7625 Int)) )
))
(declare-datatypes ((tuple2!10130 0))(
  ( (tuple2!10131 (_1!5075 (_ BitVec 64)) (_2!5075 V!25207)) )
))
(declare-datatypes ((List!15967 0))(
  ( (Nil!15964) (Cons!15963 (h!17092 tuple2!10130) (t!22330 List!15967)) )
))
(declare-datatypes ((ListLongMap!8967 0))(
  ( (ListLongMap!8968 (toList!4499 List!15967)) )
))
(declare-fun lt!375424 () ListLongMap!8967)

(declare-fun lt!375426 () ListLongMap!8967)

(assert (=> b!828449 (= res!564607 (= lt!375424 lt!375426))))

(declare-fun zeroValueBefore!34 () V!25207)

(declare-fun zeroValueAfter!34 () V!25207)

(declare-fun minValue!754 () V!25207)

(declare-datatypes ((ValueCell!7162 0))(
  ( (ValueCellFull!7162 (v!10058 V!25207)) (EmptyCell!7162) )
))
(declare-datatypes ((array!46450 0))(
  ( (array!46451 (arr!22262 (Array (_ BitVec 32) ValueCell!7162)) (size!22683 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46450)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28385 0))(
  ( (Unit!28386) )
))
(declare-fun lt!375425 () Unit!28385)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!594 (array!46448 array!46450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25207 V!25207 V!25207 V!25207 (_ BitVec 32) Int) Unit!28385)

(assert (=> b!828449 (= lt!375425 (lemmaNoChangeToArrayThenSameMapNoExtras!594 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2504 (array!46448 array!46450 (_ BitVec 32) (_ BitVec 32) V!25207 V!25207 (_ BitVec 32) Int) ListLongMap!8967)

(assert (=> b!828449 (= lt!375426 (getCurrentListMapNoExtraKeys!2504 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828449 (= lt!375424 (getCurrentListMapNoExtraKeys!2504 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828450 () Bool)

(declare-fun e!461695 () Bool)

(declare-fun tp_is_empty!15155 () Bool)

(assert (=> b!828450 (= e!461695 tp_is_empty!15155)))

(declare-fun res!564609 () Bool)

(assert (=> start!71370 (=> (not res!564609) (not e!461700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71370 (= res!564609 (validMask!0 mask!1312))))

(assert (=> start!71370 e!461700))

(assert (=> start!71370 tp_is_empty!15155))

(declare-fun array_inv!17715 (array!46448) Bool)

(assert (=> start!71370 (array_inv!17715 _keys!976)))

(assert (=> start!71370 true))

(declare-fun e!461696 () Bool)

(declare-fun array_inv!17716 (array!46450) Bool)

(assert (=> start!71370 (and (array_inv!17716 _values!788) e!461696)))

(assert (=> start!71370 tp!47107))

(declare-fun b!828451 () Bool)

(declare-fun getCurrentListMap!2574 (array!46448 array!46450 (_ BitVec 32) (_ BitVec 32) V!25207 V!25207 (_ BitVec 32) Int) ListLongMap!8967)

(declare-fun +!1932 (ListLongMap!8967 tuple2!10130) ListLongMap!8967)

(assert (=> b!828451 (= e!461694 (= (getCurrentListMap!2574 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1932 lt!375426 (tuple2!10131 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!24370 () Bool)

(declare-fun tp!47106 () Bool)

(assert (=> mapNonEmpty!24370 (= mapRes!24370 (and tp!47106 e!461695))))

(declare-fun mapRest!24370 () (Array (_ BitVec 32) ValueCell!7162))

(declare-fun mapKey!24370 () (_ BitVec 32))

(declare-fun mapValue!24370 () ValueCell!7162)

(assert (=> mapNonEmpty!24370 (= (arr!22262 _values!788) (store mapRest!24370 mapKey!24370 mapValue!24370))))

(declare-fun b!828452 () Bool)

(declare-fun e!461693 () Bool)

(assert (=> b!828452 (= e!461696 (and e!461693 mapRes!24370))))

(declare-fun condMapEmpty!24370 () Bool)

(declare-fun mapDefault!24370 () ValueCell!7162)

