; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20590 () Bool)

(assert start!20590)

(declare-fun b_free!5237 () Bool)

(declare-fun b_next!5237 () Bool)

(assert (=> start!20590 (= b_free!5237 (not b_next!5237))))

(declare-fun tp!18742 () Bool)

(declare-fun b_and!12001 () Bool)

(assert (=> start!20590 (= tp!18742 b_and!12001)))

(declare-fun b!204868 () Bool)

(declare-fun e!134018 () Bool)

(declare-fun e!134021 () Bool)

(declare-fun mapRes!8708 () Bool)

(assert (=> b!204868 (= e!134018 (and e!134021 mapRes!8708))))

(declare-fun condMapEmpty!8708 () Bool)

(declare-datatypes ((V!6437 0))(
  ( (V!6438 (val!2591 Int)) )
))
(declare-datatypes ((ValueCell!2203 0))(
  ( (ValueCellFull!2203 (v!4557 V!6437)) (EmptyCell!2203) )
))
(declare-datatypes ((array!9400 0))(
  ( (array!9401 (arr!4450 (Array (_ BitVec 32) ValueCell!2203)) (size!4775 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9400)

(declare-fun mapDefault!8708 () ValueCell!2203)

