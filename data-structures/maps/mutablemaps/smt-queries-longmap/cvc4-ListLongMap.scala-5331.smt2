; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71274 () Bool)

(assert start!71274)

(declare-fun b_free!13397 () Bool)

(declare-fun b_next!13397 () Bool)

(assert (=> start!71274 (= b_free!13397 (not b_next!13397))))

(declare-fun tp!46954 () Bool)

(declare-fun b_and!22353 () Bool)

(assert (=> start!71274 (= tp!46954 b_and!22353)))

(declare-fun b!827458 () Bool)

(declare-fun e!461010 () Bool)

(assert (=> b!827458 (= e!461010 false)))

(declare-datatypes ((array!46348 0))(
  ( (array!46349 (arr!22214 (Array (_ BitVec 32) (_ BitVec 64))) (size!22635 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46348)

(declare-datatypes ((V!25143 0))(
  ( (V!25144 (val!7601 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25143)

(declare-fun minValue!754 () V!25143)

(declare-datatypes ((ValueCell!7138 0))(
  ( (ValueCellFull!7138 (v!10032 V!25143)) (EmptyCell!7138) )
))
(declare-datatypes ((array!46350 0))(
  ( (array!46351 (arr!22215 (Array (_ BitVec 32) ValueCell!7138)) (size!22636 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46350)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!10086 0))(
  ( (tuple2!10087 (_1!5053 (_ BitVec 64)) (_2!5053 V!25143)) )
))
(declare-datatypes ((List!15924 0))(
  ( (Nil!15921) (Cons!15920 (h!17049 tuple2!10086) (t!22281 List!15924)) )
))
(declare-datatypes ((ListLongMap!8923 0))(
  ( (ListLongMap!8924 (toList!4477 List!15924)) )
))
(declare-fun lt!374901 () ListLongMap!8923)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2484 (array!46348 array!46350 (_ BitVec 32) (_ BitVec 32) V!25143 V!25143 (_ BitVec 32) Int) ListLongMap!8923)

(assert (=> b!827458 (= lt!374901 (getCurrentListMapNoExtraKeys!2484 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25143)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374902 () ListLongMap!8923)

(assert (=> b!827458 (= lt!374902 (getCurrentListMapNoExtraKeys!2484 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827459 () Bool)

(declare-fun res!564089 () Bool)

(assert (=> b!827459 (=> (not res!564089) (not e!461010))))

(declare-datatypes ((List!15925 0))(
  ( (Nil!15922) (Cons!15921 (h!17050 (_ BitVec 64)) (t!22282 List!15925)) )
))
(declare-fun arrayNoDuplicates!0 (array!46348 (_ BitVec 32) List!15925) Bool)

(assert (=> b!827459 (= res!564089 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15922))))

(declare-fun b!827460 () Bool)

(declare-fun e!461007 () Bool)

(declare-fun tp_is_empty!15107 () Bool)

(assert (=> b!827460 (= e!461007 tp_is_empty!15107)))

(declare-fun b!827461 () Bool)

(declare-fun e!461008 () Bool)

(assert (=> b!827461 (= e!461008 tp_is_empty!15107)))

(declare-fun b!827462 () Bool)

(declare-fun e!461009 () Bool)

(declare-fun mapRes!24289 () Bool)

(assert (=> b!827462 (= e!461009 (and e!461007 mapRes!24289))))

(declare-fun condMapEmpty!24289 () Bool)

(declare-fun mapDefault!24289 () ValueCell!7138)

