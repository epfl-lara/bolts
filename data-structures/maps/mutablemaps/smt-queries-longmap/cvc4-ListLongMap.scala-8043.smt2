; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99138 () Bool)

(assert start!99138)

(declare-fun b_free!24707 () Bool)

(declare-fun b_next!24707 () Bool)

(assert (=> start!99138 (= b_free!24707 (not b_next!24707))))

(declare-fun tp!86833 () Bool)

(declare-fun b_and!40277 () Bool)

(assert (=> start!99138 (= tp!86833 b_and!40277)))

(declare-fun b!1165614 () Bool)

(declare-fun res!773159 () Bool)

(declare-fun e!662661 () Bool)

(assert (=> b!1165614 (=> (not res!773159) (not e!662661))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75256 0))(
  ( (array!75257 (arr!36275 (Array (_ BitVec 32) (_ BitVec 64))) (size!36812 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75256)

(assert (=> b!1165614 (= res!773159 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36812 _keys!1208))))))

(declare-fun b!1165615 () Bool)

(declare-fun res!773164 () Bool)

(declare-fun e!662659 () Bool)

(assert (=> b!1165615 (=> (not res!773164) (not e!662659))))

(declare-fun lt!524923 () array!75256)

(declare-datatypes ((List!25568 0))(
  ( (Nil!25565) (Cons!25564 (h!26773 (_ BitVec 64)) (t!37274 List!25568)) )
))
(declare-fun arrayNoDuplicates!0 (array!75256 (_ BitVec 32) List!25568) Bool)

(assert (=> b!1165615 (= res!773164 (arrayNoDuplicates!0 lt!524923 #b00000000000000000000000000000000 Nil!25565))))

(declare-fun b!1165616 () Bool)

(declare-fun res!773155 () Bool)

(assert (=> b!1165616 (=> (not res!773155) (not e!662661))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75256 (_ BitVec 32)) Bool)

(assert (=> b!1165616 (= res!773155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165617 () Bool)

(declare-fun res!773161 () Bool)

(assert (=> b!1165617 (=> (not res!773161) (not e!662661))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44109 0))(
  ( (V!44110 (val!14675 Int)) )
))
(declare-datatypes ((ValueCell!13909 0))(
  ( (ValueCellFull!13909 (v!17313 V!44109)) (EmptyCell!13909) )
))
(declare-datatypes ((array!75258 0))(
  ( (array!75259 (arr!36276 (Array (_ BitVec 32) ValueCell!13909)) (size!36813 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75258)

(assert (=> b!1165617 (= res!773161 (and (= (size!36813 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36812 _keys!1208) (size!36813 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!773165 () Bool)

(assert (=> start!99138 (=> (not res!773165) (not e!662661))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99138 (= res!773165 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36812 _keys!1208))))))

(assert (=> start!99138 e!662661))

(declare-fun tp_is_empty!29237 () Bool)

(assert (=> start!99138 tp_is_empty!29237))

(declare-fun array_inv!27618 (array!75256) Bool)

(assert (=> start!99138 (array_inv!27618 _keys!1208)))

(assert (=> start!99138 true))

(assert (=> start!99138 tp!86833))

(declare-fun e!662657 () Bool)

(declare-fun array_inv!27619 (array!75258) Bool)

(assert (=> start!99138 (and (array_inv!27619 _values!996) e!662657)))

(declare-fun b!1165618 () Bool)

(declare-fun e!662658 () Bool)

(assert (=> b!1165618 (= e!662658 tp_is_empty!29237)))

(declare-fun b!1165619 () Bool)

(declare-fun res!773163 () Bool)

(assert (=> b!1165619 (=> (not res!773163) (not e!662661))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1165619 (= res!773163 (= (select (arr!36275 _keys!1208) i!673) k!934))))

(declare-fun b!1165620 () Bool)

(declare-fun e!662656 () Bool)

(assert (=> b!1165620 (= e!662656 tp_is_empty!29237)))

(declare-fun b!1165621 () Bool)

(declare-fun e!662660 () Bool)

(assert (=> b!1165621 (= e!662660 true)))

(declare-fun zeroValue!944 () V!44109)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44109)

(declare-datatypes ((tuple2!18792 0))(
  ( (tuple2!18793 (_1!9406 (_ BitVec 64)) (_2!9406 V!44109)) )
))
(declare-datatypes ((List!25569 0))(
  ( (Nil!25566) (Cons!25565 (h!26774 tuple2!18792) (t!37275 List!25569)) )
))
(declare-datatypes ((ListLongMap!16773 0))(
  ( (ListLongMap!16774 (toList!8402 List!25569)) )
))
(declare-fun lt!524922 () ListLongMap!16773)

(declare-fun getCurrentListMapNoExtraKeys!4835 (array!75256 array!75258 (_ BitVec 32) (_ BitVec 32) V!44109 V!44109 (_ BitVec 32) Int) ListLongMap!16773)

(declare-fun dynLambda!2832 (Int (_ BitVec 64)) V!44109)

(assert (=> b!1165621 (= lt!524922 (getCurrentListMapNoExtraKeys!4835 lt!524923 (array!75259 (store (arr!36276 _values!996) i!673 (ValueCellFull!13909 (dynLambda!2832 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36813 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524925 () ListLongMap!16773)

(assert (=> b!1165621 (= lt!524925 (getCurrentListMapNoExtraKeys!4835 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165622 () Bool)

(assert (=> b!1165622 (= e!662661 e!662659)))

(declare-fun res!773158 () Bool)

(assert (=> b!1165622 (=> (not res!773158) (not e!662659))))

(assert (=> b!1165622 (= res!773158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524923 mask!1564))))

(assert (=> b!1165622 (= lt!524923 (array!75257 (store (arr!36275 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36812 _keys!1208)))))

(declare-fun b!1165623 () Bool)

(declare-fun res!773157 () Bool)

(assert (=> b!1165623 (=> (not res!773157) (not e!662661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165623 (= res!773157 (validMask!0 mask!1564))))

(declare-fun b!1165624 () Bool)

(declare-fun res!773160 () Bool)

(assert (=> b!1165624 (=> (not res!773160) (not e!662661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165624 (= res!773160 (validKeyInArray!0 k!934))))

(declare-fun b!1165625 () Bool)

(declare-fun mapRes!45680 () Bool)

(assert (=> b!1165625 (= e!662657 (and e!662658 mapRes!45680))))

(declare-fun condMapEmpty!45680 () Bool)

(declare-fun mapDefault!45680 () ValueCell!13909)

