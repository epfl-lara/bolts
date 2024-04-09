; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38920 () Bool)

(assert start!38920)

(declare-fun b!406781 () Bool)

(declare-fun e!244378 () Bool)

(declare-fun tp_is_empty!10331 () Bool)

(assert (=> b!406781 (= e!244378 tp_is_empty!10331)))

(declare-fun b!406782 () Bool)

(declare-fun e!244376 () Bool)

(declare-fun mapRes!17118 () Bool)

(assert (=> b!406782 (= e!244376 (and e!244378 mapRes!17118))))

(declare-fun condMapEmpty!17118 () Bool)

(declare-datatypes ((V!14879 0))(
  ( (V!14880 (val!5210 Int)) )
))
(declare-datatypes ((ValueCell!4822 0))(
  ( (ValueCellFull!4822 (v!7453 V!14879)) (EmptyCell!4822) )
))
(declare-datatypes ((array!24519 0))(
  ( (array!24520 (arr!11706 (Array (_ BitVec 32) ValueCell!4822)) (size!12058 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24519)

(declare-fun mapDefault!17118 () ValueCell!4822)

