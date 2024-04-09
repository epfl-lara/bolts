; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108284 () Bool)

(assert start!108284)

(declare-fun res!849222 () Bool)

(declare-fun e!730036 () Bool)

(assert (=> start!108284 (=> (not res!849222) (not e!730036))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108284 (= res!849222 (validMask!0 mask!2175))))

(assert (=> start!108284 e!730036))

(assert (=> start!108284 true))

(declare-datatypes ((V!49741 0))(
  ( (V!49742 (val!16814 Int)) )
))
(declare-datatypes ((ValueCell!15841 0))(
  ( (ValueCellFull!15841 (v!19411 V!49741)) (EmptyCell!15841) )
))
(declare-datatypes ((array!83991 0))(
  ( (array!83992 (arr!40500 (Array (_ BitVec 32) ValueCell!15841)) (size!41051 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83991)

(declare-fun e!730038 () Bool)

(declare-fun array_inv!30741 (array!83991) Bool)

(assert (=> start!108284 (and (array_inv!30741 _values!1445) e!730038)))

(declare-datatypes ((array!83993 0))(
  ( (array!83994 (arr!40501 (Array (_ BitVec 32) (_ BitVec 64))) (size!41052 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83993)

(declare-fun array_inv!30742 (array!83993) Bool)

(assert (=> start!108284 (array_inv!30742 _keys!1741)))

(declare-fun mapIsEmpty!51755 () Bool)

(declare-fun mapRes!51755 () Bool)

(assert (=> mapIsEmpty!51755 mapRes!51755))

(declare-fun b!1278059 () Bool)

(declare-fun e!730039 () Bool)

(assert (=> b!1278059 (= e!730038 (and e!730039 mapRes!51755))))

(declare-fun condMapEmpty!51755 () Bool)

(declare-fun mapDefault!51755 () ValueCell!15841)

