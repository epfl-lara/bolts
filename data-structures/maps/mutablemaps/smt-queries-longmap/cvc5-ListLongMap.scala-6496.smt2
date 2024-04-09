; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82844 () Bool)

(assert start!82844)

(declare-fun b_free!18943 () Bool)

(declare-fun b_next!18943 () Bool)

(assert (=> start!82844 (= b_free!18943 (not b_next!18943))))

(declare-fun tp!65958 () Bool)

(declare-fun b_and!30449 () Bool)

(assert (=> start!82844 (= tp!65958 b_and!30449)))

(declare-fun b!965897 () Bool)

(declare-fun e!544533 () Bool)

(declare-fun tp_is_empty!21751 () Bool)

(assert (=> b!965897 (= e!544533 tp_is_empty!21751)))

(declare-fun b!965898 () Bool)

(declare-fun e!544531 () Bool)

(declare-fun e!544530 () Bool)

(declare-fun mapRes!34621 () Bool)

(assert (=> b!965898 (= e!544531 (and e!544530 mapRes!34621))))

(declare-fun condMapEmpty!34621 () Bool)

(declare-datatypes ((V!33985 0))(
  ( (V!33986 (val!10926 Int)) )
))
(declare-datatypes ((ValueCell!10394 0))(
  ( (ValueCellFull!10394 (v!13484 V!33985)) (EmptyCell!10394) )
))
(declare-datatypes ((array!59567 0))(
  ( (array!59568 (arr!28648 (Array (_ BitVec 32) ValueCell!10394)) (size!29128 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59567)

(declare-fun mapDefault!34621 () ValueCell!10394)

