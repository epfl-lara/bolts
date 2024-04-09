; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95972 () Bool)

(assert start!95972)

(declare-fun b_free!22589 () Bool)

(declare-fun b_next!22589 () Bool)

(assert (=> start!95972 (= b_free!22589 (not b_next!22589))))

(declare-fun tp!79616 () Bool)

(declare-fun b_and!35871 () Bool)

(assert (=> start!95972 (= tp!79616 b_and!35871)))

(declare-fun b!1086639 () Bool)

(declare-fun e!620769 () Bool)

(declare-fun e!620770 () Bool)

(assert (=> b!1086639 (= e!620769 e!620770)))

(declare-fun res!724699 () Bool)

(assert (=> b!1086639 (=> res!724699 e!620770)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1086639 (= res!724699 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40581 0))(
  ( (V!40582 (val!13352 Int)) )
))
(declare-datatypes ((tuple2!17006 0))(
  ( (tuple2!17007 (_1!8513 (_ BitVec 64)) (_2!8513 V!40581)) )
))
(declare-datatypes ((List!23646 0))(
  ( (Nil!23643) (Cons!23642 (h!24851 tuple2!17006) (t!33300 List!23646)) )
))
(declare-datatypes ((ListLongMap!14987 0))(
  ( (ListLongMap!14988 (toList!7509 List!23646)) )
))
(declare-fun lt!483119 () ListLongMap!14987)

(declare-fun lt!483121 () ListLongMap!14987)

(assert (=> b!1086639 (= lt!483119 lt!483121)))

(declare-fun lt!483111 () ListLongMap!14987)

(declare-fun -!790 (ListLongMap!14987 (_ BitVec 64)) ListLongMap!14987)

(assert (=> b!1086639 (= lt!483119 (-!790 lt!483111 k!904))))

(declare-datatypes ((Unit!35695 0))(
  ( (Unit!35696) )
))
(declare-fun lt!483120 () Unit!35695)

(declare-fun lt!483115 () ListLongMap!14987)

(declare-fun zeroValue!831 () V!40581)

(declare-fun addRemoveCommutativeForDiffKeys!33 (ListLongMap!14987 (_ BitVec 64) V!40581 (_ BitVec 64)) Unit!35695)

