; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99080 () Bool)

(assert start!99080)

(declare-fun b_free!24649 () Bool)

(declare-fun b_next!24649 () Bool)

(assert (=> start!99080 (= b_free!24649 (not b_next!24649))))

(declare-fun tp!86658 () Bool)

(declare-fun b_and!40161 () Bool)

(assert (=> start!99080 (= tp!86658 b_and!40161)))

(declare-fun mapIsEmpty!45593 () Bool)

(declare-fun mapRes!45593 () Bool)

(assert (=> mapIsEmpty!45593 mapRes!45593))

(declare-fun b!1164338 () Bool)

(declare-fun res!772207 () Bool)

(declare-fun e!662049 () Bool)

(assert (=> b!1164338 (=> (not res!772207) (not e!662049))))

(declare-datatypes ((array!75142 0))(
  ( (array!75143 (arr!36218 (Array (_ BitVec 32) (_ BitVec 64))) (size!36755 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75142)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75142 (_ BitVec 32)) Bool)

(assert (=> b!1164338 (= res!772207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164339 () Bool)

(declare-fun res!772200 () Bool)

(assert (=> b!1164339 (=> (not res!772200) (not e!662049))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44033 0))(
  ( (V!44034 (val!14646 Int)) )
))
(declare-datatypes ((ValueCell!13880 0))(
  ( (ValueCellFull!13880 (v!17284 V!44033)) (EmptyCell!13880) )
))
(declare-datatypes ((array!75144 0))(
  ( (array!75145 (arr!36219 (Array (_ BitVec 32) ValueCell!13880)) (size!36756 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75144)

(assert (=> b!1164339 (= res!772200 (and (= (size!36756 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36755 _keys!1208) (size!36756 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!772198 () Bool)

(assert (=> start!99080 (=> (not res!772198) (not e!662049))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99080 (= res!772198 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36755 _keys!1208))))))

(assert (=> start!99080 e!662049))

(declare-fun tp_is_empty!29179 () Bool)

(assert (=> start!99080 tp_is_empty!29179))

(declare-fun array_inv!27578 (array!75142) Bool)

(assert (=> start!99080 (array_inv!27578 _keys!1208)))

(assert (=> start!99080 true))

(assert (=> start!99080 tp!86658))

(declare-fun e!662048 () Bool)

(declare-fun array_inv!27579 (array!75144) Bool)

(assert (=> start!99080 (and (array_inv!27579 _values!996) e!662048)))

(declare-fun b!1164340 () Bool)

(declare-fun res!772199 () Bool)

(assert (=> b!1164340 (=> (not res!772199) (not e!662049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164340 (= res!772199 (validMask!0 mask!1564))))

(declare-fun b!1164341 () Bool)

(declare-fun res!772206 () Bool)

(assert (=> b!1164341 (=> (not res!772206) (not e!662049))))

(declare-datatypes ((List!25527 0))(
  ( (Nil!25524) (Cons!25523 (h!26732 (_ BitVec 64)) (t!37175 List!25527)) )
))
(declare-fun arrayNoDuplicates!0 (array!75142 (_ BitVec 32) List!25527) Bool)

(assert (=> b!1164341 (= res!772206 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25524))))

(declare-fun b!1164342 () Bool)

(declare-fun res!772208 () Bool)

(assert (=> b!1164342 (=> (not res!772208) (not e!662049))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164342 (= res!772208 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36755 _keys!1208))))))

(declare-fun b!1164343 () Bool)

(declare-fun res!772204 () Bool)

(assert (=> b!1164343 (=> (not res!772204) (not e!662049))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164343 (= res!772204 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!45593 () Bool)

(declare-fun tp!86659 () Bool)

(declare-fun e!662047 () Bool)

(assert (=> mapNonEmpty!45593 (= mapRes!45593 (and tp!86659 e!662047))))

(declare-fun mapKey!45593 () (_ BitVec 32))

(declare-fun mapValue!45593 () ValueCell!13880)

(declare-fun mapRest!45593 () (Array (_ BitVec 32) ValueCell!13880))

(assert (=> mapNonEmpty!45593 (= (arr!36219 _values!996) (store mapRest!45593 mapKey!45593 mapValue!45593))))

(declare-fun b!1164344 () Bool)

(declare-fun e!662046 () Bool)

(assert (=> b!1164344 (= e!662049 e!662046)))

(declare-fun res!772201 () Bool)

(assert (=> b!1164344 (=> (not res!772201) (not e!662046))))

(declare-fun lt!524574 () array!75142)

(assert (=> b!1164344 (= res!772201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524574 mask!1564))))

(assert (=> b!1164344 (= lt!524574 (array!75143 (store (arr!36218 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36755 _keys!1208)))))

(declare-fun b!1164345 () Bool)

(declare-fun res!772205 () Bool)

(assert (=> b!1164345 (=> (not res!772205) (not e!662049))))

(assert (=> b!1164345 (= res!772205 (= (select (arr!36218 _keys!1208) i!673) k!934))))

(declare-fun b!1164346 () Bool)

(assert (=> b!1164346 (= e!662047 tp_is_empty!29179)))

(declare-fun b!1164347 () Bool)

(declare-fun e!662052 () Bool)

(assert (=> b!1164347 (= e!662052 true)))

(declare-fun zeroValue!944 () V!44033)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44033)

(declare-datatypes ((tuple2!18752 0))(
  ( (tuple2!18753 (_1!9386 (_ BitVec 64)) (_2!9386 V!44033)) )
))
(declare-datatypes ((List!25528 0))(
  ( (Nil!25525) (Cons!25524 (h!26733 tuple2!18752) (t!37176 List!25528)) )
))
(declare-datatypes ((ListLongMap!16733 0))(
  ( (ListLongMap!16734 (toList!8382 List!25528)) )
))
(declare-fun lt!524577 () ListLongMap!16733)

(declare-fun getCurrentListMapNoExtraKeys!4815 (array!75142 array!75144 (_ BitVec 32) (_ BitVec 32) V!44033 V!44033 (_ BitVec 32) Int) ListLongMap!16733)

(declare-fun dynLambda!2812 (Int (_ BitVec 64)) V!44033)

(assert (=> b!1164347 (= lt!524577 (getCurrentListMapNoExtraKeys!4815 lt!524574 (array!75145 (store (arr!36219 _values!996) i!673 (ValueCellFull!13880 (dynLambda!2812 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36756 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524576 () ListLongMap!16733)

(assert (=> b!1164347 (= lt!524576 (getCurrentListMapNoExtraKeys!4815 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164348 () Bool)

(declare-fun res!772203 () Bool)

(assert (=> b!1164348 (=> (not res!772203) (not e!662046))))

(assert (=> b!1164348 (= res!772203 (arrayNoDuplicates!0 lt!524574 #b00000000000000000000000000000000 Nil!25524))))

(declare-fun b!1164349 () Bool)

(declare-fun e!662050 () Bool)

(assert (=> b!1164349 (= e!662048 (and e!662050 mapRes!45593))))

(declare-fun condMapEmpty!45593 () Bool)

(declare-fun mapDefault!45593 () ValueCell!13880)

