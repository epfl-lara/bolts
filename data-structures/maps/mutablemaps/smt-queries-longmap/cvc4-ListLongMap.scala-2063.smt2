; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35558 () Bool)

(assert start!35558)

(declare-fun b!356059 () Bool)

(declare-fun e!218210 () Bool)

(declare-fun e!218206 () Bool)

(declare-fun mapRes!13512 () Bool)

(assert (=> b!356059 (= e!218210 (and e!218206 mapRes!13512))))

(declare-fun condMapEmpty!13512 () Bool)

(declare-datatypes ((V!11647 0))(
  ( (V!11648 (val!4046 Int)) )
))
(declare-datatypes ((ValueCell!3658 0))(
  ( (ValueCellFull!3658 (v!6236 V!11647)) (EmptyCell!3658) )
))
(declare-datatypes ((array!19549 0))(
  ( (array!19550 (arr!9265 (Array (_ BitVec 32) ValueCell!3658)) (size!9617 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19549)

(declare-fun mapDefault!13512 () ValueCell!3658)

