; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82312 () Bool)

(assert start!82312)

(declare-fun b_free!18557 () Bool)

(declare-fun b_next!18557 () Bool)

(assert (=> start!82312 (= b_free!18557 (not b_next!18557))))

(declare-fun tp!64633 () Bool)

(declare-fun b_and!30063 () Bool)

(assert (=> start!82312 (= tp!64633 b_and!30063)))

(declare-fun b!959092 () Bool)

(declare-fun e!540696 () Bool)

(declare-fun e!540694 () Bool)

(declare-fun mapRes!33874 () Bool)

(assert (=> b!959092 (= e!540696 (and e!540694 mapRes!33874))))

(declare-fun condMapEmpty!33874 () Bool)

(declare-datatypes ((V!33333 0))(
  ( (V!33334 (val!10682 Int)) )
))
(declare-datatypes ((ValueCell!10150 0))(
  ( (ValueCellFull!10150 (v!13239 V!33333)) (EmptyCell!10150) )
))
(declare-datatypes ((array!58639 0))(
  ( (array!58640 (arr!28189 (Array (_ BitVec 32) ValueCell!10150)) (size!28669 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58639)

(declare-fun mapDefault!33874 () ValueCell!10150)

