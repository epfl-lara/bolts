; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71196 () Bool)

(assert start!71196)

(declare-fun b_free!13339 () Bool)

(declare-fun b_next!13339 () Bool)

(assert (=> start!71196 (= b_free!13339 (not b_next!13339))))

(declare-fun tp!46777 () Bool)

(declare-fun b_and!22283 () Bool)

(assert (=> start!71196 (= tp!46777 b_and!22283)))

(declare-fun b!826595 () Bool)

(declare-fun e!460401 () Bool)

(declare-fun tp_is_empty!15049 () Bool)

(assert (=> b!826595 (= e!460401 tp_is_empty!15049)))

(declare-fun b!826596 () Bool)

(declare-fun e!460397 () Bool)

(declare-fun mapRes!24199 () Bool)

(assert (=> b!826596 (= e!460397 (and e!460401 mapRes!24199))))

(declare-fun condMapEmpty!24199 () Bool)

(declare-datatypes ((V!25067 0))(
  ( (V!25068 (val!7572 Int)) )
))
(declare-datatypes ((ValueCell!7109 0))(
  ( (ValueCellFull!7109 (v!10002 V!25067)) (EmptyCell!7109) )
))
(declare-datatypes ((array!46238 0))(
  ( (array!46239 (arr!22160 (Array (_ BitVec 32) ValueCell!7109)) (size!22581 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46238)

(declare-fun mapDefault!24199 () ValueCell!7109)

