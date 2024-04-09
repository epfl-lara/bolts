; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99098 () Bool)

(assert start!99098)

(declare-fun b_free!24667 () Bool)

(declare-fun b_next!24667 () Bool)

(assert (=> start!99098 (= b_free!24667 (not b_next!24667))))

(declare-fun tp!86713 () Bool)

(declare-fun b_and!40197 () Bool)

(assert (=> start!99098 (= tp!86713 b_and!40197)))

(declare-fun mapIsEmpty!45620 () Bool)

(declare-fun mapRes!45620 () Bool)

(assert (=> mapIsEmpty!45620 mapRes!45620))

(declare-fun b!1164734 () Bool)

(declare-fun e!662241 () Bool)

(declare-fun e!662239 () Bool)

(assert (=> b!1164734 (= e!662241 (not e!662239))))

(declare-fun res!772501 () Bool)

(assert (=> b!1164734 (=> res!772501 e!662239)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164734 (= res!772501 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75178 0))(
  ( (array!75179 (arr!36236 (Array (_ BitVec 32) (_ BitVec 64))) (size!36773 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75178)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164734 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38330 0))(
  ( (Unit!38331) )
))
(declare-fun lt!524685 () Unit!38330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75178 (_ BitVec 64) (_ BitVec 32)) Unit!38330)

(assert (=> b!1164734 (= lt!524685 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1164735 () Bool)

(declare-fun res!772497 () Bool)

(declare-fun e!662235 () Bool)

(assert (=> b!1164735 (=> (not res!772497) (not e!662235))))

(declare-datatypes ((List!25538 0))(
  ( (Nil!25535) (Cons!25534 (h!26743 (_ BitVec 64)) (t!37204 List!25538)) )
))
(declare-fun arrayNoDuplicates!0 (array!75178 (_ BitVec 32) List!25538) Bool)

(assert (=> b!1164735 (= res!772497 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25535))))

(declare-fun b!1164736 () Bool)

(assert (=> b!1164736 (= e!662235 e!662241)))

(declare-fun res!772500 () Bool)

(assert (=> b!1164736 (=> (not res!772500) (not e!662241))))

(declare-fun lt!524683 () array!75178)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75178 (_ BitVec 32)) Bool)

(assert (=> b!1164736 (= res!772500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524683 mask!1564))))

(assert (=> b!1164736 (= lt!524683 (array!75179 (store (arr!36236 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36773 _keys!1208)))))

(declare-fun b!1164737 () Bool)

(declare-fun res!772502 () Bool)

(assert (=> b!1164737 (=> (not res!772502) (not e!662235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164737 (= res!772502 (validKeyInArray!0 k!934))))

(declare-fun b!1164738 () Bool)

(declare-fun res!772498 () Bool)

(assert (=> b!1164738 (=> (not res!772498) (not e!662235))))

(assert (=> b!1164738 (= res!772498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164739 () Bool)

(declare-fun res!772503 () Bool)

(assert (=> b!1164739 (=> (not res!772503) (not e!662235))))

(assert (=> b!1164739 (= res!772503 (= (select (arr!36236 _keys!1208) i!673) k!934))))

(declare-fun b!1164740 () Bool)

(declare-fun res!772499 () Bool)

(assert (=> b!1164740 (=> (not res!772499) (not e!662241))))

(assert (=> b!1164740 (= res!772499 (arrayNoDuplicates!0 lt!524683 #b00000000000000000000000000000000 Nil!25535))))

(declare-fun b!1164741 () Bool)

(declare-fun res!772504 () Bool)

(assert (=> b!1164741 (=> (not res!772504) (not e!662235))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44057 0))(
  ( (V!44058 (val!14655 Int)) )
))
(declare-datatypes ((ValueCell!13889 0))(
  ( (ValueCellFull!13889 (v!17293 V!44057)) (EmptyCell!13889) )
))
(declare-datatypes ((array!75180 0))(
  ( (array!75181 (arr!36237 (Array (_ BitVec 32) ValueCell!13889)) (size!36774 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75180)

(assert (=> b!1164741 (= res!772504 (and (= (size!36774 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36773 _keys!1208) (size!36774 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!772496 () Bool)

(assert (=> start!99098 (=> (not res!772496) (not e!662235))))

(assert (=> start!99098 (= res!772496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36773 _keys!1208))))))

(assert (=> start!99098 e!662235))

(declare-fun tp_is_empty!29197 () Bool)

(assert (=> start!99098 tp_is_empty!29197))

(declare-fun array_inv!27592 (array!75178) Bool)

(assert (=> start!99098 (array_inv!27592 _keys!1208)))

(assert (=> start!99098 true))

(assert (=> start!99098 tp!86713))

(declare-fun e!662238 () Bool)

(declare-fun array_inv!27593 (array!75180) Bool)

(assert (=> start!99098 (and (array_inv!27593 _values!996) e!662238)))

(declare-fun b!1164742 () Bool)

(declare-fun e!662240 () Bool)

(assert (=> b!1164742 (= e!662240 tp_is_empty!29197)))

(declare-fun b!1164743 () Bool)

(declare-fun e!662236 () Bool)

(assert (=> b!1164743 (= e!662236 tp_is_empty!29197)))

(declare-fun b!1164744 () Bool)

(declare-fun res!772505 () Bool)

(assert (=> b!1164744 (=> (not res!772505) (not e!662235))))

(assert (=> b!1164744 (= res!772505 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36773 _keys!1208))))))

(declare-fun mapNonEmpty!45620 () Bool)

(declare-fun tp!86712 () Bool)

(assert (=> mapNonEmpty!45620 (= mapRes!45620 (and tp!86712 e!662236))))

(declare-fun mapValue!45620 () ValueCell!13889)

(declare-fun mapRest!45620 () (Array (_ BitVec 32) ValueCell!13889))

(declare-fun mapKey!45620 () (_ BitVec 32))

(assert (=> mapNonEmpty!45620 (= (arr!36237 _values!996) (store mapRest!45620 mapKey!45620 mapValue!45620))))

(declare-fun b!1164745 () Bool)

(declare-fun res!772495 () Bool)

(assert (=> b!1164745 (=> (not res!772495) (not e!662235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164745 (= res!772495 (validMask!0 mask!1564))))

(declare-fun b!1164746 () Bool)

(assert (=> b!1164746 (= e!662238 (and e!662240 mapRes!45620))))

(declare-fun condMapEmpty!45620 () Bool)

(declare-fun mapDefault!45620 () ValueCell!13889)

