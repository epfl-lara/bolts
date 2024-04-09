; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83032 () Bool)

(assert start!83032)

(declare-fun b!968484 () Bool)

(declare-fun e!545878 () Bool)

(declare-fun e!545874 () Bool)

(declare-fun mapRes!34888 () Bool)

(assert (=> b!968484 (= e!545878 (and e!545874 mapRes!34888))))

(declare-fun condMapEmpty!34888 () Bool)

(declare-datatypes ((V!34217 0))(
  ( (V!34218 (val!11013 Int)) )
))
(declare-datatypes ((ValueCell!10481 0))(
  ( (ValueCellFull!10481 (v!13571 V!34217)) (EmptyCell!10481) )
))
(declare-datatypes ((array!59901 0))(
  ( (array!59902 (arr!28813 (Array (_ BitVec 32) ValueCell!10481)) (size!29293 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59901)

(declare-fun mapDefault!34888 () ValueCell!10481)

