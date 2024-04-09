; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82192 () Bool)

(assert start!82192)

(declare-fun mapIsEmpty!33694 () Bool)

(declare-fun mapRes!33694 () Bool)

(assert (=> mapIsEmpty!33694 mapRes!33694))

(declare-fun b!957485 () Bool)

(declare-fun e!539795 () Bool)

(declare-fun tp_is_empty!21143 () Bool)

(assert (=> b!957485 (= e!539795 tp_is_empty!21143)))

(declare-fun b!957486 () Bool)

(declare-fun e!539796 () Bool)

(assert (=> b!957486 (= e!539796 tp_is_empty!21143)))

(declare-fun b!957487 () Bool)

(declare-fun e!539797 () Bool)

(assert (=> b!957487 (= e!539797 (and e!539796 mapRes!33694))))

(declare-fun condMapEmpty!33694 () Bool)

(declare-datatypes ((V!33173 0))(
  ( (V!33174 (val!10622 Int)) )
))
(declare-datatypes ((ValueCell!10090 0))(
  ( (ValueCellFull!10090 (v!13179 V!33173)) (EmptyCell!10090) )
))
(declare-datatypes ((array!58405 0))(
  ( (array!58406 (arr!28072 (Array (_ BitVec 32) ValueCell!10090)) (size!28552 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58405)

(declare-fun mapDefault!33694 () ValueCell!10090)

