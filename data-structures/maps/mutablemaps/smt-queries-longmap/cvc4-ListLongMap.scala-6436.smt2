; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82444 () Bool)

(assert start!82444)

(declare-fun b!960826 () Bool)

(declare-fun e!541684 () Bool)

(declare-fun tp_is_empty!21395 () Bool)

(assert (=> b!960826 (= e!541684 tp_is_empty!21395)))

(declare-fun b!960827 () Bool)

(declare-fun e!541688 () Bool)

(declare-fun mapRes!34072 () Bool)

(assert (=> b!960827 (= e!541688 (and e!541684 mapRes!34072))))

(declare-fun condMapEmpty!34072 () Bool)

(declare-datatypes ((V!33509 0))(
  ( (V!33510 (val!10748 Int)) )
))
(declare-datatypes ((ValueCell!10216 0))(
  ( (ValueCellFull!10216 (v!13305 V!33509)) (EmptyCell!10216) )
))
(declare-datatypes ((array!58885 0))(
  ( (array!58886 (arr!28312 (Array (_ BitVec 32) ValueCell!10216)) (size!28792 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58885)

(declare-fun mapDefault!34072 () ValueCell!10216)

