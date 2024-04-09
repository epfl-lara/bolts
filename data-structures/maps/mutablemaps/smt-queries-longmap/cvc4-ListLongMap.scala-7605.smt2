; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95990 () Bool)

(assert start!95990)

(declare-fun b_free!22607 () Bool)

(declare-fun b_next!22607 () Bool)

(assert (=> start!95990 (= b_free!22607 (not b_next!22607))))

(declare-fun tp!79670 () Bool)

(declare-fun b_and!35907 () Bool)

(assert (=> start!95990 (= tp!79670 b_and!35907)))

(declare-fun b!1087035 () Bool)

(declare-fun res!724990 () Bool)

(declare-fun e!620989 () Bool)

(assert (=> b!1087035 (=> (not res!724990) (not e!620989))))

(declare-datatypes ((array!70112 0))(
  ( (array!70113 (arr!33726 (Array (_ BitVec 32) (_ BitVec 64))) (size!34263 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70112)

(declare-datatypes ((List!23660 0))(
  ( (Nil!23657) (Cons!23656 (h!24865 (_ BitVec 64)) (t!33332 List!23660)) )
))
(declare-fun arrayNoDuplicates!0 (array!70112 (_ BitVec 32) List!23660) Bool)

(assert (=> b!1087035 (= res!724990 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23657))))

(declare-fun res!724999 () Bool)

(assert (=> start!95990 (=> (not res!724999) (not e!620989))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95990 (= res!724999 (validMask!0 mask!1414))))

(assert (=> start!95990 e!620989))

(assert (=> start!95990 tp!79670))

(assert (=> start!95990 true))

(declare-fun tp_is_empty!26609 () Bool)

(assert (=> start!95990 tp_is_empty!26609))

(declare-fun array_inv!25874 (array!70112) Bool)

(assert (=> start!95990 (array_inv!25874 _keys!1070)))

(declare-datatypes ((V!40605 0))(
  ( (V!40606 (val!13361 Int)) )
))
(declare-datatypes ((ValueCell!12595 0))(
  ( (ValueCellFull!12595 (v!15983 V!40605)) (EmptyCell!12595) )
))
(declare-datatypes ((array!70114 0))(
  ( (array!70115 (arr!33727 (Array (_ BitVec 32) ValueCell!12595)) (size!34264 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70114)

(declare-fun e!620986 () Bool)

(declare-fun array_inv!25875 (array!70114) Bool)

(assert (=> start!95990 (and (array_inv!25875 _values!874) e!620986)))

(declare-fun b!1087036 () Bool)

(declare-fun e!620987 () Bool)

(declare-fun mapRes!41668 () Bool)

(assert (=> b!1087036 (= e!620986 (and e!620987 mapRes!41668))))

(declare-fun condMapEmpty!41668 () Bool)

(declare-fun mapDefault!41668 () ValueCell!12595)

