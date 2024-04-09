; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96514 () Bool)

(assert start!96514)

(declare-fun b_free!23057 () Bool)

(declare-fun b_next!23057 () Bool)

(assert (=> start!96514 (= b_free!23057 (not b_next!23057))))

(declare-fun tp!81099 () Bool)

(declare-fun b_and!36795 () Bool)

(assert (=> start!96514 (= tp!81099 b_and!36795)))

(declare-fun b!1097118 () Bool)

(declare-fun res!732347 () Bool)

(declare-fun e!626222 () Bool)

(assert (=> b!1097118 (=> (not res!732347) (not e!626222))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71074 0))(
  ( (array!71075 (arr!34205 (Array (_ BitVec 32) (_ BitVec 64))) (size!34742 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71074)

(assert (=> b!1097118 (= res!732347 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34742 _keys!1070))))))

(declare-fun b!1097119 () Bool)

(declare-fun res!732349 () Bool)

(assert (=> b!1097119 (=> (not res!732349) (not e!626222))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097119 (= res!732349 (validKeyInArray!0 k!904))))

(declare-fun b!1097120 () Bool)

(declare-fun e!626218 () Bool)

(declare-fun e!626221 () Bool)

(declare-fun mapRes!42421 () Bool)

(assert (=> b!1097120 (= e!626218 (and e!626221 mapRes!42421))))

(declare-fun condMapEmpty!42421 () Bool)

(declare-datatypes ((V!41269 0))(
  ( (V!41270 (val!13610 Int)) )
))
(declare-datatypes ((ValueCell!12844 0))(
  ( (ValueCellFull!12844 (v!16232 V!41269)) (EmptyCell!12844) )
))
(declare-datatypes ((array!71076 0))(
  ( (array!71077 (arr!34206 (Array (_ BitVec 32) ValueCell!12844)) (size!34743 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71076)

(declare-fun mapDefault!42421 () ValueCell!12844)

