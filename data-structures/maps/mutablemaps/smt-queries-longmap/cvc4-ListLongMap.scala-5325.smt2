; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71238 () Bool)

(assert start!71238)

(declare-fun b_free!13361 () Bool)

(declare-fun b_next!13361 () Bool)

(assert (=> start!71238 (= b_free!13361 (not b_next!13361))))

(declare-fun tp!46846 () Bool)

(declare-fun b_and!22317 () Bool)

(assert (=> start!71238 (= tp!46846 b_and!22317)))

(declare-fun b!827080 () Bool)

(declare-fun e!460739 () Bool)

(declare-fun tp_is_empty!15071 () Bool)

(assert (=> b!827080 (= e!460739 tp_is_empty!15071)))

(declare-fun b!827081 () Bool)

(declare-fun e!460740 () Bool)

(declare-fun mapRes!24235 () Bool)

(assert (=> b!827081 (= e!460740 (and e!460739 mapRes!24235))))

(declare-fun condMapEmpty!24235 () Bool)

(declare-datatypes ((V!25095 0))(
  ( (V!25096 (val!7583 Int)) )
))
(declare-datatypes ((ValueCell!7120 0))(
  ( (ValueCellFull!7120 (v!10014 V!25095)) (EmptyCell!7120) )
))
(declare-datatypes ((array!46280 0))(
  ( (array!46281 (arr!22180 (Array (_ BitVec 32) ValueCell!7120)) (size!22601 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46280)

(declare-fun mapDefault!24235 () ValueCell!7120)

