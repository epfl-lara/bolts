; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96662 () Bool)

(assert start!96662)

(declare-fun b_free!23099 () Bool)

(declare-fun b_next!23099 () Bool)

(assert (=> start!96662 (= b_free!23099 (not b_next!23099))))

(declare-fun tp!81237 () Bool)

(declare-fun b_and!36935 () Bool)

(assert (=> start!96662 (= tp!81237 b_and!36935)))

(declare-fun b!1098820 () Bool)

(declare-fun res!733378 () Bool)

(declare-fun e!627206 () Bool)

(assert (=> b!1098820 (=> (not res!733378) (not e!627206))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71166 0))(
  ( (array!71167 (arr!34247 (Array (_ BitVec 32) (_ BitVec 64))) (size!34784 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71166)

(assert (=> b!1098820 (= res!733378 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34784 _keys!1070))))))

(declare-fun b!1098821 () Bool)

(declare-fun res!733385 () Bool)

(assert (=> b!1098821 (=> (not res!733385) (not e!627206))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098821 (= res!733385 (validKeyInArray!0 k!904))))

(declare-fun res!733386 () Bool)

(assert (=> start!96662 (=> (not res!733386) (not e!627206))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96662 (= res!733386 (validMask!0 mask!1414))))

(assert (=> start!96662 e!627206))

(assert (=> start!96662 tp!81237))

(assert (=> start!96662 true))

(declare-fun tp_is_empty!27149 () Bool)

(assert (=> start!96662 tp_is_empty!27149))

(declare-fun array_inv!26242 (array!71166) Bool)

(assert (=> start!96662 (array_inv!26242 _keys!1070)))

