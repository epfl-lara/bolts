; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38674 () Bool)

(assert start!38674)

(declare-fun b_free!9203 () Bool)

(declare-fun b_next!9203 () Bool)

(assert (=> start!38674 (= b_free!9203 (not b_next!9203))))

(declare-fun tp!32732 () Bool)

(declare-fun b_and!16607 () Bool)

(assert (=> start!38674 (= tp!32732 b_and!16607)))

(declare-fun b!401440 () Bool)

(declare-fun e!242027 () Bool)

(declare-fun e!242029 () Bool)

(declare-fun mapRes!16749 () Bool)

(assert (=> b!401440 (= e!242027 (and e!242029 mapRes!16749))))

(declare-fun condMapEmpty!16749 () Bool)

(declare-datatypes ((V!14551 0))(
  ( (V!14552 (val!5087 Int)) )
))
(declare-datatypes ((ValueCell!4699 0))(
  ( (ValueCellFull!4699 (v!7330 V!14551)) (EmptyCell!4699) )
))
(declare-datatypes ((array!24045 0))(
  ( (array!24046 (arr!11469 (Array (_ BitVec 32) ValueCell!4699)) (size!11821 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24045)

(declare-fun mapDefault!16749 () ValueCell!4699)

