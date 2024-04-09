; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96502 () Bool)

(assert start!96502)

(declare-fun b_free!23045 () Bool)

(declare-fun b_next!23045 () Bool)

(assert (=> start!96502 (= b_free!23045 (not b_next!23045))))

(declare-fun tp!81062 () Bool)

(declare-fun b_and!36771 () Bool)

(assert (=> start!96502 (= tp!81062 b_and!36771)))

(declare-fun b!1096890 () Bool)

(declare-fun res!732191 () Bool)

(declare-fun e!626113 () Bool)

(assert (=> b!1096890 (=> (not res!732191) (not e!626113))))

(declare-datatypes ((array!71050 0))(
  ( (array!71051 (arr!34193 (Array (_ BitVec 32) (_ BitVec 64))) (size!34730 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71050)

(declare-datatypes ((List!24016 0))(
  ( (Nil!24013) (Cons!24012 (h!25221 (_ BitVec 64)) (t!34114 List!24016)) )
))
(declare-fun arrayNoDuplicates!0 (array!71050 (_ BitVec 32) List!24016) Bool)

(assert (=> b!1096890 (= res!732191 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24013))))

(declare-fun b!1096891 () Bool)

(declare-fun e!626112 () Bool)

(declare-fun tp_is_empty!27095 () Bool)

(assert (=> b!1096891 (= e!626112 tp_is_empty!27095)))

(declare-fun b!1096892 () Bool)

(declare-fun res!732189 () Bool)

(declare-fun e!626111 () Bool)

(assert (=> b!1096892 (=> (not res!732189) (not e!626111))))

(declare-fun lt!490286 () array!71050)

(assert (=> b!1096892 (= res!732189 (arrayNoDuplicates!0 lt!490286 #b00000000000000000000000000000000 Nil!24013))))

(declare-fun b!1096893 () Bool)

(declare-fun res!732187 () Bool)

(assert (=> b!1096893 (=> (not res!732187) (not e!626113))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71050 (_ BitVec 32)) Bool)

(assert (=> b!1096893 (= res!732187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096894 () Bool)

(declare-fun e!626115 () Bool)

(declare-fun mapRes!42403 () Bool)

(assert (=> b!1096894 (= e!626115 (and e!626112 mapRes!42403))))

(declare-fun condMapEmpty!42403 () Bool)

(declare-datatypes ((V!41253 0))(
  ( (V!41254 (val!13604 Int)) )
))
(declare-datatypes ((ValueCell!12838 0))(
  ( (ValueCellFull!12838 (v!16226 V!41253)) (EmptyCell!12838) )
))
(declare-datatypes ((array!71052 0))(
  ( (array!71053 (arr!34194 (Array (_ BitVec 32) ValueCell!12838)) (size!34731 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71052)

(declare-fun mapDefault!42403 () ValueCell!12838)

