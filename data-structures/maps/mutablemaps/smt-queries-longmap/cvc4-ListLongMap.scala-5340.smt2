; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71394 () Bool)

(assert start!71394)

(declare-fun b_free!13451 () Bool)

(declare-fun b_next!13451 () Bool)

(assert (=> start!71394 (= b_free!13451 (not b_next!13451))))

(declare-fun tp!47128 () Bool)

(declare-fun b_and!22451 () Bool)

(assert (=> start!71394 (= tp!47128 b_and!22451)))

(declare-fun e!461870 () Bool)

(declare-datatypes ((V!25215 0))(
  ( (V!25216 (val!7628 Int)) )
))
(declare-datatypes ((tuple2!10136 0))(
  ( (tuple2!10137 (_1!5078 (_ BitVec 64)) (_2!5078 V!25215)) )
))
(declare-fun lt!375650 () tuple2!10136)

(declare-fun lt!375649 () tuple2!10136)

(declare-datatypes ((List!15971 0))(
  ( (Nil!15968) (Cons!15967 (h!17096 tuple2!10136) (t!22336 List!15971)) )
))
(declare-datatypes ((ListLongMap!8973 0))(
  ( (ListLongMap!8974 (toList!4502 List!15971)) )
))
(declare-fun lt!375644 () ListLongMap!8973)

(declare-fun lt!375643 () ListLongMap!8973)

(declare-fun b!828707 () Bool)

(declare-fun +!1935 (ListLongMap!8973 tuple2!10136) ListLongMap!8973)

(assert (=> b!828707 (= e!461870 (= lt!375643 (+!1935 (+!1935 lt!375644 lt!375650) lt!375649)))))

(declare-fun lt!375647 () ListLongMap!8973)

(declare-fun lt!375646 () ListLongMap!8973)

(assert (=> b!828707 (= (+!1935 lt!375647 lt!375649) (+!1935 lt!375646 lt!375649))))

(declare-fun zeroValueBefore!34 () V!25215)

(declare-datatypes ((Unit!28393 0))(
  ( (Unit!28394) )
))
(declare-fun lt!375648 () Unit!28393)

(declare-fun zeroValueAfter!34 () V!25215)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!244 (ListLongMap!8973 (_ BitVec 64) V!25215 V!25215) Unit!28393)

(assert (=> b!828707 (= lt!375648 (addSameAsAddTwiceSameKeyDiffValues!244 lt!375647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828707 (= lt!375649 (tuple2!10137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!461869 () Bool)

(assert (=> b!828707 e!461869))

(declare-fun res!564734 () Bool)

(assert (=> b!828707 (=> (not res!564734) (not e!461869))))

(declare-fun lt!375645 () ListLongMap!8973)

(assert (=> b!828707 (= res!564734 (= lt!375645 lt!375646))))

(assert (=> b!828707 (= lt!375646 (+!1935 lt!375647 lt!375650))))

(assert (=> b!828707 (= lt!375650 (tuple2!10137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46462 0))(
  ( (array!46463 (arr!22267 (Array (_ BitVec 32) (_ BitVec 64))) (size!22688 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46462)

(declare-fun minValue!754 () V!25215)

(declare-datatypes ((ValueCell!7165 0))(
  ( (ValueCellFull!7165 (v!10062 V!25215)) (EmptyCell!7165) )
))
(declare-datatypes ((array!46464 0))(
  ( (array!46465 (arr!22268 (Array (_ BitVec 32) ValueCell!7165)) (size!22689 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46464)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2577 (array!46462 array!46464 (_ BitVec 32) (_ BitVec 32) V!25215 V!25215 (_ BitVec 32) Int) ListLongMap!8973)

(assert (=> b!828707 (= lt!375643 (getCurrentListMap!2577 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828707 (= lt!375645 (getCurrentListMap!2577 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828708 () Bool)

(declare-fun res!564738 () Bool)

(declare-fun e!461871 () Bool)

(assert (=> b!828708 (=> (not res!564738) (not e!461871))))

(declare-datatypes ((List!15972 0))(
  ( (Nil!15969) (Cons!15968 (h!17097 (_ BitVec 64)) (t!22337 List!15972)) )
))
(declare-fun arrayNoDuplicates!0 (array!46462 (_ BitVec 32) List!15972) Bool)

(assert (=> b!828708 (= res!564738 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15969))))

(declare-fun b!828709 () Bool)

(declare-fun e!461873 () Bool)

(declare-fun e!461868 () Bool)

(declare-fun mapRes!24382 () Bool)

(assert (=> b!828709 (= e!461873 (and e!461868 mapRes!24382))))

(declare-fun condMapEmpty!24382 () Bool)

(declare-fun mapDefault!24382 () ValueCell!7165)

