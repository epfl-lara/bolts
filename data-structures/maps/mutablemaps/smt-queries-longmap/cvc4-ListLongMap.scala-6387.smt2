; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82128 () Bool)

(assert start!82128)

(declare-fun mapIsEmpty!33625 () Bool)

(declare-fun mapRes!33625 () Bool)

(assert (=> mapIsEmpty!33625 mapRes!33625))

(declare-fun res!640793 () Bool)

(declare-fun e!539423 () Bool)

(assert (=> start!82128 (=> (not res!640793) (not e!539423))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82128 (= res!640793 (validMask!0 mask!2088))))

(assert (=> start!82128 e!539423))

(assert (=> start!82128 true))

(declare-datatypes ((V!33117 0))(
  ( (V!33118 (val!10601 Int)) )
))
(declare-datatypes ((ValueCell!10069 0))(
  ( (ValueCellFull!10069 (v!13157 V!33117)) (EmptyCell!10069) )
))
(declare-datatypes ((array!58323 0))(
  ( (array!58324 (arr!28033 (Array (_ BitVec 32) ValueCell!10069)) (size!28513 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58323)

(declare-fun e!539422 () Bool)

(declare-fun array_inv!21695 (array!58323) Bool)

(assert (=> start!82128 (and (array_inv!21695 _values!1386) e!539422)))

(declare-datatypes ((array!58325 0))(
  ( (array!58326 (arr!28034 (Array (_ BitVec 32) (_ BitVec 64))) (size!28514 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58325)

(declare-fun array_inv!21696 (array!58325) Bool)

(assert (=> start!82128 (array_inv!21696 _keys!1668)))

(declare-fun b!957019 () Bool)

(declare-fun res!640794 () Bool)

(assert (=> b!957019 (=> (not res!640794) (not e!539423))))

(assert (=> b!957019 (= res!640794 (and (bvsle #b00000000000000000000000000000000 (size!28514 _keys!1668)) (bvslt (size!28514 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun b!957020 () Bool)

(declare-fun e!539420 () Bool)

(assert (=> b!957020 (= e!539422 (and e!539420 mapRes!33625))))

(declare-fun condMapEmpty!33625 () Bool)

(declare-fun mapDefault!33625 () ValueCell!10069)

