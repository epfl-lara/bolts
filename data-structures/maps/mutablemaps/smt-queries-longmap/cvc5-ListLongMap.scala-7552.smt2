; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95668 () Bool)

(assert start!95668)

(declare-fun b_free!22285 () Bool)

(declare-fun b_next!22285 () Bool)

(assert (=> start!95668 (= b_free!22285 (not b_next!22285))))

(declare-fun tp!78704 () Bool)

(declare-fun b_and!35281 () Bool)

(assert (=> start!95668 (= tp!78704 b_and!35281)))

(declare-fun b!1080595 () Bool)

(declare-fun e!617758 () Bool)

(assert (=> b!1080595 (= e!617758 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40177 0))(
  ( (V!40178 (val!13200 Int)) )
))
(declare-fun minValue!831 () V!40177)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16790 0))(
  ( (tuple2!16791 (_1!8405 (_ BitVec 64)) (_2!8405 V!40177)) )
))
(declare-datatypes ((List!23413 0))(
  ( (Nil!23410) (Cons!23409 (h!24618 tuple2!16790) (t!32779 List!23413)) )
))
(declare-datatypes ((ListLongMap!14771 0))(
  ( (ListLongMap!14772 (toList!7401 List!23413)) )
))
(declare-fun lt!479047 () ListLongMap!14771)

(declare-fun zeroValue!831 () V!40177)

(declare-datatypes ((array!69480 0))(
  ( (array!69481 (arr!33410 (Array (_ BitVec 32) (_ BitVec 64))) (size!33947 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69480)

(declare-datatypes ((ValueCell!12434 0))(
  ( (ValueCellFull!12434 (v!15822 V!40177)) (EmptyCell!12434) )
))
(declare-datatypes ((array!69482 0))(
  ( (array!69483 (arr!33411 (Array (_ BitVec 32) ValueCell!12434)) (size!33948 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69482)

(declare-fun getCurrentListMapNoExtraKeys!3912 (array!69480 array!69482 (_ BitVec 32) (_ BitVec 32) V!40177 V!40177 (_ BitVec 32) Int) ListLongMap!14771)

(assert (=> b!1080595 (= lt!479047 (getCurrentListMapNoExtraKeys!3912 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080595 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35481 0))(
  ( (Unit!35482) )
))
(declare-fun lt!479046 () Unit!35481)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69480 (_ BitVec 64) (_ BitVec 32)) Unit!35481)

(assert (=> b!1080595 (= lt!479046 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080596 () Bool)

(declare-fun res!720304 () Bool)

(assert (=> b!1080596 (=> (not res!720304) (not e!617758))))

(declare-fun lt!479048 () array!69480)

(declare-datatypes ((List!23414 0))(
  ( (Nil!23411) (Cons!23410 (h!24619 (_ BitVec 64)) (t!32780 List!23414)) )
))
(declare-fun arrayNoDuplicates!0 (array!69480 (_ BitVec 32) List!23414) Bool)

(assert (=> b!1080596 (= res!720304 (arrayNoDuplicates!0 lt!479048 #b00000000000000000000000000000000 Nil!23411))))

(declare-fun mapIsEmpty!41185 () Bool)

(declare-fun mapRes!41185 () Bool)

(assert (=> mapIsEmpty!41185 mapRes!41185))

(declare-fun b!1080597 () Bool)

(declare-fun e!617759 () Bool)

(assert (=> b!1080597 (= e!617759 e!617758)))

(declare-fun res!720307 () Bool)

(assert (=> b!1080597 (=> (not res!720307) (not e!617758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69480 (_ BitVec 32)) Bool)

(assert (=> b!1080597 (= res!720307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479048 mask!1414))))

(assert (=> b!1080597 (= lt!479048 (array!69481 (store (arr!33410 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33947 _keys!1070)))))

(declare-fun b!1080598 () Bool)

(declare-fun res!720305 () Bool)

(assert (=> b!1080598 (=> (not res!720305) (not e!617759))))

(assert (=> b!1080598 (= res!720305 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23411))))

(declare-fun b!1080600 () Bool)

(declare-fun res!720306 () Bool)

(assert (=> b!1080600 (=> (not res!720306) (not e!617759))))

(assert (=> b!1080600 (= res!720306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080601 () Bool)

(declare-fun e!617761 () Bool)

(declare-fun tp_is_empty!26287 () Bool)

(assert (=> b!1080601 (= e!617761 tp_is_empty!26287)))

(declare-fun b!1080602 () Bool)

(declare-fun e!617760 () Bool)

(assert (=> b!1080602 (= e!617760 tp_is_empty!26287)))

(declare-fun mapNonEmpty!41185 () Bool)

(declare-fun tp!78705 () Bool)

(assert (=> mapNonEmpty!41185 (= mapRes!41185 (and tp!78705 e!617760))))

(declare-fun mapRest!41185 () (Array (_ BitVec 32) ValueCell!12434))

(declare-fun mapValue!41185 () ValueCell!12434)

(declare-fun mapKey!41185 () (_ BitVec 32))

(assert (=> mapNonEmpty!41185 (= (arr!33411 _values!874) (store mapRest!41185 mapKey!41185 mapValue!41185))))

(declare-fun b!1080599 () Bool)

(declare-fun res!720310 () Bool)

(assert (=> b!1080599 (=> (not res!720310) (not e!617759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080599 (= res!720310 (validKeyInArray!0 k!904))))

(declare-fun res!720303 () Bool)

(assert (=> start!95668 (=> (not res!720303) (not e!617759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95668 (= res!720303 (validMask!0 mask!1414))))

(assert (=> start!95668 e!617759))

(assert (=> start!95668 tp!78704))

(assert (=> start!95668 true))

(assert (=> start!95668 tp_is_empty!26287))

(declare-fun array_inv!25656 (array!69480) Bool)

(assert (=> start!95668 (array_inv!25656 _keys!1070)))

(declare-fun e!617756 () Bool)

(declare-fun array_inv!25657 (array!69482) Bool)

(assert (=> start!95668 (and (array_inv!25657 _values!874) e!617756)))

(declare-fun b!1080603 () Bool)

(declare-fun res!720309 () Bool)

(assert (=> b!1080603 (=> (not res!720309) (not e!617759))))

(assert (=> b!1080603 (= res!720309 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33947 _keys!1070))))))

(declare-fun b!1080604 () Bool)

(declare-fun res!720311 () Bool)

(assert (=> b!1080604 (=> (not res!720311) (not e!617759))))

(assert (=> b!1080604 (= res!720311 (and (= (size!33948 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33947 _keys!1070) (size!33948 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080605 () Bool)

(declare-fun res!720308 () Bool)

(assert (=> b!1080605 (=> (not res!720308) (not e!617759))))

(assert (=> b!1080605 (= res!720308 (= (select (arr!33410 _keys!1070) i!650) k!904))))

(declare-fun b!1080606 () Bool)

(assert (=> b!1080606 (= e!617756 (and e!617761 mapRes!41185))))

(declare-fun condMapEmpty!41185 () Bool)

(declare-fun mapDefault!41185 () ValueCell!12434)

