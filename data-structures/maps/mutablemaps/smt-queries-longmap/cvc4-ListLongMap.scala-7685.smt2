; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96496 () Bool)

(assert start!96496)

(declare-fun b_free!23039 () Bool)

(declare-fun b_next!23039 () Bool)

(assert (=> start!96496 (= b_free!23039 (not b_next!23039))))

(declare-fun tp!81044 () Bool)

(declare-fun b_and!36759 () Bool)

(assert (=> start!96496 (= tp!81044 b_and!36759)))

(declare-fun b!1096776 () Bool)

(declare-fun e!626060 () Bool)

(declare-fun e!626058 () Bool)

(assert (=> b!1096776 (= e!626060 e!626058)))

(declare-fun res!732105 () Bool)

(assert (=> b!1096776 (=> (not res!732105) (not e!626058))))

(declare-datatypes ((array!71038 0))(
  ( (array!71039 (arr!34187 (Array (_ BitVec 32) (_ BitVec 64))) (size!34724 (_ BitVec 32))) )
))
(declare-fun lt!490247 () array!71038)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71038 (_ BitVec 32)) Bool)

(assert (=> b!1096776 (= res!732105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490247 mask!1414))))

(declare-fun _keys!1070 () array!71038)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096776 (= lt!490247 (array!71039 (store (arr!34187 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34724 _keys!1070)))))

(declare-fun b!1096777 () Bool)

(declare-fun e!626061 () Bool)

(declare-fun e!626059 () Bool)

(declare-fun mapRes!42394 () Bool)

(assert (=> b!1096777 (= e!626061 (and e!626059 mapRes!42394))))

(declare-fun condMapEmpty!42394 () Bool)

(declare-datatypes ((V!41245 0))(
  ( (V!41246 (val!13601 Int)) )
))
(declare-datatypes ((ValueCell!12835 0))(
  ( (ValueCellFull!12835 (v!16223 V!41245)) (EmptyCell!12835) )
))
(declare-datatypes ((array!71040 0))(
  ( (array!71041 (arr!34188 (Array (_ BitVec 32) ValueCell!12835)) (size!34725 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71040)

(declare-fun mapDefault!42394 () ValueCell!12835)

