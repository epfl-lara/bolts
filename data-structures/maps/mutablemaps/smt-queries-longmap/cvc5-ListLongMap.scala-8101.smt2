; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99508 () Bool)

(assert start!99508)

(declare-fun b_free!25051 () Bool)

(declare-fun b_next!25051 () Bool)

(assert (=> start!99508 (= b_free!25051 (not b_next!25051))))

(declare-fun tp!87867 () Bool)

(declare-fun b_and!40983 () Bool)

(assert (=> start!99508 (= tp!87867 b_and!40983)))

(declare-fun b!1175461 () Bool)

(declare-fun e!668198 () Bool)

(declare-fun e!668208 () Bool)

(assert (=> b!1175461 (= e!668198 (not e!668208))))

(declare-fun res!780765 () Bool)

(assert (=> b!1175461 (=> res!780765 e!668208)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1175461 (= res!780765 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75938 0))(
  ( (array!75939 (arr!36615 (Array (_ BitVec 32) (_ BitVec 64))) (size!37152 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75938)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175461 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38715 0))(
  ( (Unit!38716) )
))
(declare-fun lt!530294 () Unit!38715)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75938 (_ BitVec 64) (_ BitVec 32)) Unit!38715)

(assert (=> b!1175461 (= lt!530294 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!668209 () Bool)

(declare-fun b!1175462 () Bool)

(assert (=> b!1175462 (= e!668209 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175463 () Bool)

(declare-fun res!780763 () Bool)

(declare-fun e!668202 () Bool)

(assert (=> b!1175463 (=> (not res!780763) (not e!668202))))

(assert (=> b!1175463 (= res!780763 (= (select (arr!36615 _keys!1208) i!673) k!934))))

(declare-fun b!1175464 () Bool)

(declare-fun e!668203 () Bool)

(declare-fun e!668200 () Bool)

(assert (=> b!1175464 (= e!668203 e!668200)))

(declare-fun res!780766 () Bool)

(assert (=> b!1175464 (=> res!780766 e!668200)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175464 (= res!780766 (not (validKeyInArray!0 (select (arr!36615 _keys!1208) from!1455))))))

(declare-datatypes ((V!44569 0))(
  ( (V!44570 (val!14847 Int)) )
))
(declare-datatypes ((tuple2!19092 0))(
  ( (tuple2!19093 (_1!9556 (_ BitVec 64)) (_2!9556 V!44569)) )
))
(declare-datatypes ((List!25860 0))(
  ( (Nil!25857) (Cons!25856 (h!27065 tuple2!19092) (t!37910 List!25860)) )
))
(declare-datatypes ((ListLongMap!17073 0))(
  ( (ListLongMap!17074 (toList!8552 List!25860)) )
))
(declare-fun lt!530286 () ListLongMap!17073)

(declare-fun lt!530296 () ListLongMap!17073)

(assert (=> b!1175464 (= lt!530286 lt!530296)))

(declare-fun lt!530289 () ListLongMap!17073)

(declare-fun -!1559 (ListLongMap!17073 (_ BitVec 64)) ListLongMap!17073)

(assert (=> b!1175464 (= lt!530296 (-!1559 lt!530289 k!934))))

(declare-fun zeroValue!944 () V!44569)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530290 () array!75938)

(declare-fun minValue!944 () V!44569)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14081 0))(
  ( (ValueCellFull!14081 (v!17486 V!44569)) (EmptyCell!14081) )
))
(declare-datatypes ((array!75940 0))(
  ( (array!75941 (arr!36616 (Array (_ BitVec 32) ValueCell!14081)) (size!37153 (_ BitVec 32))) )
))
(declare-fun lt!530285 () array!75940)

(declare-fun getCurrentListMapNoExtraKeys!4983 (array!75938 array!75940 (_ BitVec 32) (_ BitVec 32) V!44569 V!44569 (_ BitVec 32) Int) ListLongMap!17073)

