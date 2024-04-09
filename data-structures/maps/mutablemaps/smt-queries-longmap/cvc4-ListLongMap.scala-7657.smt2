; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96302 () Bool)

(assert start!96302)

(declare-fun b_free!22919 () Bool)

(declare-fun b_next!22919 () Bool)

(assert (=> start!96302 (= b_free!22919 (not b_next!22919))))

(declare-fun tp!80607 () Bool)

(declare-fun b_and!36531 () Bool)

(assert (=> start!96302 (= tp!80607 b_and!36531)))

(declare-fun mapNonEmpty!42136 () Bool)

(declare-fun mapRes!42136 () Bool)

(declare-fun tp!80606 () Bool)

(declare-fun e!624498 () Bool)

(assert (=> mapNonEmpty!42136 (= mapRes!42136 (and tp!80606 e!624498))))

(declare-datatypes ((V!41021 0))(
  ( (V!41022 (val!13517 Int)) )
))
(declare-datatypes ((ValueCell!12751 0))(
  ( (ValueCellFull!12751 (v!16139 V!41021)) (EmptyCell!12751) )
))
(declare-datatypes ((array!70716 0))(
  ( (array!70717 (arr!34028 (Array (_ BitVec 32) ValueCell!12751)) (size!34565 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70716)

(declare-fun mapValue!42136 () ValueCell!12751)

(declare-fun mapRest!42136 () (Array (_ BitVec 32) ValueCell!12751))

(declare-fun mapKey!42136 () (_ BitVec 32))

(assert (=> mapNonEmpty!42136 (= (arr!34028 _values!874) (store mapRest!42136 mapKey!42136 mapValue!42136))))

(declare-fun mapIsEmpty!42136 () Bool)

(assert (=> mapIsEmpty!42136 mapRes!42136))

(declare-fun b!1093685 () Bool)

(declare-fun e!624500 () Bool)

(assert (=> b!1093685 (= e!624500 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41021)

(declare-datatypes ((array!70718 0))(
  ( (array!70719 (arr!34029 (Array (_ BitVec 32) (_ BitVec 64))) (size!34566 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70718)

(declare-fun minValue!831 () V!41021)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17266 0))(
  ( (tuple2!17267 (_1!8643 (_ BitVec 64)) (_2!8643 V!41021)) )
))
(declare-datatypes ((List!23912 0))(
  ( (Nil!23909) (Cons!23908 (h!25117 tuple2!17266) (t!33896 List!23912)) )
))
(declare-datatypes ((ListLongMap!15247 0))(
  ( (ListLongMap!15248 (toList!7639 List!23912)) )
))
(declare-fun lt!489191 () ListLongMap!15247)

(declare-fun getCurrentListMap!4374 (array!70718 array!70716 (_ BitVec 32) (_ BitVec 32) V!41021 V!41021 (_ BitVec 32) Int) ListLongMap!15247)

(assert (=> b!1093685 (= lt!489191 (getCurrentListMap!4374 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489187 () ListLongMap!15247)

(declare-fun lt!489188 () array!70716)

(declare-fun lt!489190 () array!70718)

(assert (=> b!1093685 (= lt!489187 (getCurrentListMap!4374 lt!489190 lt!489188 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489186 () ListLongMap!15247)

(declare-fun lt!489184 () ListLongMap!15247)

(assert (=> b!1093685 (and (= lt!489186 lt!489184) (= lt!489184 lt!489186))))

(declare-fun lt!489183 () ListLongMap!15247)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!915 (ListLongMap!15247 (_ BitVec 64)) ListLongMap!15247)

(assert (=> b!1093685 (= lt!489184 (-!915 lt!489183 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35945 0))(
  ( (Unit!35946) )
))
(declare-fun lt!489185 () Unit!35945)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!180 (array!70718 array!70716 (_ BitVec 32) (_ BitVec 32) V!41021 V!41021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35945)

(assert (=> b!1093685 (= lt!489185 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!180 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4126 (array!70718 array!70716 (_ BitVec 32) (_ BitVec 32) V!41021 V!41021 (_ BitVec 32) Int) ListLongMap!15247)

(assert (=> b!1093685 (= lt!489186 (getCurrentListMapNoExtraKeys!4126 lt!489190 lt!489188 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2262 (Int (_ BitVec 64)) V!41021)

(assert (=> b!1093685 (= lt!489188 (array!70717 (store (arr!34028 _values!874) i!650 (ValueCellFull!12751 (dynLambda!2262 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34565 _values!874)))))

(assert (=> b!1093685 (= lt!489183 (getCurrentListMapNoExtraKeys!4126 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093685 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489189 () Unit!35945)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70718 (_ BitVec 64) (_ BitVec 32)) Unit!35945)

(assert (=> b!1093685 (= lt!489189 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093686 () Bool)

(declare-fun res!729924 () Bool)

(declare-fun e!624501 () Bool)

(assert (=> b!1093686 (=> (not res!729924) (not e!624501))))

(assert (=> b!1093686 (= res!729924 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34566 _keys!1070))))))

(declare-fun b!1093687 () Bool)

(declare-fun res!729925 () Bool)

(assert (=> b!1093687 (=> (not res!729925) (not e!624500))))

(declare-datatypes ((List!23913 0))(
  ( (Nil!23910) (Cons!23909 (h!25118 (_ BitVec 64)) (t!33897 List!23913)) )
))
(declare-fun arrayNoDuplicates!0 (array!70718 (_ BitVec 32) List!23913) Bool)

(assert (=> b!1093687 (= res!729925 (arrayNoDuplicates!0 lt!489190 #b00000000000000000000000000000000 Nil!23910))))

(declare-fun b!1093688 () Bool)

(declare-fun res!729926 () Bool)

(assert (=> b!1093688 (=> (not res!729926) (not e!624501))))

(assert (=> b!1093688 (= res!729926 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23910))))

(declare-fun b!1093689 () Bool)

(declare-fun e!624499 () Bool)

(declare-fun e!624502 () Bool)

(assert (=> b!1093689 (= e!624499 (and e!624502 mapRes!42136))))

(declare-fun condMapEmpty!42136 () Bool)

(declare-fun mapDefault!42136 () ValueCell!12751)

