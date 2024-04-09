; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82182 () Bool)

(assert start!82182)

(declare-fun res!640996 () Bool)

(declare-fun e!539722 () Bool)

(assert (=> start!82182 (=> (not res!640996) (not e!539722))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82182 (= res!640996 (validMask!0 mask!2088))))

(assert (=> start!82182 e!539722))

(assert (=> start!82182 true))

(declare-datatypes ((V!33161 0))(
  ( (V!33162 (val!10617 Int)) )
))
(declare-datatypes ((ValueCell!10085 0))(
  ( (ValueCellFull!10085 (v!13174 V!33161)) (EmptyCell!10085) )
))
(declare-datatypes ((array!58385 0))(
  ( (array!58386 (arr!28062 (Array (_ BitVec 32) ValueCell!10085)) (size!28542 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58385)

(declare-fun e!539721 () Bool)

(declare-fun array_inv!21713 (array!58385) Bool)

(assert (=> start!82182 (and (array_inv!21713 _values!1386) e!539721)))

(declare-datatypes ((array!58387 0))(
  ( (array!58388 (arr!28063 (Array (_ BitVec 32) (_ BitVec 64))) (size!28543 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58387)

(declare-fun array_inv!21714 (array!58387) Bool)

(assert (=> start!82182 (array_inv!21714 _keys!1668)))

(declare-fun b!957395 () Bool)

(declare-fun e!539723 () Bool)

(declare-fun mapRes!33679 () Bool)

(assert (=> b!957395 (= e!539721 (and e!539723 mapRes!33679))))

(declare-fun condMapEmpty!33679 () Bool)

(declare-fun mapDefault!33679 () ValueCell!10085)

