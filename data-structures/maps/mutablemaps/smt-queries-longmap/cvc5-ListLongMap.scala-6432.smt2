; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82416 () Bool)

(assert start!82416)

(declare-fun b_free!18655 () Bool)

(declare-fun b_next!18655 () Bool)

(assert (=> start!82416 (= b_free!18655 (not b_next!18655))))

(declare-fun tp!64936 () Bool)

(declare-fun b_and!30161 () Bool)

(assert (=> start!82416 (= tp!64936 b_and!30161)))

(declare-fun b!960515 () Bool)

(declare-fun e!541477 () Bool)

(declare-fun e!541474 () Bool)

(declare-fun mapRes!34030 () Bool)

(assert (=> b!960515 (= e!541477 (and e!541474 mapRes!34030))))

(declare-fun condMapEmpty!34030 () Bool)

(declare-datatypes ((V!33473 0))(
  ( (V!33474 (val!10734 Int)) )
))
(declare-datatypes ((ValueCell!10202 0))(
  ( (ValueCellFull!10202 (v!13291 V!33473)) (EmptyCell!10202) )
))
(declare-datatypes ((array!58835 0))(
  ( (array!58836 (arr!28287 (Array (_ BitVec 32) ValueCell!10202)) (size!28767 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58835)

(declare-fun mapDefault!34030 () ValueCell!10202)

