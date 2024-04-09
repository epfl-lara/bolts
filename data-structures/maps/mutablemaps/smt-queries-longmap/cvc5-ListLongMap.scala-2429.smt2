; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38352 () Bool)

(assert start!38352)

(declare-fun b!395224 () Bool)

(declare-fun e!239299 () Bool)

(declare-fun tp_is_empty!9811 () Bool)

(assert (=> b!395224 (= e!239299 tp_is_empty!9811)))

(declare-fun b!395225 () Bool)

(declare-fun e!239297 () Bool)

(declare-fun mapRes!16329 () Bool)

(assert (=> b!395225 (= e!239297 (and e!239299 mapRes!16329))))

(declare-fun condMapEmpty!16329 () Bool)

(declare-datatypes ((V!14187 0))(
  ( (V!14188 (val!4950 Int)) )
))
(declare-datatypes ((ValueCell!4562 0))(
  ( (ValueCellFull!4562 (v!7192 V!14187)) (EmptyCell!4562) )
))
(declare-datatypes ((array!23509 0))(
  ( (array!23510 (arr!11204 (Array (_ BitVec 32) ValueCell!4562)) (size!11556 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23509)

(declare-fun mapDefault!16329 () ValueCell!4562)

