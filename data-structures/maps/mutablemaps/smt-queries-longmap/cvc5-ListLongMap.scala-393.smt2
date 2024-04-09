; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7410 () Bool)

(assert start!7410)

(declare-fun b!47528 () Bool)

(declare-fun e!30444 () Bool)

(declare-fun e!30443 () Bool)

(declare-fun mapRes!2096 () Bool)

(assert (=> b!47528 (= e!30444 (and e!30443 mapRes!2096))))

(declare-fun condMapEmpty!2096 () Bool)

(declare-datatypes ((V!2447 0))(
  ( (V!2448 (val!1056 Int)) )
))
(declare-datatypes ((ValueCell!728 0))(
  ( (ValueCellFull!728 (v!2116 V!2447)) (EmptyCell!728) )
))
(declare-datatypes ((array!3138 0))(
  ( (array!3139 (arr!1503 (Array (_ BitVec 32) ValueCell!728)) (size!1725 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3138)

(declare-fun mapDefault!2096 () ValueCell!728)

