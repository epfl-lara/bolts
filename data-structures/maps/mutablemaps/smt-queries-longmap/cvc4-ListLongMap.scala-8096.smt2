; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99482 () Bool)

(assert start!99482)

(declare-fun b_free!25025 () Bool)

(declare-fun b_next!25025 () Bool)

(assert (=> start!99482 (= b_free!25025 (not b_next!25025))))

(declare-fun tp!87790 () Bool)

(declare-fun b_and!40931 () Bool)

(assert (=> start!99482 (= tp!87790 b_and!40931)))

(declare-fun b!1174655 () Bool)

(declare-fun res!780169 () Bool)

(declare-fun e!667734 () Bool)

(assert (=> b!1174655 (=> (not res!780169) (not e!667734))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174655 (= res!780169 (validKeyInArray!0 k!934))))

(declare-fun b!1174656 () Bool)

(declare-fun e!667735 () Bool)

(declare-fun tp_is_empty!29555 () Bool)

(assert (=> b!1174656 (= e!667735 tp_is_empty!29555)))

(declare-datatypes ((array!75886 0))(
  ( (array!75887 (arr!36589 (Array (_ BitVec 32) (_ BitVec 64))) (size!37126 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75886)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!667740 () Bool)

(declare-fun b!1174657 () Bool)

(declare-fun arrayContainsKey!0 (array!75886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174657 (= e!667740 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174658 () Bool)

(declare-fun e!667733 () Bool)

(declare-fun e!667731 () Bool)

(assert (=> b!1174658 (= e!667733 (not e!667731))))

(declare-fun res!780180 () Bool)

(assert (=> b!1174658 (=> res!780180 e!667731)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174658 (= res!780180 (bvsgt from!1455 i!673))))

(assert (=> b!1174658 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38671 0))(
  ( (Unit!38672) )
))
(declare-fun lt!529745 () Unit!38671)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75886 (_ BitVec 64) (_ BitVec 32)) Unit!38671)

(assert (=> b!1174658 (= lt!529745 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174659 () Bool)

(declare-fun res!780177 () Bool)

(assert (=> b!1174659 (=> (not res!780177) (not e!667734))))

(assert (=> b!1174659 (= res!780177 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37126 _keys!1208))))))

(declare-fun b!1174660 () Bool)

(declare-fun e!667732 () Bool)

(declare-fun e!667741 () Bool)

(declare-fun mapRes!46160 () Bool)

(assert (=> b!1174660 (= e!667732 (and e!667741 mapRes!46160))))

(declare-fun condMapEmpty!46160 () Bool)

(declare-datatypes ((V!44533 0))(
  ( (V!44534 (val!14834 Int)) )
))
(declare-datatypes ((ValueCell!14068 0))(
  ( (ValueCellFull!14068 (v!17473 V!44533)) (EmptyCell!14068) )
))
(declare-datatypes ((array!75888 0))(
  ( (array!75889 (arr!36590 (Array (_ BitVec 32) ValueCell!14068)) (size!37127 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75888)

(declare-fun mapDefault!46160 () ValueCell!14068)

