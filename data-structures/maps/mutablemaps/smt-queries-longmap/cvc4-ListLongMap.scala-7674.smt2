; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96430 () Bool)

(assert start!96430)

(declare-fun b_free!22973 () Bool)

(declare-fun b_next!22973 () Bool)

(assert (=> start!96430 (= b_free!22973 (not b_next!22973))))

(declare-fun tp!80846 () Bool)

(declare-fun b_and!36627 () Bool)

(assert (=> start!96430 (= tp!80846 b_and!36627)))

(declare-fun b!1095522 () Bool)

(declare-fun e!625467 () Bool)

(declare-fun tp_is_empty!27023 () Bool)

(assert (=> b!1095522 (= e!625467 tp_is_empty!27023)))

(declare-fun b!1095523 () Bool)

(declare-fun res!731218 () Bool)

(declare-fun e!625463 () Bool)

(assert (=> b!1095523 (=> (not res!731218) (not e!625463))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095523 (= res!731218 (validKeyInArray!0 k!904))))

(declare-fun b!1095524 () Bool)

(declare-fun res!731213 () Bool)

(declare-fun e!625465 () Bool)

(assert (=> b!1095524 (=> (not res!731213) (not e!625465))))

(declare-datatypes ((array!70912 0))(
  ( (array!70913 (arr!34124 (Array (_ BitVec 32) (_ BitVec 64))) (size!34661 (_ BitVec 32))) )
))
(declare-fun lt!489853 () array!70912)

(declare-datatypes ((List!23966 0))(
  ( (Nil!23963) (Cons!23962 (h!25171 (_ BitVec 64)) (t!33992 List!23966)) )
))
(declare-fun arrayNoDuplicates!0 (array!70912 (_ BitVec 32) List!23966) Bool)

(assert (=> b!1095524 (= res!731213 (arrayNoDuplicates!0 lt!489853 #b00000000000000000000000000000000 Nil!23963))))

(declare-fun b!1095525 () Bool)

(declare-fun e!625466 () Bool)

(assert (=> b!1095525 (= e!625466 tp_is_empty!27023)))

(declare-fun b!1095526 () Bool)

(assert (=> b!1095526 (= e!625463 e!625465)))

(declare-fun res!731214 () Bool)

(assert (=> b!1095526 (=> (not res!731214) (not e!625465))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70912 (_ BitVec 32)) Bool)

(assert (=> b!1095526 (= res!731214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489853 mask!1414))))

(declare-fun _keys!1070 () array!70912)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095526 (= lt!489853 (array!70913 (store (arr!34124 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34661 _keys!1070)))))

(declare-fun b!1095527 () Bool)

(declare-fun res!731212 () Bool)

(assert (=> b!1095527 (=> (not res!731212) (not e!625463))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41157 0))(
  ( (V!41158 (val!13568 Int)) )
))
(declare-datatypes ((ValueCell!12802 0))(
  ( (ValueCellFull!12802 (v!16190 V!41157)) (EmptyCell!12802) )
))
(declare-datatypes ((array!70914 0))(
  ( (array!70915 (arr!34125 (Array (_ BitVec 32) ValueCell!12802)) (size!34662 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70914)

(assert (=> b!1095527 (= res!731212 (and (= (size!34662 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34661 _keys!1070) (size!34662 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095528 () Bool)

(declare-fun res!731216 () Bool)

(assert (=> b!1095528 (=> (not res!731216) (not e!625463))))

(assert (=> b!1095528 (= res!731216 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34661 _keys!1070))))))

(declare-fun mapNonEmpty!42295 () Bool)

(declare-fun mapRes!42295 () Bool)

(declare-fun tp!80847 () Bool)

(assert (=> mapNonEmpty!42295 (= mapRes!42295 (and tp!80847 e!625466))))

(declare-fun mapKey!42295 () (_ BitVec 32))

(declare-fun mapValue!42295 () ValueCell!12802)

(declare-fun mapRest!42295 () (Array (_ BitVec 32) ValueCell!12802))

(assert (=> mapNonEmpty!42295 (= (arr!34125 _values!874) (store mapRest!42295 mapKey!42295 mapValue!42295))))

(declare-fun b!1095530 () Bool)

(declare-fun e!625462 () Bool)

(assert (=> b!1095530 (= e!625462 (and e!625467 mapRes!42295))))

(declare-fun condMapEmpty!42295 () Bool)

(declare-fun mapDefault!42295 () ValueCell!12802)

