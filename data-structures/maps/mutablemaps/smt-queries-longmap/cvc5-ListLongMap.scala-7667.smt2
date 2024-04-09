; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96358 () Bool)

(assert start!96358)

(declare-fun res!730559 () Bool)

(declare-fun e!624976 () Bool)

(assert (=> start!96358 (=> (not res!730559) (not e!624976))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96358 (= res!730559 (validMask!0 mask!1414))))

(assert (=> start!96358 e!624976))

(assert (=> start!96358 true))

(declare-datatypes ((array!70822 0))(
  ( (array!70823 (arr!34081 (Array (_ BitVec 32) (_ BitVec 64))) (size!34618 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70822)

(declare-fun array_inv!26114 (array!70822) Bool)

(assert (=> start!96358 (array_inv!26114 _keys!1070)))

(declare-datatypes ((V!41097 0))(
  ( (V!41098 (val!13545 Int)) )
))
(declare-datatypes ((ValueCell!12779 0))(
  ( (ValueCellFull!12779 (v!16167 V!41097)) (EmptyCell!12779) )
))
(declare-datatypes ((array!70824 0))(
  ( (array!70825 (arr!34082 (Array (_ BitVec 32) ValueCell!12779)) (size!34619 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70824)

(declare-fun e!624979 () Bool)

(declare-fun array_inv!26115 (array!70824) Bool)

(assert (=> start!96358 (and (array_inv!26115 _values!874) e!624979)))

(declare-fun b!1094597 () Bool)

(declare-fun res!730553 () Bool)

(assert (=> b!1094597 (=> (not res!730553) (not e!624976))))

(declare-datatypes ((List!23942 0))(
  ( (Nil!23939) (Cons!23938 (h!25147 (_ BitVec 64)) (t!33956 List!23942)) )
))
(declare-fun arrayNoDuplicates!0 (array!70822 (_ BitVec 32) List!23942) Bool)

(assert (=> b!1094597 (= res!730553 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23939))))

(declare-fun b!1094598 () Bool)

(declare-fun e!624978 () Bool)

(declare-fun tp_is_empty!26977 () Bool)

(assert (=> b!1094598 (= e!624978 tp_is_empty!26977)))

(declare-fun b!1094599 () Bool)

(declare-fun res!730554 () Bool)

(assert (=> b!1094599 (=> (not res!730554) (not e!624976))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094599 (= res!730554 (= (select (arr!34081 _keys!1070) i!650) k!904))))

(declare-fun b!1094600 () Bool)

(declare-fun mapRes!42220 () Bool)

(assert (=> b!1094600 (= e!624979 (and e!624978 mapRes!42220))))

(declare-fun condMapEmpty!42220 () Bool)

(declare-fun mapDefault!42220 () ValueCell!12779)

