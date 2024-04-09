; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101802 () Bool)

(assert start!101802)

(declare-fun b_free!26455 () Bool)

(declare-fun b_next!26455 () Bool)

(assert (=> start!101802 (= b_free!26455 (not b_next!26455))))

(declare-fun tp!92411 () Bool)

(declare-fun b_and!44181 () Bool)

(assert (=> start!101802 (= tp!92411 b_and!44181)))

(declare-fun b!1225481 () Bool)

(declare-fun e!696068 () Bool)

(declare-fun e!696070 () Bool)

(assert (=> b!1225481 (= e!696068 (not e!696070))))

(declare-fun res!814492 () Bool)

(assert (=> b!1225481 (=> res!814492 e!696070)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225481 (= res!814492 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!79076 0))(
  ( (array!79077 (arr!38161 (Array (_ BitVec 32) (_ BitVec 64))) (size!38698 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79076)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225481 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40562 0))(
  ( (Unit!40563) )
))
(declare-fun lt!558429 () Unit!40562)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79076 (_ BitVec 64) (_ BitVec 32)) Unit!40562)

(assert (=> b!1225481 (= lt!558429 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225482 () Bool)

(declare-fun e!696066 () Bool)

(declare-fun e!696072 () Bool)

(declare-fun mapRes!48637 () Bool)

(assert (=> b!1225482 (= e!696066 (and e!696072 mapRes!48637))))

(declare-fun condMapEmpty!48637 () Bool)

(declare-datatypes ((V!46673 0))(
  ( (V!46674 (val!15636 Int)) )
))
(declare-datatypes ((ValueCell!14870 0))(
  ( (ValueCellFull!14870 (v!18299 V!46673)) (EmptyCell!14870) )
))
(declare-datatypes ((array!79078 0))(
  ( (array!79079 (arr!38162 (Array (_ BitVec 32) ValueCell!14870)) (size!38699 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79078)

(declare-fun mapDefault!48637 () ValueCell!14870)

