; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95884 () Bool)

(assert start!95884)

(declare-fun b_free!22501 () Bool)

(declare-fun b_next!22501 () Bool)

(assert (=> start!95884 (= b_free!22501 (not b_next!22501))))

(declare-fun tp!79353 () Bool)

(declare-fun b_and!35695 () Bool)

(assert (=> start!95884 (= tp!79353 b_and!35695)))

(declare-fun b!1084710 () Bool)

(declare-fun res!723253 () Bool)

(declare-fun e!619721 () Bool)

(assert (=> b!1084710 (=> (not res!723253) (not e!619721))))

(declare-datatypes ((array!69908 0))(
  ( (array!69909 (arr!33624 (Array (_ BitVec 32) (_ BitVec 64))) (size!34161 (_ BitVec 32))) )
))
(declare-fun lt!480887 () array!69908)

(declare-datatypes ((List!23574 0))(
  ( (Nil!23571) (Cons!23570 (h!24779 (_ BitVec 64)) (t!33140 List!23574)) )
))
(declare-fun arrayNoDuplicates!0 (array!69908 (_ BitVec 32) List!23574) Bool)

(assert (=> b!1084710 (= res!723253 (arrayNoDuplicates!0 lt!480887 #b00000000000000000000000000000000 Nil!23571))))

(declare-fun b!1084711 () Bool)

(declare-fun e!619723 () Bool)

(assert (=> b!1084711 (= e!619723 true)))

(declare-datatypes ((V!40465 0))(
  ( (V!40466 (val!13308 Int)) )
))
(declare-datatypes ((tuple2!16932 0))(
  ( (tuple2!16933 (_1!8476 (_ BitVec 64)) (_2!8476 V!40465)) )
))
(declare-datatypes ((List!23575 0))(
  ( (Nil!23572) (Cons!23571 (h!24780 tuple2!16932) (t!33141 List!23575)) )
))
(declare-datatypes ((ListLongMap!14913 0))(
  ( (ListLongMap!14914 (toList!7472 List!23575)) )
))
(declare-fun lt!480898 () ListLongMap!14913)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!480895 () ListLongMap!14913)

(declare-fun -!753 (ListLongMap!14913 (_ BitVec 64)) ListLongMap!14913)

(assert (=> b!1084711 (= (-!753 lt!480898 k!904) lt!480895)))

(declare-datatypes ((Unit!35621 0))(
  ( (Unit!35622) )
))
(declare-fun lt!480899 () Unit!35621)

(declare-fun lt!480891 () ListLongMap!14913)

(declare-fun zeroValue!831 () V!40465)

(declare-fun addRemoveCommutativeForDiffKeys!1 (ListLongMap!14913 (_ BitVec 64) V!40465 (_ BitVec 64)) Unit!35621)

(assert (=> b!1084711 (= lt!480899 (addRemoveCommutativeForDiffKeys!1 lt!480891 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!480896 () ListLongMap!14913)

(declare-fun lt!480888 () tuple2!16932)

(declare-fun +!3205 (ListLongMap!14913 tuple2!16932) ListLongMap!14913)

(assert (=> b!1084711 (= lt!480896 (+!3205 lt!480895 lt!480888))))

(declare-fun lt!480890 () ListLongMap!14913)

(declare-fun lt!480892 () tuple2!16932)

(assert (=> b!1084711 (= lt!480895 (+!3205 lt!480890 lt!480892))))

(declare-fun lt!480889 () ListLongMap!14913)

(assert (=> b!1084711 (= lt!480889 (+!3205 lt!480898 lt!480888))))

(assert (=> b!1084711 (= lt!480898 (+!3205 lt!480891 lt!480892))))

(declare-fun lt!480897 () ListLongMap!14913)

(assert (=> b!1084711 (= lt!480896 (+!3205 (+!3205 lt!480897 lt!480892) lt!480888))))

(declare-fun minValue!831 () V!40465)

(assert (=> b!1084711 (= lt!480888 (tuple2!16933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084711 (= lt!480892 (tuple2!16933 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapNonEmpty!41509 () Bool)

(declare-fun mapRes!41509 () Bool)

(declare-fun tp!79352 () Bool)

(declare-fun e!619726 () Bool)

(assert (=> mapNonEmpty!41509 (= mapRes!41509 (and tp!79352 e!619726))))

(declare-datatypes ((ValueCell!12542 0))(
  ( (ValueCellFull!12542 (v!15930 V!40465)) (EmptyCell!12542) )
))
(declare-datatypes ((array!69910 0))(
  ( (array!69911 (arr!33625 (Array (_ BitVec 32) ValueCell!12542)) (size!34162 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69910)

(declare-fun mapValue!41509 () ValueCell!12542)

(declare-fun mapKey!41509 () (_ BitVec 32))

(declare-fun mapRest!41509 () (Array (_ BitVec 32) ValueCell!12542))

(assert (=> mapNonEmpty!41509 (= (arr!33625 _values!874) (store mapRest!41509 mapKey!41509 mapValue!41509))))

(declare-fun b!1084712 () Bool)

(declare-fun res!723256 () Bool)

(declare-fun e!619722 () Bool)

(assert (=> b!1084712 (=> (not res!723256) (not e!619722))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69908)

(assert (=> b!1084712 (= res!723256 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34161 _keys!1070))))))

(declare-fun b!1084713 () Bool)

(declare-fun res!723252 () Bool)

(assert (=> b!1084713 (=> (not res!723252) (not e!619722))))

(assert (=> b!1084713 (= res!723252 (= (select (arr!33624 _keys!1070) i!650) k!904))))

(declare-fun b!1084714 () Bool)

(declare-fun res!723249 () Bool)

(assert (=> b!1084714 (=> (not res!723249) (not e!619722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084714 (= res!723249 (validKeyInArray!0 k!904))))

(declare-fun b!1084715 () Bool)

(declare-fun e!619720 () Bool)

(declare-fun tp_is_empty!26503 () Bool)

(assert (=> b!1084715 (= e!619720 tp_is_empty!26503)))

(declare-fun b!1084716 () Bool)

(declare-fun e!619724 () Bool)

(assert (=> b!1084716 (= e!619724 (and e!619720 mapRes!41509))))

(declare-fun condMapEmpty!41509 () Bool)

(declare-fun mapDefault!41509 () ValueCell!12542)

