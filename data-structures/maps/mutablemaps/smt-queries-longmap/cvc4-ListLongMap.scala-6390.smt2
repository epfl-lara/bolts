; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82168 () Bool)

(assert start!82168)

(declare-fun b!957269 () Bool)

(declare-fun e!539614 () Bool)

(declare-fun e!539616 () Bool)

(declare-fun mapRes!33658 () Bool)

(assert (=> b!957269 (= e!539614 (and e!539616 mapRes!33658))))

(declare-fun condMapEmpty!33658 () Bool)

(declare-datatypes ((V!33141 0))(
  ( (V!33142 (val!10610 Int)) )
))
(declare-datatypes ((ValueCell!10078 0))(
  ( (ValueCellFull!10078 (v!13167 V!33141)) (EmptyCell!10078) )
))
(declare-datatypes ((array!58359 0))(
  ( (array!58360 (arr!28049 (Array (_ BitVec 32) ValueCell!10078)) (size!28529 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58359)

(declare-fun mapDefault!33658 () ValueCell!10078)

