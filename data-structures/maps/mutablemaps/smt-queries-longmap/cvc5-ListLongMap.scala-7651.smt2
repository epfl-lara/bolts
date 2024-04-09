; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96262 () Bool)

(assert start!96262)

(declare-fun b_free!22879 () Bool)

(declare-fun b_next!22879 () Bool)

(assert (=> start!96262 (= b_free!22879 (not b_next!22879))))

(declare-fun tp!80486 () Bool)

(declare-fun b_and!36451 () Bool)

(assert (=> start!96262 (= tp!80486 b_and!36451)))

(declare-fun b!1092925 () Bool)

(declare-fun res!729384 () Bool)

(declare-fun e!624141 () Bool)

(assert (=> b!1092925 (=> (not res!729384) (not e!624141))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70636 0))(
  ( (array!70637 (arr!33988 (Array (_ BitVec 32) (_ BitVec 64))) (size!34525 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70636)

(assert (=> b!1092925 (= res!729384 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34525 _keys!1070))))))

(declare-fun mapNonEmpty!42076 () Bool)

(declare-fun mapRes!42076 () Bool)

(declare-fun tp!80487 () Bool)

(declare-fun e!624138 () Bool)

(assert (=> mapNonEmpty!42076 (= mapRes!42076 (and tp!80487 e!624138))))

(declare-datatypes ((V!40969 0))(
  ( (V!40970 (val!13497 Int)) )
))
(declare-datatypes ((ValueCell!12731 0))(
  ( (ValueCellFull!12731 (v!16119 V!40969)) (EmptyCell!12731) )
))
(declare-datatypes ((array!70638 0))(
  ( (array!70639 (arr!33989 (Array (_ BitVec 32) ValueCell!12731)) (size!34526 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70638)

(declare-fun mapKey!42076 () (_ BitVec 32))

(declare-fun mapValue!42076 () ValueCell!12731)

(declare-fun mapRest!42076 () (Array (_ BitVec 32) ValueCell!12731))

(assert (=> mapNonEmpty!42076 (= (arr!33989 _values!874) (store mapRest!42076 mapKey!42076 mapValue!42076))))

(declare-fun b!1092926 () Bool)

(declare-fun res!729390 () Bool)

(assert (=> b!1092926 (=> (not res!729390) (not e!624141))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1092926 (= res!729390 (= (select (arr!33988 _keys!1070) i!650) k!904))))

(declare-fun res!729391 () Bool)

(assert (=> start!96262 (=> (not res!729391) (not e!624141))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96262 (= res!729391 (validMask!0 mask!1414))))

(assert (=> start!96262 e!624141))

(assert (=> start!96262 tp!80486))

(assert (=> start!96262 true))

(declare-fun tp_is_empty!26881 () Bool)

(assert (=> start!96262 tp_is_empty!26881))

(declare-fun array_inv!26050 (array!70636) Bool)

(assert (=> start!96262 (array_inv!26050 _keys!1070)))

(declare-fun e!624140 () Bool)

(declare-fun array_inv!26051 (array!70638) Bool)

(assert (=> start!96262 (and (array_inv!26051 _values!874) e!624140)))

(declare-fun b!1092927 () Bool)

(declare-fun res!729387 () Bool)

(assert (=> b!1092927 (=> (not res!729387) (not e!624141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70636 (_ BitVec 32)) Bool)

(assert (=> b!1092927 (= res!729387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092928 () Bool)

(declare-fun e!624137 () Bool)

(assert (=> b!1092928 (= e!624141 e!624137)))

(declare-fun res!729392 () Bool)

(assert (=> b!1092928 (=> (not res!729392) (not e!624137))))

(declare-fun lt!488635 () array!70636)

(assert (=> b!1092928 (= res!729392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488635 mask!1414))))

(assert (=> b!1092928 (= lt!488635 (array!70637 (store (arr!33988 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34525 _keys!1070)))))

(declare-fun b!1092929 () Bool)

(declare-fun res!729389 () Bool)

(assert (=> b!1092929 (=> (not res!729389) (not e!624137))))

(declare-datatypes ((List!23880 0))(
  ( (Nil!23877) (Cons!23876 (h!25085 (_ BitVec 64)) (t!33824 List!23880)) )
))
(declare-fun arrayNoDuplicates!0 (array!70636 (_ BitVec 32) List!23880) Bool)

(assert (=> b!1092929 (= res!729389 (arrayNoDuplicates!0 lt!488635 #b00000000000000000000000000000000 Nil!23877))))

(declare-fun b!1092930 () Bool)

(declare-fun e!624139 () Bool)

(assert (=> b!1092930 (= e!624139 tp_is_empty!26881)))

(declare-fun b!1092931 () Bool)

(declare-fun res!729386 () Bool)

(assert (=> b!1092931 (=> (not res!729386) (not e!624141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092931 (= res!729386 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42076 () Bool)

(assert (=> mapIsEmpty!42076 mapRes!42076))

(declare-fun b!1092932 () Bool)

(declare-fun res!729385 () Bool)

(assert (=> b!1092932 (=> (not res!729385) (not e!624141))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092932 (= res!729385 (and (= (size!34526 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34525 _keys!1070) (size!34526 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092933 () Bool)

(assert (=> b!1092933 (= e!624140 (and e!624139 mapRes!42076))))

(declare-fun condMapEmpty!42076 () Bool)

(declare-fun mapDefault!42076 () ValueCell!12731)

