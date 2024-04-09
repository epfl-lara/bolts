; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82282 () Bool)

(assert start!82282)

(declare-fun b_free!18527 () Bool)

(declare-fun b_next!18527 () Bool)

(assert (=> start!82282 (= b_free!18527 (not b_next!18527))))

(declare-fun tp!64542 () Bool)

(declare-fun b_and!30033 () Bool)

(assert (=> start!82282 (= tp!64542 b_and!30033)))

(declare-fun b!958643 () Bool)

(declare-fun e!540470 () Bool)

(declare-fun e!540472 () Bool)

(declare-fun mapRes!33829 () Bool)

(assert (=> b!958643 (= e!540470 (and e!540472 mapRes!33829))))

(declare-fun condMapEmpty!33829 () Bool)

(declare-datatypes ((V!33293 0))(
  ( (V!33294 (val!10667 Int)) )
))
(declare-datatypes ((ValueCell!10135 0))(
  ( (ValueCellFull!10135 (v!13224 V!33293)) (EmptyCell!10135) )
))
(declare-datatypes ((array!58581 0))(
  ( (array!58582 (arr!28160 (Array (_ BitVec 32) ValueCell!10135)) (size!28640 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58581)

(declare-fun mapDefault!33829 () ValueCell!10135)

