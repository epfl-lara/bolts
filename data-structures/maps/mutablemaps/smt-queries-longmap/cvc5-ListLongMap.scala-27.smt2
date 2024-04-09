; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!594 () Bool)

(assert start!594)

(declare-fun b_free!67 () Bool)

(declare-fun b_next!67 () Bool)

(assert (=> start!594 (= b_free!67 (not b_next!67))))

(declare-fun tp!419 () Bool)

(declare-fun b_and!205 () Bool)

(assert (=> start!594 (= tp!419 b_and!205)))

(declare-fun b!3637 () Bool)

(declare-fun e!1801 () Bool)

(declare-fun e!1805 () Bool)

(declare-fun mapRes!176 () Bool)

(assert (=> b!3637 (= e!1801 (and e!1805 mapRes!176))))

(declare-fun condMapEmpty!176 () Bool)

(declare-datatypes ((V!371 0))(
  ( (V!372 (val!78 Int)) )
))
(declare-datatypes ((ValueCell!56 0))(
  ( (ValueCellFull!56 (v!1165 V!371)) (EmptyCell!56) )
))
(declare-datatypes ((array!225 0))(
  ( (array!226 (arr!105 (Array (_ BitVec 32) ValueCell!56)) (size!167 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!225)

(declare-fun mapDefault!176 () ValueCell!56)

