; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96790 () Bool)

(assert start!96790)

(declare-fun b_free!23149 () Bool)

(declare-fun b_next!23149 () Bool)

(assert (=> start!96790 (= b_free!23149 (not b_next!23149))))

(declare-fun tp!81395 () Bool)

(declare-fun b_and!37077 () Bool)

(assert (=> start!96790 (= tp!81395 b_and!37077)))

(declare-fun mapIsEmpty!42580 () Bool)

(declare-fun mapRes!42580 () Bool)

(assert (=> mapIsEmpty!42580 mapRes!42580))

(declare-fun b!1100508 () Bool)

(declare-fun e!628183 () Bool)

(declare-fun tp_is_empty!27199 () Bool)

(assert (=> b!1100508 (= e!628183 tp_is_empty!27199)))

(declare-fun b!1100510 () Bool)

(declare-fun res!734469 () Bool)

(declare-fun e!628180 () Bool)

(assert (=> b!1100510 (=> (not res!734469) (not e!628180))))

(declare-datatypes ((array!71266 0))(
  ( (array!71267 (arr!34294 (Array (_ BitVec 32) (_ BitVec 64))) (size!34831 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71266)

(declare-datatypes ((List!24098 0))(
  ( (Nil!24095) (Cons!24094 (h!25303 (_ BitVec 64)) (t!34300 List!24098)) )
))
(declare-fun arrayNoDuplicates!0 (array!71266 (_ BitVec 32) List!24098) Bool)

(assert (=> b!1100510 (= res!734469 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24095))))

(declare-fun b!1100511 () Bool)

(declare-fun res!734464 () Bool)

(assert (=> b!1100511 (=> (not res!734464) (not e!628180))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100511 (= res!734464 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34831 _keys!1070))))))

(declare-fun b!1100512 () Bool)

(declare-fun e!628178 () Bool)

(declare-fun e!628179 () Bool)

(assert (=> b!1100512 (= e!628178 (not e!628179))))

(declare-fun res!734462 () Bool)

(assert (=> b!1100512 (=> res!734462 e!628179)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100512 (= res!734462 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41393 0))(
  ( (V!41394 (val!13656 Int)) )
))
(declare-fun minValue!831 () V!41393)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17426 0))(
  ( (tuple2!17427 (_1!8723 (_ BitVec 64)) (_2!8723 V!41393)) )
))
(declare-datatypes ((List!24099 0))(
  ( (Nil!24096) (Cons!24095 (h!25304 tuple2!17426) (t!34301 List!24099)) )
))
(declare-datatypes ((ListLongMap!15407 0))(
  ( (ListLongMap!15408 (toList!7719 List!24099)) )
))
(declare-fun lt!493144 () ListLongMap!15407)

(declare-fun zeroValue!831 () V!41393)

