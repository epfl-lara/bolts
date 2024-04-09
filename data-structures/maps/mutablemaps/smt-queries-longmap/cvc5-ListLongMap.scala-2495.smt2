; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38796 () Bool)

(assert start!38796)

(declare-fun b!404363 () Bool)

(declare-fun e!243263 () Bool)

(declare-fun e!243261 () Bool)

(declare-fun mapRes!16932 () Bool)

(assert (=> b!404363 (= e!243263 (and e!243261 mapRes!16932))))

(declare-fun condMapEmpty!16932 () Bool)

(declare-datatypes ((V!14715 0))(
  ( (V!14716 (val!5148 Int)) )
))
(declare-datatypes ((ValueCell!4760 0))(
  ( (ValueCellFull!4760 (v!7391 V!14715)) (EmptyCell!4760) )
))
(declare-datatypes ((array!24279 0))(
  ( (array!24280 (arr!11586 (Array (_ BitVec 32) ValueCell!4760)) (size!11938 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24279)

(declare-fun mapDefault!16932 () ValueCell!4760)

