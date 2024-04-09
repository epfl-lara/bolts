; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99374 () Bool)

(assert start!99374)

(declare-fun b_free!24917 () Bool)

(declare-fun b_next!24917 () Bool)

(assert (=> start!99374 (= b_free!24917 (not b_next!24917))))

(declare-fun tp!87465 () Bool)

(declare-fun b_and!40715 () Bool)

(assert (=> start!99374 (= tp!87465 b_and!40715)))

(declare-fun res!777499 () Bool)

(declare-fun e!665731 () Bool)

(assert (=> start!99374 (=> (not res!777499) (not e!665731))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75670 0))(
  ( (array!75671 (arr!36481 (Array (_ BitVec 32) (_ BitVec 64))) (size!37018 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75670)

(assert (=> start!99374 (= res!777499 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37018 _keys!1208))))))

(assert (=> start!99374 e!665731))

(declare-fun tp_is_empty!29447 () Bool)

(assert (=> start!99374 tp_is_empty!29447))

(declare-fun array_inv!27762 (array!75670) Bool)

(assert (=> start!99374 (array_inv!27762 _keys!1208)))

(assert (=> start!99374 true))

(assert (=> start!99374 tp!87465))

(declare-datatypes ((V!44389 0))(
  ( (V!44390 (val!14780 Int)) )
))
(declare-datatypes ((ValueCell!14014 0))(
  ( (ValueCellFull!14014 (v!17419 V!44389)) (EmptyCell!14014) )
))
(declare-datatypes ((array!75672 0))(
  ( (array!75673 (arr!36482 (Array (_ BitVec 32) ValueCell!14014)) (size!37019 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75672)

(declare-fun e!665734 () Bool)

(declare-fun array_inv!27763 (array!75672) Bool)

(assert (=> start!99374 (and (array_inv!27763 _values!996) e!665734)))

(declare-fun b!1171179 () Bool)

(declare-fun e!665722 () Bool)

(declare-fun e!665725 () Bool)

(assert (=> b!1171179 (= e!665722 e!665725)))

(declare-fun res!777485 () Bool)

(assert (=> b!1171179 (=> res!777485 e!665725)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1171179 (= res!777485 (not (= (select (arr!36481 _keys!1208) from!1455) k!934)))))

(declare-fun b!1171180 () Bool)

(declare-fun e!665729 () Bool)

(declare-fun e!665732 () Bool)

(assert (=> b!1171180 (= e!665729 (not e!665732))))

(declare-fun res!777483 () Bool)

(assert (=> b!1171180 (=> res!777483 e!665732)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171180 (= res!777483 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171180 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38528 0))(
  ( (Unit!38529) )
))
(declare-fun lt!527546 () Unit!38528)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75670 (_ BitVec 64) (_ BitVec 32)) Unit!38528)

(assert (=> b!1171180 (= lt!527546 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171181 () Bool)

(declare-fun res!777495 () Bool)

(declare-fun e!665727 () Bool)

(assert (=> b!1171181 (=> res!777495 e!665727)))

(declare-datatypes ((List!25743 0))(
  ( (Nil!25740) (Cons!25739 (h!26948 (_ BitVec 64)) (t!37659 List!25743)) )
))
(declare-fun contains!6862 (List!25743 (_ BitVec 64)) Bool)

(assert (=> b!1171181 (= res!777495 (contains!6862 Nil!25740 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171182 () Bool)

(declare-fun res!777482 () Bool)

(assert (=> b!1171182 (=> (not res!777482) (not e!665731))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1171182 (= res!777482 (and (= (size!37019 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37018 _keys!1208) (size!37019 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45998 () Bool)

(declare-fun mapRes!45998 () Bool)

(declare-fun tp!87466 () Bool)

(declare-fun e!665728 () Bool)

(assert (=> mapNonEmpty!45998 (= mapRes!45998 (and tp!87466 e!665728))))

(declare-fun mapRest!45998 () (Array (_ BitVec 32) ValueCell!14014))

(declare-fun mapValue!45998 () ValueCell!14014)

(declare-fun mapKey!45998 () (_ BitVec 32))

(assert (=> mapNonEmpty!45998 (= (arr!36482 _values!996) (store mapRest!45998 mapKey!45998 mapValue!45998))))

(declare-fun b!1171183 () Bool)

(declare-fun res!777487 () Bool)

(assert (=> b!1171183 (=> (not res!777487) (not e!665731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75670 (_ BitVec 32)) Bool)

(assert (=> b!1171183 (= res!777487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171184 () Bool)

(declare-fun res!777494 () Bool)

(assert (=> b!1171184 (=> (not res!777494) (not e!665731))))

(assert (=> b!1171184 (= res!777494 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37018 _keys!1208))))))

(declare-fun b!1171185 () Bool)

(assert (=> b!1171185 (= e!665731 e!665729)))

(declare-fun res!777490 () Bool)

(assert (=> b!1171185 (=> (not res!777490) (not e!665729))))

(declare-fun lt!527539 () array!75670)

(assert (=> b!1171185 (= res!777490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527539 mask!1564))))

(assert (=> b!1171185 (= lt!527539 (array!75671 (store (arr!36481 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37018 _keys!1208)))))

(declare-fun b!1171186 () Bool)

(declare-fun res!777497 () Bool)

(assert (=> b!1171186 (=> (not res!777497) (not e!665731))))

(declare-fun arrayNoDuplicates!0 (array!75670 (_ BitVec 32) List!25743) Bool)

(assert (=> b!1171186 (= res!777497 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25740))))

(declare-fun b!1171187 () Bool)

(assert (=> b!1171187 (= e!665728 tp_is_empty!29447)))

(declare-fun b!1171188 () Bool)

(declare-fun res!777489 () Bool)

(assert (=> b!1171188 (=> (not res!777489) (not e!665731))))

(assert (=> b!1171188 (= res!777489 (= (select (arr!36481 _keys!1208) i!673) k!934))))

(declare-fun b!1171189 () Bool)

(declare-fun e!665733 () Bool)

(assert (=> b!1171189 (= e!665734 (and e!665733 mapRes!45998))))

(declare-fun condMapEmpty!45998 () Bool)

(declare-fun mapDefault!45998 () ValueCell!14014)

