; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108360 () Bool)

(assert start!108360)

(declare-fun res!849445 () Bool)

(declare-fun e!730372 () Bool)

(assert (=> start!108360 (=> (not res!849445) (not e!730372))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108360 (= res!849445 (validMask!0 mask!2175))))

(assert (=> start!108360 e!730372))

(assert (=> start!108360 true))

(declare-datatypes ((V!49785 0))(
  ( (V!49786 (val!16830 Int)) )
))
(declare-datatypes ((ValueCell!15857 0))(
  ( (ValueCellFull!15857 (v!19428 V!49785)) (EmptyCell!15857) )
))
(declare-datatypes ((array!84063 0))(
  ( (array!84064 (arr!40531 (Array (_ BitVec 32) ValueCell!15857)) (size!41082 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84063)

(declare-fun e!730374 () Bool)

(declare-fun array_inv!30761 (array!84063) Bool)

(assert (=> start!108360 (and (array_inv!30761 _values!1445) e!730374)))

(declare-datatypes ((array!84065 0))(
  ( (array!84066 (arr!40532 (Array (_ BitVec 32) (_ BitVec 64))) (size!41083 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84065)

(declare-fun array_inv!30762 (array!84065) Bool)

(assert (=> start!108360 (array_inv!30762 _keys!1741)))

(declare-fun b!1278489 () Bool)

(declare-fun e!730375 () Bool)

(declare-fun mapRes!51818 () Bool)

(assert (=> b!1278489 (= e!730374 (and e!730375 mapRes!51818))))

(declare-fun condMapEmpty!51818 () Bool)

(declare-fun mapDefault!51818 () ValueCell!15857)

