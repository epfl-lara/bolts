; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99074 () Bool)

(assert start!99074)

(declare-fun b_free!24643 () Bool)

(declare-fun b_next!24643 () Bool)

(assert (=> start!99074 (= b_free!24643 (not b_next!24643))))

(declare-fun tp!86641 () Bool)

(declare-fun b_and!40149 () Bool)

(assert (=> start!99074 (= tp!86641 b_and!40149)))

(declare-fun b!1164206 () Bool)

(declare-fun res!772102 () Bool)

(declare-fun e!661983 () Bool)

(assert (=> b!1164206 (=> (not res!772102) (not e!661983))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75130 0))(
  ( (array!75131 (arr!36212 (Array (_ BitVec 32) (_ BitVec 64))) (size!36749 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75130)

(assert (=> b!1164206 (= res!772102 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36749 _keys!1208))))))

(declare-fun b!1164207 () Bool)

(declare-fun res!772100 () Bool)

(assert (=> b!1164207 (=> (not res!772100) (not e!661983))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164207 (= res!772100 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!45584 () Bool)

(declare-fun mapRes!45584 () Bool)

(declare-fun tp!86640 () Bool)

(declare-fun e!661987 () Bool)

(assert (=> mapNonEmpty!45584 (= mapRes!45584 (and tp!86640 e!661987))))

(declare-fun mapKey!45584 () (_ BitVec 32))

(declare-datatypes ((V!44025 0))(
  ( (V!44026 (val!14643 Int)) )
))
(declare-datatypes ((ValueCell!13877 0))(
  ( (ValueCellFull!13877 (v!17281 V!44025)) (EmptyCell!13877) )
))
(declare-fun mapRest!45584 () (Array (_ BitVec 32) ValueCell!13877))

(declare-datatypes ((array!75132 0))(
  ( (array!75133 (arr!36213 (Array (_ BitVec 32) ValueCell!13877)) (size!36750 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75132)

(declare-fun mapValue!45584 () ValueCell!13877)

(assert (=> mapNonEmpty!45584 (= (arr!36213 _values!996) (store mapRest!45584 mapKey!45584 mapValue!45584))))

(declare-fun b!1164208 () Bool)

(declare-fun e!661986 () Bool)

(assert (=> b!1164208 (= e!661986 true)))

(declare-fun zeroValue!944 () V!44025)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!44025)

(declare-datatypes ((tuple2!18748 0))(
  ( (tuple2!18749 (_1!9384 (_ BitVec 64)) (_2!9384 V!44025)) )
))
(declare-datatypes ((List!25523 0))(
  ( (Nil!25520) (Cons!25519 (h!26728 tuple2!18748) (t!37165 List!25523)) )
))
(declare-datatypes ((ListLongMap!16729 0))(
  ( (ListLongMap!16730 (toList!8380 List!25523)) )
))
(declare-fun lt!524539 () ListLongMap!16729)

(declare-fun lt!524538 () array!75130)

(declare-fun getCurrentListMapNoExtraKeys!4813 (array!75130 array!75132 (_ BitVec 32) (_ BitVec 32) V!44025 V!44025 (_ BitVec 32) Int) ListLongMap!16729)

(declare-fun dynLambda!2810 (Int (_ BitVec 64)) V!44025)

(assert (=> b!1164208 (= lt!524539 (getCurrentListMapNoExtraKeys!4813 lt!524538 (array!75133 (store (arr!36213 _values!996) i!673 (ValueCellFull!13877 (dynLambda!2810 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36750 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524541 () ListLongMap!16729)

(assert (=> b!1164208 (= lt!524541 (getCurrentListMapNoExtraKeys!4813 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164209 () Bool)

(declare-fun e!661989 () Bool)

(assert (=> b!1164209 (= e!661989 (not e!661986))))

(declare-fun res!772104 () Bool)

(assert (=> b!1164209 (=> res!772104 e!661986)))

(assert (=> b!1164209 (= res!772104 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164209 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38318 0))(
  ( (Unit!38319) )
))
(declare-fun lt!524540 () Unit!38318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75130 (_ BitVec 64) (_ BitVec 32)) Unit!38318)

(assert (=> b!1164209 (= lt!524540 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1164210 () Bool)

(declare-fun tp_is_empty!29173 () Bool)

(assert (=> b!1164210 (= e!661987 tp_is_empty!29173)))

(declare-fun res!772099 () Bool)

(assert (=> start!99074 (=> (not res!772099) (not e!661983))))

(assert (=> start!99074 (= res!772099 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36749 _keys!1208))))))

(assert (=> start!99074 e!661983))

(assert (=> start!99074 tp_is_empty!29173))

(declare-fun array_inv!27574 (array!75130) Bool)

(assert (=> start!99074 (array_inv!27574 _keys!1208)))

(assert (=> start!99074 true))

(assert (=> start!99074 tp!86641))

(declare-fun e!661985 () Bool)

(declare-fun array_inv!27575 (array!75132) Bool)

(assert (=> start!99074 (and (array_inv!27575 _values!996) e!661985)))

(declare-fun b!1164211 () Bool)

(declare-fun e!661988 () Bool)

(assert (=> b!1164211 (= e!661985 (and e!661988 mapRes!45584))))

(declare-fun condMapEmpty!45584 () Bool)

(declare-fun mapDefault!45584 () ValueCell!13877)

