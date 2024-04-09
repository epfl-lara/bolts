; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97066 () Bool)

(assert start!97066)

(declare-fun b!1103598 () Bool)

(declare-fun res!736348 () Bool)

(declare-fun e!630031 () Bool)

(assert (=> b!1103598 (=> (not res!736348) (not e!630031))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103598 (= res!736348 (validMask!0 mask!1564))))

(declare-fun b!1103599 () Bool)

(declare-fun e!630033 () Bool)

(declare-fun e!630034 () Bool)

(declare-fun mapRes!42784 () Bool)

(assert (=> b!1103599 (= e!630033 (and e!630034 mapRes!42784))))

(declare-fun condMapEmpty!42784 () Bool)

(declare-datatypes ((V!41553 0))(
  ( (V!41554 (val!13716 Int)) )
))
(declare-datatypes ((ValueCell!12950 0))(
  ( (ValueCellFull!12950 (v!16349 V!41553)) (EmptyCell!12950) )
))
(declare-datatypes ((array!71514 0))(
  ( (array!71515 (arr!34410 (Array (_ BitVec 32) ValueCell!12950)) (size!34947 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71514)

(declare-fun mapDefault!42784 () ValueCell!12950)

