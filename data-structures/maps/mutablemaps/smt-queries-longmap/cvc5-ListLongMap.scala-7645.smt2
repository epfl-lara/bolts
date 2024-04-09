; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96226 () Bool)

(assert start!96226)

(declare-fun b_free!22843 () Bool)

(declare-fun b_next!22843 () Bool)

(assert (=> start!96226 (= b_free!22843 (not b_next!22843))))

(declare-fun tp!80379 () Bool)

(declare-fun b_and!36379 () Bool)

(assert (=> start!96226 (= tp!80379 b_and!36379)))

(declare-fun b!1092241 () Bool)

(declare-fun res!728902 () Bool)

(declare-fun e!623817 () Bool)

(assert (=> b!1092241 (=> (not res!728902) (not e!623817))))

(declare-datatypes ((array!70570 0))(
  ( (array!70571 (arr!33955 (Array (_ BitVec 32) (_ BitVec 64))) (size!34492 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70570)

(declare-datatypes ((List!23859 0))(
  ( (Nil!23856) (Cons!23855 (h!25064 (_ BitVec 64)) (t!33767 List!23859)) )
))
(declare-fun arrayNoDuplicates!0 (array!70570 (_ BitVec 32) List!23859) Bool)

(assert (=> b!1092241 (= res!728902 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23856))))

(declare-fun b!1092242 () Bool)

(declare-fun e!623813 () Bool)

(declare-fun tp_is_empty!26845 () Bool)

(assert (=> b!1092242 (= e!623813 tp_is_empty!26845)))

(declare-fun b!1092243 () Bool)

(declare-fun res!728904 () Bool)

(declare-fun e!623814 () Bool)

(assert (=> b!1092243 (=> (not res!728904) (not e!623814))))

(declare-fun lt!488153 () array!70570)

(assert (=> b!1092243 (= res!728904 (arrayNoDuplicates!0 lt!488153 #b00000000000000000000000000000000 Nil!23856))))

(declare-fun b!1092244 () Bool)

(declare-fun e!623816 () Bool)

(assert (=> b!1092244 (= e!623816 tp_is_empty!26845)))

(declare-fun b!1092245 () Bool)

(declare-fun e!623815 () Bool)

(declare-fun mapRes!42022 () Bool)

(assert (=> b!1092245 (= e!623815 (and e!623816 mapRes!42022))))

(declare-fun condMapEmpty!42022 () Bool)

(declare-datatypes ((V!40921 0))(
  ( (V!40922 (val!13479 Int)) )
))
(declare-datatypes ((ValueCell!12713 0))(
  ( (ValueCellFull!12713 (v!16101 V!40921)) (EmptyCell!12713) )
))
(declare-datatypes ((array!70572 0))(
  ( (array!70573 (arr!33956 (Array (_ BitVec 32) ValueCell!12713)) (size!34493 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70572)

(declare-fun mapDefault!42022 () ValueCell!12713)

