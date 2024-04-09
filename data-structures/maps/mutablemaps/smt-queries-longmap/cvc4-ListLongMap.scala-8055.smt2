; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99210 () Bool)

(assert start!99210)

(declare-fun b_free!24779 () Bool)

(declare-fun b_next!24779 () Bool)

(assert (=> start!99210 (= b_free!24779 (not b_next!24779))))

(declare-fun tp!87048 () Bool)

(declare-fun b_and!40421 () Bool)

(assert (=> start!99210 (= tp!87048 b_and!40421)))

(declare-fun b!1167296 () Bool)

(declare-fun e!663510 () Bool)

(declare-fun e!663516 () Bool)

(assert (=> b!1167296 (= e!663510 (not e!663516))))

(declare-fun res!774444 () Bool)

(assert (=> b!1167296 (=> res!774444 e!663516)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167296 (= res!774444 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75396 0))(
  ( (array!75397 (arr!36345 (Array (_ BitVec 32) (_ BitVec 64))) (size!36882 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75396)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167296 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38414 0))(
  ( (Unit!38415) )
))
(declare-fun lt!525554 () Unit!38414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75396 (_ BitVec 64) (_ BitVec 32)) Unit!38414)

(assert (=> b!1167296 (= lt!525554 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45788 () Bool)

(declare-fun mapRes!45788 () Bool)

(assert (=> mapIsEmpty!45788 mapRes!45788))

(declare-fun b!1167297 () Bool)

(declare-fun e!663511 () Bool)

(declare-fun tp_is_empty!29309 () Bool)

(assert (=> b!1167297 (= e!663511 tp_is_empty!29309)))

(declare-fun b!1167298 () Bool)

(declare-fun res!774448 () Bool)

(assert (=> b!1167298 (=> (not res!774448) (not e!663510))))

(declare-fun lt!525551 () array!75396)

(declare-datatypes ((List!25624 0))(
  ( (Nil!25621) (Cons!25620 (h!26829 (_ BitVec 64)) (t!37402 List!25624)) )
))
(declare-fun arrayNoDuplicates!0 (array!75396 (_ BitVec 32) List!25624) Bool)

(assert (=> b!1167298 (= res!774448 (arrayNoDuplicates!0 lt!525551 #b00000000000000000000000000000000 Nil!25621))))

(declare-fun b!1167299 () Bool)

(declare-fun e!663509 () Bool)

(declare-fun e!663513 () Bool)

(assert (=> b!1167299 (= e!663509 (and e!663513 mapRes!45788))))

(declare-fun condMapEmpty!45788 () Bool)

(declare-datatypes ((V!44205 0))(
  ( (V!44206 (val!14711 Int)) )
))
(declare-datatypes ((ValueCell!13945 0))(
  ( (ValueCellFull!13945 (v!17349 V!44205)) (EmptyCell!13945) )
))
(declare-datatypes ((array!75398 0))(
  ( (array!75399 (arr!36346 (Array (_ BitVec 32) ValueCell!13945)) (size!36883 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75398)

(declare-fun mapDefault!45788 () ValueCell!13945)

