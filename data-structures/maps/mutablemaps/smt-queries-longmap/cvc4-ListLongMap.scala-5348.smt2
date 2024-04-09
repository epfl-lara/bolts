; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71514 () Bool)

(assert start!71514)

(declare-fun b_free!13499 () Bool)

(declare-fun b_next!13499 () Bool)

(assert (=> start!71514 (= b_free!13499 (not b_next!13499))))

(declare-fun tp!47283 () Bool)

(declare-fun b_and!22547 () Bool)

(assert (=> start!71514 (= tp!47283 b_and!22547)))

(declare-fun b!830068 () Bool)

(declare-fun res!565470 () Bool)

(declare-fun e!462819 () Bool)

(assert (=> b!830068 (=> (not res!565470) (not e!462819))))

(declare-datatypes ((array!46562 0))(
  ( (array!46563 (arr!22313 (Array (_ BitVec 32) (_ BitVec 64))) (size!22734 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46562)

(declare-datatypes ((List!16005 0))(
  ( (Nil!16002) (Cons!16001 (h!17130 (_ BitVec 64)) (t!22378 List!16005)) )
))
(declare-fun arrayNoDuplicates!0 (array!46562 (_ BitVec 32) List!16005) Bool)

(assert (=> b!830068 (= res!565470 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16002))))

(declare-fun mapIsEmpty!24466 () Bool)

(declare-fun mapRes!24466 () Bool)

(assert (=> mapIsEmpty!24466 mapRes!24466))

(declare-fun b!830069 () Bool)

(declare-fun e!462821 () Bool)

(declare-fun tp_is_empty!15209 () Bool)

(assert (=> b!830069 (= e!462821 tp_is_empty!15209)))

(declare-datatypes ((V!25279 0))(
  ( (V!25280 (val!7652 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25279)

(declare-fun e!462820 () Bool)

(declare-datatypes ((tuple2!10176 0))(
  ( (tuple2!10177 (_1!5098 (_ BitVec 64)) (_2!5098 V!25279)) )
))
(declare-fun lt!376646 () tuple2!10176)

(declare-datatypes ((List!16006 0))(
  ( (Nil!16003) (Cons!16002 (h!17131 tuple2!10176) (t!22379 List!16006)) )
))
(declare-datatypes ((ListLongMap!9013 0))(
  ( (ListLongMap!9014 (toList!4522 List!16006)) )
))
(declare-fun lt!376648 () ListLongMap!9013)

(declare-fun lt!376643 () ListLongMap!9013)

(declare-fun b!830070 () Bool)

(declare-fun +!1951 (ListLongMap!9013 tuple2!10176) ListLongMap!9013)

(assert (=> b!830070 (= e!462820 (= lt!376643 (+!1951 (+!1951 lt!376648 (tuple2!10177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376646)))))

(declare-fun res!565471 () Bool)

(assert (=> start!71514 (=> (not res!565471) (not e!462819))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71514 (= res!565471 (validMask!0 mask!1312))))

(assert (=> start!71514 e!462819))

(assert (=> start!71514 tp_is_empty!15209))

(declare-fun array_inv!17747 (array!46562) Bool)

(assert (=> start!71514 (array_inv!17747 _keys!976)))

(assert (=> start!71514 true))

(declare-datatypes ((ValueCell!7189 0))(
  ( (ValueCellFull!7189 (v!10090 V!25279)) (EmptyCell!7189) )
))
(declare-datatypes ((array!46564 0))(
  ( (array!46565 (arr!22314 (Array (_ BitVec 32) ValueCell!7189)) (size!22735 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46564)

(declare-fun e!462823 () Bool)

(declare-fun array_inv!17748 (array!46564) Bool)

(assert (=> start!71514 (and (array_inv!17748 _values!788) e!462823)))

(assert (=> start!71514 tp!47283))

(declare-fun b!830067 () Bool)

(assert (=> b!830067 (= e!462823 (and e!462821 mapRes!24466))))

(declare-fun condMapEmpty!24466 () Bool)

(declare-fun mapDefault!24466 () ValueCell!7189)

