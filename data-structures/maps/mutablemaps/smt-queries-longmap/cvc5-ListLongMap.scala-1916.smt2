; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34094 () Bool)

(assert start!34094)

(declare-fun b_free!7165 () Bool)

(declare-fun b_next!7165 () Bool)

(assert (=> start!34094 (= b_free!7165 (not b_next!7165))))

(declare-fun tp!25020 () Bool)

(declare-fun b_and!14377 () Bool)

(assert (=> start!34094 (= tp!25020 b_and!14377)))

(declare-fun b!339526 () Bool)

(declare-fun e!208314 () Bool)

(declare-fun e!208312 () Bool)

(declare-fun mapRes!12093 () Bool)

(assert (=> b!339526 (= e!208314 (and e!208312 mapRes!12093))))

(declare-fun condMapEmpty!12093 () Bool)

(declare-datatypes ((V!10467 0))(
  ( (V!10468 (val!3603 Int)) )
))
(declare-datatypes ((ValueCell!3215 0))(
  ( (ValueCellFull!3215 (v!5768 V!10467)) (EmptyCell!3215) )
))
(declare-datatypes ((array!17805 0))(
  ( (array!17806 (arr!8423 (Array (_ BitVec 32) ValueCell!3215)) (size!8775 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17805)

(declare-fun mapDefault!12093 () ValueCell!3215)

