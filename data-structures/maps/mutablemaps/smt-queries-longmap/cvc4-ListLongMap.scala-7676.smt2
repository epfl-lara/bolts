; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96442 () Bool)

(assert start!96442)

(declare-fun b_free!22985 () Bool)

(declare-fun b_next!22985 () Bool)

(assert (=> start!96442 (= b_free!22985 (not b_next!22985))))

(declare-fun tp!80882 () Bool)

(declare-fun b_and!36651 () Bool)

(assert (=> start!96442 (= tp!80882 b_and!36651)))

(declare-fun b!1095750 () Bool)

(declare-fun res!731374 () Bool)

(declare-fun e!625571 () Bool)

(assert (=> b!1095750 (=> (not res!731374) (not e!625571))))

(declare-datatypes ((array!70936 0))(
  ( (array!70937 (arr!34136 (Array (_ BitVec 32) (_ BitVec 64))) (size!34673 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70936)

(declare-datatypes ((List!23976 0))(
  ( (Nil!23973) (Cons!23972 (h!25181 (_ BitVec 64)) (t!34014 List!23976)) )
))
(declare-fun arrayNoDuplicates!0 (array!70936 (_ BitVec 32) List!23976) Bool)

(assert (=> b!1095750 (= res!731374 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23973))))

(declare-fun b!1095751 () Bool)

(declare-fun res!731376 () Bool)

(assert (=> b!1095751 (=> (not res!731376) (not e!625571))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70936 (_ BitVec 32)) Bool)

(assert (=> b!1095751 (= res!731376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095752 () Bool)

(declare-fun e!625574 () Bool)

(declare-fun tp_is_empty!27035 () Bool)

(assert (=> b!1095752 (= e!625574 tp_is_empty!27035)))

(declare-fun b!1095753 () Bool)

(declare-fun e!625572 () Bool)

(assert (=> b!1095753 (= e!625572 tp_is_empty!27035)))

(declare-fun b!1095754 () Bool)

(declare-fun res!731378 () Bool)

(assert (=> b!1095754 (=> (not res!731378) (not e!625571))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095754 (= res!731378 (= (select (arr!34136 _keys!1070) i!650) k!904))))

(declare-fun res!731381 () Bool)

(assert (=> start!96442 (=> (not res!731381) (not e!625571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96442 (= res!731381 (validMask!0 mask!1414))))

(assert (=> start!96442 e!625571))

(assert (=> start!96442 tp!80882))

(assert (=> start!96442 true))

(assert (=> start!96442 tp_is_empty!27035))

(declare-fun array_inv!26158 (array!70936) Bool)

(assert (=> start!96442 (array_inv!26158 _keys!1070)))

(declare-datatypes ((V!41173 0))(
  ( (V!41174 (val!13574 Int)) )
))
(declare-datatypes ((ValueCell!12808 0))(
  ( (ValueCellFull!12808 (v!16196 V!41173)) (EmptyCell!12808) )
))
(declare-datatypes ((array!70938 0))(
  ( (array!70939 (arr!34137 (Array (_ BitVec 32) ValueCell!12808)) (size!34674 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70938)

(declare-fun e!625573 () Bool)

(declare-fun array_inv!26159 (array!70938) Bool)

(assert (=> start!96442 (and (array_inv!26159 _values!874) e!625573)))

(declare-fun b!1095755 () Bool)

(declare-fun mapRes!42313 () Bool)

(assert (=> b!1095755 (= e!625573 (and e!625572 mapRes!42313))))

(declare-fun condMapEmpty!42313 () Bool)

(declare-fun mapDefault!42313 () ValueCell!12808)

