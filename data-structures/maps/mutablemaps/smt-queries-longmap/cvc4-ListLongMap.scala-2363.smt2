; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37652 () Bool)

(assert start!37652)

(declare-fun b!385227 () Bool)

(declare-fun e!233811 () Bool)

(declare-fun tp_is_empty!9419 () Bool)

(assert (=> b!385227 (= e!233811 tp_is_empty!9419)))

(declare-fun b!385228 () Bool)

(declare-fun e!233814 () Bool)

(declare-fun mapRes!15693 () Bool)

(assert (=> b!385228 (= e!233814 (and e!233811 mapRes!15693))))

(declare-fun condMapEmpty!15693 () Bool)

(declare-datatypes ((V!13663 0))(
  ( (V!13664 (val!4754 Int)) )
))
(declare-datatypes ((ValueCell!4366 0))(
  ( (ValueCellFull!4366 (v!6947 V!13663)) (EmptyCell!4366) )
))
(declare-datatypes ((array!22719 0))(
  ( (array!22720 (arr!10825 (Array (_ BitVec 32) ValueCell!4366)) (size!11177 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22719)

(declare-fun mapDefault!15693 () ValueCell!4366)

