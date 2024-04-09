; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72846 () Bool)

(assert start!72846)

(declare-fun b!844904 () Bool)

(declare-fun res!574097 () Bool)

(declare-fun e!471702 () Bool)

(assert (=> b!844904 (=> (not res!574097) (not e!471702))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844904 (= res!574097 (validMask!0 mask!1196))))

(declare-fun b!844905 () Bool)

(declare-fun e!471701 () Bool)

(declare-fun e!471705 () Bool)

(declare-fun mapRes!25403 () Bool)

(assert (=> b!844905 (= e!471701 (and e!471705 mapRes!25403))))

(declare-fun condMapEmpty!25403 () Bool)

(declare-datatypes ((V!26205 0))(
  ( (V!26206 (val!7982 Int)) )
))
(declare-datatypes ((ValueCell!7495 0))(
  ( (ValueCellFull!7495 (v!10403 V!26205)) (EmptyCell!7495) )
))
(declare-datatypes ((array!47946 0))(
  ( (array!47947 (arr!23000 (Array (_ BitVec 32) ValueCell!7495)) (size!23441 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47946)

(declare-fun mapDefault!25403 () ValueCell!7495)

