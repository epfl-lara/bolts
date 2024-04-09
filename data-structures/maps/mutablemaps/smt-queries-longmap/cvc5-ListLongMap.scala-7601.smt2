; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95962 () Bool)

(assert start!95962)

(declare-fun b_free!22579 () Bool)

(declare-fun b_next!22579 () Bool)

(assert (=> start!95962 (= b_free!22579 (not b_next!22579))))

(declare-fun tp!79586 () Bool)

(declare-fun b_and!35851 () Bool)

(assert (=> start!95962 (= tp!79586 b_and!35851)))

(declare-fun b!1086420 () Bool)

(declare-fun e!620654 () Bool)

(declare-fun e!620653 () Bool)

(assert (=> b!1086420 (= e!620654 e!620653)))

(declare-fun res!724538 () Bool)

(assert (=> b!1086420 (=> (not res!724538) (not e!620653))))

(declare-datatypes ((array!70058 0))(
  ( (array!70059 (arr!33699 (Array (_ BitVec 32) (_ BitVec 64))) (size!34236 (_ BitVec 32))) )
))
(declare-fun lt!482855 () array!70058)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70058 (_ BitVec 32)) Bool)

(assert (=> b!1086420 (= res!724538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482855 mask!1414))))

(declare-fun _keys!1070 () array!70058)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086420 (= lt!482855 (array!70059 (store (arr!33699 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34236 _keys!1070)))))

(declare-fun b!1086421 () Bool)

(declare-fun res!724535 () Bool)

(assert (=> b!1086421 (=> (not res!724535) (not e!620654))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1086421 (= res!724535 (= (select (arr!33699 _keys!1070) i!650) k!904))))

(declare-fun b!1086422 () Bool)

(declare-fun res!724529 () Bool)

(assert (=> b!1086422 (=> (not res!724529) (not e!620654))))

(declare-datatypes ((List!23636 0))(
  ( (Nil!23633) (Cons!23632 (h!24841 (_ BitVec 64)) (t!33280 List!23636)) )
))
(declare-fun arrayNoDuplicates!0 (array!70058 (_ BitVec 32) List!23636) Bool)

(assert (=> b!1086422 (= res!724529 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23633))))

(declare-fun mapNonEmpty!41626 () Bool)

(declare-fun mapRes!41626 () Bool)

(declare-fun tp!79587 () Bool)

(declare-fun e!620652 () Bool)

(assert (=> mapNonEmpty!41626 (= mapRes!41626 (and tp!79587 e!620652))))

(declare-datatypes ((V!40569 0))(
  ( (V!40570 (val!13347 Int)) )
))
(declare-datatypes ((ValueCell!12581 0))(
  ( (ValueCellFull!12581 (v!15969 V!40569)) (EmptyCell!12581) )
))
(declare-fun mapValue!41626 () ValueCell!12581)

(declare-datatypes ((array!70060 0))(
  ( (array!70061 (arr!33700 (Array (_ BitVec 32) ValueCell!12581)) (size!34237 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70060)

(declare-fun mapRest!41626 () (Array (_ BitVec 32) ValueCell!12581))

(declare-fun mapKey!41626 () (_ BitVec 32))

(assert (=> mapNonEmpty!41626 (= (arr!33700 _values!874) (store mapRest!41626 mapKey!41626 mapValue!41626))))

(declare-fun b!1086423 () Bool)

(declare-fun e!620655 () Bool)

(declare-fun tp_is_empty!26581 () Bool)

(assert (=> b!1086423 (= e!620655 tp_is_empty!26581)))

(declare-fun b!1086424 () Bool)

(assert (=> b!1086424 (= e!620652 tp_is_empty!26581)))

(declare-fun b!1086425 () Bool)

(declare-fun res!724531 () Bool)

(assert (=> b!1086425 (=> (not res!724531) (not e!620653))))

(assert (=> b!1086425 (= res!724531 (arrayNoDuplicates!0 lt!482855 #b00000000000000000000000000000000 Nil!23633))))

(declare-fun b!1086426 () Bool)

(declare-fun e!620651 () Bool)

(assert (=> b!1086426 (= e!620653 (not e!620651))))

(declare-fun res!724528 () Bool)

(assert (=> b!1086426 (=> res!724528 e!620651)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086426 (= res!724528 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40569)

(declare-datatypes ((tuple2!16996 0))(
  ( (tuple2!16997 (_1!8508 (_ BitVec 64)) (_2!8508 V!40569)) )
))
(declare-datatypes ((List!23637 0))(
  ( (Nil!23634) (Cons!23633 (h!24842 tuple2!16996) (t!33281 List!23637)) )
))
(declare-datatypes ((ListLongMap!14977 0))(
  ( (ListLongMap!14978 (toList!7504 List!23637)) )
))
(declare-fun lt!482869 () ListLongMap!14977)

(declare-fun zeroValue!831 () V!40569)

(declare-fun getCurrentListMap!4259 (array!70058 array!70060 (_ BitVec 32) (_ BitVec 32) V!40569 V!40569 (_ BitVec 32) Int) ListLongMap!14977)

(assert (=> b!1086426 (= lt!482869 (getCurrentListMap!4259 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482854 () array!70060)

(declare-fun lt!482857 () ListLongMap!14977)

(assert (=> b!1086426 (= lt!482857 (getCurrentListMap!4259 lt!482855 lt!482854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482865 () ListLongMap!14977)

(declare-fun lt!482856 () ListLongMap!14977)

(assert (=> b!1086426 (and (= lt!482865 lt!482856) (= lt!482856 lt!482865))))

(declare-fun lt!482863 () ListLongMap!14977)

(declare-fun -!785 (ListLongMap!14977 (_ BitVec 64)) ListLongMap!14977)

(assert (=> b!1086426 (= lt!482856 (-!785 lt!482863 k!904))))

(declare-datatypes ((Unit!35685 0))(
  ( (Unit!35686) )
))
(declare-fun lt!482864 () Unit!35685)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!65 (array!70058 array!70060 (_ BitVec 32) (_ BitVec 32) V!40569 V!40569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35685)

(assert (=> b!1086426 (= lt!482864 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!65 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4011 (array!70058 array!70060 (_ BitVec 32) (_ BitVec 32) V!40569 V!40569 (_ BitVec 32) Int) ListLongMap!14977)

(assert (=> b!1086426 (= lt!482865 (getCurrentListMapNoExtraKeys!4011 lt!482855 lt!482854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2147 (Int (_ BitVec 64)) V!40569)

(assert (=> b!1086426 (= lt!482854 (array!70061 (store (arr!33700 _values!874) i!650 (ValueCellFull!12581 (dynLambda!2147 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34237 _values!874)))))

(assert (=> b!1086426 (= lt!482863 (getCurrentListMapNoExtraKeys!4011 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086426 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482867 () Unit!35685)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70058 (_ BitVec 64) (_ BitVec 32)) Unit!35685)

(assert (=> b!1086426 (= lt!482867 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086427 () Bool)

(declare-fun e!620649 () Bool)

(assert (=> b!1086427 (= e!620649 (and e!620655 mapRes!41626))))

(declare-fun condMapEmpty!41626 () Bool)

(declare-fun mapDefault!41626 () ValueCell!12581)

