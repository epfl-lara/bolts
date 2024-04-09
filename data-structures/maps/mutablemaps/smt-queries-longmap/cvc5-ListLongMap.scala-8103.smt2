; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99520 () Bool)

(assert start!99520)

(declare-fun b_free!25063 () Bool)

(declare-fun b_next!25063 () Bool)

(assert (=> start!99520 (= b_free!25063 (not b_next!25063))))

(declare-fun tp!87903 () Bool)

(declare-fun b_and!41007 () Bool)

(assert (=> start!99520 (= tp!87903 b_and!41007)))

(declare-fun b!1175833 () Bool)

(declare-fun res!781028 () Bool)

(declare-fun e!668416 () Bool)

(assert (=> b!1175833 (=> (not res!781028) (not e!668416))))

(declare-datatypes ((array!75962 0))(
  ( (array!75963 (arr!36627 (Array (_ BitVec 32) (_ BitVec 64))) (size!37164 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75962)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1175833 (= res!781028 (= (select (arr!36627 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46217 () Bool)

(declare-fun mapRes!46217 () Bool)

(declare-fun tp!87904 () Bool)

(declare-fun e!668422 () Bool)

(assert (=> mapNonEmpty!46217 (= mapRes!46217 (and tp!87904 e!668422))))

(declare-datatypes ((V!44585 0))(
  ( (V!44586 (val!14853 Int)) )
))
(declare-datatypes ((ValueCell!14087 0))(
  ( (ValueCellFull!14087 (v!17492 V!44585)) (EmptyCell!14087) )
))
(declare-fun mapValue!46217 () ValueCell!14087)

(declare-fun mapKey!46217 () (_ BitVec 32))

(declare-datatypes ((array!75964 0))(
  ( (array!75965 (arr!36628 (Array (_ BitVec 32) ValueCell!14087)) (size!37165 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75964)

(declare-fun mapRest!46217 () (Array (_ BitVec 32) ValueCell!14087))

(assert (=> mapNonEmpty!46217 (= (arr!36628 _values!996) (store mapRest!46217 mapKey!46217 mapValue!46217))))

(declare-fun b!1175834 () Bool)

(declare-datatypes ((Unit!38734 0))(
  ( (Unit!38735) )
))
(declare-fun e!668414 () Unit!38734)

(declare-fun Unit!38736 () Unit!38734)

(assert (=> b!1175834 (= e!668414 Unit!38736)))

(declare-fun b!1175835 () Bool)

(declare-fun e!668420 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1175835 (= e!668420 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37164 _keys!1208))))))

(assert (=> b!1175835 (not (= (select (arr!36627 _keys!1208) from!1455) k!934))))

(declare-fun lt!530542 () Unit!38734)

(assert (=> b!1175835 (= lt!530542 e!668414)))

(declare-fun c!116666 () Bool)

(assert (=> b!1175835 (= c!116666 (= (select (arr!36627 _keys!1208) from!1455) k!934))))

(declare-fun e!668424 () Bool)

(assert (=> b!1175835 e!668424))

(declare-fun res!781024 () Bool)

(assert (=> b!1175835 (=> (not res!781024) (not e!668424))))

(declare-fun lt!530549 () V!44585)

(declare-datatypes ((tuple2!19104 0))(
  ( (tuple2!19105 (_1!9562 (_ BitVec 64)) (_2!9562 V!44585)) )
))
(declare-datatypes ((List!25872 0))(
  ( (Nil!25869) (Cons!25868 (h!27077 tuple2!19104) (t!37934 List!25872)) )
))
(declare-datatypes ((ListLongMap!17085 0))(
  ( (ListLongMap!17086 (toList!8558 List!25872)) )
))
(declare-fun lt!530541 () ListLongMap!17085)

(declare-fun lt!530540 () ListLongMap!17085)

(declare-fun +!3782 (ListLongMap!17085 tuple2!19104) ListLongMap!17085)

(declare-fun get!18737 (ValueCell!14087 V!44585) V!44585)

(assert (=> b!1175835 (= res!781024 (= lt!530541 (+!3782 lt!530540 (tuple2!19105 (select (arr!36627 _keys!1208) from!1455) (get!18737 (select (arr!36628 _values!996) from!1455) lt!530549)))))))

(declare-fun b!1175836 () Bool)

(declare-fun e!668423 () Bool)

(declare-fun tp_is_empty!29593 () Bool)

(assert (=> b!1175836 (= e!668423 tp_is_empty!29593)))

(declare-fun res!781029 () Bool)

(assert (=> start!99520 (=> (not res!781029) (not e!668416))))

(assert (=> start!99520 (= res!781029 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37164 _keys!1208))))))

(assert (=> start!99520 e!668416))

(assert (=> start!99520 tp_is_empty!29593))

(declare-fun array_inv!27860 (array!75962) Bool)

(assert (=> start!99520 (array_inv!27860 _keys!1208)))

(assert (=> start!99520 true))

(assert (=> start!99520 tp!87903))

(declare-fun e!668418 () Bool)

(declare-fun array_inv!27861 (array!75964) Bool)

(assert (=> start!99520 (and (array_inv!27861 _values!996) e!668418)))

(declare-fun b!1175837 () Bool)

(declare-fun res!781025 () Bool)

(assert (=> b!1175837 (=> (not res!781025) (not e!668416))))

(declare-datatypes ((List!25873 0))(
  ( (Nil!25870) (Cons!25869 (h!27078 (_ BitVec 64)) (t!37935 List!25873)) )
))
(declare-fun arrayNoDuplicates!0 (array!75962 (_ BitVec 32) List!25873) Bool)

(assert (=> b!1175837 (= res!781025 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25870))))

(declare-fun b!1175838 () Bool)

(declare-fun Unit!38737 () Unit!38734)

(assert (=> b!1175838 (= e!668414 Unit!38737)))

(declare-fun lt!530547 () Unit!38734)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75962 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38734)

(assert (=> b!1175838 (= lt!530547 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175838 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530543 () Unit!38734)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75962 (_ BitVec 32) (_ BitVec 32)) Unit!38734)

(assert (=> b!1175838 (= lt!530543 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175838 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25870)))

(declare-fun lt!530546 () Unit!38734)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75962 (_ BitVec 64) (_ BitVec 32) List!25873) Unit!38734)

