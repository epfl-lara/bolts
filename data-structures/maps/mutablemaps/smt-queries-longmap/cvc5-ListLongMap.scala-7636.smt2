; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96172 () Bool)

(assert start!96172)

(declare-fun b_free!22789 () Bool)

(declare-fun b_next!22789 () Bool)

(assert (=> start!96172 (= b_free!22789 (not b_next!22789))))

(declare-fun tp!80217 () Bool)

(declare-fun b_and!36271 () Bool)

(assert (=> start!96172 (= tp!80217 b_and!36271)))

(declare-fun b!1091057 () Bool)

(declare-fun e!623175 () Bool)

(declare-fun e!623171 () Bool)

(assert (=> b!1091057 (= e!623175 (not e!623171))))

(declare-fun res!728019 () Bool)

(assert (=> b!1091057 (=> res!728019 e!623171)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091057 (= res!728019 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!40849 0))(
  ( (V!40850 (val!13452 Int)) )
))
(declare-datatypes ((tuple2!17178 0))(
  ( (tuple2!17179 (_1!8599 (_ BitVec 64)) (_2!8599 V!40849)) )
))
(declare-datatypes ((List!23817 0))(
  ( (Nil!23814) (Cons!23813 (h!25022 tuple2!17178) (t!33671 List!23817)) )
))
(declare-datatypes ((ListLongMap!15159 0))(
  ( (ListLongMap!15160 (toList!7595 List!23817)) )
))
(declare-fun lt!487107 () ListLongMap!15159)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40849)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40849)

