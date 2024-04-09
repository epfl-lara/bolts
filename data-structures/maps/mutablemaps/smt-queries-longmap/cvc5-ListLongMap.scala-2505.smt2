; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38856 () Bool)

(assert start!38856)

(declare-fun b!405533 () Bool)

(declare-fun e!243805 () Bool)

(declare-fun tp_is_empty!10267 () Bool)

(assert (=> b!405533 (= e!243805 tp_is_empty!10267)))

(declare-fun b!405534 () Bool)

(declare-fun e!243803 () Bool)

(declare-fun e!243802 () Bool)

(declare-fun mapRes!17022 () Bool)

(assert (=> b!405534 (= e!243803 (and e!243802 mapRes!17022))))

(declare-fun condMapEmpty!17022 () Bool)

(declare-datatypes ((V!14795 0))(
  ( (V!14796 (val!5178 Int)) )
))
(declare-datatypes ((ValueCell!4790 0))(
  ( (ValueCellFull!4790 (v!7421 V!14795)) (EmptyCell!4790) )
))
(declare-datatypes ((array!24393 0))(
  ( (array!24394 (arr!11643 (Array (_ BitVec 32) ValueCell!4790)) (size!11995 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24393)

(declare-fun mapDefault!17022 () ValueCell!4790)

