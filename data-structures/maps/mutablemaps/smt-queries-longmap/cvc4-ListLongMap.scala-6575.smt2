; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83366 () Bool)

(assert start!83366)

(declare-fun b_free!19331 () Bool)

(declare-fun b_next!19331 () Bool)

(assert (=> start!83366 (= b_free!19331 (not b_next!19331))))

(declare-fun tp!67273 () Bool)

(declare-fun b_and!30901 () Bool)

(assert (=> start!83366 (= tp!67273 b_and!30901)))

(declare-fun b!972781 () Bool)

(declare-fun e!548336 () Bool)

(declare-fun e!548338 () Bool)

(declare-fun mapRes!35353 () Bool)

(assert (=> b!972781 (= e!548336 (and e!548338 mapRes!35353))))

(declare-fun condMapEmpty!35353 () Bool)

(declare-datatypes ((V!34621 0))(
  ( (V!34622 (val!11165 Int)) )
))
(declare-datatypes ((ValueCell!10633 0))(
  ( (ValueCellFull!10633 (v!13724 V!34621)) (EmptyCell!10633) )
))
(declare-datatypes ((array!60485 0))(
  ( (array!60486 (arr!29102 (Array (_ BitVec 32) ValueCell!10633)) (size!29582 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60485)

(declare-fun mapDefault!35353 () ValueCell!10633)

