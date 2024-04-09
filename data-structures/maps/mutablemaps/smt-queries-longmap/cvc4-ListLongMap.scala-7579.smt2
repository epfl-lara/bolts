; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95834 () Bool)

(assert start!95834)

(declare-fun b_free!22451 () Bool)

(declare-fun b_next!22451 () Bool)

(assert (=> start!95834 (= b_free!22451 (not b_next!22451))))

(declare-fun tp!79203 () Bool)

(declare-fun b_and!35595 () Bool)

(assert (=> start!95834 (= tp!79203 b_and!35595)))

(declare-fun mapIsEmpty!41434 () Bool)

(declare-fun mapRes!41434 () Bool)

(assert (=> mapIsEmpty!41434 mapRes!41434))

(declare-fun b!1083731 () Bool)

(declare-fun e!619255 () Bool)

(assert (=> b!1083731 (= e!619255 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40397 0))(
  ( (V!40398 (val!13283 Int)) )
))
(declare-fun minValue!831 () V!40397)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12517 0))(
  ( (ValueCellFull!12517 (v!15905 V!40397)) (EmptyCell!12517) )
))
(declare-datatypes ((array!69808 0))(
  ( (array!69809 (arr!33574 (Array (_ BitVec 32) ValueCell!12517)) (size!34111 (_ BitVec 32))) )
))
(declare-fun lt!480248 () array!69808)

(declare-datatypes ((array!69810 0))(
  ( (array!69811 (arr!33575 (Array (_ BitVec 32) (_ BitVec 64))) (size!34112 (_ BitVec 32))) )
))
(declare-fun lt!480249 () array!69810)

(declare-fun zeroValue!831 () V!40397)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16898 0))(
  ( (tuple2!16899 (_1!8459 (_ BitVec 64)) (_2!8459 V!40397)) )
))
(declare-datatypes ((List!23537 0))(
  ( (Nil!23534) (Cons!23533 (h!24742 tuple2!16898) (t!33053 List!23537)) )
))
(declare-datatypes ((ListLongMap!14879 0))(
  ( (ListLongMap!14880 (toList!7455 List!23537)) )
))
(declare-fun lt!480250 () ListLongMap!14879)

(declare-fun getCurrentListMap!4214 (array!69810 array!69808 (_ BitVec 32) (_ BitVec 32) V!40397 V!40397 (_ BitVec 32) Int) ListLongMap!14879)

(assert (=> b!1083731 (= lt!480250 (getCurrentListMap!4214 lt!480249 lt!480248 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480247 () ListLongMap!14879)

(declare-fun lt!480254 () ListLongMap!14879)

(assert (=> b!1083731 (and (= lt!480247 lt!480254) (= lt!480254 lt!480247))))

(declare-fun lt!480253 () ListLongMap!14879)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!737 (ListLongMap!14879 (_ BitVec 64)) ListLongMap!14879)

(assert (=> b!1083731 (= lt!480254 (-!737 lt!480253 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35589 0))(
  ( (Unit!35590) )
))
(declare-fun lt!480252 () Unit!35589)

(declare-fun _keys!1070 () array!69810)

(declare-fun _values!874 () array!69808)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!20 (array!69810 array!69808 (_ BitVec 32) (_ BitVec 32) V!40397 V!40397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35589)

(assert (=> b!1083731 (= lt!480252 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!20 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3966 (array!69810 array!69808 (_ BitVec 32) (_ BitVec 32) V!40397 V!40397 (_ BitVec 32) Int) ListLongMap!14879)

(assert (=> b!1083731 (= lt!480247 (getCurrentListMapNoExtraKeys!3966 lt!480249 lt!480248 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2102 (Int (_ BitVec 64)) V!40397)

(assert (=> b!1083731 (= lt!480248 (array!69809 (store (arr!33574 _values!874) i!650 (ValueCellFull!12517 (dynLambda!2102 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34111 _values!874)))))

(assert (=> b!1083731 (= lt!480253 (getCurrentListMapNoExtraKeys!3966 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083731 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480251 () Unit!35589)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69810 (_ BitVec 64) (_ BitVec 32)) Unit!35589)

(assert (=> b!1083731 (= lt!480251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41434 () Bool)

(declare-fun tp!79202 () Bool)

(declare-fun e!619251 () Bool)

(assert (=> mapNonEmpty!41434 (= mapRes!41434 (and tp!79202 e!619251))))

(declare-fun mapRest!41434 () (Array (_ BitVec 32) ValueCell!12517))

(declare-fun mapValue!41434 () ValueCell!12517)

(declare-fun mapKey!41434 () (_ BitVec 32))

(assert (=> mapNonEmpty!41434 (= (arr!33574 _values!874) (store mapRest!41434 mapKey!41434 mapValue!41434))))

(declare-fun b!1083732 () Bool)

(declare-fun res!722549 () Bool)

(declare-fun e!619250 () Bool)

(assert (=> b!1083732 (=> (not res!722549) (not e!619250))))

(assert (=> b!1083732 (= res!722549 (and (= (size!34111 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34112 _keys!1070) (size!34111 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083733 () Bool)

(declare-fun res!722544 () Bool)

(assert (=> b!1083733 (=> (not res!722544) (not e!619250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69810 (_ BitVec 32)) Bool)

(assert (=> b!1083733 (= res!722544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083734 () Bool)

(declare-fun res!722547 () Bool)

(assert (=> b!1083734 (=> (not res!722547) (not e!619255))))

(declare-datatypes ((List!23538 0))(
  ( (Nil!23535) (Cons!23534 (h!24743 (_ BitVec 64)) (t!33054 List!23538)) )
))
(declare-fun arrayNoDuplicates!0 (array!69810 (_ BitVec 32) List!23538) Bool)

(assert (=> b!1083734 (= res!722547 (arrayNoDuplicates!0 lt!480249 #b00000000000000000000000000000000 Nil!23535))))

(declare-fun b!1083736 () Bool)

(declare-fun res!722551 () Bool)

(assert (=> b!1083736 (=> (not res!722551) (not e!619250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083736 (= res!722551 (validKeyInArray!0 k!904))))

(declare-fun b!1083737 () Bool)

(declare-fun tp_is_empty!26453 () Bool)

(assert (=> b!1083737 (= e!619251 tp_is_empty!26453)))

(declare-fun b!1083738 () Bool)

(declare-fun e!619252 () Bool)

(declare-fun e!619254 () Bool)

(assert (=> b!1083738 (= e!619252 (and e!619254 mapRes!41434))))

(declare-fun condMapEmpty!41434 () Bool)

(declare-fun mapDefault!41434 () ValueCell!12517)

