; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82428 () Bool)

(assert start!82428)

(declare-fun b_free!18667 () Bool)

(declare-fun b_next!18667 () Bool)

(assert (=> start!82428 (= b_free!18667 (not b_next!18667))))

(declare-fun tp!64971 () Bool)

(declare-fun b_and!30173 () Bool)

(assert (=> start!82428 (= tp!64971 b_and!30173)))

(declare-fun b!960688 () Bool)

(declare-fun e!541568 () Bool)

(declare-fun e!541565 () Bool)

(declare-fun mapRes!34048 () Bool)

(assert (=> b!960688 (= e!541568 (and e!541565 mapRes!34048))))

(declare-fun condMapEmpty!34048 () Bool)

(declare-datatypes ((V!33489 0))(
  ( (V!33490 (val!10740 Int)) )
))
(declare-datatypes ((ValueCell!10208 0))(
  ( (ValueCellFull!10208 (v!13297 V!33489)) (EmptyCell!10208) )
))
(declare-datatypes ((array!58857 0))(
  ( (array!58858 (arr!28298 (Array (_ BitVec 32) ValueCell!10208)) (size!28778 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58857)

(declare-fun mapDefault!34048 () ValueCell!10208)

