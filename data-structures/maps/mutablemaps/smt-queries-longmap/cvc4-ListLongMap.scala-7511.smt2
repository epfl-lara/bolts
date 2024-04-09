; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95282 () Bool)

(assert start!95282)

(declare-fun b_free!22247 () Bool)

(declare-fun b_next!22247 () Bool)

(assert (=> start!95282 (= b_free!22247 (not b_next!22247))))

(declare-fun tp!78240 () Bool)

(declare-fun b_and!35243 () Bool)

(assert (=> start!95282 (= tp!78240 b_and!35243)))

(declare-fun res!717614 () Bool)

(declare-fun e!615450 () Bool)

(assert (=> start!95282 (=> (not res!717614) (not e!615450))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95282 (= res!717614 (validMask!0 mask!1515))))

(assert (=> start!95282 e!615450))

(assert (=> start!95282 true))

(declare-fun tp_is_empty!26057 () Bool)

(assert (=> start!95282 tp_is_empty!26057))

(declare-datatypes ((V!39877 0))(
  ( (V!39878 (val!13079 Int)) )
))
(declare-datatypes ((ValueCell!12325 0))(
  ( (ValueCellFull!12325 (v!15708 V!39877)) (EmptyCell!12325) )
))
(declare-datatypes ((array!69052 0))(
  ( (array!69053 (arr!33205 (Array (_ BitVec 32) ValueCell!12325)) (size!33742 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69052)

(declare-fun e!615453 () Bool)

(declare-fun array_inv!25516 (array!69052) Bool)

(assert (=> start!95282 (and (array_inv!25516 _values!955) e!615453)))

(assert (=> start!95282 tp!78240))

(declare-datatypes ((array!69054 0))(
  ( (array!69055 (arr!33206 (Array (_ BitVec 32) (_ BitVec 64))) (size!33743 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69054)

(declare-fun array_inv!25517 (array!69054) Bool)

(assert (=> start!95282 (array_inv!25517 _keys!1163)))

(declare-fun b!1076556 () Bool)

(declare-fun res!717610 () Bool)

(assert (=> b!1076556 (=> (not res!717610) (not e!615450))))

(declare-datatypes ((List!23314 0))(
  ( (Nil!23311) (Cons!23310 (h!24519 (_ BitVec 64)) (t!32680 List!23314)) )
))
(declare-fun arrayNoDuplicates!0 (array!69054 (_ BitVec 32) List!23314) Bool)

(assert (=> b!1076556 (= res!717610 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23311))))

(declare-fun b!1076557 () Bool)

(declare-fun e!615452 () Bool)

(declare-fun mapRes!40831 () Bool)

(assert (=> b!1076557 (= e!615453 (and e!615452 mapRes!40831))))

(declare-fun condMapEmpty!40831 () Bool)

(declare-fun mapDefault!40831 () ValueCell!12325)

