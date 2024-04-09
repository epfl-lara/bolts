; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37952 () Bool)

(assert start!37952)

(declare-fun b_free!8957 () Bool)

(declare-fun b_next!8957 () Bool)

(assert (=> start!37952 (= b_free!8957 (not b_next!8957))))

(declare-fun tp!31634 () Bool)

(declare-fun b_and!16265 () Bool)

(assert (=> start!37952 (= tp!31634 b_and!16265)))

(declare-fun b!390139 () Bool)

(declare-fun e!236337 () Bool)

(declare-fun tp_is_empty!9629 () Bool)

(assert (=> b!390139 (= e!236337 tp_is_empty!9629)))

(declare-fun b!390140 () Bool)

(declare-fun res!223342 () Bool)

(declare-fun e!236333 () Bool)

(assert (=> b!390140 (=> (not res!223342) (not e!236333))))

(declare-datatypes ((array!23133 0))(
  ( (array!23134 (arr!11028 (Array (_ BitVec 32) (_ BitVec 64))) (size!11380 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23133)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23133 (_ BitVec 32)) Bool)

(assert (=> b!390140 (= res!223342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390141 () Bool)

(declare-fun e!236335 () Bool)

(declare-fun e!236332 () Bool)

(declare-fun mapRes!16020 () Bool)

(assert (=> b!390141 (= e!236335 (and e!236332 mapRes!16020))))

(declare-fun condMapEmpty!16020 () Bool)

(declare-datatypes ((V!13943 0))(
  ( (V!13944 (val!4859 Int)) )
))
(declare-datatypes ((ValueCell!4471 0))(
  ( (ValueCellFull!4471 (v!7068 V!13943)) (EmptyCell!4471) )
))
(declare-datatypes ((array!23135 0))(
  ( (array!23136 (arr!11029 (Array (_ BitVec 32) ValueCell!4471)) (size!11381 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23135)

(declare-fun mapDefault!16020 () ValueCell!4471)

