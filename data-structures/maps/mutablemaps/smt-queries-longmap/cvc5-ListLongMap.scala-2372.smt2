; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37702 () Bool)

(assert start!37702)

(declare-fun b_free!8797 () Bool)

(declare-fun b_next!8797 () Bool)

(assert (=> start!37702 (= b_free!8797 (not b_next!8797))))

(declare-fun tp!31142 () Bool)

(declare-fun b_and!16057 () Bool)

(assert (=> start!37702 (= tp!31142 b_and!16057)))

(declare-fun b!386051 () Bool)

(declare-fun e!234233 () Bool)

(declare-fun e!234237 () Bool)

(declare-fun mapRes!15768 () Bool)

(assert (=> b!386051 (= e!234233 (and e!234237 mapRes!15768))))

(declare-fun condMapEmpty!15768 () Bool)

(declare-datatypes ((V!13731 0))(
  ( (V!13732 (val!4779 Int)) )
))
(declare-datatypes ((ValueCell!4391 0))(
  ( (ValueCellFull!4391 (v!6972 V!13731)) (EmptyCell!4391) )
))
(declare-datatypes ((array!22813 0))(
  ( (array!22814 (arr!10872 (Array (_ BitVec 32) ValueCell!4391)) (size!11224 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22813)

(declare-fun mapDefault!15768 () ValueCell!4391)