(declare-datatypes ((array!70468 0))(
  ( (array!70469 (arr!33904 (Array (_ BitVec 32) (_ BitVec 64))) (size!34441 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70468)

(declare-datatypes ((ValueCell!12686 0))(
  ( (ValueCellFull!12686 (v!16074 V!40849)) (EmptyCell!12686) )
))
(declare-datatypes ((array!70470 0))(
  ( (array!70471 (arr!33905 (Array (_ BitVec 32) ValueCell!12686)) (size!34442 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70470)

(declare-fun getCurrentListMap!4334 (array!70468 array!70470 (_ BitVec 32) (_ BitVec 32) V!40849 V!40849 (_ BitVec 32) Int) ListLongMap!15159)

(assert (=> b!1091057 (= lt!487107 (getCurrentListMap!4334 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487115 () array!70468)

(declare-fun lt!487105 () ListLongMap!15159)

(declare-fun lt!487111 () array!70470)

(assert (=> b!1091057 (= lt!487105 (getCurrentListMap!4334 lt!487115 lt!487111 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487114 () ListLongMap!15159)

(declare-fun lt!487112 () ListLongMap!15159)

(assert (=> b!1091057 (and (= lt!487114 lt!487112) (= lt!487112 lt!487114))))

(declare-fun lt!487113 () ListLongMap!15159)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!873 (ListLongMap!15159 (_ BitVec 64)) ListLongMap!15159)

(assert (=> b!1091057 (= lt!487112 (-!873 lt!487113 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35861 0))(
  ( (Unit!35862) )
))
(declare-fun lt!487110 () Unit!35861)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!140 (array!70468 array!70470 (_ BitVec 32) (_ BitVec 32) V!40849 V!40849 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35861)

(assert (=> b!1091057 (= lt!487110 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!140 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4086 (array!70468 array!70470 (_ BitVec 32) (_ BitVec 32) V!40849 V!40849 (_ BitVec 32) Int) ListLongMap!15159)

(assert (=> b!1091057 (= lt!487114 (getCurrentListMapNoExtraKeys!4086 lt!487115 lt!487111 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2222 (Int (_ BitVec 64)) V!40849)

(assert (=> b!1091057 (= lt!487111 (array!70471 (store (arr!33905 _values!874) i!650 (ValueCellFull!12686 (dynLambda!2222 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34442 _values!874)))))

(assert (=> b!1091057 (= lt!487113 (getCurrentListMapNoExtraKeys!4086 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091057 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487108 () Unit!35861)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70468 (_ BitVec 64) (_ BitVec 32)) Unit!35861)

(assert (=> b!1091057 (= lt!487108 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!728014 () Bool)

(declare-fun e!623176 () Bool)

(assert (=> start!96172 (=> (not res!728014) (not e!623176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96172 (= res!728014 (validMask!0 mask!1414))))

(assert (=> start!96172 e!623176))

(assert (=> start!96172 tp!80217))

(assert (=> start!96172 true))

(declare-fun tp_is_empty!26791 () Bool)

(assert (=> start!96172 tp_is_empty!26791))

(declare-fun array_inv!26000 (array!70468) Bool)

(assert (=> start!96172 (array_inv!26000 _keys!1070)))

(declare-fun e!623173 () Bool)

(declare-fun array_inv!26001 (array!70470) Bool)

(assert (=> start!96172 (and (array_inv!26001 _values!874) e!623173)))

(declare-fun b!1091058 () Bool)

(declare-fun res!728012 () Bool)

(assert (=> b!1091058 (=> (not res!728012) (not e!623176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091058 (= res!728012 (validKeyInArray!0 k!904))))

(declare-fun b!1091059 () Bool)

(declare-fun res!728016 () Bool)

(assert (=> b!1091059 (=> (not res!728016) (not e!623176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70468 (_ BitVec 32)) Bool)

(assert (=> b!1091059 (= res!728016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091060 () Bool)

(declare-fun res!728015 () Bool)

(assert (=> b!1091060 (=> (not res!728015) (not e!623176))))

(assert (=> b!1091060 (= res!728015 (and (= (size!34442 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34441 _keys!1070) (size!34442 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091061 () Bool)

(declare-fun e!623170 () Bool)

(assert (=> b!1091061 (= e!623171 e!623170)))

(declare-fun res!728018 () Bool)

(assert (=> b!1091061 (=> res!728018 e!623170)))

(assert (=> b!1091061 (= res!728018 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!487104 () ListLongMap!15159)

(assert (=> b!1091061 (= lt!487107 lt!487104)))

(declare-fun lt!487103 () tuple2!17178)

(declare-fun +!3303 (ListLongMap!15159 tuple2!17178) ListLongMap!15159)

(assert (=> b!1091061 (= lt!487104 (+!3303 lt!487113 lt!487103))))

(declare-fun lt!487106 () ListLongMap!15159)

(assert (=> b!1091061 (= lt!487105 lt!487106)))

(assert (=> b!1091061 (= lt!487106 (+!3303 lt!487112 lt!487103))))

(assert (=> b!1091061 (= lt!487105 (+!3303 lt!487114 lt!487103))))

(assert (=> b!1091061 (= lt!487103 (tuple2!17179 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091062 () Bool)

(declare-fun res!728021 () Bool)

(assert (=> b!1091062 (=> (not res!728021) (not e!623176))))

(declare-datatypes ((List!23818 0))(
  ( (Nil!23815) (Cons!23814 (h!25023 (_ BitVec 64)) (t!33672 List!23818)) )
))
(declare-fun arrayNoDuplicates!0 (array!70468 (_ BitVec 32) List!23818) Bool)

(assert (=> b!1091062 (= res!728021 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23815))))

(declare-fun b!1091063 () Bool)

(declare-fun e!623172 () Bool)

(assert (=> b!1091063 (= e!623172 tp_is_empty!26791)))

(declare-fun b!1091064 () Bool)

(declare-fun res!728011 () Bool)

(assert (=> b!1091064 (=> (not res!728011) (not e!623176))))

(assert (=> b!1091064 (= res!728011 (= (select (arr!33904 _keys!1070) i!650) k!904))))

(declare-fun b!1091065 () Bool)

(assert (=> b!1091065 (= e!623170 true)))

(assert (=> b!1091065 (= (-!873 lt!487104 k!904) lt!487106)))

(declare-fun lt!487109 () Unit!35861)

(declare-fun addRemoveCommutativeForDiffKeys!101 (ListLongMap!15159 (_ BitVec 64) V!40849 (_ BitVec 64)) Unit!35861)

(assert (=> b!1091065 (= lt!487109 (addRemoveCommutativeForDiffKeys!101 lt!487113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091066 () Bool)

(declare-fun e!623174 () Bool)

(assert (=> b!1091066 (= e!623174 tp_is_empty!26791)))

(declare-fun mapIsEmpty!41941 () Bool)

(declare-fun mapRes!41941 () Bool)

(assert (=> mapIsEmpty!41941 mapRes!41941))

(declare-fun b!1091067 () Bool)

(assert (=> b!1091067 (= e!623173 (and e!623172 mapRes!41941))))

(declare-fun condMapEmpty!41941 () Bool)

(declare-fun mapDefault!41941 () ValueCell!12686)

