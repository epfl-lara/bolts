; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36770 () Bool)

(assert start!36770)

(declare-fun b!366735 () Bool)

(declare-fun e!224503 () Bool)

(declare-fun e!224504 () Bool)

(declare-fun mapRes!14370 () Bool)

(assert (=> b!366735 (= e!224503 (and e!224504 mapRes!14370))))

(declare-fun condMapEmpty!14370 () Bool)

(declare-datatypes ((V!12487 0))(
  ( (V!12488 (val!4313 Int)) )
))
(declare-datatypes ((ValueCell!3925 0))(
  ( (ValueCellFull!3925 (v!6506 V!12487)) (EmptyCell!3925) )
))
(declare-datatypes ((array!21001 0))(
  ( (array!21002 (arr!9966 (Array (_ BitVec 32) ValueCell!3925)) (size!10318 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21001)

(declare-fun mapDefault!14370 () ValueCell!3925)

