; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95966 () Bool)

(assert start!95966)

(declare-fun b_free!22583 () Bool)

(declare-fun b_next!22583 () Bool)

(assert (=> start!95966 (= b_free!22583 (not b_next!22583))))

(declare-fun tp!79598 () Bool)

(declare-fun b_and!35859 () Bool)

(assert (=> start!95966 (= tp!79598 b_and!35859)))

(declare-fun b!1086507 () Bool)

(declare-fun res!724599 () Bool)

(declare-fun e!620698 () Bool)

(assert (=> b!1086507 (=> (not res!724599) (not e!620698))))

(declare-datatypes ((array!70066 0))(
  ( (array!70067 (arr!33703 (Array (_ BitVec 32) (_ BitVec 64))) (size!34240 (_ BitVec 32))) )
))
(declare-fun lt!482962 () array!70066)

(declare-datatypes ((List!23640 0))(
  ( (Nil!23637) (Cons!23636 (h!24845 (_ BitVec 64)) (t!33288 List!23640)) )
))
(declare-fun arrayNoDuplicates!0 (array!70066 (_ BitVec 32) List!23640) Bool)

(assert (=> b!1086507 (= res!724599 (arrayNoDuplicates!0 lt!482962 #b00000000000000000000000000000000 Nil!23637))))

(declare-fun b!1086508 () Bool)

(declare-fun res!724598 () Bool)

(declare-fun e!620704 () Bool)

(assert (=> b!1086508 (=> (not res!724598) (not e!620704))))

(declare-fun _keys!1070 () array!70066)

(assert (=> b!1086508 (= res!724598 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23637))))

(declare-fun b!1086509 () Bool)

(declare-fun e!620699 () Bool)

(assert (=> b!1086509 (= e!620699 true)))

(declare-datatypes ((V!40573 0))(
  ( (V!40574 (val!13349 Int)) )
))
(declare-datatypes ((tuple2!17000 0))(
  ( (tuple2!17001 (_1!8510 (_ BitVec 64)) (_2!8510 V!40573)) )
))
(declare-fun lt!482961 () tuple2!17000)

(declare-fun k!904 () (_ BitVec 64))

(declare-datatypes ((List!23641 0))(
  ( (Nil!23638) (Cons!23637 (h!24846 tuple2!17000) (t!33289 List!23641)) )
))
(declare-datatypes ((ListLongMap!14981 0))(
  ( (ListLongMap!14982 (toList!7506 List!23641)) )
))
(declare-fun lt!482969 () ListLongMap!14981)

(declare-fun lt!482960 () ListLongMap!14981)

(declare-fun -!787 (ListLongMap!14981 (_ BitVec 64)) ListLongMap!14981)

(declare-fun +!3234 (ListLongMap!14981 tuple2!17000) ListLongMap!14981)

(assert (=> b!1086509 (= (-!787 lt!482960 k!904) (+!3234 lt!482969 lt!482961))))

(declare-datatypes ((Unit!35689 0))(
  ( (Unit!35690) )
))
(declare-fun lt!482971 () Unit!35689)

(declare-fun lt!482959 () ListLongMap!14981)

(declare-fun minValue!831 () V!40573)

(declare-fun addRemoveCommutativeForDiffKeys!30 (ListLongMap!14981 (_ BitVec 64) V!40573 (_ BitVec 64)) Unit!35689)

(assert (=> b!1086509 (= lt!482971 (addRemoveCommutativeForDiffKeys!30 lt!482959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086510 () Bool)

(declare-fun res!724594 () Bool)

(assert (=> b!1086510 (=> (not res!724594) (not e!620704))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12583 0))(
  ( (ValueCellFull!12583 (v!15971 V!40573)) (EmptyCell!12583) )
))
(declare-datatypes ((array!70068 0))(
  ( (array!70069 (arr!33704 (Array (_ BitVec 32) ValueCell!12583)) (size!34241 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70068)

(assert (=> b!1086510 (= res!724594 (and (= (size!34241 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34240 _keys!1070) (size!34241 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41632 () Bool)

(declare-fun mapRes!41632 () Bool)

(assert (=> mapIsEmpty!41632 mapRes!41632))

(declare-fun mapNonEmpty!41632 () Bool)

(declare-fun tp!79599 () Bool)

(declare-fun e!620697 () Bool)

(assert (=> mapNonEmpty!41632 (= mapRes!41632 (and tp!79599 e!620697))))

(declare-fun mapValue!41632 () ValueCell!12583)

(declare-fun mapKey!41632 () (_ BitVec 32))

(declare-fun mapRest!41632 () (Array (_ BitVec 32) ValueCell!12583))

(assert (=> mapNonEmpty!41632 (= (arr!33704 _values!874) (store mapRest!41632 mapKey!41632 mapValue!41632))))

(declare-fun b!1086511 () Bool)

(declare-fun res!724595 () Bool)

(assert (=> b!1086511 (=> (not res!724595) (not e!620704))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086511 (= res!724595 (= (select (arr!33703 _keys!1070) i!650) k!904))))

(declare-fun b!1086512 () Bool)

(declare-fun e!620702 () Bool)

(declare-fun e!620703 () Bool)

(assert (=> b!1086512 (= e!620702 (and e!620703 mapRes!41632))))

(declare-fun condMapEmpty!41632 () Bool)

(declare-fun mapDefault!41632 () ValueCell!12583)