(declare-datatypes ((V!41325 0))(
  ( (V!41326 (val!13631 Int)) )
))
(declare-datatypes ((ValueCell!12865 0))(
  ( (ValueCellFull!12865 (v!16257 V!41325)) (EmptyCell!12865) )
))
(declare-datatypes ((array!71168 0))(
  ( (array!71169 (arr!34248 (Array (_ BitVec 32) ValueCell!12865)) (size!34785 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71168)

(declare-fun e!627209 () Bool)

(declare-fun array_inv!26243 (array!71168) Bool)

(assert (=> start!96662 (and (array_inv!26243 _values!874) e!627209)))

(declare-fun mapIsEmpty!42496 () Bool)

(declare-fun mapRes!42496 () Bool)

(assert (=> mapIsEmpty!42496 mapRes!42496))

(declare-fun b!1098822 () Bool)

(declare-fun e!627208 () Bool)

(declare-fun e!627212 () Bool)

(assert (=> b!1098822 (= e!627208 e!627212)))

(declare-fun res!733387 () Bool)

(assert (=> b!1098822 (=> res!733387 e!627212)))

(assert (=> b!1098822 (= res!733387 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17384 0))(
  ( (tuple2!17385 (_1!8702 (_ BitVec 64)) (_2!8702 V!41325)) )
))
(declare-datatypes ((List!24060 0))(
  ( (Nil!24057) (Cons!24056 (h!25265 tuple2!17384) (t!34212 List!24060)) )
))
(declare-datatypes ((ListLongMap!15365 0))(
  ( (ListLongMap!15366 (toList!7698 List!24060)) )
))
(declare-fun lt!491753 () ListLongMap!15365)

(declare-fun lt!491754 () ListLongMap!15365)

(assert (=> b!1098822 (= lt!491753 lt!491754)))

(declare-fun lt!491756 () ListLongMap!15365)

(declare-fun -!943 (ListLongMap!15365 (_ BitVec 64)) ListLongMap!15365)

(assert (=> b!1098822 (= lt!491753 (-!943 lt!491756 k!904))))

(declare-datatypes ((Unit!36073 0))(
  ( (Unit!36074) )
))
(declare-fun lt!491749 () Unit!36073)

(declare-fun lt!491747 () ListLongMap!15365)

(declare-fun zeroValue!831 () V!41325)

(declare-fun addRemoveCommutativeForDiffKeys!124 (ListLongMap!15365 (_ BitVec 64) V!41325 (_ BitVec 64)) Unit!36073)

(assert (=> b!1098822 (= lt!491749 (addRemoveCommutativeForDiffKeys!124 lt!491747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!491748 () ListLongMap!15365)

(declare-fun lt!491750 () tuple2!17384)

(declare-fun +!3333 (ListLongMap!15365 tuple2!17384) ListLongMap!15365)

(assert (=> b!1098822 (= lt!491748 (+!3333 lt!491754 lt!491750))))

(declare-fun lt!491751 () ListLongMap!15365)

(declare-fun lt!491746 () tuple2!17384)

(assert (=> b!1098822 (= lt!491754 (+!3333 lt!491751 lt!491746))))

(declare-fun lt!491760 () ListLongMap!15365)

(declare-fun lt!491759 () ListLongMap!15365)

(assert (=> b!1098822 (= lt!491760 lt!491759)))

(assert (=> b!1098822 (= lt!491759 (+!3333 lt!491756 lt!491750))))

(assert (=> b!1098822 (= lt!491756 (+!3333 lt!491747 lt!491746))))

(declare-fun lt!491761 () ListLongMap!15365)

(assert (=> b!1098822 (= lt!491748 (+!3333 (+!3333 lt!491761 lt!491746) lt!491750))))

(declare-fun minValue!831 () V!41325)

(assert (=> b!1098822 (= lt!491750 (tuple2!17385 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098822 (= lt!491746 (tuple2!17385 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098823 () Bool)

(declare-fun res!733384 () Bool)

(assert (=> b!1098823 (=> (not res!733384) (not e!627206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71166 (_ BitVec 32)) Bool)

(assert (=> b!1098823 (= res!733384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098824 () Bool)

(declare-fun res!733377 () Bool)

(assert (=> b!1098824 (=> (not res!733377) (not e!627206))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098824 (= res!733377 (and (= (size!34785 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34784 _keys!1070) (size!34785 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098825 () Bool)

(declare-fun e!627207 () Bool)

(assert (=> b!1098825 (= e!627207 tp_is_empty!27149)))

(declare-fun b!1098826 () Bool)

(declare-fun res!733383 () Bool)

(declare-fun e!627210 () Bool)

(assert (=> b!1098826 (=> (not res!733383) (not e!627210))))

(declare-fun lt!491752 () array!71166)

(declare-datatypes ((List!24061 0))(
  ( (Nil!24058) (Cons!24057 (h!25266 (_ BitVec 64)) (t!34213 List!24061)) )
))
(declare-fun arrayNoDuplicates!0 (array!71166 (_ BitVec 32) List!24061) Bool)

(assert (=> b!1098826 (= res!733383 (arrayNoDuplicates!0 lt!491752 #b00000000000000000000000000000000 Nil!24058))))

(declare-fun b!1098827 () Bool)

(assert (=> b!1098827 (= e!627206 e!627210)))

(declare-fun res!733382 () Bool)

(assert (=> b!1098827 (=> (not res!733382) (not e!627210))))

(assert (=> b!1098827 (= res!733382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491752 mask!1414))))

(assert (=> b!1098827 (= lt!491752 (array!71167 (store (arr!34247 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34784 _keys!1070)))))

(declare-fun b!1098828 () Bool)

(assert (=> b!1098828 (= e!627212 true)))

(assert (=> b!1098828 (= (-!943 lt!491759 k!904) (+!3333 lt!491753 lt!491750))))

(declare-fun lt!491745 () Unit!36073)

(assert (=> b!1098828 (= lt!491745 (addRemoveCommutativeForDiffKeys!124 lt!491756 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1098829 () Bool)

(assert (=> b!1098829 (= e!627210 (not e!627208))))

(declare-fun res!733380 () Bool)

(assert (=> b!1098829 (=> res!733380 e!627208)))

(assert (=> b!1098829 (= res!733380 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4393 (array!71166 array!71168 (_ BitVec 32) (_ BitVec 32) V!41325 V!41325 (_ BitVec 32) Int) ListLongMap!15365)

(assert (=> b!1098829 (= lt!491760 (getCurrentListMap!4393 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491757 () array!71168)

(assert (=> b!1098829 (= lt!491748 (getCurrentListMap!4393 lt!491752 lt!491757 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1098829 (and (= lt!491761 lt!491751) (= lt!491751 lt!491761))))

(assert (=> b!1098829 (= lt!491751 (-!943 lt!491747 k!904))))

(declare-fun lt!491758 () Unit!36073)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!205 (array!71166 array!71168 (_ BitVec 32) (_ BitVec 32) V!41325 V!41325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36073)

(assert (=> b!1098829 (= lt!491758 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!205 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4180 (array!71166 array!71168 (_ BitVec 32) (_ BitVec 32) V!41325 V!41325 (_ BitVec 32) Int) ListLongMap!15365)

(assert (=> b!1098829 (= lt!491761 (getCurrentListMapNoExtraKeys!4180 lt!491752 lt!491757 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2311 (Int (_ BitVec 64)) V!41325)

(assert (=> b!1098829 (= lt!491757 (array!71169 (store (arr!34248 _values!874) i!650 (ValueCellFull!12865 (dynLambda!2311 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34785 _values!874)))))

(assert (=> b!1098829 (= lt!491747 (getCurrentListMapNoExtraKeys!4180 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098829 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!491755 () Unit!36073)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71166 (_ BitVec 64) (_ BitVec 32)) Unit!36073)

(assert (=> b!1098829 (= lt!491755 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1098830 () Bool)

(declare-fun res!733381 () Bool)

(assert (=> b!1098830 (=> (not res!733381) (not e!627206))))

(assert (=> b!1098830 (= res!733381 (= (select (arr!34247 _keys!1070) i!650) k!904))))

(declare-fun b!1098831 () Bool)

(assert (=> b!1098831 (= e!627209 (and e!627207 mapRes!42496))))

(declare-fun condMapEmpty!42496 () Bool)

(declare-fun mapDefault!42496 () ValueCell!12865)

