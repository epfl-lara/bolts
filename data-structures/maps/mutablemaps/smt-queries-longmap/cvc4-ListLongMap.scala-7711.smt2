; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96914 () Bool)

(assert start!96914)

(declare-fun b_free!23195 () Bool)

(declare-fun b_next!23195 () Bool)

(assert (=> start!96914 (= b_free!23195 (not b_next!23195))))

(declare-fun tp!81543 () Bool)

(declare-fun b_and!37211 () Bool)

(assert (=> start!96914 (= tp!81543 b_and!37211)))

(declare-fun mapIsEmpty!42658 () Bool)

(declare-fun mapRes!42658 () Bool)

(assert (=> mapIsEmpty!42658 mapRes!42658))

(declare-fun b!1102110 () Bool)

(declare-fun res!735481 () Bool)

(declare-fun e!629105 () Bool)

(assert (=> b!1102110 (=> (not res!735481) (not e!629105))))

(declare-datatypes ((array!71364 0))(
  ( (array!71365 (arr!34340 (Array (_ BitVec 32) (_ BitVec 64))) (size!34877 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71364)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71364 (_ BitVec 32)) Bool)

(assert (=> b!1102110 (= res!735481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102111 () Bool)

(declare-fun e!629103 () Bool)

(declare-fun e!629108 () Bool)

(assert (=> b!1102111 (= e!629103 (not e!629108))))

(declare-fun res!735488 () Bool)

(assert (=> b!1102111 (=> res!735488 e!629108)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1102111 (= res!735488 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41453 0))(
  ( (V!41454 (val!13679 Int)) )
))
(declare-datatypes ((tuple2!17468 0))(
  ( (tuple2!17469 (_1!8744 (_ BitVec 64)) (_2!8744 V!41453)) )
))
(declare-datatypes ((List!24139 0))(
  ( (Nil!24136) (Cons!24135 (h!25344 tuple2!17468) (t!34387 List!24139)) )
))
(declare-datatypes ((ListLongMap!15449 0))(
  ( (ListLongMap!15450 (toList!7740 List!24139)) )
))
(declare-fun lt!494382 () ListLongMap!15449)

(declare-fun minValue!831 () V!41453)

(declare-fun zeroValue!831 () V!41453)

(declare-datatypes ((ValueCell!12913 0))(
  ( (ValueCellFull!12913 (v!16311 V!41453)) (EmptyCell!12913) )
))
(declare-datatypes ((array!71366 0))(
  ( (array!71367 (arr!34341 (Array (_ BitVec 32) ValueCell!12913)) (size!34878 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71366)

(declare-fun getCurrentListMap!4423 (array!71364 array!71366 (_ BitVec 32) (_ BitVec 32) V!41453 V!41453 (_ BitVec 32) Int) ListLongMap!15449)

(assert (=> b!1102111 (= lt!494382 (getCurrentListMap!4423 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494389 () ListLongMap!15449)

(declare-fun lt!494384 () array!71366)

(declare-fun lt!494388 () array!71364)

(assert (=> b!1102111 (= lt!494389 (getCurrentListMap!4423 lt!494388 lt!494384 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494381 () ListLongMap!15449)

(declare-fun lt!494391 () ListLongMap!15449)

(assert (=> b!1102111 (and (= lt!494381 lt!494391) (= lt!494391 lt!494381))))

(declare-fun lt!494393 () ListLongMap!15449)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!977 (ListLongMap!15449 (_ BitVec 64)) ListLongMap!15449)

(assert (=> b!1102111 (= lt!494391 (-!977 lt!494393 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36153 0))(
  ( (Unit!36154) )
))
(declare-fun lt!494387 () Unit!36153)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!235 (array!71364 array!71366 (_ BitVec 32) (_ BitVec 32) V!41453 V!41453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36153)

(assert (=> b!1102111 (= lt!494387 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!235 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4210 (array!71364 array!71366 (_ BitVec 32) (_ BitVec 32) V!41453 V!41453 (_ BitVec 32) Int) ListLongMap!15449)

(assert (=> b!1102111 (= lt!494381 (getCurrentListMapNoExtraKeys!4210 lt!494388 lt!494384 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2341 (Int (_ BitVec 64)) V!41453)

(assert (=> b!1102111 (= lt!494384 (array!71367 (store (arr!34341 _values!874) i!650 (ValueCellFull!12913 (dynLambda!2341 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34878 _values!874)))))

(assert (=> b!1102111 (= lt!494393 (getCurrentListMapNoExtraKeys!4210 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102111 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494390 () Unit!36153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71364 (_ BitVec 64) (_ BitVec 32)) Unit!36153)

(assert (=> b!1102111 (= lt!494390 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1102112 () Bool)

(declare-fun e!629107 () Bool)

(assert (=> b!1102112 (= e!629108 e!629107)))

(declare-fun res!735485 () Bool)

(assert (=> b!1102112 (=> res!735485 e!629107)))

(assert (=> b!1102112 (= res!735485 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!494386 () ListLongMap!15449)

(assert (=> b!1102112 (= lt!494382 lt!494386)))

(declare-fun lt!494383 () tuple2!17468)

(declare-fun +!3370 (ListLongMap!15449 tuple2!17468) ListLongMap!15449)

(assert (=> b!1102112 (= lt!494386 (+!3370 lt!494393 lt!494383))))

(declare-fun lt!494392 () ListLongMap!15449)

(assert (=> b!1102112 (= lt!494389 lt!494392)))

(assert (=> b!1102112 (= lt!494392 (+!3370 lt!494391 lt!494383))))

(assert (=> b!1102112 (= lt!494389 (+!3370 lt!494381 lt!494383))))

(assert (=> b!1102112 (= lt!494383 (tuple2!17469 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun mapNonEmpty!42658 () Bool)

(declare-fun tp!81542 () Bool)

(declare-fun e!629109 () Bool)

(assert (=> mapNonEmpty!42658 (= mapRes!42658 (and tp!81542 e!629109))))

(declare-fun mapKey!42658 () (_ BitVec 32))

(declare-fun mapValue!42658 () ValueCell!12913)

(declare-fun mapRest!42658 () (Array (_ BitVec 32) ValueCell!12913))

(assert (=> mapNonEmpty!42658 (= (arr!34341 _values!874) (store mapRest!42658 mapKey!42658 mapValue!42658))))

(declare-fun res!735479 () Bool)

(assert (=> start!96914 (=> (not res!735479) (not e!629105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96914 (= res!735479 (validMask!0 mask!1414))))

(assert (=> start!96914 e!629105))

(assert (=> start!96914 tp!81543))

(assert (=> start!96914 true))

(declare-fun tp_is_empty!27245 () Bool)

(assert (=> start!96914 tp_is_empty!27245))

(declare-fun array_inv!26306 (array!71364) Bool)

(assert (=> start!96914 (array_inv!26306 _keys!1070)))

(declare-fun e!629102 () Bool)

(declare-fun array_inv!26307 (array!71366) Bool)

(assert (=> start!96914 (and (array_inv!26307 _values!874) e!629102)))

(declare-fun b!1102113 () Bool)

(declare-fun res!735480 () Bool)

(assert (=> b!1102113 (=> (not res!735480) (not e!629105))))

(assert (=> b!1102113 (= res!735480 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34877 _keys!1070))))))

(declare-fun b!1102114 () Bool)

(declare-fun res!735487 () Bool)

(assert (=> b!1102114 (=> (not res!735487) (not e!629105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102114 (= res!735487 (validKeyInArray!0 k!904))))

(declare-fun b!1102115 () Bool)

(assert (=> b!1102115 (= e!629107 (= (-!977 lt!494382 k!904) lt!494389))))

(assert (=> b!1102115 (= (-!977 lt!494386 k!904) lt!494392)))

(declare-fun lt!494385 () Unit!36153)

(declare-fun addRemoveCommutativeForDiffKeys!144 (ListLongMap!15449 (_ BitVec 64) V!41453 (_ BitVec 64)) Unit!36153)

(assert (=> b!1102115 (= lt!494385 (addRemoveCommutativeForDiffKeys!144 lt!494393 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1102116 () Bool)

(declare-fun res!735483 () Bool)

(assert (=> b!1102116 (=> (not res!735483) (not e!629105))))

(declare-datatypes ((List!24140 0))(
  ( (Nil!24137) (Cons!24136 (h!25345 (_ BitVec 64)) (t!34388 List!24140)) )
))
(declare-fun arrayNoDuplicates!0 (array!71364 (_ BitVec 32) List!24140) Bool)

(assert (=> b!1102116 (= res!735483 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24137))))

(declare-fun b!1102117 () Bool)

(declare-fun res!735484 () Bool)

(assert (=> b!1102117 (=> (not res!735484) (not e!629105))))

(assert (=> b!1102117 (= res!735484 (= (select (arr!34340 _keys!1070) i!650) k!904))))

(declare-fun b!1102118 () Bool)

(declare-fun res!735486 () Bool)

(assert (=> b!1102118 (=> (not res!735486) (not e!629103))))

(assert (=> b!1102118 (= res!735486 (arrayNoDuplicates!0 lt!494388 #b00000000000000000000000000000000 Nil!24137))))

(declare-fun b!1102119 () Bool)

(assert (=> b!1102119 (= e!629109 tp_is_empty!27245)))

(declare-fun b!1102120 () Bool)

(assert (=> b!1102120 (= e!629105 e!629103)))

(declare-fun res!735489 () Bool)

(assert (=> b!1102120 (=> (not res!735489) (not e!629103))))

(assert (=> b!1102120 (= res!735489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494388 mask!1414))))

(assert (=> b!1102120 (= lt!494388 (array!71365 (store (arr!34340 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34877 _keys!1070)))))

(declare-fun b!1102121 () Bool)

(declare-fun res!735482 () Bool)

(assert (=> b!1102121 (=> (not res!735482) (not e!629105))))

(assert (=> b!1102121 (= res!735482 (and (= (size!34878 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34877 _keys!1070) (size!34878 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102122 () Bool)

(declare-fun e!629104 () Bool)

(assert (=> b!1102122 (= e!629104 tp_is_empty!27245)))

(declare-fun b!1102123 () Bool)

(assert (=> b!1102123 (= e!629102 (and e!629104 mapRes!42658))))

(declare-fun condMapEmpty!42658 () Bool)

(declare-fun mapDefault!42658 () ValueCell!12913)

