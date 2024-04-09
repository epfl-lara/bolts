; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96280 () Bool)

(assert start!96280)

(declare-fun b_free!22897 () Bool)

(declare-fun b_next!22897 () Bool)

(assert (=> start!96280 (= b_free!22897 (not b_next!22897))))

(declare-fun tp!80541 () Bool)

(declare-fun b_and!36487 () Bool)

(assert (=> start!96280 (= tp!80541 b_and!36487)))

(declare-fun b!1093267 () Bool)

(declare-fun e!624302 () Bool)

(declare-fun tp_is_empty!26899 () Bool)

(assert (=> b!1093267 (= e!624302 tp_is_empty!26899)))

(declare-fun b!1093268 () Bool)

(declare-fun e!624304 () Bool)

(assert (=> b!1093268 (= e!624304 tp_is_empty!26899)))

(declare-fun b!1093269 () Bool)

(declare-fun res!729632 () Bool)

(declare-fun e!624301 () Bool)

(assert (=> b!1093269 (=> (not res!729632) (not e!624301))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093269 (= res!729632 (validKeyInArray!0 k!904))))

(declare-fun b!1093270 () Bool)

(declare-fun res!729634 () Bool)

(assert (=> b!1093270 (=> (not res!729634) (not e!624301))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70672 0))(
  ( (array!70673 (arr!34006 (Array (_ BitVec 32) (_ BitVec 64))) (size!34543 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70672)

(assert (=> b!1093270 (= res!729634 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34543 _keys!1070))))))

(declare-fun b!1093271 () Bool)

(declare-fun e!624299 () Bool)

(assert (=> b!1093271 (= e!624299 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40993 0))(
  ( (V!40994 (val!13506 Int)) )
))
(declare-fun minValue!831 () V!40993)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40993)

