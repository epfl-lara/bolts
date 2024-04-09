; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82956 () Bool)

(assert start!82956)

(declare-fun b_free!19055 () Bool)

(declare-fun b_next!19055 () Bool)

(assert (=> start!82956 (= b_free!19055 (not b_next!19055))))

(declare-fun tp!66294 () Bool)

(declare-fun b_and!30561 () Bool)

(assert (=> start!82956 (= tp!66294 b_and!30561)))

(declare-fun mapIsEmpty!34789 () Bool)

(declare-fun mapRes!34789 () Bool)

(assert (=> mapIsEmpty!34789 mapRes!34789))

(declare-fun b!967596 () Bool)

(declare-fun e!545373 () Bool)

(declare-fun tp_is_empty!21863 () Bool)

(assert (=> b!967596 (= e!545373 tp_is_empty!21863)))

(declare-fun b!967597 () Bool)

(declare-fun e!545372 () Bool)

(assert (=> b!967597 (= e!545372 (and e!545373 mapRes!34789))))

(declare-fun condMapEmpty!34789 () Bool)

(declare-datatypes ((V!34133 0))(
  ( (V!34134 (val!10982 Int)) )
))
(declare-datatypes ((ValueCell!10450 0))(
  ( (ValueCellFull!10450 (v!13540 V!34133)) (EmptyCell!10450) )
))
(declare-datatypes ((array!59781 0))(
  ( (array!59782 (arr!28755 (Array (_ BitVec 32) ValueCell!10450)) (size!29235 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59781)

(declare-fun mapDefault!34789 () ValueCell!10450)

