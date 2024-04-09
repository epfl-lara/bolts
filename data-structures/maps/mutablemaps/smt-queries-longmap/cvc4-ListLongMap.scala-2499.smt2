; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38824 () Bool)

(assert start!38824)

(declare-fun b!404909 () Bool)

(declare-fun e!243513 () Bool)

(declare-fun e!243514 () Bool)

(declare-fun mapRes!16974 () Bool)

(assert (=> b!404909 (= e!243513 (and e!243514 mapRes!16974))))

(declare-fun condMapEmpty!16974 () Bool)

(declare-datatypes ((V!14751 0))(
  ( (V!14752 (val!5162 Int)) )
))
(declare-datatypes ((ValueCell!4774 0))(
  ( (ValueCellFull!4774 (v!7405 V!14751)) (EmptyCell!4774) )
))
(declare-datatypes ((array!24333 0))(
  ( (array!24334 (arr!11613 (Array (_ BitVec 32) ValueCell!4774)) (size!11965 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24333)

(declare-fun mapDefault!16974 () ValueCell!4774)