(declare-datatypes ((ValueCell!12890 0))(
  ( (ValueCellFull!12890 (v!16285 V!41393)) (EmptyCell!12890) )
))
(declare-datatypes ((array!71268 0))(
  ( (array!71269 (arr!34295 (Array (_ BitVec 32) ValueCell!12890)) (size!34832 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71268)

(declare-fun getCurrentListMap!4407 (array!71266 array!71268 (_ BitVec 32) (_ BitVec 32) V!41393 V!41393 (_ BitVec 32) Int) ListLongMap!15407)

(assert (=> b!1100512 (= lt!493144 (getCurrentListMap!4407 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493142 () ListLongMap!15407)

(declare-fun lt!493140 () array!71266)

(declare-fun lt!493150 () array!71268)

(assert (=> b!1100512 (= lt!493142 (getCurrentListMap!4407 lt!493140 lt!493150 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493143 () ListLongMap!15407)

(declare-fun lt!493138 () ListLongMap!15407)

(assert (=> b!1100512 (and (= lt!493143 lt!493138) (= lt!493138 lt!493143))))

(declare-fun lt!493148 () ListLongMap!15407)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!959 (ListLongMap!15407 (_ BitVec 64)) ListLongMap!15407)

(assert (=> b!1100512 (= lt!493138 (-!959 lt!493148 k!904))))

(declare-datatypes ((Unit!36111 0))(
  ( (Unit!36112) )
))
(declare-fun lt!493139 () Unit!36111)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!219 (array!71266 array!71268 (_ BitVec 32) (_ BitVec 32) V!41393 V!41393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36111)

(assert (=> b!1100512 (= lt!493139 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!219 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4194 (array!71266 array!71268 (_ BitVec 32) (_ BitVec 32) V!41393 V!41393 (_ BitVec 32) Int) ListLongMap!15407)

(assert (=> b!1100512 (= lt!493143 (getCurrentListMapNoExtraKeys!4194 lt!493140 lt!493150 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2325 (Int (_ BitVec 64)) V!41393)

(assert (=> b!1100512 (= lt!493150 (array!71269 (store (arr!34295 _values!874) i!650 (ValueCellFull!12890 (dynLambda!2325 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34832 _values!874)))))

(assert (=> b!1100512 (= lt!493148 (getCurrentListMapNoExtraKeys!4194 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100512 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493141 () Unit!36111)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71266 (_ BitVec 64) (_ BitVec 32)) Unit!36111)

(assert (=> b!1100512 (= lt!493141 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1100513 () Bool)

(assert (=> b!1100513 (= e!628180 e!628178)))

(declare-fun res!734470 () Bool)

(assert (=> b!1100513 (=> (not res!734470) (not e!628178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71266 (_ BitVec 32)) Bool)

(assert (=> b!1100513 (= res!734470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493140 mask!1414))))

(assert (=> b!1100513 (= lt!493140 (array!71267 (store (arr!34294 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34831 _keys!1070)))))

(declare-fun mapNonEmpty!42580 () Bool)

(declare-fun tp!81396 () Bool)

(assert (=> mapNonEmpty!42580 (= mapRes!42580 (and tp!81396 e!628183))))

(declare-fun mapKey!42580 () (_ BitVec 32))

(declare-fun mapValue!42580 () ValueCell!12890)

(declare-fun mapRest!42580 () (Array (_ BitVec 32) ValueCell!12890))

(assert (=> mapNonEmpty!42580 (= (arr!34295 _values!874) (store mapRest!42580 mapKey!42580 mapValue!42580))))

(declare-fun b!1100514 () Bool)

(declare-fun res!734468 () Bool)

(assert (=> b!1100514 (=> (not res!734468) (not e!628178))))

(assert (=> b!1100514 (= res!734468 (arrayNoDuplicates!0 lt!493140 #b00000000000000000000000000000000 Nil!24095))))

(declare-fun b!1100515 () Bool)

(declare-fun res!734465 () Bool)

(assert (=> b!1100515 (=> (not res!734465) (not e!628180))))

(assert (=> b!1100515 (= res!734465 (and (= (size!34832 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34831 _keys!1070) (size!34832 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun e!628177 () Bool)

(declare-fun b!1100516 () Bool)

(assert (=> b!1100516 (= e!628177 (= (-!959 lt!493144 k!904) lt!493142))))

(declare-fun lt!493146 () ListLongMap!15407)

(declare-fun lt!493147 () ListLongMap!15407)

(assert (=> b!1100516 (= (-!959 lt!493146 k!904) lt!493147)))

(declare-fun lt!493149 () Unit!36111)

(declare-fun addRemoveCommutativeForDiffKeys!135 (ListLongMap!15407 (_ BitVec 64) V!41393 (_ BitVec 64)) Unit!36111)

(assert (=> b!1100516 (= lt!493149 (addRemoveCommutativeForDiffKeys!135 lt!493148 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1100517 () Bool)

(assert (=> b!1100517 (= e!628179 e!628177)))

(declare-fun res!734460 () Bool)

(assert (=> b!1100517 (=> res!734460 e!628177)))

(assert (=> b!1100517 (= res!734460 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1100517 (= lt!493142 lt!493147)))

(declare-fun lt!493145 () tuple2!17426)

(declare-fun +!3352 (ListLongMap!15407 tuple2!17426) ListLongMap!15407)

(assert (=> b!1100517 (= lt!493147 (+!3352 lt!493138 lt!493145))))

(assert (=> b!1100517 (= lt!493144 lt!493146)))

(assert (=> b!1100517 (= lt!493146 (+!3352 lt!493148 lt!493145))))

(assert (=> b!1100517 (= lt!493142 (+!3352 lt!493143 lt!493145))))

(assert (=> b!1100517 (= lt!493145 (tuple2!17427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1100518 () Bool)

(declare-fun res!734467 () Bool)

(assert (=> b!1100518 (=> (not res!734467) (not e!628180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100518 (= res!734467 (validKeyInArray!0 k!904))))

(declare-fun b!1100519 () Bool)

(declare-fun res!734463 () Bool)

(assert (=> b!1100519 (=> (not res!734463) (not e!628180))))

(assert (=> b!1100519 (= res!734463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100509 () Bool)

(declare-fun res!734461 () Bool)

(assert (=> b!1100509 (=> (not res!734461) (not e!628180))))

(assert (=> b!1100509 (= res!734461 (= (select (arr!34294 _keys!1070) i!650) k!904))))

(declare-fun res!734466 () Bool)

(assert (=> start!96790 (=> (not res!734466) (not e!628180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96790 (= res!734466 (validMask!0 mask!1414))))

(assert (=> start!96790 e!628180))

(assert (=> start!96790 tp!81395))

(assert (=> start!96790 true))

(assert (=> start!96790 tp_is_empty!27199))

(declare-fun array_inv!26274 (array!71266) Bool)

(assert (=> start!96790 (array_inv!26274 _keys!1070)))

(declare-fun e!628181 () Bool)

(declare-fun array_inv!26275 (array!71268) Bool)

(assert (=> start!96790 (and (array_inv!26275 _values!874) e!628181)))

(declare-fun b!1100520 () Bool)

(declare-fun e!628182 () Bool)

(assert (=> b!1100520 (= e!628182 tp_is_empty!27199)))

(declare-fun b!1100521 () Bool)

(assert (=> b!1100521 (= e!628181 (and e!628182 mapRes!42580))))

(declare-fun condMapEmpty!42580 () Bool)

(declare-fun mapDefault!42580 () ValueCell!12890)

