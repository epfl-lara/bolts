; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43336 () Bool)

(assert start!43336)

(declare-fun b_free!12175 () Bool)

(declare-fun b_next!12175 () Bool)

(assert (=> start!43336 (= b_free!12175 (not b_next!12175))))

(declare-fun tp!42799 () Bool)

(declare-fun b_and!20947 () Bool)

(assert (=> start!43336 (= tp!42799 b_and!20947)))

(declare-fun b!479776 () Bool)

(declare-fun e!282316 () Bool)

(declare-fun e!282318 () Bool)

(declare-fun mapRes!22231 () Bool)

(assert (=> b!479776 (= e!282316 (and e!282318 mapRes!22231))))

(declare-fun condMapEmpty!22231 () Bool)

(declare-datatypes ((V!19321 0))(
  ( (V!19322 (val!6891 Int)) )
))
(declare-datatypes ((ValueCell!6482 0))(
  ( (ValueCellFull!6482 (v!9177 V!19321)) (EmptyCell!6482) )
))
(declare-datatypes ((array!31013 0))(
  ( (array!31014 (arr!14909 (Array (_ BitVec 32) ValueCell!6482)) (size!15267 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31013)

(declare-fun mapDefault!22231 () ValueCell!6482)

