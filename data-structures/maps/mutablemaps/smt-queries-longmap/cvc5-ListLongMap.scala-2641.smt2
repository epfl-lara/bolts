; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39672 () Bool)

(assert start!39672)

(declare-fun b_free!9931 () Bool)

(declare-fun b_next!9931 () Bool)

(assert (=> start!39672 (= b_free!9931 (not b_next!9931))))

(declare-fun tp!35322 () Bool)

(declare-fun b_and!17605 () Bool)

(assert (=> start!39672 (= tp!35322 b_and!17605)))

(declare-fun b!425564 () Bool)

(declare-fun e!252600 () Bool)

(declare-fun e!252597 () Bool)

(declare-fun mapRes!18246 () Bool)

(assert (=> b!425564 (= e!252600 (and e!252597 mapRes!18246))))

(declare-fun condMapEmpty!18246 () Bool)

(declare-datatypes ((V!15883 0))(
  ( (V!15884 (val!5586 Int)) )
))
(declare-datatypes ((ValueCell!5198 0))(
  ( (ValueCellFull!5198 (v!7829 V!15883)) (EmptyCell!5198) )
))
(declare-datatypes ((array!25993 0))(
  ( (array!25994 (arr!12443 (Array (_ BitVec 32) ValueCell!5198)) (size!12795 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25993)

(declare-fun mapDefault!18246 () ValueCell!5198)

