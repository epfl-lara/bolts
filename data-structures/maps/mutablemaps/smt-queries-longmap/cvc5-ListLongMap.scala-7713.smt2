; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96946 () Bool)

(assert start!96946)

(declare-fun b_free!23203 () Bool)

(declare-fun b_next!23203 () Bool)

(assert (=> start!96946 (= b_free!23203 (not b_next!23203))))

(declare-fun tp!81570 () Bool)

(declare-fun b_and!37241 () Bool)

(assert (=> start!96946 (= tp!81570 b_and!37241)))

(declare-fun b!1102455 () Bool)

(declare-fun res!735675 () Bool)

(declare-fun e!629305 () Bool)

(assert (=> b!1102455 (=> (not res!735675) (not e!629305))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71382 0))(
  ( (array!71383 (arr!34348 (Array (_ BitVec 32) (_ BitVec 64))) (size!34885 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71382)

(declare-datatypes ((V!41465 0))(
  ( (V!41466 (val!13683 Int)) )
))
(declare-datatypes ((ValueCell!12917 0))(
  ( (ValueCellFull!12917 (v!16315 V!41465)) (EmptyCell!12917) )
))
(declare-datatypes ((array!71384 0))(
  ( (array!71385 (arr!34349 (Array (_ BitVec 32) ValueCell!12917)) (size!34886 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71384)

(assert (=> b!1102455 (= res!735675 (and (= (size!34886 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34885 _keys!1070) (size!34886 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102456 () Bool)

(declare-fun res!735673 () Bool)

(assert (=> b!1102456 (=> (not res!735673) (not e!629305))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102456 (= res!735673 (= (select (arr!34348 _keys!1070) i!650) k!904))))

(declare-fun b!1102457 () Bool)

(declare-fun e!629304 () Bool)

(assert (=> b!1102457 (= e!629305 e!629304)))

(declare-fun res!735670 () Bool)

(assert (=> b!1102457 (=> (not res!735670) (not e!629304))))

(declare-fun lt!494647 () array!71382)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71382 (_ BitVec 32)) Bool)

(assert (=> b!1102457 (= res!735670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494647 mask!1414))))

(assert (=> b!1102457 (= lt!494647 (array!71383 (store (arr!34348 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34885 _keys!1070)))))

(declare-fun b!1102458 () Bool)

(declare-fun res!735676 () Bool)

(assert (=> b!1102458 (=> (not res!735676) (not e!629305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102458 (= res!735676 (validKeyInArray!0 k!904))))

(declare-fun b!1102459 () Bool)

(declare-fun res!735672 () Bool)

(assert (=> b!1102459 (=> (not res!735672) (not e!629305))))

(assert (=> b!1102459 (= res!735672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102460 () Bool)

(declare-fun res!735671 () Bool)

(assert (=> b!1102460 (=> (not res!735671) (not e!629305))))

(assert (=> b!1102460 (= res!735671 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34885 _keys!1070))))))

(declare-fun mapIsEmpty!42673 () Bool)

(declare-fun mapRes!42673 () Bool)

(assert (=> mapIsEmpty!42673 mapRes!42673))

(declare-fun res!735677 () Bool)

(assert (=> start!96946 (=> (not res!735677) (not e!629305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96946 (= res!735677 (validMask!0 mask!1414))))

(assert (=> start!96946 e!629305))

(assert (=> start!96946 tp!81570))

(assert (=> start!96946 true))

(declare-fun tp_is_empty!27253 () Bool)

(assert (=> start!96946 tp_is_empty!27253))

(declare-fun array_inv!26312 (array!71382) Bool)

(assert (=> start!96946 (array_inv!26312 _keys!1070)))

(declare-fun e!629307 () Bool)

(declare-fun array_inv!26313 (array!71384) Bool)

(assert (=> start!96946 (and (array_inv!26313 _values!874) e!629307)))

(declare-fun b!1102461 () Bool)

(declare-fun res!735674 () Bool)

(assert (=> b!1102461 (=> (not res!735674) (not e!629304))))

(declare-datatypes ((List!24146 0))(
  ( (Nil!24143) (Cons!24142 (h!25351 (_ BitVec 64)) (t!34402 List!24146)) )
))
(declare-fun arrayNoDuplicates!0 (array!71382 (_ BitVec 32) List!24146) Bool)

(assert (=> b!1102461 (= res!735674 (arrayNoDuplicates!0 lt!494647 #b00000000000000000000000000000000 Nil!24143))))

(declare-fun b!1102462 () Bool)

(assert (=> b!1102462 (= e!629304 (not true))))

(declare-datatypes ((tuple2!17474 0))(
  ( (tuple2!17475 (_1!8747 (_ BitVec 64)) (_2!8747 V!41465)) )
))
(declare-datatypes ((List!24147 0))(
  ( (Nil!24144) (Cons!24143 (h!25352 tuple2!17474) (t!34403 List!24147)) )
))
(declare-datatypes ((ListLongMap!15455 0))(
  ( (ListLongMap!15456 (toList!7743 List!24147)) )
))
(declare-fun lt!494643 () ListLongMap!15455)

(declare-fun minValue!831 () V!41465)

(declare-fun zeroValue!831 () V!41465)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4426 (array!71382 array!71384 (_ BitVec 32) (_ BitVec 32) V!41465 V!41465 (_ BitVec 32) Int) ListLongMap!15455)

(assert (=> b!1102462 (= lt!494643 (getCurrentListMap!4426 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494641 () ListLongMap!15455)

(declare-fun lt!494639 () array!71384)

(assert (=> b!1102462 (= lt!494641 (getCurrentListMap!4426 lt!494647 lt!494639 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494644 () ListLongMap!15455)

(declare-fun lt!494646 () ListLongMap!15455)

(assert (=> b!1102462 (and (= lt!494644 lt!494646) (= lt!494646 lt!494644))))

(declare-fun lt!494645 () ListLongMap!15455)

(declare-fun -!980 (ListLongMap!15455 (_ BitVec 64)) ListLongMap!15455)

(assert (=> b!1102462 (= lt!494646 (-!980 lt!494645 k!904))))

(declare-datatypes ((Unit!36161 0))(
  ( (Unit!36162) )
))
(declare-fun lt!494640 () Unit!36161)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!238 (array!71382 array!71384 (_ BitVec 32) (_ BitVec 32) V!41465 V!41465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36161)

(assert (=> b!1102462 (= lt!494640 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!238 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4213 (array!71382 array!71384 (_ BitVec 32) (_ BitVec 32) V!41465 V!41465 (_ BitVec 32) Int) ListLongMap!15455)

(assert (=> b!1102462 (= lt!494644 (getCurrentListMapNoExtraKeys!4213 lt!494647 lt!494639 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2344 (Int (_ BitVec 64)) V!41465)

(assert (=> b!1102462 (= lt!494639 (array!71385 (store (arr!34349 _values!874) i!650 (ValueCellFull!12917 (dynLambda!2344 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34886 _values!874)))))

(assert (=> b!1102462 (= lt!494645 (getCurrentListMapNoExtraKeys!4213 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102462 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494642 () Unit!36161)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71382 (_ BitVec 64) (_ BitVec 32)) Unit!36161)

(assert (=> b!1102462 (= lt!494642 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1102463 () Bool)

(declare-fun e!629303 () Bool)

(assert (=> b!1102463 (= e!629303 tp_is_empty!27253)))

(declare-fun b!1102464 () Bool)

(declare-fun res!735678 () Bool)

(assert (=> b!1102464 (=> (not res!735678) (not e!629305))))

(assert (=> b!1102464 (= res!735678 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24143))))

(declare-fun b!1102465 () Bool)

(declare-fun e!629306 () Bool)

(assert (=> b!1102465 (= e!629306 tp_is_empty!27253)))

(declare-fun b!1102466 () Bool)

(assert (=> b!1102466 (= e!629307 (and e!629303 mapRes!42673))))

(declare-fun condMapEmpty!42673 () Bool)

(declare-fun mapDefault!42673 () ValueCell!12917)

