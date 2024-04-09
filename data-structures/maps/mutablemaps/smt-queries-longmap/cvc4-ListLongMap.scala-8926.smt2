; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108278 () Bool)

(assert start!108278)

(declare-fun res!849213 () Bool)

(declare-fun e!729991 () Bool)

(assert (=> start!108278 (=> (not res!849213) (not e!729991))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108278 (= res!849213 (validMask!0 mask!2175))))

(assert (=> start!108278 e!729991))

(assert (=> start!108278 true))

(declare-datatypes ((V!49733 0))(
  ( (V!49734 (val!16811 Int)) )
))
(declare-datatypes ((ValueCell!15838 0))(
  ( (ValueCellFull!15838 (v!19408 V!49733)) (EmptyCell!15838) )
))
(declare-datatypes ((array!83981 0))(
  ( (array!83982 (arr!40495 (Array (_ BitVec 32) ValueCell!15838)) (size!41046 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83981)

(declare-fun e!729994 () Bool)

(declare-fun array_inv!30737 (array!83981) Bool)

(assert (=> start!108278 (and (array_inv!30737 _values!1445) e!729994)))

(declare-datatypes ((array!83983 0))(
  ( (array!83984 (arr!40496 (Array (_ BitVec 32) (_ BitVec 64))) (size!41047 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83983)

(declare-fun array_inv!30738 (array!83983) Bool)

(assert (=> start!108278 (array_inv!30738 _keys!1741)))

(declare-fun mapNonEmpty!51746 () Bool)

(declare-fun mapRes!51746 () Bool)

(declare-fun tp!98721 () Bool)

(declare-fun e!729993 () Bool)

(assert (=> mapNonEmpty!51746 (= mapRes!51746 (and tp!98721 e!729993))))

(declare-fun mapValue!51746 () ValueCell!15838)

(declare-fun mapKey!51746 () (_ BitVec 32))

(declare-fun mapRest!51746 () (Array (_ BitVec 32) ValueCell!15838))

(assert (=> mapNonEmpty!51746 (= (arr!40495 _values!1445) (store mapRest!51746 mapKey!51746 mapValue!51746))))

(declare-fun mapIsEmpty!51746 () Bool)

(assert (=> mapIsEmpty!51746 mapRes!51746))

(declare-fun b!1278023 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278023 (= e!729991 (and (= (size!41046 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41047 _keys!1741) (size!41046 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011) (not (= (size!41047 _keys!1741) (bvadd #b00000000000000000000000000000001 mask!2175)))))))

(declare-fun b!1278024 () Bool)

(declare-fun e!729992 () Bool)

(assert (=> b!1278024 (= e!729994 (and e!729992 mapRes!51746))))

(declare-fun condMapEmpty!51746 () Bool)

(declare-fun mapDefault!51746 () ValueCell!15838)

