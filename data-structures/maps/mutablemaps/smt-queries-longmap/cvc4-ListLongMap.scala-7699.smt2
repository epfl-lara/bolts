; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96712 () Bool)

(assert start!96712)

(declare-fun b_free!23123 () Bool)

(declare-fun b_next!23123 () Bool)

(assert (=> start!96712 (= b_free!23123 (not b_next!23123))))

(declare-fun tp!81312 () Bool)

(declare-fun b_and!36997 () Bool)

(assert (=> start!96712 (= tp!81312 b_and!36997)))

(declare-fun mapIsEmpty!42535 () Bool)

(declare-fun mapRes!42535 () Bool)

(assert (=> mapIsEmpty!42535 mapRes!42535))

(declare-fun b!1099528 () Bool)

(declare-fun res!733844 () Bool)

(declare-fun e!627609 () Bool)

(assert (=> b!1099528 (=> (not res!733844) (not e!627609))))

(declare-datatypes ((array!71216 0))(
  ( (array!71217 (arr!34271 (Array (_ BitVec 32) (_ BitVec 64))) (size!34808 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71216)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71216 (_ BitVec 32)) Bool)

(assert (=> b!1099528 (= res!733844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1099529 () Bool)

(declare-fun res!733843 () Bool)

(assert (=> b!1099529 (=> (not res!733843) (not e!627609))))

(declare-datatypes ((List!24081 0))(
  ( (Nil!24078) (Cons!24077 (h!25286 (_ BitVec 64)) (t!34257 List!24081)) )
))
(declare-fun arrayNoDuplicates!0 (array!71216 (_ BitVec 32) List!24081) Bool)

(assert (=> b!1099529 (= res!733843 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24078))))

(declare-fun b!1099530 () Bool)

(declare-fun res!733845 () Bool)

(assert (=> b!1099530 (=> (not res!733845) (not e!627609))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41357 0))(
  ( (V!41358 (val!13643 Int)) )
))
(declare-datatypes ((ValueCell!12877 0))(
  ( (ValueCellFull!12877 (v!16270 V!41357)) (EmptyCell!12877) )
))
(declare-datatypes ((array!71218 0))(
  ( (array!71219 (arr!34272 (Array (_ BitVec 32) ValueCell!12877)) (size!34809 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71218)

(assert (=> b!1099530 (= res!733845 (and (= (size!34809 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34808 _keys!1070) (size!34809 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099531 () Bool)

(declare-fun res!733846 () Bool)

(declare-fun e!627607 () Bool)

(assert (=> b!1099531 (=> (not res!733846) (not e!627607))))

(declare-fun lt!492383 () array!71216)

(assert (=> b!1099531 (= res!733846 (arrayNoDuplicates!0 lt!492383 #b00000000000000000000000000000000 Nil!24078))))

(declare-fun e!627606 () Bool)

(declare-datatypes ((tuple2!17406 0))(
  ( (tuple2!17407 (_1!8713 (_ BitVec 64)) (_2!8713 V!41357)) )
))
(declare-datatypes ((List!24082 0))(
  ( (Nil!24079) (Cons!24078 (h!25287 tuple2!17406) (t!34258 List!24082)) )
))
(declare-datatypes ((ListLongMap!15387 0))(
  ( (ListLongMap!15388 (toList!7709 List!24082)) )
))
(declare-fun lt!492382 () ListLongMap!15387)

(declare-fun b!1099532 () Bool)

(declare-fun lt!492387 () ListLongMap!15387)

(declare-fun lt!492380 () tuple2!17406)

(declare-fun +!3344 (ListLongMap!15387 tuple2!17406) ListLongMap!15387)

(assert (=> b!1099532 (= e!627606 (= lt!492387 (+!3344 lt!492382 lt!492380)))))

(declare-fun lt!492384 () ListLongMap!15387)

(declare-fun lt!492378 () ListLongMap!15387)

(assert (=> b!1099532 (= lt!492384 (+!3344 lt!492378 lt!492380))))

(declare-fun zeroValue!831 () V!41357)

(assert (=> b!1099532 (= lt!492380 (tuple2!17407 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099533 () Bool)

(declare-fun e!627610 () Bool)

(declare-fun tp_is_empty!27173 () Bool)

(assert (=> b!1099533 (= e!627610 tp_is_empty!27173)))

(declare-fun res!733852 () Bool)

(assert (=> start!96712 (=> (not res!733852) (not e!627609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96712 (= res!733852 (validMask!0 mask!1414))))

(assert (=> start!96712 e!627609))

(assert (=> start!96712 tp!81312))

(assert (=> start!96712 true))

(assert (=> start!96712 tp_is_empty!27173))

(declare-fun array_inv!26260 (array!71216) Bool)

(assert (=> start!96712 (array_inv!26260 _keys!1070)))

(declare-fun e!627611 () Bool)

(declare-fun array_inv!26261 (array!71218) Bool)

(assert (=> start!96712 (and (array_inv!26261 _values!874) e!627611)))

(declare-fun b!1099534 () Bool)

(declare-fun res!733850 () Bool)

(assert (=> b!1099534 (=> (not res!733850) (not e!627609))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099534 (= res!733850 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34808 _keys!1070))))))

(declare-fun b!1099535 () Bool)

(declare-fun res!733849 () Bool)

(assert (=> b!1099535 (=> (not res!733849) (not e!627609))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099535 (= res!733849 (validKeyInArray!0 k!904))))

(declare-fun b!1099536 () Bool)

(assert (=> b!1099536 (= e!627609 e!627607)))

(declare-fun res!733847 () Bool)

(assert (=> b!1099536 (=> (not res!733847) (not e!627607))))

(assert (=> b!1099536 (= res!733847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492383 mask!1414))))

(assert (=> b!1099536 (= lt!492383 (array!71217 (store (arr!34271 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34808 _keys!1070)))))

(declare-fun b!1099537 () Bool)

(assert (=> b!1099537 (= e!627607 (not e!627606))))

(declare-fun res!733848 () Bool)

(assert (=> b!1099537 (=> res!733848 e!627606)))

(assert (=> b!1099537 (= res!733848 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41357)

(declare-fun getCurrentListMap!4400 (array!71216 array!71218 (_ BitVec 32) (_ BitVec 32) V!41357 V!41357 (_ BitVec 32) Int) ListLongMap!15387)

(assert (=> b!1099537 (= lt!492387 (getCurrentListMap!4400 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492381 () array!71218)

(assert (=> b!1099537 (= lt!492384 (getCurrentListMap!4400 lt!492383 lt!492381 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492379 () ListLongMap!15387)

(assert (=> b!1099537 (and (= lt!492378 lt!492379) (= lt!492379 lt!492378))))

(declare-fun -!951 (ListLongMap!15387 (_ BitVec 64)) ListLongMap!15387)

(assert (=> b!1099537 (= lt!492379 (-!951 lt!492382 k!904))))

(declare-datatypes ((Unit!36091 0))(
  ( (Unit!36092) )
))
(declare-fun lt!492385 () Unit!36091)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!212 (array!71216 array!71218 (_ BitVec 32) (_ BitVec 32) V!41357 V!41357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36091)

(assert (=> b!1099537 (= lt!492385 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4187 (array!71216 array!71218 (_ BitVec 32) (_ BitVec 32) V!41357 V!41357 (_ BitVec 32) Int) ListLongMap!15387)

(assert (=> b!1099537 (= lt!492378 (getCurrentListMapNoExtraKeys!4187 lt!492383 lt!492381 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2318 (Int (_ BitVec 64)) V!41357)

(assert (=> b!1099537 (= lt!492381 (array!71219 (store (arr!34272 _values!874) i!650 (ValueCellFull!12877 (dynLambda!2318 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34809 _values!874)))))

(assert (=> b!1099537 (= lt!492382 (getCurrentListMapNoExtraKeys!4187 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099537 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!492386 () Unit!36091)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71216 (_ BitVec 64) (_ BitVec 32)) Unit!36091)

(assert (=> b!1099537 (= lt!492386 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1099538 () Bool)

(declare-fun res!733851 () Bool)

(assert (=> b!1099538 (=> (not res!733851) (not e!627609))))

(assert (=> b!1099538 (= res!733851 (= (select (arr!34271 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42535 () Bool)

(declare-fun tp!81311 () Bool)

(assert (=> mapNonEmpty!42535 (= mapRes!42535 (and tp!81311 e!627610))))

(declare-fun mapKey!42535 () (_ BitVec 32))

(declare-fun mapValue!42535 () ValueCell!12877)

(declare-fun mapRest!42535 () (Array (_ BitVec 32) ValueCell!12877))

(assert (=> mapNonEmpty!42535 (= (arr!34272 _values!874) (store mapRest!42535 mapKey!42535 mapValue!42535))))

(declare-fun b!1099539 () Bool)

(declare-fun e!627605 () Bool)

(assert (=> b!1099539 (= e!627605 tp_is_empty!27173)))

(declare-fun b!1099540 () Bool)

(assert (=> b!1099540 (= e!627611 (and e!627605 mapRes!42535))))

(declare-fun condMapEmpty!42535 () Bool)

(declare-fun mapDefault!42535 () ValueCell!12877)

