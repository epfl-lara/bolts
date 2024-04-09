; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21194 () Bool)

(assert start!21194)

(declare-fun b_free!5633 () Bool)

(declare-fun b_next!5633 () Bool)

(assert (=> start!21194 (= b_free!5633 (not b_next!5633))))

(declare-fun tp!19970 () Bool)

(declare-fun b_and!12517 () Bool)

(assert (=> start!21194 (= tp!19970 b_and!12517)))

(declare-fun b!213324 () Bool)

(declare-fun e!138758 () Bool)

(declare-fun e!138757 () Bool)

(declare-fun mapRes!9341 () Bool)

(assert (=> b!213324 (= e!138758 (and e!138757 mapRes!9341))))

(declare-fun condMapEmpty!9341 () Bool)

(declare-datatypes ((V!6973 0))(
  ( (V!6974 (val!2792 Int)) )
))
(declare-datatypes ((ValueCell!2404 0))(
  ( (ValueCellFull!2404 (v!4798 V!6973)) (EmptyCell!2404) )
))
(declare-datatypes ((array!10194 0))(
  ( (array!10195 (arr!4837 (Array (_ BitVec 32) ValueCell!2404)) (size!5162 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10194)

(declare-fun mapDefault!9341 () ValueCell!2404)