(declare-datatypes ((ValueCell!12740 0))(
  ( (ValueCellFull!12740 (v!16128 V!40993)) (EmptyCell!12740) )
))
(declare-datatypes ((array!70674 0))(
  ( (array!70675 (arr!34007 (Array (_ BitVec 32) ValueCell!12740)) (size!34544 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70674)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17248 0))(
  ( (tuple2!17249 (_1!8634 (_ BitVec 64)) (_2!8634 V!40993)) )
))
(declare-datatypes ((List!23894 0))(
  ( (Nil!23891) (Cons!23890 (h!25099 tuple2!17248) (t!33856 List!23894)) )
))
(declare-datatypes ((ListLongMap!15229 0))(
  ( (ListLongMap!15230 (toList!7630 List!23894)) )
))
(declare-fun lt!488891 () ListLongMap!15229)

(declare-fun getCurrentListMap!4365 (array!70672 array!70674 (_ BitVec 32) (_ BitVec 32) V!40993 V!40993 (_ BitVec 32) Int) ListLongMap!15229)

(assert (=> b!1093271 (= lt!488891 (getCurrentListMap!4365 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488893 () array!70672)

(declare-fun lt!488890 () array!70674)

(declare-fun lt!488892 () ListLongMap!15229)

(assert (=> b!1093271 (= lt!488892 (getCurrentListMap!4365 lt!488893 lt!488890 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488889 () ListLongMap!15229)

(declare-fun lt!488887 () ListLongMap!15229)

(assert (=> b!1093271 (and (= lt!488889 lt!488887) (= lt!488887 lt!488889))))

(declare-fun lt!488888 () ListLongMap!15229)

(declare-fun -!906 (ListLongMap!15229 (_ BitVec 64)) ListLongMap!15229)

(assert (=> b!1093271 (= lt!488887 (-!906 lt!488888 k!904))))

(declare-datatypes ((Unit!35927 0))(
  ( (Unit!35928) )
))
(declare-fun lt!488894 () Unit!35927)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!171 (array!70672 array!70674 (_ BitVec 32) (_ BitVec 32) V!40993 V!40993 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35927)

(assert (=> b!1093271 (= lt!488894 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4117 (array!70672 array!70674 (_ BitVec 32) (_ BitVec 32) V!40993 V!40993 (_ BitVec 32) Int) ListLongMap!15229)

(assert (=> b!1093271 (= lt!488889 (getCurrentListMapNoExtraKeys!4117 lt!488893 lt!488890 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2253 (Int (_ BitVec 64)) V!40993)

(assert (=> b!1093271 (= lt!488890 (array!70675 (store (arr!34007 _values!874) i!650 (ValueCellFull!12740 (dynLambda!2253 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34544 _values!874)))))

(assert (=> b!1093271 (= lt!488888 (getCurrentListMapNoExtraKeys!4117 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093271 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488886 () Unit!35927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70672 (_ BitVec 64) (_ BitVec 32)) Unit!35927)

(assert (=> b!1093271 (= lt!488886 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093272 () Bool)

(assert (=> b!1093272 (= e!624301 e!624299)))

(declare-fun res!729628 () Bool)

(assert (=> b!1093272 (=> (not res!729628) (not e!624299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70672 (_ BitVec 32)) Bool)

(assert (=> b!1093272 (= res!729628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488893 mask!1414))))

(assert (=> b!1093272 (= lt!488893 (array!70673 (store (arr!34006 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34543 _keys!1070)))))

(declare-fun mapNonEmpty!42103 () Bool)

(declare-fun mapRes!42103 () Bool)

(declare-fun tp!80540 () Bool)

(assert (=> mapNonEmpty!42103 (= mapRes!42103 (and tp!80540 e!624302))))

(declare-fun mapValue!42103 () ValueCell!12740)

(declare-fun mapKey!42103 () (_ BitVec 32))

(declare-fun mapRest!42103 () (Array (_ BitVec 32) ValueCell!12740))

(assert (=> mapNonEmpty!42103 (= (arr!34007 _values!874) (store mapRest!42103 mapKey!42103 mapValue!42103))))

(declare-fun b!1093273 () Bool)

(declare-fun res!729629 () Bool)

(assert (=> b!1093273 (=> (not res!729629) (not e!624301))))

(assert (=> b!1093273 (= res!729629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42103 () Bool)

(assert (=> mapIsEmpty!42103 mapRes!42103))

(declare-fun b!1093274 () Bool)

(declare-fun res!729627 () Bool)

(assert (=> b!1093274 (=> (not res!729627) (not e!624299))))

(declare-datatypes ((List!23895 0))(
  ( (Nil!23892) (Cons!23891 (h!25100 (_ BitVec 64)) (t!33857 List!23895)) )
))
(declare-fun arrayNoDuplicates!0 (array!70672 (_ BitVec 32) List!23895) Bool)

(assert (=> b!1093274 (= res!729627 (arrayNoDuplicates!0 lt!488893 #b00000000000000000000000000000000 Nil!23892))))

(declare-fun b!1093275 () Bool)

(declare-fun res!729635 () Bool)

(assert (=> b!1093275 (=> (not res!729635) (not e!624301))))

(assert (=> b!1093275 (= res!729635 (= (select (arr!34006 _keys!1070) i!650) k!904))))

(declare-fun res!729631 () Bool)

(assert (=> start!96280 (=> (not res!729631) (not e!624301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96280 (= res!729631 (validMask!0 mask!1414))))

(assert (=> start!96280 e!624301))

(assert (=> start!96280 tp!80541))

(assert (=> start!96280 true))

(assert (=> start!96280 tp_is_empty!26899))

(declare-fun array_inv!26062 (array!70672) Bool)

(assert (=> start!96280 (array_inv!26062 _keys!1070)))

(declare-fun e!624303 () Bool)

(declare-fun array_inv!26063 (array!70674) Bool)

(assert (=> start!96280 (and (array_inv!26063 _values!874) e!624303)))

(declare-fun b!1093276 () Bool)

(assert (=> b!1093276 (= e!624303 (and e!624304 mapRes!42103))))

(declare-fun condMapEmpty!42103 () Bool)

(declare-fun mapDefault!42103 () ValueCell!12740)

