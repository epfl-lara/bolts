; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82158 () Bool)

(assert start!82158)

(declare-fun b!957179 () Bool)

(declare-fun e!539539 () Bool)

(declare-fun tp_is_empty!21109 () Bool)

(assert (=> b!957179 (= e!539539 tp_is_empty!21109)))

(declare-fun b!957180 () Bool)

(declare-fun e!539542 () Bool)

(declare-fun e!539543 () Bool)

(declare-fun mapRes!33643 () Bool)

(assert (=> b!957180 (= e!539542 (and e!539543 mapRes!33643))))

(declare-fun condMapEmpty!33643 () Bool)

(declare-datatypes ((V!33129 0))(
  ( (V!33130 (val!10605 Int)) )
))
(declare-datatypes ((ValueCell!10073 0))(
  ( (ValueCellFull!10073 (v!13162 V!33129)) (EmptyCell!10073) )
))
(declare-datatypes ((array!58343 0))(
  ( (array!58344 (arr!28041 (Array (_ BitVec 32) ValueCell!10073)) (size!28521 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58343)

(declare-fun mapDefault!33643 () ValueCell!10073)

