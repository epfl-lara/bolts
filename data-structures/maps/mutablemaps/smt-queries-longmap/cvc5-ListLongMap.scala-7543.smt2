; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95614 () Bool)

(assert start!95614)

(declare-fun b!1079623 () Bool)

(declare-fun e!617271 () Bool)

(declare-fun tp_is_empty!26233 () Bool)

(assert (=> b!1079623 (= e!617271 tp_is_empty!26233)))

(declare-fun b!1079624 () Bool)

(declare-fun res!719578 () Bool)

(declare-fun e!617273 () Bool)

(assert (=> b!1079624 (=> (not res!719578) (not e!617273))))

(declare-datatypes ((array!69374 0))(
  ( (array!69375 (arr!33357 (Array (_ BitVec 32) (_ BitVec 64))) (size!33894 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69374)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1079624 (= res!719578 (= (select (arr!33357 _keys!1070) i!650) k!904))))

(declare-fun b!1079625 () Bool)

(declare-fun res!719575 () Bool)

(assert (=> b!1079625 (=> (not res!719575) (not e!617273))))

(declare-datatypes ((List!23380 0))(
  ( (Nil!23377) (Cons!23376 (h!24585 (_ BitVec 64)) (t!32746 List!23380)) )
))
(declare-fun arrayNoDuplicates!0 (array!69374 (_ BitVec 32) List!23380) Bool)

(assert (=> b!1079625 (= res!719575 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23377))))

(declare-fun b!1079626 () Bool)

(declare-fun e!617274 () Bool)

(assert (=> b!1079626 (= e!617274 tp_is_empty!26233)))

(declare-fun b!1079627 () Bool)

(declare-fun res!719581 () Bool)

(assert (=> b!1079627 (=> (not res!719581) (not e!617273))))

(assert (=> b!1079627 (= res!719581 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33894 _keys!1070))))))

(declare-fun b!1079628 () Bool)

(declare-fun e!617270 () Bool)

(assert (=> b!1079628 (= e!617270 (not true))))

(declare-fun arrayContainsKey!0 (array!69374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079628 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35445 0))(
  ( (Unit!35446) )
))
(declare-fun lt!478829 () Unit!35445)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69374 (_ BitVec 64) (_ BitVec 32)) Unit!35445)

(assert (=> b!1079628 (= lt!478829 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079629 () Bool)

(declare-fun res!719579 () Bool)

(assert (=> b!1079629 (=> (not res!719579) (not e!617273))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40105 0))(
  ( (V!40106 (val!13173 Int)) )
))
(declare-datatypes ((ValueCell!12407 0))(
  ( (ValueCellFull!12407 (v!15795 V!40105)) (EmptyCell!12407) )
))
(declare-datatypes ((array!69376 0))(
  ( (array!69377 (arr!33358 (Array (_ BitVec 32) ValueCell!12407)) (size!33895 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69376)

(assert (=> b!1079629 (= res!719579 (and (= (size!33895 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33894 _keys!1070) (size!33895 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079630 () Bool)

(declare-fun e!617275 () Bool)

(declare-fun mapRes!41104 () Bool)

(assert (=> b!1079630 (= e!617275 (and e!617271 mapRes!41104))))

(declare-fun condMapEmpty!41104 () Bool)

(declare-fun mapDefault!41104 () ValueCell!12407)

