; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71114 () Bool)

(assert start!71114)

(declare-fun b_free!13277 () Bool)

(declare-fun b_next!13277 () Bool)

(assert (=> start!71114 (= b_free!13277 (not b_next!13277))))

(declare-fun tp!46587 () Bool)

(declare-fun b_and!22209 () Bool)

(assert (=> start!71114 (= tp!46587 b_and!22209)))

(declare-fun b!825459 () Bool)

(declare-fun e!459523 () Bool)

(declare-fun tp_is_empty!14987 () Bool)

(assert (=> b!825459 (= e!459523 tp_is_empty!14987)))

(declare-fun b!825460 () Bool)

(declare-fun res!562839 () Bool)

(declare-fun e!459527 () Bool)

(assert (=> b!825460 (=> (not res!562839) (not e!459527))))

(declare-datatypes ((array!46116 0))(
  ( (array!46117 (arr!22100 (Array (_ BitVec 32) (_ BitVec 64))) (size!22521 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46116)

(declare-datatypes ((List!15828 0))(
  ( (Nil!15825) (Cons!15824 (h!16953 (_ BitVec 64)) (t!22181 List!15828)) )
))
(declare-fun arrayNoDuplicates!0 (array!46116 (_ BitVec 32) List!15828) Bool)

(assert (=> b!825460 (= res!562839 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15825))))

(declare-fun b!825461 () Bool)

(declare-fun e!459522 () Bool)

(assert (=> b!825461 (= e!459527 (not e!459522))))

(declare-fun res!562835 () Bool)

(assert (=> b!825461 (=> res!562835 e!459522)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825461 (= res!562835 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24983 0))(
  ( (V!24984 (val!7541 Int)) )
))
(declare-datatypes ((tuple2!9984 0))(
  ( (tuple2!9985 (_1!5002 (_ BitVec 64)) (_2!5002 V!24983)) )
))
(declare-datatypes ((List!15829 0))(
  ( (Nil!15826) (Cons!15825 (h!16954 tuple2!9984) (t!22182 List!15829)) )
))
(declare-datatypes ((ListLongMap!8821 0))(
  ( (ListLongMap!8822 (toList!4426 List!15829)) )
))
(declare-fun lt!372871 () ListLongMap!8821)

(declare-fun lt!372877 () ListLongMap!8821)

(assert (=> b!825461 (= lt!372871 lt!372877)))

(declare-fun zeroValueBefore!34 () V!24983)

(declare-fun zeroValueAfter!34 () V!24983)

(declare-fun minValue!754 () V!24983)

(declare-datatypes ((ValueCell!7078 0))(
  ( (ValueCellFull!7078 (v!9970 V!24983)) (EmptyCell!7078) )
))
(declare-datatypes ((array!46118 0))(
  ( (array!46119 (arr!22101 (Array (_ BitVec 32) ValueCell!7078)) (size!22522 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46118)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28293 0))(
  ( (Unit!28294) )
))
(declare-fun lt!372872 () Unit!28293)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!558 (array!46116 array!46118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24983 V!24983 V!24983 V!24983 (_ BitVec 32) Int) Unit!28293)

(assert (=> b!825461 (= lt!372872 (lemmaNoChangeToArrayThenSameMapNoExtras!558 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2442 (array!46116 array!46118 (_ BitVec 32) (_ BitVec 32) V!24983 V!24983 (_ BitVec 32) Int) ListLongMap!8821)

(assert (=> b!825461 (= lt!372877 (getCurrentListMapNoExtraKeys!2442 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825461 (= lt!372871 (getCurrentListMapNoExtraKeys!2442 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825462 () Bool)

(declare-fun e!459524 () Bool)

(declare-fun e!459525 () Bool)

(declare-fun mapRes!24103 () Bool)

(assert (=> b!825462 (= e!459524 (and e!459525 mapRes!24103))))

(declare-fun condMapEmpty!24103 () Bool)

(declare-fun mapDefault!24103 () ValueCell!7078)

