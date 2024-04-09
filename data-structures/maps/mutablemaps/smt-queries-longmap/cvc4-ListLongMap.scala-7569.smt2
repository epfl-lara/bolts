; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95774 () Bool)

(assert start!95774)

(declare-fun b_free!22391 () Bool)

(declare-fun b_next!22391 () Bool)

(assert (=> start!95774 (= b_free!22391 (not b_next!22391))))

(declare-fun tp!79022 () Bool)

(declare-fun b_and!35475 () Bool)

(assert (=> start!95774 (= tp!79022 b_and!35475)))

(declare-fun mapIsEmpty!41344 () Bool)

(declare-fun mapRes!41344 () Bool)

(assert (=> mapIsEmpty!41344 mapRes!41344))

(declare-fun b!1082591 () Bool)

(declare-fun res!721734 () Bool)

(declare-fun e!618710 () Bool)

(assert (=> b!1082591 (=> (not res!721734) (not e!618710))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082591 (= res!721734 (validKeyInArray!0 k!904))))

(declare-fun res!721738 () Bool)

(assert (=> start!95774 (=> (not res!721738) (not e!618710))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95774 (= res!721738 (validMask!0 mask!1414))))

(assert (=> start!95774 e!618710))

(assert (=> start!95774 tp!79022))

(assert (=> start!95774 true))

(declare-fun tp_is_empty!26393 () Bool)

(assert (=> start!95774 tp_is_empty!26393))

(declare-datatypes ((array!69690 0))(
  ( (array!69691 (arr!33515 (Array (_ BitVec 32) (_ BitVec 64))) (size!34052 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69690)

(declare-fun array_inv!25730 (array!69690) Bool)

(assert (=> start!95774 (array_inv!25730 _keys!1070)))

(declare-datatypes ((V!40317 0))(
  ( (V!40318 (val!13253 Int)) )
))
(declare-datatypes ((ValueCell!12487 0))(
  ( (ValueCellFull!12487 (v!15875 V!40317)) (EmptyCell!12487) )
))
(declare-datatypes ((array!69692 0))(
  ( (array!69693 (arr!33516 (Array (_ BitVec 32) ValueCell!12487)) (size!34053 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69692)

(declare-fun e!618715 () Bool)

(declare-fun array_inv!25731 (array!69692) Bool)

(assert (=> start!95774 (and (array_inv!25731 _values!874) e!618715)))

(declare-fun mapNonEmpty!41344 () Bool)

(declare-fun tp!79023 () Bool)

(declare-fun e!618711 () Bool)

(assert (=> mapNonEmpty!41344 (= mapRes!41344 (and tp!79023 e!618711))))

(declare-fun mapValue!41344 () ValueCell!12487)

(declare-fun mapKey!41344 () (_ BitVec 32))

(declare-fun mapRest!41344 () (Array (_ BitVec 32) ValueCell!12487))

(assert (=> mapNonEmpty!41344 (= (arr!33516 _values!874) (store mapRest!41344 mapKey!41344 mapValue!41344))))

(declare-fun b!1082592 () Bool)

(declare-fun res!721736 () Bool)

(assert (=> b!1082592 (=> (not res!721736) (not e!618710))))

(declare-datatypes ((List!23495 0))(
  ( (Nil!23492) (Cons!23491 (h!24700 (_ BitVec 64)) (t!32951 List!23495)) )
))
(declare-fun arrayNoDuplicates!0 (array!69690 (_ BitVec 32) List!23495) Bool)

(assert (=> b!1082592 (= res!721736 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23492))))

(declare-fun b!1082593 () Bool)

(declare-fun res!721741 () Bool)

(assert (=> b!1082593 (=> (not res!721741) (not e!618710))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082593 (= res!721741 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34052 _keys!1070))))))

(declare-fun b!1082594 () Bool)

(declare-fun res!721739 () Bool)

(assert (=> b!1082594 (=> (not res!721739) (not e!618710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69690 (_ BitVec 32)) Bool)

(assert (=> b!1082594 (= res!721739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082595 () Bool)

(declare-fun e!618713 () Bool)

(assert (=> b!1082595 (= e!618710 e!618713)))

(declare-fun res!721737 () Bool)

(assert (=> b!1082595 (=> (not res!721737) (not e!618713))))

(declare-fun lt!479677 () array!69690)

(assert (=> b!1082595 (= res!721737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479677 mask!1414))))

(assert (=> b!1082595 (= lt!479677 (array!69691 (store (arr!33515 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34052 _keys!1070)))))

(declare-fun b!1082596 () Bool)

(declare-fun e!618714 () Bool)

(assert (=> b!1082596 (= e!618714 tp_is_empty!26393)))

(declare-fun b!1082597 () Bool)

(declare-fun res!721742 () Bool)

(assert (=> b!1082597 (=> (not res!721742) (not e!618713))))

(assert (=> b!1082597 (= res!721742 (arrayNoDuplicates!0 lt!479677 #b00000000000000000000000000000000 Nil!23492))))

(declare-fun b!1082598 () Bool)

(assert (=> b!1082598 (= e!618715 (and e!618714 mapRes!41344))))

(declare-fun condMapEmpty!41344 () Bool)

(declare-fun mapDefault!41344 () ValueCell!12487)

