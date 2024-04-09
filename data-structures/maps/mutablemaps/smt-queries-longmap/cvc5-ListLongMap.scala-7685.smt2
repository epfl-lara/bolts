; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96492 () Bool)

(assert start!96492)

(declare-fun b_free!23035 () Bool)

(declare-fun b_next!23035 () Bool)

(assert (=> start!96492 (= b_free!23035 (not b_next!23035))))

(declare-fun tp!81032 () Bool)

(declare-fun b_and!36751 () Bool)

(assert (=> start!96492 (= tp!81032 b_and!36751)))

(declare-fun b!1096700 () Bool)

(declare-fun res!732054 () Bool)

(declare-fun e!626023 () Bool)

(assert (=> b!1096700 (=> (not res!732054) (not e!626023))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096700 (= res!732054 (validKeyInArray!0 k!904))))

(declare-fun res!732055 () Bool)

(assert (=> start!96492 (=> (not res!732055) (not e!626023))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96492 (= res!732055 (validMask!0 mask!1414))))

(assert (=> start!96492 e!626023))

(assert (=> start!96492 tp!81032))

(assert (=> start!96492 true))

(declare-fun tp_is_empty!27085 () Bool)

(assert (=> start!96492 tp_is_empty!27085))

(declare-datatypes ((array!71030 0))(
  ( (array!71031 (arr!34183 (Array (_ BitVec 32) (_ BitVec 64))) (size!34720 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71030)

(declare-fun array_inv!26194 (array!71030) Bool)

(assert (=> start!96492 (array_inv!26194 _keys!1070)))

(declare-datatypes ((V!41241 0))(
  ( (V!41242 (val!13599 Int)) )
))
(declare-datatypes ((ValueCell!12833 0))(
  ( (ValueCellFull!12833 (v!16221 V!41241)) (EmptyCell!12833) )
))
(declare-datatypes ((array!71032 0))(
  ( (array!71033 (arr!34184 (Array (_ BitVec 32) ValueCell!12833)) (size!34721 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71032)

(declare-fun e!626024 () Bool)

(declare-fun array_inv!26195 (array!71032) Bool)

(assert (=> start!96492 (and (array_inv!26195 _values!874) e!626024)))

(declare-fun b!1096701 () Bool)

(declare-fun res!732051 () Bool)

(declare-fun e!626022 () Bool)

(assert (=> b!1096701 (=> (not res!732051) (not e!626022))))

(declare-fun lt!490223 () array!71030)

(declare-datatypes ((List!24010 0))(
  ( (Nil!24007) (Cons!24006 (h!25215 (_ BitVec 64)) (t!34098 List!24010)) )
))
(declare-fun arrayNoDuplicates!0 (array!71030 (_ BitVec 32) List!24010) Bool)

(assert (=> b!1096701 (= res!732051 (arrayNoDuplicates!0 lt!490223 #b00000000000000000000000000000000 Nil!24007))))

(declare-fun b!1096702 () Bool)

(assert (=> b!1096702 (= e!626023 e!626022)))

(declare-fun res!732053 () Bool)

(assert (=> b!1096702 (=> (not res!732053) (not e!626022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71030 (_ BitVec 32)) Bool)

(assert (=> b!1096702 (= res!732053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490223 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096702 (= lt!490223 (array!71031 (store (arr!34183 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34720 _keys!1070)))))

(declare-fun b!1096703 () Bool)

(assert (=> b!1096703 (= e!626022 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41241)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41241)

(declare-datatypes ((tuple2!17334 0))(
  ( (tuple2!17335 (_1!8677 (_ BitVec 64)) (_2!8677 V!41241)) )
))
(declare-datatypes ((List!24011 0))(
  ( (Nil!24008) (Cons!24007 (h!25216 tuple2!17334) (t!34099 List!24011)) )
))
(declare-datatypes ((ListLongMap!15315 0))(
  ( (ListLongMap!15316 (toList!7673 List!24011)) )
))
(declare-fun lt!490224 () ListLongMap!15315)

(declare-fun getCurrentListMapNoExtraKeys!4160 (array!71030 array!71032 (_ BitVec 32) (_ BitVec 32) V!41241 V!41241 (_ BitVec 32) Int) ListLongMap!15315)

(declare-fun dynLambda!2291 (Int (_ BitVec 64)) V!41241)

(assert (=> b!1096703 (= lt!490224 (getCurrentListMapNoExtraKeys!4160 lt!490223 (array!71033 (store (arr!34184 _values!874) i!650 (ValueCellFull!12833 (dynLambda!2291 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34721 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490225 () ListLongMap!15315)

(assert (=> b!1096703 (= lt!490225 (getCurrentListMapNoExtraKeys!4160 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096703 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36019 0))(
  ( (Unit!36020) )
))
(declare-fun lt!490226 () Unit!36019)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71030 (_ BitVec 64) (_ BitVec 32)) Unit!36019)

(assert (=> b!1096703 (= lt!490226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096704 () Bool)

(declare-fun e!626025 () Bool)

(assert (=> b!1096704 (= e!626025 tp_is_empty!27085)))

(declare-fun mapIsEmpty!42388 () Bool)

(declare-fun mapRes!42388 () Bool)

(assert (=> mapIsEmpty!42388 mapRes!42388))

(declare-fun b!1096705 () Bool)

(declare-fun res!732049 () Bool)

(assert (=> b!1096705 (=> (not res!732049) (not e!626023))))

(assert (=> b!1096705 (= res!732049 (and (= (size!34721 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34720 _keys!1070) (size!34721 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096706 () Bool)

(declare-fun e!626021 () Bool)

(assert (=> b!1096706 (= e!626021 tp_is_empty!27085)))

(declare-fun mapNonEmpty!42388 () Bool)

(declare-fun tp!81033 () Bool)

(assert (=> mapNonEmpty!42388 (= mapRes!42388 (and tp!81033 e!626025))))

(declare-fun mapRest!42388 () (Array (_ BitVec 32) ValueCell!12833))

(declare-fun mapValue!42388 () ValueCell!12833)

(declare-fun mapKey!42388 () (_ BitVec 32))

(assert (=> mapNonEmpty!42388 (= (arr!34184 _values!874) (store mapRest!42388 mapKey!42388 mapValue!42388))))

(declare-fun b!1096707 () Bool)

(declare-fun res!732050 () Bool)

(assert (=> b!1096707 (=> (not res!732050) (not e!626023))))

(assert (=> b!1096707 (= res!732050 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34720 _keys!1070))))))

(declare-fun b!1096708 () Bool)

(declare-fun res!732052 () Bool)

(assert (=> b!1096708 (=> (not res!732052) (not e!626023))))

(assert (=> b!1096708 (= res!732052 (= (select (arr!34183 _keys!1070) i!650) k!904))))

(declare-fun b!1096709 () Bool)

(declare-fun res!732057 () Bool)

(assert (=> b!1096709 (=> (not res!732057) (not e!626023))))

(assert (=> b!1096709 (= res!732057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096710 () Bool)

(assert (=> b!1096710 (= e!626024 (and e!626021 mapRes!42388))))

(declare-fun condMapEmpty!42388 () Bool)

(declare-fun mapDefault!42388 () ValueCell!12833)

