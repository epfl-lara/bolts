; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99742 () Bool)

(assert start!99742)

(declare-fun b_free!25285 () Bool)

(declare-fun b_next!25285 () Bool)

(assert (=> start!99742 (= b_free!25285 (not b_next!25285))))

(declare-fun tp!88570 () Bool)

(declare-fun b_and!41451 () Bool)

(assert (=> start!99742 (= tp!88570 b_and!41451)))

(declare-fun b!1183057 () Bool)

(declare-fun e!672664 () Bool)

(declare-fun e!672662 () Bool)

(assert (=> b!1183057 (= e!672664 (not e!672662))))

(declare-fun res!786363 () Bool)

(assert (=> b!1183057 (=> res!786363 e!672662)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183057 (= res!786363 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76398 0))(
  ( (array!76399 (arr!36845 (Array (_ BitVec 32) (_ BitVec 64))) (size!37382 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76398)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183057 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39077 0))(
  ( (Unit!39078) )
))
(declare-fun lt!535822 () Unit!39077)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76398 (_ BitVec 64) (_ BitVec 32)) Unit!39077)

(assert (=> b!1183057 (= lt!535822 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183058 () Bool)

(declare-fun e!672670 () Bool)

(declare-fun e!672663 () Bool)

(declare-fun mapRes!46550 () Bool)

(assert (=> b!1183058 (= e!672670 (and e!672663 mapRes!46550))))

(declare-fun condMapEmpty!46550 () Bool)

(declare-datatypes ((V!44881 0))(
  ( (V!44882 (val!14964 Int)) )
))
(declare-datatypes ((ValueCell!14198 0))(
  ( (ValueCellFull!14198 (v!17603 V!44881)) (EmptyCell!14198) )
))
(declare-datatypes ((array!76400 0))(
  ( (array!76401 (arr!36846 (Array (_ BitVec 32) ValueCell!14198)) (size!37383 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76400)

(declare-fun mapDefault!46550 () ValueCell!14198)