(assert (=> b!1175464 (= lt!530286 (getCurrentListMapNoExtraKeys!4983 lt!530290 lt!530285 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75940)

(assert (=> b!1175464 (= lt!530289 (getCurrentListMapNoExtraKeys!4983 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530297 () Unit!38715)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!783 (array!75938 array!75940 (_ BitVec 32) (_ BitVec 32) V!44569 V!44569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38715)

(assert (=> b!1175464 (= lt!530297 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!783 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175465 () Bool)

(declare-fun e!668201 () Bool)

(declare-fun tp_is_empty!29581 () Bool)

(assert (=> b!1175465 (= e!668201 tp_is_empty!29581)))

(declare-fun b!1175466 () Bool)

(declare-fun res!780762 () Bool)

(assert (=> b!1175466 (=> (not res!780762) (not e!668202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75938 (_ BitVec 32)) Bool)

(assert (=> b!1175466 (= res!780762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175467 () Bool)

(assert (=> b!1175467 (= e!668202 e!668198)))

(declare-fun res!780752 () Bool)

(assert (=> b!1175467 (=> (not res!780752) (not e!668198))))

(assert (=> b!1175467 (= res!780752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530290 mask!1564))))

(assert (=> b!1175467 (= lt!530290 (array!75939 (store (arr!36615 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37152 _keys!1208)))))

(declare-fun b!1175468 () Bool)

(declare-fun e!668205 () Unit!38715)

(declare-fun Unit!38717 () Unit!38715)

(assert (=> b!1175468 (= e!668205 Unit!38717)))

(declare-fun b!1175469 () Bool)

(declare-fun res!780754 () Bool)

(assert (=> b!1175469 (=> (not res!780754) (not e!668202))))

(assert (=> b!1175469 (= res!780754 (validKeyInArray!0 k!934))))

(declare-fun b!1175470 () Bool)

(declare-fun Unit!38718 () Unit!38715)

(assert (=> b!1175470 (= e!668205 Unit!38718)))

(declare-fun lt!530293 () Unit!38715)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75938 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38715)

(assert (=> b!1175470 (= lt!530293 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175470 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530291 () Unit!38715)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75938 (_ BitVec 32) (_ BitVec 32)) Unit!38715)

(assert (=> b!1175470 (= lt!530291 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25861 0))(
  ( (Nil!25858) (Cons!25857 (h!27066 (_ BitVec 64)) (t!37911 List!25861)) )
))
(declare-fun arrayNoDuplicates!0 (array!75938 (_ BitVec 32) List!25861) Bool)

(assert (=> b!1175470 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25858)))

(declare-fun lt!530292 () Unit!38715)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75938 (_ BitVec 64) (_ BitVec 32) List!25861) Unit!38715)

(assert (=> b!1175470 (= lt!530292 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25858))))

(assert (=> b!1175470 false))

(declare-fun b!1175471 () Bool)

(declare-fun res!780760 () Bool)

(assert (=> b!1175471 (=> (not res!780760) (not e!668202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175471 (= res!780760 (validMask!0 mask!1564))))

(declare-fun b!1175472 () Bool)

(assert (=> b!1175472 (= e!668200 true)))

(assert (=> b!1175472 (not (= (select (arr!36615 _keys!1208) from!1455) k!934))))

(declare-fun lt!530288 () Unit!38715)

(assert (=> b!1175472 (= lt!530288 e!668205)))

(declare-fun c!116648 () Bool)

(assert (=> b!1175472 (= c!116648 (= (select (arr!36615 _keys!1208) from!1455) k!934))))

(declare-fun e!668206 () Bool)

(assert (=> b!1175472 e!668206))

(declare-fun res!780755 () Bool)

(assert (=> b!1175472 (=> (not res!780755) (not e!668206))))

(declare-fun lt!530295 () V!44569)

(declare-fun lt!530298 () ListLongMap!17073)

(declare-fun +!3778 (ListLongMap!17073 tuple2!19092) ListLongMap!17073)

(declare-fun get!18729 (ValueCell!14081 V!44569) V!44569)

(assert (=> b!1175472 (= res!780755 (= lt!530298 (+!3778 lt!530296 (tuple2!19093 (select (arr!36615 _keys!1208) from!1455) (get!18729 (select (arr!36616 _values!996) from!1455) lt!530295)))))))

(declare-fun b!1175474 () Bool)

(declare-fun res!780759 () Bool)

(assert (=> b!1175474 (=> (not res!780759) (not e!668202))))

(assert (=> b!1175474 (= res!780759 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37152 _keys!1208))))))

(declare-fun mapNonEmpty!46199 () Bool)

(declare-fun mapRes!46199 () Bool)

(declare-fun tp!87868 () Bool)

(assert (=> mapNonEmpty!46199 (= mapRes!46199 (and tp!87868 e!668201))))

(declare-fun mapValue!46199 () ValueCell!14081)

(declare-fun mapRest!46199 () (Array (_ BitVec 32) ValueCell!14081))

(declare-fun mapKey!46199 () (_ BitVec 32))

(assert (=> mapNonEmpty!46199 (= (arr!36616 _values!996) (store mapRest!46199 mapKey!46199 mapValue!46199))))

(declare-fun b!1175475 () Bool)

(declare-fun res!780764 () Bool)

(assert (=> b!1175475 (=> (not res!780764) (not e!668202))))

(assert (=> b!1175475 (= res!780764 (and (= (size!37153 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37152 _keys!1208) (size!37153 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175476 () Bool)

(declare-fun e!668199 () Bool)

(declare-fun e!668204 () Bool)

(assert (=> b!1175476 (= e!668199 (and e!668204 mapRes!46199))))

(declare-fun condMapEmpty!46199 () Bool)

(declare-fun mapDefault!46199 () ValueCell!14081)

