; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42486 () Bool)

(assert start!42486)

(declare-fun b_free!11933 () Bool)

(declare-fun b_next!11933 () Bool)

(assert (=> start!42486 (= b_free!11933 (not b_next!11933))))

(declare-fun tp!41835 () Bool)

(declare-fun b_and!20419 () Bool)

(assert (=> start!42486 (= tp!41835 b_and!20419)))

(declare-fun b!473754 () Bool)

(declare-fun e!278008 () Bool)

(declare-fun e!278005 () Bool)

(declare-fun mapRes!21757 () Bool)

(assert (=> b!473754 (= e!278008 (and e!278005 mapRes!21757))))

(declare-fun condMapEmpty!21757 () Bool)

(declare-datatypes ((V!18919 0))(
  ( (V!18920 (val!6725 Int)) )
))
(declare-datatypes ((ValueCell!6337 0))(
  ( (ValueCellFull!6337 (v!9013 V!18919)) (EmptyCell!6337) )
))
(declare-datatypes ((array!30441 0))(
  ( (array!30442 (arr!14636 (Array (_ BitVec 32) ValueCell!6337)) (size!14988 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30441)

(declare-fun mapDefault!21757 () ValueCell!6337)