(assert (=> b!1175838 (= lt!530546 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25870))))

(assert (=> b!1175838 false))

(declare-fun b!1175839 () Bool)

(declare-fun res!781027 () Bool)

(declare-fun e!668417 () Bool)

(assert (=> b!1175839 (=> (not res!781027) (not e!668417))))

(declare-fun lt!530550 () array!75962)

(assert (=> b!1175839 (= res!781027 (arrayNoDuplicates!0 lt!530550 #b00000000000000000000000000000000 Nil!25870))))

(declare-fun b!1175840 () Bool)

(declare-fun e!668419 () Bool)

(assert (=> b!1175840 (= e!668419 e!668420)))

(declare-fun res!781032 () Bool)

(assert (=> b!1175840 (=> res!781032 e!668420)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175840 (= res!781032 (not (validKeyInArray!0 (select (arr!36627 _keys!1208) from!1455))))))

(declare-fun lt!530538 () ListLongMap!17085)

(assert (=> b!1175840 (= lt!530538 lt!530540)))

(declare-fun lt!530544 () ListLongMap!17085)

(declare-fun -!1564 (ListLongMap!17085 (_ BitVec 64)) ListLongMap!17085)

(assert (=> b!1175840 (= lt!530540 (-!1564 lt!530544 k!934))))

(declare-fun zeroValue!944 () V!44585)

(declare-fun lt!530548 () array!75964)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44585)

(declare-fun getCurrentListMapNoExtraKeys!4989 (array!75962 array!75964 (_ BitVec 32) (_ BitVec 32) V!44585 V!44585 (_ BitVec 32) Int) ListLongMap!17085)

(assert (=> b!1175840 (= lt!530538 (getCurrentListMapNoExtraKeys!4989 lt!530550 lt!530548 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175840 (= lt!530544 (getCurrentListMapNoExtraKeys!4989 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530545 () Unit!38734)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!788 (array!75962 array!75964 (_ BitVec 32) (_ BitVec 32) V!44585 V!44585 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38734)

(assert (=> b!1175840 (= lt!530545 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!788 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175841 () Bool)

(assert (=> b!1175841 (= e!668422 tp_is_empty!29593)))

(declare-fun b!1175842 () Bool)

(declare-fun res!781030 () Bool)

(assert (=> b!1175842 (=> (not res!781030) (not e!668416))))

(assert (=> b!1175842 (= res!781030 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!46217 () Bool)

(assert (=> mapIsEmpty!46217 mapRes!46217))

(declare-fun b!1175843 () Bool)

(declare-fun res!781035 () Bool)

(assert (=> b!1175843 (=> (not res!781035) (not e!668416))))

(assert (=> b!1175843 (= res!781035 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37164 _keys!1208))))))

(declare-fun b!1175844 () Bool)

(declare-fun res!781033 () Bool)

(assert (=> b!1175844 (=> (not res!781033) (not e!668416))))

(assert (=> b!1175844 (= res!781033 (and (= (size!37165 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37164 _keys!1208) (size!37165 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175845 () Bool)

(declare-fun res!781026 () Bool)

(assert (=> b!1175845 (=> (not res!781026) (not e!668416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75962 (_ BitVec 32)) Bool)

(assert (=> b!1175845 (= res!781026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175846 () Bool)

(declare-fun e!668415 () Bool)

(assert (=> b!1175846 (= e!668415 e!668419)))

(declare-fun res!781034 () Bool)

(assert (=> b!1175846 (=> res!781034 e!668419)))

(assert (=> b!1175846 (= res!781034 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1175846 (= lt!530541 (getCurrentListMapNoExtraKeys!4989 lt!530550 lt!530548 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175846 (= lt!530548 (array!75965 (store (arr!36628 _values!996) i!673 (ValueCellFull!14087 lt!530549)) (size!37165 _values!996)))))

(declare-fun dynLambda!2967 (Int (_ BitVec 64)) V!44585)

(assert (=> b!1175846 (= lt!530549 (dynLambda!2967 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530537 () ListLongMap!17085)

(assert (=> b!1175846 (= lt!530537 (getCurrentListMapNoExtraKeys!4989 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175847 () Bool)

(assert (=> b!1175847 (= e!668418 (and e!668423 mapRes!46217))))

(declare-fun condMapEmpty!46217 () Bool)

(declare-fun mapDefault!46217 () ValueCell!14087)

