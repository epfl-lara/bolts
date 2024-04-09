; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95596 () Bool)

(assert start!95596)

(declare-fun b!1079299 () Bool)

(declare-fun res!719332 () Bool)

(declare-fun e!617113 () Bool)

(assert (=> b!1079299 (=> (not res!719332) (not e!617113))))

(declare-datatypes ((array!69342 0))(
  ( (array!69343 (arr!33341 (Array (_ BitVec 32) (_ BitVec 64))) (size!33878 (_ BitVec 32))) )
))
(declare-fun lt!478774 () array!69342)

(declare-datatypes ((List!23374 0))(
  ( (Nil!23371) (Cons!23370 (h!24579 (_ BitVec 64)) (t!32740 List!23374)) )
))
(declare-fun arrayNoDuplicates!0 (array!69342 (_ BitVec 32) List!23374) Bool)

(assert (=> b!1079299 (= res!719332 (arrayNoDuplicates!0 lt!478774 #b00000000000000000000000000000000 Nil!23371))))

(declare-fun b!1079300 () Bool)

(declare-fun res!719335 () Bool)

(declare-fun e!617109 () Bool)

(assert (=> b!1079300 (=> (not res!719335) (not e!617109))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69342)

(assert (=> b!1079300 (= res!719335 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33878 _keys!1070))))))

(declare-fun mapIsEmpty!41077 () Bool)

(declare-fun mapRes!41077 () Bool)

(assert (=> mapIsEmpty!41077 mapRes!41077))

(declare-fun b!1079301 () Bool)

(assert (=> b!1079301 (= e!617109 e!617113)))

(declare-fun res!719338 () Bool)

(assert (=> b!1079301 (=> (not res!719338) (not e!617113))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69342 (_ BitVec 32)) Bool)

(assert (=> b!1079301 (= res!719338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478774 mask!1414))))

(assert (=> b!1079301 (= lt!478774 (array!69343 (store (arr!33341 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33878 _keys!1070)))))

(declare-fun b!1079302 () Bool)

(declare-fun res!719339 () Bool)

(assert (=> b!1079302 (=> (not res!719339) (not e!617109))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40081 0))(
  ( (V!40082 (val!13164 Int)) )
))
(declare-datatypes ((ValueCell!12398 0))(
  ( (ValueCellFull!12398 (v!15786 V!40081)) (EmptyCell!12398) )
))
(declare-datatypes ((array!69344 0))(
  ( (array!69345 (arr!33342 (Array (_ BitVec 32) ValueCell!12398)) (size!33879 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69344)

(assert (=> b!1079302 (= res!719339 (and (= (size!33879 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33878 _keys!1070) (size!33879 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079303 () Bool)

(declare-fun res!719336 () Bool)

(assert (=> b!1079303 (=> (not res!719336) (not e!617109))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1079303 (= res!719336 (= (select (arr!33341 _keys!1070) i!650) k!904))))

(declare-fun b!1079304 () Bool)

(assert (=> b!1079304 (= e!617113 (not true))))

(declare-fun arrayContainsKey!0 (array!69342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079304 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35435 0))(
  ( (Unit!35436) )
))
(declare-fun lt!478775 () Unit!35435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69342 (_ BitVec 64) (_ BitVec 32)) Unit!35435)

(assert (=> b!1079304 (= lt!478775 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079305 () Bool)

(declare-fun e!617110 () Bool)

(declare-fun e!617108 () Bool)

(assert (=> b!1079305 (= e!617110 (and e!617108 mapRes!41077))))

(declare-fun condMapEmpty!41077 () Bool)

(declare-fun mapDefault!41077 () ValueCell!12398)

