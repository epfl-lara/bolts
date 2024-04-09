; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33372 () Bool)

(assert start!33372)

(declare-fun b!331344 () Bool)

(declare-fun e!203287 () Bool)

(declare-fun e!203290 () Bool)

(declare-fun mapRes!11361 () Bool)

(assert (=> b!331344 (= e!203287 (and e!203290 mapRes!11361))))

(declare-fun condMapEmpty!11361 () Bool)

(declare-datatypes ((V!9859 0))(
  ( (V!9860 (val!3375 Int)) )
))
(declare-datatypes ((ValueCell!2987 0))(
  ( (ValueCellFull!2987 (v!5529 V!9859)) (EmptyCell!2987) )
))
(declare-datatypes ((array!16919 0))(
  ( (array!16920 (arr!7996 (Array (_ BitVec 32) ValueCell!2987)) (size!8348 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16919)

(declare-fun mapDefault!11361 () ValueCell!2987)

