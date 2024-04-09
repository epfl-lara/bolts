; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37708 () Bool)

(assert start!37708)

(declare-fun b_free!8803 () Bool)

(declare-fun b_next!8803 () Bool)

(assert (=> start!37708 (= b_free!8803 (not b_next!8803))))

(declare-fun tp!31161 () Bool)

(declare-fun b_and!16063 () Bool)

(assert (=> start!37708 (= tp!31161 b_and!16063)))

(declare-fun b!386168 () Bool)

(declare-fun e!234287 () Bool)

(declare-fun e!234290 () Bool)

(declare-fun mapRes!15777 () Bool)

(assert (=> b!386168 (= e!234287 (and e!234290 mapRes!15777))))

(declare-fun condMapEmpty!15777 () Bool)

(declare-datatypes ((V!13739 0))(
  ( (V!13740 (val!4782 Int)) )
))
(declare-datatypes ((ValueCell!4394 0))(
  ( (ValueCellFull!4394 (v!6975 V!13739)) (EmptyCell!4394) )
))
(declare-datatypes ((array!22823 0))(
  ( (array!22824 (arr!10877 (Array (_ BitVec 32) ValueCell!4394)) (size!11229 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22823)

(declare-fun mapDefault!15777 () ValueCell!4394)

