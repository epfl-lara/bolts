; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99352 () Bool)

(assert start!99352)

(declare-fun b_free!24895 () Bool)

(declare-fun b_next!24895 () Bool)

(assert (=> start!99352 (= b_free!24895 (not b_next!24895))))

(declare-fun tp!87400 () Bool)

(declare-fun b_and!40671 () Bool)

(assert (=> start!99352 (= tp!87400 b_and!40671)))

(declare-fun b!1170479 () Bool)

(declare-fun e!665313 () Bool)

(assert (=> b!1170479 (= e!665313 true)))

(declare-datatypes ((array!75626 0))(
  ( (array!75627 (arr!36459 (Array (_ BitVec 32) (_ BitVec 64))) (size!36996 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75626)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!75626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170479 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38508 0))(
  ( (Unit!38509) )
))
(declare-fun lt!527141 () Unit!38508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75626 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38508)

(assert (=> b!1170479 (= lt!527141 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170480 () Bool)

(declare-fun res!776911 () Bool)

(declare-fun e!665316 () Bool)

(assert (=> b!1170480 (=> (not res!776911) (not e!665316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170480 (= res!776911 (validKeyInArray!0 k!934))))

(declare-fun b!1170482 () Bool)

(declare-fun e!665309 () Bool)

(declare-fun e!665319 () Bool)

(assert (=> b!1170482 (= e!665309 e!665319)))

(declare-fun res!776902 () Bool)

(assert (=> b!1170482 (=> res!776902 e!665319)))

(assert (=> b!1170482 (= res!776902 (not (= (select (arr!36459 _keys!1208) from!1455) k!934)))))

(declare-fun b!1170483 () Bool)

(declare-fun e!665311 () Bool)

(declare-fun e!665320 () Bool)

(assert (=> b!1170483 (= e!665311 (not e!665320))))

(declare-fun res!776912 () Bool)

(assert (=> b!1170483 (=> res!776912 e!665320)))

(assert (=> b!1170483 (= res!776912 (bvsgt from!1455 i!673))))

(assert (=> b!1170483 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527139 () Unit!38508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75626 (_ BitVec 64) (_ BitVec 32)) Unit!38508)

(assert (=> b!1170483 (= lt!527139 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170484 () Bool)

(declare-fun res!776917 () Bool)

(assert (=> b!1170484 (=> (not res!776917) (not e!665316))))

(assert (=> b!1170484 (= res!776917 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36996 _keys!1208))))))

(declare-fun b!1170485 () Bool)

(declare-fun e!665312 () Bool)

(declare-fun e!665318 () Bool)

(declare-fun mapRes!45965 () Bool)

(assert (=> b!1170485 (= e!665312 (and e!665318 mapRes!45965))))

(declare-fun condMapEmpty!45965 () Bool)

(declare-datatypes ((V!44361 0))(
  ( (V!44362 (val!14769 Int)) )
))
(declare-datatypes ((ValueCell!14003 0))(
  ( (ValueCellFull!14003 (v!17408 V!44361)) (EmptyCell!14003) )
))
(declare-datatypes ((array!75628 0))(
  ( (array!75629 (arr!36460 (Array (_ BitVec 32) ValueCell!14003)) (size!36997 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75628)

(declare-fun mapDefault!45965 () ValueCell!14003)

