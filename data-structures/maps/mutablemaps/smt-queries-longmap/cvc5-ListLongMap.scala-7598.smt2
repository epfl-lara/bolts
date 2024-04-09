; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95944 () Bool)

(assert start!95944)

(declare-fun b_free!22561 () Bool)

(declare-fun b_next!22561 () Bool)

(assert (=> start!95944 (= b_free!22561 (not b_next!22561))))

(declare-fun tp!79533 () Bool)

(declare-fun b_and!35815 () Bool)

(assert (=> start!95944 (= tp!79533 b_and!35815)))

(declare-fun b!1086023 () Bool)

(declare-fun res!724236 () Bool)

(declare-fun e!620434 () Bool)

(assert (=> b!1086023 (=> (not res!724236) (not e!620434))))

(declare-datatypes ((array!70022 0))(
  ( (array!70023 (arr!33681 (Array (_ BitVec 32) (_ BitVec 64))) (size!34218 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70022)

(declare-datatypes ((List!23621 0))(
  ( (Nil!23618) (Cons!23617 (h!24826 (_ BitVec 64)) (t!33247 List!23621)) )
))
(declare-fun arrayNoDuplicates!0 (array!70022 (_ BitVec 32) List!23621) Bool)

(assert (=> b!1086023 (= res!724236 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23618))))

(declare-fun b!1086024 () Bool)

(declare-fun res!724234 () Bool)

(assert (=> b!1086024 (=> (not res!724234) (not e!620434))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70022 (_ BitVec 32)) Bool)

(assert (=> b!1086024 (= res!724234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!724231 () Bool)

(assert (=> start!95944 (=> (not res!724231) (not e!620434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95944 (= res!724231 (validMask!0 mask!1414))))

(assert (=> start!95944 e!620434))

(assert (=> start!95944 tp!79533))

(assert (=> start!95944 true))

(declare-fun tp_is_empty!26563 () Bool)

(assert (=> start!95944 tp_is_empty!26563))

(declare-fun array_inv!25840 (array!70022) Bool)

(assert (=> start!95944 (array_inv!25840 _keys!1070)))

(declare-datatypes ((V!40545 0))(
  ( (V!40546 (val!13338 Int)) )
))
(declare-datatypes ((ValueCell!12572 0))(
  ( (ValueCellFull!12572 (v!15960 V!40545)) (EmptyCell!12572) )
))
(declare-datatypes ((array!70024 0))(
  ( (array!70025 (arr!33682 (Array (_ BitVec 32) ValueCell!12572)) (size!34219 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70024)

(declare-fun e!620436 () Bool)

(declare-fun array_inv!25841 (array!70024) Bool)

(assert (=> start!95944 (and (array_inv!25841 _values!874) e!620436)))

(declare-fun b!1086025 () Bool)

(declare-fun res!724240 () Bool)

(declare-fun e!620433 () Bool)

(assert (=> b!1086025 (=> (not res!724240) (not e!620433))))

(declare-fun lt!482402 () array!70022)

(assert (=> b!1086025 (= res!724240 (arrayNoDuplicates!0 lt!482402 #b00000000000000000000000000000000 Nil!23618))))

(declare-fun b!1086026 () Bool)

(declare-fun res!724241 () Bool)

(assert (=> b!1086026 (=> (not res!724241) (not e!620434))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086026 (= res!724241 (validKeyInArray!0 k!904))))

(declare-fun b!1086027 () Bool)

(declare-fun e!620435 () Bool)

(declare-fun mapRes!41599 () Bool)

(assert (=> b!1086027 (= e!620436 (and e!620435 mapRes!41599))))

(declare-fun condMapEmpty!41599 () Bool)

(declare-fun mapDefault!41599 () ValueCell!12572)

