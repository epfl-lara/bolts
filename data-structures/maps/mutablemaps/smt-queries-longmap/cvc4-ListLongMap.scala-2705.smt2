; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40060 () Bool)

(assert start!40060)

(declare-fun b_free!10319 () Bool)

(declare-fun b_next!10319 () Bool)

(assert (=> start!40060 (= b_free!10319 (not b_next!10319))))

(declare-fun tp!36486 () Bool)

(declare-fun b_and!18305 () Bool)

(assert (=> start!40060 (= tp!36486 b_and!18305)))

(declare-fun b!436817 () Bool)

(declare-fun e!257884 () Bool)

(declare-fun e!257889 () Bool)

(declare-fun mapRes!18828 () Bool)

(assert (=> b!436817 (= e!257884 (and e!257889 mapRes!18828))))

(declare-fun condMapEmpty!18828 () Bool)

(declare-datatypes ((V!16399 0))(
  ( (V!16400 (val!5780 Int)) )
))
(declare-datatypes ((ValueCell!5392 0))(
  ( (ValueCellFull!5392 (v!8023 V!16399)) (EmptyCell!5392) )
))
(declare-datatypes ((array!26743 0))(
  ( (array!26744 (arr!12818 (Array (_ BitVec 32) ValueCell!5392)) (size!13170 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26743)

(declare-fun mapDefault!18828 () ValueCell!5392)

