; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96832 () Bool)

(assert start!96832)

(declare-fun b_free!23165 () Bool)

(declare-fun b_next!23165 () Bool)

(assert (=> start!96832 (= b_free!23165 (not b_next!23165))))

(declare-fun tp!81446 () Bool)

(declare-fun b_and!37123 () Bool)

(assert (=> start!96832 (= tp!81446 b_and!37123)))

(declare-fun b!1101040 () Bool)

(declare-fun e!628483 () Bool)

(declare-fun e!628481 () Bool)

(assert (=> b!1101040 (= e!628483 (not e!628481))))

(declare-fun res!734798 () Bool)

(assert (=> b!1101040 (=> res!734798 e!628481)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101040 (= res!734798 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41413 0))(
  ( (V!41414 (val!13664 Int)) )
))
(declare-fun minValue!831 () V!41413)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17440 0))(
  ( (tuple2!17441 (_1!8730 (_ BitVec 64)) (_2!8730 V!41413)) )
))
(declare-datatypes ((List!24112 0))(
  ( (Nil!24109) (Cons!24108 (h!25317 tuple2!17440) (t!34330 List!24112)) )
))
(declare-datatypes ((ListLongMap!15421 0))(
  ( (ListLongMap!15422 (toList!7726 List!24112)) )
))
(declare-fun lt!493543 () ListLongMap!15421)

(declare-fun zeroValue!831 () V!41413)

(declare-datatypes ((array!71300 0))(
  ( (array!71301 (arr!34310 (Array (_ BitVec 32) (_ BitVec 64))) (size!34847 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71300)

(declare-datatypes ((ValueCell!12898 0))(
  ( (ValueCellFull!12898 (v!16294 V!41413)) (EmptyCell!12898) )
))
(declare-datatypes ((array!71302 0))(
  ( (array!71303 (arr!34311 (Array (_ BitVec 32) ValueCell!12898)) (size!34848 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71302)

(declare-fun getCurrentListMap!4413 (array!71300 array!71302 (_ BitVec 32) (_ BitVec 32) V!41413 V!41413 (_ BitVec 32) Int) ListLongMap!15421)

(assert (=> b!1101040 (= lt!493543 (getCurrentListMap!4413 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493540 () array!71300)

(declare-fun lt!493546 () ListLongMap!15421)

(declare-fun lt!493547 () array!71302)

(assert (=> b!1101040 (= lt!493546 (getCurrentListMap!4413 lt!493540 lt!493547 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493541 () ListLongMap!15421)

(declare-fun lt!493544 () ListLongMap!15421)

(assert (=> b!1101040 (and (= lt!493541 lt!493544) (= lt!493544 lt!493541))))

(declare-fun lt!493548 () ListLongMap!15421)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!965 (ListLongMap!15421 (_ BitVec 64)) ListLongMap!15421)

(assert (=> b!1101040 (= lt!493544 (-!965 lt!493548 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36125 0))(
  ( (Unit!36126) )
))
(declare-fun lt!493545 () Unit!36125)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!225 (array!71300 array!71302 (_ BitVec 32) (_ BitVec 32) V!41413 V!41413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36125)

(assert (=> b!1101040 (= lt!493545 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!225 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4200 (array!71300 array!71302 (_ BitVec 32) (_ BitVec 32) V!41413 V!41413 (_ BitVec 32) Int) ListLongMap!15421)

(assert (=> b!1101040 (= lt!493541 (getCurrentListMapNoExtraKeys!4200 lt!493540 lt!493547 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2331 (Int (_ BitVec 64)) V!41413)

(assert (=> b!1101040 (= lt!493547 (array!71303 (store (arr!34311 _values!874) i!650 (ValueCellFull!12898 (dynLambda!2331 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34848 _values!874)))))

(assert (=> b!1101040 (= lt!493548 (getCurrentListMapNoExtraKeys!4200 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101040 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493539 () Unit!36125)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71300 (_ BitVec 64) (_ BitVec 32)) Unit!36125)

(assert (=> b!1101040 (= lt!493539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1101041 () Bool)

(declare-fun e!628484 () Bool)

(declare-fun tp_is_empty!27215 () Bool)

(assert (=> b!1101041 (= e!628484 tp_is_empty!27215)))

(declare-fun b!1101042 () Bool)

(declare-fun res!734794 () Bool)

(declare-fun e!628485 () Bool)

(assert (=> b!1101042 (=> (not res!734794) (not e!628485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71300 (_ BitVec 32)) Bool)

(assert (=> b!1101042 (= res!734794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101043 () Bool)

(declare-fun res!734795 () Bool)

(assert (=> b!1101043 (=> (not res!734795) (not e!628485))))

(declare-datatypes ((List!24113 0))(
  ( (Nil!24110) (Cons!24109 (h!25318 (_ BitVec 64)) (t!34331 List!24113)) )
))
(declare-fun arrayNoDuplicates!0 (array!71300 (_ BitVec 32) List!24113) Bool)

(assert (=> b!1101043 (= res!734795 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24110))))

(declare-fun b!1101044 () Bool)

(declare-fun res!734796 () Bool)

(assert (=> b!1101044 (=> (not res!734796) (not e!628485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101044 (= res!734796 (validKeyInArray!0 k!904))))

(declare-fun b!1101045 () Bool)

(declare-fun res!734801 () Bool)

(assert (=> b!1101045 (=> (not res!734801) (not e!628485))))

(assert (=> b!1101045 (= res!734801 (and (= (size!34848 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34847 _keys!1070) (size!34848 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101046 () Bool)

(declare-fun lt!493542 () tuple2!17440)

(declare-fun +!3358 (ListLongMap!15421 tuple2!17440) ListLongMap!15421)

(assert (=> b!1101046 (= e!628481 (= lt!493546 (+!3358 lt!493544 lt!493542)))))

(assert (=> b!1101046 (= lt!493546 (+!3358 lt!493541 lt!493542))))

(assert (=> b!1101046 (= lt!493542 (tuple2!17441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101047 () Bool)

(declare-fun e!628482 () Bool)

(assert (=> b!1101047 (= e!628482 tp_is_empty!27215)))

(declare-fun b!1101048 () Bool)

(assert (=> b!1101048 (= e!628485 e!628483)))

(declare-fun res!734800 () Bool)

(assert (=> b!1101048 (=> (not res!734800) (not e!628483))))

(assert (=> b!1101048 (= res!734800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493540 mask!1414))))

(assert (=> b!1101048 (= lt!493540 (array!71301 (store (arr!34310 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34847 _keys!1070)))))

(declare-fun mapIsEmpty!42607 () Bool)

(declare-fun mapRes!42607 () Bool)

(assert (=> mapIsEmpty!42607 mapRes!42607))

(declare-fun b!1101049 () Bool)

(declare-fun e!628487 () Bool)

(assert (=> b!1101049 (= e!628487 (and e!628484 mapRes!42607))))

(declare-fun condMapEmpty!42607 () Bool)

(declare-fun mapDefault!42607 () ValueCell!12898)

