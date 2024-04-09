; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96522 () Bool)

(assert start!96522)

(declare-fun b_free!23065 () Bool)

(declare-fun b_next!23065 () Bool)

(assert (=> start!96522 (= b_free!23065 (not b_next!23065))))

(declare-fun tp!81122 () Bool)

(declare-fun b_and!36811 () Bool)

(assert (=> start!96522 (= tp!81122 b_and!36811)))

(declare-fun res!732457 () Bool)

(declare-fun e!626296 () Bool)

(assert (=> start!96522 (=> (not res!732457) (not e!626296))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96522 (= res!732457 (validMask!0 mask!1414))))

(assert (=> start!96522 e!626296))

(assert (=> start!96522 tp!81122))

(assert (=> start!96522 true))

(declare-fun tp_is_empty!27115 () Bool)

(assert (=> start!96522 tp_is_empty!27115))

(declare-datatypes ((array!71090 0))(
  ( (array!71091 (arr!34213 (Array (_ BitVec 32) (_ BitVec 64))) (size!34750 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71090)

(declare-fun array_inv!26214 (array!71090) Bool)

(assert (=> start!96522 (array_inv!26214 _keys!1070)))

(declare-datatypes ((V!41281 0))(
  ( (V!41282 (val!13614 Int)) )
))
(declare-datatypes ((ValueCell!12848 0))(
  ( (ValueCellFull!12848 (v!16236 V!41281)) (EmptyCell!12848) )
))
(declare-datatypes ((array!71092 0))(
  ( (array!71093 (arr!34214 (Array (_ BitVec 32) ValueCell!12848)) (size!34751 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71092)

(declare-fun e!626294 () Bool)

(declare-fun array_inv!26215 (array!71092) Bool)

(assert (=> start!96522 (and (array_inv!26215 _values!874) e!626294)))

(declare-fun b!1097272 () Bool)

(declare-fun e!626293 () Bool)

(declare-fun mapRes!42433 () Bool)

(assert (=> b!1097272 (= e!626294 (and e!626293 mapRes!42433))))

(declare-fun condMapEmpty!42433 () Bool)

(declare-fun mapDefault!42433 () ValueCell!12848)

