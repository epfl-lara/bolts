; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42598 () Bool)

(assert start!42598)

(declare-fun b_free!12025 () Bool)

(declare-fun b_next!12025 () Bool)

(assert (=> start!42598 (= b_free!12025 (not b_next!12025))))

(declare-fun tp!42114 () Bool)

(declare-fun b_and!20523 () Bool)

(assert (=> start!42598 (= tp!42114 b_and!20523)))

(declare-fun mapIsEmpty!21898 () Bool)

(declare-fun mapRes!21898 () Bool)

(assert (=> mapIsEmpty!21898 mapRes!21898))

(declare-fun b!474956 () Bool)

(declare-fun e!278865 () Bool)

(declare-fun tp_is_empty!13453 () Bool)

(assert (=> b!474956 (= e!278865 tp_is_empty!13453)))

(declare-fun b!474957 () Bool)

(declare-fun e!278864 () Bool)

(declare-fun e!278866 () Bool)

(assert (=> b!474957 (= e!278864 (and e!278866 mapRes!21898))))

(declare-fun condMapEmpty!21898 () Bool)

(declare-datatypes ((V!19043 0))(
  ( (V!19044 (val!6771 Int)) )
))
(declare-datatypes ((ValueCell!6383 0))(
  ( (ValueCellFull!6383 (v!9060 V!19043)) (EmptyCell!6383) )
))
(declare-datatypes ((array!30619 0))(
  ( (array!30620 (arr!14724 (Array (_ BitVec 32) ValueCell!6383)) (size!15076 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30619)

(declare-fun mapDefault!21898 () ValueCell!6383)

