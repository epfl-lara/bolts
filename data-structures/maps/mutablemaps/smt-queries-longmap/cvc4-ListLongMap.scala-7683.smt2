; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96484 () Bool)

(assert start!96484)

(declare-fun b_free!23027 () Bool)

(declare-fun b_next!23027 () Bool)

(assert (=> start!96484 (= b_free!23027 (not b_next!23027))))

(declare-fun tp!81009 () Bool)

(declare-fun b_and!36735 () Bool)

(assert (=> start!96484 (= tp!81009 b_and!36735)))

(declare-fun mapNonEmpty!42376 () Bool)

(declare-fun mapRes!42376 () Bool)

(declare-fun tp!81008 () Bool)

(declare-fun e!625953 () Bool)

(assert (=> mapNonEmpty!42376 (= mapRes!42376 (and tp!81008 e!625953))))

(declare-datatypes ((V!41229 0))(
  ( (V!41230 (val!13595 Int)) )
))
(declare-datatypes ((ValueCell!12829 0))(
  ( (ValueCellFull!12829 (v!16217 V!41229)) (EmptyCell!12829) )
))
(declare-datatypes ((array!71014 0))(
  ( (array!71015 (arr!34175 (Array (_ BitVec 32) ValueCell!12829)) (size!34712 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71014)

(declare-fun mapKey!42376 () (_ BitVec 32))

(declare-fun mapRest!42376 () (Array (_ BitVec 32) ValueCell!12829))

(declare-fun mapValue!42376 () ValueCell!12829)

(assert (=> mapNonEmpty!42376 (= (arr!34175 _values!874) (store mapRest!42376 mapKey!42376 mapValue!42376))))

(declare-fun b!1096548 () Bool)

(declare-fun e!625948 () Bool)

(declare-fun tp_is_empty!27077 () Bool)

(assert (=> b!1096548 (= e!625948 tp_is_empty!27077)))

(declare-fun b!1096549 () Bool)

(declare-fun res!731949 () Bool)

(declare-fun e!625951 () Bool)

(assert (=> b!1096549 (=> (not res!731949) (not e!625951))))

(declare-datatypes ((array!71016 0))(
  ( (array!71017 (arr!34176 (Array (_ BitVec 32) (_ BitVec 64))) (size!34713 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71016)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096549 (= res!731949 (= (select (arr!34176 _keys!1070) i!650) k!904))))

(declare-fun b!1096550 () Bool)

(declare-fun res!731943 () Bool)

(assert (=> b!1096550 (=> (not res!731943) (not e!625951))))

(assert (=> b!1096550 (= res!731943 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34713 _keys!1070))))))

(declare-fun b!1096551 () Bool)

(declare-fun res!731942 () Bool)

(assert (=> b!1096551 (=> (not res!731942) (not e!625951))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096551 (= res!731942 (and (= (size!34712 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34713 _keys!1070) (size!34712 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096552 () Bool)

(assert (=> b!1096552 (= e!625953 tp_is_empty!27077)))

(declare-fun res!731941 () Bool)

(assert (=> start!96484 (=> (not res!731941) (not e!625951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96484 (= res!731941 (validMask!0 mask!1414))))

(assert (=> start!96484 e!625951))

(assert (=> start!96484 tp!81009))

(assert (=> start!96484 true))

(assert (=> start!96484 tp_is_empty!27077))

(declare-fun array_inv!26186 (array!71016) Bool)

(assert (=> start!96484 (array_inv!26186 _keys!1070)))

(declare-fun e!625950 () Bool)

(declare-fun array_inv!26187 (array!71014) Bool)

(assert (=> start!96484 (and (array_inv!26187 _values!874) e!625950)))

(declare-fun b!1096553 () Bool)

(declare-fun res!731946 () Bool)

(assert (=> b!1096553 (=> (not res!731946) (not e!625951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096553 (= res!731946 (validKeyInArray!0 k!904))))

(declare-fun b!1096554 () Bool)

(declare-fun res!731945 () Bool)

(assert (=> b!1096554 (=> (not res!731945) (not e!625951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71016 (_ BitVec 32)) Bool)

(assert (=> b!1096554 (= res!731945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096555 () Bool)

(declare-fun e!625952 () Bool)

(assert (=> b!1096555 (= e!625952 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17326 0))(
  ( (tuple2!17327 (_1!8673 (_ BitVec 64)) (_2!8673 V!41229)) )
))
(declare-datatypes ((List!24002 0))(
  ( (Nil!23999) (Cons!23998 (h!25207 tuple2!17326) (t!34082 List!24002)) )
))
(declare-datatypes ((ListLongMap!15307 0))(
  ( (ListLongMap!15308 (toList!7669 List!24002)) )
))
(declare-fun lt!490178 () ListLongMap!15307)

(declare-fun zeroValue!831 () V!41229)

(declare-fun lt!490176 () array!71016)

(declare-fun minValue!831 () V!41229)

(declare-fun getCurrentListMapNoExtraKeys!4156 (array!71016 array!71014 (_ BitVec 32) (_ BitVec 32) V!41229 V!41229 (_ BitVec 32) Int) ListLongMap!15307)

(declare-fun dynLambda!2287 (Int (_ BitVec 64)) V!41229)

(assert (=> b!1096555 (= lt!490178 (getCurrentListMapNoExtraKeys!4156 lt!490176 (array!71015 (store (arr!34175 _values!874) i!650 (ValueCellFull!12829 (dynLambda!2287 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34712 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490175 () ListLongMap!15307)

(assert (=> b!1096555 (= lt!490175 (getCurrentListMapNoExtraKeys!4156 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096555 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36011 0))(
  ( (Unit!36012) )
))
(declare-fun lt!490177 () Unit!36011)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71016 (_ BitVec 64) (_ BitVec 32)) Unit!36011)

(assert (=> b!1096555 (= lt!490177 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapIsEmpty!42376 () Bool)

(assert (=> mapIsEmpty!42376 mapRes!42376))

(declare-fun b!1096556 () Bool)

(declare-fun res!731944 () Bool)

(assert (=> b!1096556 (=> (not res!731944) (not e!625951))))

(declare-datatypes ((List!24003 0))(
  ( (Nil!24000) (Cons!23999 (h!25208 (_ BitVec 64)) (t!34083 List!24003)) )
))
(declare-fun arrayNoDuplicates!0 (array!71016 (_ BitVec 32) List!24003) Bool)

(assert (=> b!1096556 (= res!731944 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24000))))

(declare-fun b!1096557 () Bool)

(declare-fun res!731948 () Bool)

(assert (=> b!1096557 (=> (not res!731948) (not e!625952))))

(assert (=> b!1096557 (= res!731948 (arrayNoDuplicates!0 lt!490176 #b00000000000000000000000000000000 Nil!24000))))

(declare-fun b!1096558 () Bool)

(assert (=> b!1096558 (= e!625951 e!625952)))

(declare-fun res!731947 () Bool)

(assert (=> b!1096558 (=> (not res!731947) (not e!625952))))

(assert (=> b!1096558 (= res!731947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490176 mask!1414))))

(assert (=> b!1096558 (= lt!490176 (array!71017 (store (arr!34176 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34713 _keys!1070)))))

(declare-fun b!1096559 () Bool)

(assert (=> b!1096559 (= e!625950 (and e!625948 mapRes!42376))))

(declare-fun condMapEmpty!42376 () Bool)

(declare-fun mapDefault!42376 () ValueCell!12829)

