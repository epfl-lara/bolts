; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33908 () Bool)

(assert start!33908)

(declare-fun b_free!7079 () Bool)

(declare-fun b_next!7079 () Bool)

(assert (=> start!33908 (= b_free!7079 (not b_next!7079))))

(declare-fun tp!24750 () Bool)

(declare-fun b_and!14283 () Bool)

(assert (=> start!33908 (= tp!24750 b_and!14283)))

(declare-fun b!337420 () Bool)

(declare-fun e!207055 () Bool)

(declare-fun e!207053 () Bool)

(declare-fun mapRes!11952 () Bool)

(assert (=> b!337420 (= e!207055 (and e!207053 mapRes!11952))))

(declare-fun condMapEmpty!11952 () Bool)

(declare-datatypes ((V!10351 0))(
  ( (V!10352 (val!3560 Int)) )
))
(declare-datatypes ((ValueCell!3172 0))(
  ( (ValueCellFull!3172 (v!5721 V!10351)) (EmptyCell!3172) )
))
(declare-datatypes ((array!17631 0))(
  ( (array!17632 (arr!8340 (Array (_ BitVec 32) ValueCell!3172)) (size!8692 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17631)

(declare-fun mapDefault!11952 () ValueCell!3172)

