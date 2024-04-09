; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108394 () Bool)

(assert start!108394)

(declare-fun mapNonEmpty!51869 () Bool)

(declare-fun mapRes!51869 () Bool)

(declare-fun tp!98844 () Bool)

(declare-fun e!730628 () Bool)

(assert (=> mapNonEmpty!51869 (= mapRes!51869 (and tp!98844 e!730628))))

(declare-fun mapKey!51869 () (_ BitVec 32))

(declare-datatypes ((V!49829 0))(
  ( (V!49830 (val!16847 Int)) )
))
(declare-datatypes ((ValueCell!15874 0))(
  ( (ValueCellFull!15874 (v!19445 V!49829)) (EmptyCell!15874) )
))
(declare-fun mapRest!51869 () (Array (_ BitVec 32) ValueCell!15874))

(declare-datatypes ((array!84129 0))(
  ( (array!84130 (arr!40564 (Array (_ BitVec 32) ValueCell!15874)) (size!41115 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84129)

(declare-fun mapValue!51869 () ValueCell!15874)

(assert (=> mapNonEmpty!51869 (= (arr!40564 _values!1445) (store mapRest!51869 mapKey!51869 mapValue!51869))))

(declare-fun mapIsEmpty!51869 () Bool)

(assert (=> mapIsEmpty!51869 mapRes!51869))

(declare-fun res!849597 () Bool)

(declare-fun e!730626 () Bool)

(assert (=> start!108394 (=> (not res!849597) (not e!730626))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108394 (= res!849597 (validMask!0 mask!2175))))

(assert (=> start!108394 e!730626))

(assert (=> start!108394 true))

(declare-fun e!730629 () Bool)

(declare-fun array_inv!30785 (array!84129) Bool)

(assert (=> start!108394 (and (array_inv!30785 _values!1445) e!730629)))

(declare-datatypes ((array!84131 0))(
  ( (array!84132 (arr!40565 (Array (_ BitVec 32) (_ BitVec 64))) (size!41116 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84131)

(declare-fun array_inv!30786 (array!84131) Bool)

(assert (=> start!108394 (array_inv!30786 _keys!1741)))

(declare-fun b!1278795 () Bool)

(declare-fun e!730630 () Bool)

(assert (=> b!1278795 (= e!730629 (and e!730630 mapRes!51869))))

(declare-fun condMapEmpty!51869 () Bool)

(declare-fun mapDefault!51869 () ValueCell!15874)

