; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38686 () Bool)

(assert start!38686)

(declare-fun b_free!9215 () Bool)

(declare-fun b_next!9215 () Bool)

(assert (=> start!38686 (= b_free!9215 (not b_next!9215))))

(declare-fun tp!32769 () Bool)

(declare-fun b_and!16619 () Bool)

(assert (=> start!38686 (= tp!32769 b_and!16619)))

(declare-fun b!401746 () Bool)

(declare-fun e!242156 () Bool)

(declare-fun e!242158 () Bool)

(declare-fun mapRes!16767 () Bool)

(assert (=> b!401746 (= e!242156 (and e!242158 mapRes!16767))))

(declare-fun condMapEmpty!16767 () Bool)

(declare-datatypes ((V!14567 0))(
  ( (V!14568 (val!5093 Int)) )
))
(declare-datatypes ((ValueCell!4705 0))(
  ( (ValueCellFull!4705 (v!7336 V!14567)) (EmptyCell!4705) )
))
(declare-datatypes ((array!24067 0))(
  ( (array!24068 (arr!11480 (Array (_ BitVec 32) ValueCell!4705)) (size!11832 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24067)

(declare-fun mapDefault!16767 () ValueCell!4705)

