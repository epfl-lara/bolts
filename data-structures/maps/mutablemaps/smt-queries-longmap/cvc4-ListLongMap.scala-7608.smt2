; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96008 () Bool)

(assert start!96008)

(declare-fun b_free!22625 () Bool)

(declare-fun b_next!22625 () Bool)

(assert (=> start!96008 (= b_free!22625 (not b_next!22625))))

(declare-fun tp!79724 () Bool)

(declare-fun b_and!35943 () Bool)

(assert (=> start!96008 (= tp!79724 b_and!35943)))

(declare-fun b!1087440 () Bool)

(declare-fun res!725297 () Bool)

(declare-fun e!621203 () Bool)

(assert (=> b!1087440 (=> (not res!725297) (not e!621203))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70146 0))(
  ( (array!70147 (arr!33743 (Array (_ BitVec 32) (_ BitVec 64))) (size!34280 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70146)

(declare-datatypes ((V!40629 0))(
  ( (V!40630 (val!13370 Int)) )
))
(declare-datatypes ((ValueCell!12604 0))(
  ( (ValueCellFull!12604 (v!15992 V!40629)) (EmptyCell!12604) )
))
(declare-datatypes ((array!70148 0))(
  ( (array!70149 (arr!33744 (Array (_ BitVec 32) ValueCell!12604)) (size!34281 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70148)

(assert (=> b!1087440 (= res!725297 (and (= (size!34281 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34280 _keys!1070) (size!34281 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087441 () Bool)

(declare-fun res!725296 () Bool)

(assert (=> b!1087441 (=> (not res!725296) (not e!621203))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087441 (= res!725296 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34280 _keys!1070))))))

(declare-fun res!725303 () Bool)

(assert (=> start!96008 (=> (not res!725303) (not e!621203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96008 (= res!725303 (validMask!0 mask!1414))))

(assert (=> start!96008 e!621203))

(assert (=> start!96008 tp!79724))

(assert (=> start!96008 true))

(declare-fun tp_is_empty!26627 () Bool)

(assert (=> start!96008 tp_is_empty!26627))

(declare-fun array_inv!25888 (array!70146) Bool)

(assert (=> start!96008 (array_inv!25888 _keys!1070)))

(declare-fun e!621206 () Bool)

(declare-fun array_inv!25889 (array!70148) Bool)

(assert (=> start!96008 (and (array_inv!25889 _values!874) e!621206)))

(declare-fun b!1087442 () Bool)

(declare-fun e!621201 () Bool)

(assert (=> b!1087442 (= e!621201 true)))

(declare-datatypes ((tuple2!17032 0))(
  ( (tuple2!17033 (_1!8526 (_ BitVec 64)) (_2!8526 V!40629)) )
))
(declare-datatypes ((List!23673 0))(
  ( (Nil!23670) (Cons!23669 (h!24878 tuple2!17032) (t!33363 List!23673)) )
))
(declare-datatypes ((ListLongMap!15013 0))(
  ( (ListLongMap!15014 (toList!7522 List!23673)) )
))
(declare-fun lt!483938 () ListLongMap!15013)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!483943 () ListLongMap!15013)

(declare-fun -!802 (ListLongMap!15013 (_ BitVec 64)) ListLongMap!15013)

(assert (=> b!1087442 (= (-!802 lt!483938 k!904) lt!483943)))

(declare-fun zeroValue!831 () V!40629)

(declare-fun lt!483937 () ListLongMap!15013)

(declare-datatypes ((Unit!35719 0))(
  ( (Unit!35720) )
))
(declare-fun lt!483941 () Unit!35719)

(declare-fun addRemoveCommutativeForDiffKeys!42 (ListLongMap!15013 (_ BitVec 64) V!40629 (_ BitVec 64)) Unit!35719)

(assert (=> b!1087442 (= lt!483941 (addRemoveCommutativeForDiffKeys!42 lt!483937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun mapNonEmpty!41695 () Bool)

(declare-fun mapRes!41695 () Bool)

(declare-fun tp!79725 () Bool)

(declare-fun e!621208 () Bool)

(assert (=> mapNonEmpty!41695 (= mapRes!41695 (and tp!79725 e!621208))))

(declare-fun mapValue!41695 () ValueCell!12604)

(declare-fun mapKey!41695 () (_ BitVec 32))

(declare-fun mapRest!41695 () (Array (_ BitVec 32) ValueCell!12604))

(assert (=> mapNonEmpty!41695 (= (arr!33744 _values!874) (store mapRest!41695 mapKey!41695 mapValue!41695))))

(declare-fun b!1087443 () Bool)

(declare-fun e!621205 () Bool)

(declare-fun e!621202 () Bool)

(assert (=> b!1087443 (= e!621205 (not e!621202))))

(declare-fun res!725301 () Bool)

(assert (=> b!1087443 (=> res!725301 e!621202)))

(assert (=> b!1087443 (= res!725301 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40629)

(declare-fun lt!483940 () ListLongMap!15013)

(declare-fun getCurrentListMap!4275 (array!70146 array!70148 (_ BitVec 32) (_ BitVec 32) V!40629 V!40629 (_ BitVec 32) Int) ListLongMap!15013)

(assert (=> b!1087443 (= lt!483940 (getCurrentListMap!4275 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483932 () ListLongMap!15013)

(declare-fun lt!483939 () array!70148)

(declare-fun lt!483934 () array!70146)

(assert (=> b!1087443 (= lt!483932 (getCurrentListMap!4275 lt!483934 lt!483939 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483933 () ListLongMap!15013)

(declare-fun lt!483944 () ListLongMap!15013)

(assert (=> b!1087443 (and (= lt!483933 lt!483944) (= lt!483944 lt!483933))))

(assert (=> b!1087443 (= lt!483944 (-!802 lt!483937 k!904))))

(declare-fun lt!483935 () Unit!35719)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!81 (array!70146 array!70148 (_ BitVec 32) (_ BitVec 32) V!40629 V!40629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35719)

(assert (=> b!1087443 (= lt!483935 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!81 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4027 (array!70146 array!70148 (_ BitVec 32) (_ BitVec 32) V!40629 V!40629 (_ BitVec 32) Int) ListLongMap!15013)

(assert (=> b!1087443 (= lt!483933 (getCurrentListMapNoExtraKeys!4027 lt!483934 lt!483939 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2163 (Int (_ BitVec 64)) V!40629)

(assert (=> b!1087443 (= lt!483939 (array!70149 (store (arr!33744 _values!874) i!650 (ValueCellFull!12604 (dynLambda!2163 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34281 _values!874)))))

(assert (=> b!1087443 (= lt!483937 (getCurrentListMapNoExtraKeys!4027 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087443 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483942 () Unit!35719)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70146 (_ BitVec 64) (_ BitVec 32)) Unit!35719)

(assert (=> b!1087443 (= lt!483942 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087444 () Bool)

(declare-fun e!621204 () Bool)

(assert (=> b!1087444 (= e!621204 tp_is_empty!26627)))

(declare-fun b!1087445 () Bool)

(declare-fun res!725302 () Bool)

(assert (=> b!1087445 (=> (not res!725302) (not e!621205))))

(declare-datatypes ((List!23674 0))(
  ( (Nil!23671) (Cons!23670 (h!24879 (_ BitVec 64)) (t!33364 List!23674)) )
))
(declare-fun arrayNoDuplicates!0 (array!70146 (_ BitVec 32) List!23674) Bool)

(assert (=> b!1087445 (= res!725302 (arrayNoDuplicates!0 lt!483934 #b00000000000000000000000000000000 Nil!23671))))

(declare-fun b!1087446 () Bool)

(declare-fun res!725304 () Bool)

(assert (=> b!1087446 (=> (not res!725304) (not e!621203))))

(assert (=> b!1087446 (= res!725304 (= (select (arr!33743 _keys!1070) i!650) k!904))))

(declare-fun b!1087447 () Bool)

(assert (=> b!1087447 (= e!621203 e!621205)))

(declare-fun res!725306 () Bool)

(assert (=> b!1087447 (=> (not res!725306) (not e!621205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70146 (_ BitVec 32)) Bool)

(assert (=> b!1087447 (= res!725306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483934 mask!1414))))

(assert (=> b!1087447 (= lt!483934 (array!70147 (store (arr!33743 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34280 _keys!1070)))))

(declare-fun b!1087448 () Bool)

(assert (=> b!1087448 (= e!621208 tp_is_empty!26627)))

(declare-fun mapIsEmpty!41695 () Bool)

(assert (=> mapIsEmpty!41695 mapRes!41695))

(declare-fun b!1087449 () Bool)

(declare-fun res!725298 () Bool)

(assert (=> b!1087449 (=> (not res!725298) (not e!621203))))

(assert (=> b!1087449 (= res!725298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087450 () Bool)

(declare-fun res!725300 () Bool)

(assert (=> b!1087450 (=> (not res!725300) (not e!621203))))

(assert (=> b!1087450 (= res!725300 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23671))))

(declare-fun b!1087451 () Bool)

(assert (=> b!1087451 (= e!621206 (and e!621204 mapRes!41695))))

(declare-fun condMapEmpty!41695 () Bool)

(declare-fun mapDefault!41695 () ValueCell!12604)

