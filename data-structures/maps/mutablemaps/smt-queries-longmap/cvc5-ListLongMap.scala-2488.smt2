; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38754 () Bool)

(assert start!38754)

(declare-fun b_free!9283 () Bool)

(declare-fun b_next!9283 () Bool)

(assert (=> start!38754 (= b_free!9283 (not b_next!9283))))

(declare-fun tp!32972 () Bool)

(declare-fun b_and!16687 () Bool)

(assert (=> start!38754 (= tp!32972 b_and!16687)))

(declare-fun b!403480 () Bool)

(declare-fun res!232628 () Bool)

(declare-fun e!242872 () Bool)

(assert (=> b!403480 (=> (not res!232628) (not e!242872))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403480 (= res!232628 (validMask!0 mask!1025))))

(declare-fun b!403481 () Bool)

(declare-fun e!242866 () Bool)

(declare-fun tp_is_empty!10165 () Bool)

(assert (=> b!403481 (= e!242866 tp_is_empty!10165)))

(declare-fun b!403482 () Bool)

(declare-fun e!242869 () Bool)

(declare-fun e!242868 () Bool)

(declare-fun mapRes!16869 () Bool)

(assert (=> b!403482 (= e!242869 (and e!242868 mapRes!16869))))

(declare-fun condMapEmpty!16869 () Bool)

(declare-datatypes ((V!14659 0))(
  ( (V!14660 (val!5127 Int)) )
))
(declare-datatypes ((ValueCell!4739 0))(
  ( (ValueCellFull!4739 (v!7370 V!14659)) (EmptyCell!4739) )
))
(declare-datatypes ((array!24201 0))(
  ( (array!24202 (arr!11547 (Array (_ BitVec 32) ValueCell!4739)) (size!11899 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24201)

(declare-fun mapDefault!16869 () ValueCell!4739)

