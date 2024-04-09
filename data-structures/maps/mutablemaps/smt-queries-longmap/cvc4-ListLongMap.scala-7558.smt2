; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95708 () Bool)

(assert start!95708)

(declare-fun b_free!22325 () Bool)

(declare-fun b_next!22325 () Bool)

(assert (=> start!95708 (= b_free!22325 (not b_next!22325))))

(declare-fun tp!78825 () Bool)

(declare-fun b_and!35343 () Bool)

(assert (=> start!95708 (= tp!78825 b_and!35343)))

(declare-fun b!1081337 () Bool)

(declare-fun e!618120 () Bool)

(declare-fun tp_is_empty!26327 () Bool)

(assert (=> b!1081337 (= e!618120 tp_is_empty!26327)))

(declare-fun mapIsEmpty!41245 () Bool)

(declare-fun mapRes!41245 () Bool)

(assert (=> mapIsEmpty!41245 mapRes!41245))

(declare-fun mapNonEmpty!41245 () Bool)

(declare-fun tp!78824 () Bool)

(assert (=> mapNonEmpty!41245 (= mapRes!41245 (and tp!78824 e!618120))))

(declare-fun mapKey!41245 () (_ BitVec 32))

(declare-datatypes ((V!40229 0))(
  ( (V!40230 (val!13220 Int)) )
))
(declare-datatypes ((ValueCell!12454 0))(
  ( (ValueCellFull!12454 (v!15842 V!40229)) (EmptyCell!12454) )
))
(declare-fun mapRest!41245 () (Array (_ BitVec 32) ValueCell!12454))

(declare-fun mapValue!41245 () ValueCell!12454)

(declare-datatypes ((array!69558 0))(
  ( (array!69559 (arr!33449 (Array (_ BitVec 32) ValueCell!12454)) (size!33986 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69558)

(assert (=> mapNonEmpty!41245 (= (arr!33449 _values!874) (store mapRest!41245 mapKey!41245 mapValue!41245))))

(declare-fun b!1081338 () Bool)

(declare-fun res!720847 () Bool)

(declare-fun e!618118 () Bool)

(assert (=> b!1081338 (=> (not res!720847) (not e!618118))))

(declare-datatypes ((array!69560 0))(
  ( (array!69561 (arr!33450 (Array (_ BitVec 32) (_ BitVec 64))) (size!33987 (_ BitVec 32))) )
))
(declare-fun lt!479262 () array!69560)

(declare-datatypes ((List!23446 0))(
  ( (Nil!23443) (Cons!23442 (h!24651 (_ BitVec 64)) (t!32836 List!23446)) )
))
(declare-fun arrayNoDuplicates!0 (array!69560 (_ BitVec 32) List!23446) Bool)

(assert (=> b!1081338 (= res!720847 (arrayNoDuplicates!0 lt!479262 #b00000000000000000000000000000000 Nil!23443))))

(declare-fun b!1081339 () Bool)

(declare-fun res!720845 () Bool)

(declare-fun e!618121 () Bool)

(assert (=> b!1081339 (=> (not res!720845) (not e!618121))))

(declare-fun _keys!1070 () array!69560)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081339 (= res!720845 (= (select (arr!33450 _keys!1070) i!650) k!904))))

(declare-fun b!1081340 () Bool)

(declare-fun res!720846 () Bool)

(assert (=> b!1081340 (=> (not res!720846) (not e!618121))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1081340 (= res!720846 (and (= (size!33986 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33987 _keys!1070) (size!33986 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081341 () Bool)

(declare-fun e!618119 () Bool)

(declare-fun e!618117 () Bool)

(assert (=> b!1081341 (= e!618119 (and e!618117 mapRes!41245))))

(declare-fun condMapEmpty!41245 () Bool)

(declare-fun mapDefault!41245 () ValueCell!12454)

