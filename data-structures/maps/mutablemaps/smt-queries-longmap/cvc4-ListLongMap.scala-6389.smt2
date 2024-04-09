; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82162 () Bool)

(assert start!82162)

(declare-fun b!957215 () Bool)

(declare-fun e!539569 () Bool)

(declare-fun e!539572 () Bool)

(declare-fun mapRes!33649 () Bool)

(assert (=> b!957215 (= e!539569 (and e!539572 mapRes!33649))))

(declare-fun condMapEmpty!33649 () Bool)

(declare-datatypes ((V!33133 0))(
  ( (V!33134 (val!10607 Int)) )
))
(declare-datatypes ((ValueCell!10075 0))(
  ( (ValueCellFull!10075 (v!13164 V!33133)) (EmptyCell!10075) )
))
(declare-datatypes ((array!58349 0))(
  ( (array!58350 (arr!28044 (Array (_ BitVec 32) ValueCell!10075)) (size!28524 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58349)

(declare-fun mapDefault!33649 () ValueCell!10075)

