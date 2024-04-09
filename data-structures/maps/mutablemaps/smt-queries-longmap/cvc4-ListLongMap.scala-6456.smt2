; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82608 () Bool)

(assert start!82608)

(declare-fun b_free!18713 () Bool)

(declare-fun b_next!18713 () Bool)

(assert (=> start!82608 (= b_free!18713 (not b_next!18713))))

(declare-fun tp!65259 () Bool)

(declare-fun b_and!30219 () Bool)

(assert (=> start!82608 (= tp!65259 b_and!30219)))

(declare-fun b!962261 () Bool)

(declare-fun e!542682 () Bool)

(declare-fun e!542683 () Bool)

(declare-fun mapRes!34267 () Bool)

(assert (=> b!962261 (= e!542682 (and e!542683 mapRes!34267))))

(declare-fun condMapEmpty!34267 () Bool)

(declare-datatypes ((V!33669 0))(
  ( (V!33670 (val!10808 Int)) )
))
(declare-datatypes ((ValueCell!10276 0))(
  ( (ValueCellFull!10276 (v!13366 V!33669)) (EmptyCell!10276) )
))
(declare-datatypes ((array!59113 0))(
  ( (array!59114 (arr!28421 (Array (_ BitVec 32) ValueCell!10276)) (size!28901 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59113)

(declare-fun mapDefault!34267 () ValueCell!10276)

