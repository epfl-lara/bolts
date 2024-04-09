; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82110 () Bool)

(assert start!82110)

(declare-fun b!956901 () Bool)

(declare-fun e!539334 () Bool)

(declare-fun e!539333 () Bool)

(declare-fun mapRes!33607 () Bool)

(assert (=> b!956901 (= e!539334 (and e!539333 mapRes!33607))))

(declare-fun condMapEmpty!33607 () Bool)

(declare-datatypes ((V!33105 0))(
  ( (V!33106 (val!10596 Int)) )
))
(declare-datatypes ((ValueCell!10064 0))(
  ( (ValueCellFull!10064 (v!13152 V!33105)) (EmptyCell!10064) )
))
(declare-datatypes ((array!58305 0))(
  ( (array!58306 (arr!28025 (Array (_ BitVec 32) ValueCell!10064)) (size!28505 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58305)

(declare-fun mapDefault!33607 () ValueCell!10064)