(assert (=> b!1086639 (= lt!483120 (addRemoveCommutativeForDiffKeys!33 lt!483115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!483109 () ListLongMap!14987)

(declare-fun lt!483110 () tuple2!17006)

(declare-fun +!3237 (ListLongMap!14987 tuple2!17006) ListLongMap!14987)

(assert (=> b!1086639 (= lt!483109 (+!3237 lt!483121 lt!483110))))

(declare-fun lt!483113 () ListLongMap!14987)

(declare-fun lt!483124 () tuple2!17006)

(assert (=> b!1086639 (= lt!483121 (+!3237 lt!483113 lt!483124))))

(declare-fun lt!483114 () ListLongMap!14987)

(declare-fun lt!483116 () ListLongMap!14987)

(assert (=> b!1086639 (= lt!483114 lt!483116)))

(assert (=> b!1086639 (= lt!483116 (+!3237 lt!483111 lt!483110))))

(assert (=> b!1086639 (= lt!483111 (+!3237 lt!483115 lt!483124))))

(declare-fun lt!483118 () ListLongMap!14987)

(assert (=> b!1086639 (= lt!483109 (+!3237 (+!3237 lt!483118 lt!483124) lt!483110))))

(declare-fun minValue!831 () V!40581)

(assert (=> b!1086639 (= lt!483110 (tuple2!17007 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086639 (= lt!483124 (tuple2!17007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapNonEmpty!41641 () Bool)

(declare-fun mapRes!41641 () Bool)

(declare-fun tp!79617 () Bool)

(declare-fun e!620772 () Bool)

(assert (=> mapNonEmpty!41641 (= mapRes!41641 (and tp!79617 e!620772))))

(declare-datatypes ((ValueCell!12586 0))(
  ( (ValueCellFull!12586 (v!15974 V!40581)) (EmptyCell!12586) )
))
(declare-fun mapValue!41641 () ValueCell!12586)

(declare-datatypes ((array!70078 0))(
  ( (array!70079 (arr!33709 (Array (_ BitVec 32) ValueCell!12586)) (size!34246 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70078)

(declare-fun mapRest!41641 () (Array (_ BitVec 32) ValueCell!12586))

(declare-fun mapKey!41641 () (_ BitVec 32))

(assert (=> mapNonEmpty!41641 (= (arr!33709 _values!874) (store mapRest!41641 mapKey!41641 mapValue!41641))))

(declare-fun b!1086640 () Bool)

(declare-fun res!724701 () Bool)

(declare-fun e!620776 () Bool)

(assert (=> b!1086640 (=> (not res!724701) (not e!620776))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70080 0))(
  ( (array!70081 (arr!33710 (Array (_ BitVec 32) (_ BitVec 64))) (size!34247 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70080)

(assert (=> b!1086640 (= res!724701 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34247 _keys!1070))))))

(declare-fun b!1086641 () Bool)

(declare-fun res!724697 () Bool)

(declare-fun e!620774 () Bool)

(assert (=> b!1086641 (=> (not res!724697) (not e!620774))))

(declare-fun lt!483117 () array!70080)

(declare-datatypes ((List!23647 0))(
  ( (Nil!23644) (Cons!23643 (h!24852 (_ BitVec 64)) (t!33301 List!23647)) )
))
(declare-fun arrayNoDuplicates!0 (array!70080 (_ BitVec 32) List!23647) Bool)

(assert (=> b!1086641 (= res!724697 (arrayNoDuplicates!0 lt!483117 #b00000000000000000000000000000000 Nil!23644))))

(declare-fun b!1086642 () Bool)

(assert (=> b!1086642 (= e!620774 (not e!620769))))

(declare-fun res!724702 () Bool)

(assert (=> b!1086642 (=> res!724702 e!620769)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086642 (= res!724702 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun getCurrentListMap!4263 (array!70080 array!70078 (_ BitVec 32) (_ BitVec 32) V!40581 V!40581 (_ BitVec 32) Int) ListLongMap!14987)

(assert (=> b!1086642 (= lt!483114 (getCurrentListMap!4263 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483122 () array!70078)

(assert (=> b!1086642 (= lt!483109 (getCurrentListMap!4263 lt!483117 lt!483122 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086642 (and (= lt!483118 lt!483113) (= lt!483113 lt!483118))))

(assert (=> b!1086642 (= lt!483113 (-!790 lt!483115 k!904))))

(declare-fun lt!483123 () Unit!35695)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!69 (array!70080 array!70078 (_ BitVec 32) (_ BitVec 32) V!40581 V!40581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35695)

(assert (=> b!1086642 (= lt!483123 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!69 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4015 (array!70080 array!70078 (_ BitVec 32) (_ BitVec 32) V!40581 V!40581 (_ BitVec 32) Int) ListLongMap!14987)

(assert (=> b!1086642 (= lt!483118 (getCurrentListMapNoExtraKeys!4015 lt!483117 lt!483122 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2151 (Int (_ BitVec 64)) V!40581)

(assert (=> b!1086642 (= lt!483122 (array!70079 (store (arr!33709 _values!874) i!650 (ValueCellFull!12586 (dynLambda!2151 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34246 _values!874)))))

(assert (=> b!1086642 (= lt!483115 (getCurrentListMapNoExtraKeys!4015 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086642 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483125 () Unit!35695)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70080 (_ BitVec 64) (_ BitVec 32)) Unit!35695)

(assert (=> b!1086642 (= lt!483125 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086643 () Bool)

(assert (=> b!1086643 (= e!620776 e!620774)))

(declare-fun res!724695 () Bool)

(assert (=> b!1086643 (=> (not res!724695) (not e!620774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70080 (_ BitVec 32)) Bool)

(assert (=> b!1086643 (= res!724695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483117 mask!1414))))

(assert (=> b!1086643 (= lt!483117 (array!70081 (store (arr!33710 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34247 _keys!1070)))))

(declare-fun b!1086645 () Bool)

(declare-fun res!724703 () Bool)

(assert (=> b!1086645 (=> (not res!724703) (not e!620776))))

(assert (=> b!1086645 (= res!724703 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23644))))

(declare-fun b!1086646 () Bool)

(declare-fun res!724693 () Bool)

(assert (=> b!1086646 (=> (not res!724693) (not e!620776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086646 (= res!724693 (validKeyInArray!0 k!904))))

(declare-fun b!1086647 () Bool)

(declare-fun tp_is_empty!26591 () Bool)

(assert (=> b!1086647 (= e!620772 tp_is_empty!26591)))

(declare-fun b!1086648 () Bool)

(declare-fun e!620775 () Bool)

(declare-fun e!620771 () Bool)

(assert (=> b!1086648 (= e!620775 (and e!620771 mapRes!41641))))

(declare-fun condMapEmpty!41641 () Bool)

(declare-fun mapDefault!41641 () ValueCell!12586)

