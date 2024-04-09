; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38776 () Bool)

(assert start!38776)

(declare-fun b!403973 () Bool)

(declare-fun e!243084 () Bool)

(declare-fun e!243082 () Bool)

(declare-fun mapRes!16902 () Bool)

(assert (=> b!403973 (= e!243084 (and e!243082 mapRes!16902))))

(declare-fun condMapEmpty!16902 () Bool)

(declare-datatypes ((V!14687 0))(
  ( (V!14688 (val!5138 Int)) )
))
(declare-datatypes ((ValueCell!4750 0))(
  ( (ValueCellFull!4750 (v!7381 V!14687)) (EmptyCell!4750) )
))
(declare-datatypes ((array!24243 0))(
  ( (array!24244 (arr!11568 (Array (_ BitVec 32) ValueCell!4750)) (size!11920 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24243)

(declare-fun mapDefault!16902 () ValueCell!4750)

