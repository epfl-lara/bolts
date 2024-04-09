; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43192 () Bool)

(assert start!43192)

(declare-fun b!478447 () Bool)

(declare-fun e!281340 () Bool)

(declare-fun e!281339 () Bool)

(declare-fun mapRes!22054 () Bool)

(assert (=> b!478447 (= e!281340 (and e!281339 mapRes!22054))))

(declare-fun condMapEmpty!22054 () Bool)

(declare-datatypes ((V!19169 0))(
  ( (V!19170 (val!6834 Int)) )
))
(declare-datatypes ((ValueCell!6425 0))(
  ( (ValueCellFull!6425 (v!9119 V!19169)) (EmptyCell!6425) )
))
(declare-datatypes ((array!30793 0))(
  ( (array!30794 (arr!14801 (Array (_ BitVec 32) ValueCell!6425)) (size!15159 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30793)

(declare-fun mapDefault!22054 () ValueCell!6425)

