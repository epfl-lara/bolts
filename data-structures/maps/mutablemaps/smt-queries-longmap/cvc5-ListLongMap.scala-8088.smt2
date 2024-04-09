; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99430 () Bool)

(assert start!99430)

(declare-fun b_free!24973 () Bool)

(declare-fun b_next!24973 () Bool)

(assert (=> start!99430 (= b_free!24973 (not b_next!24973))))

(declare-fun tp!87633 () Bool)

(declare-fun b_and!40827 () Bool)

(assert (=> start!99430 (= tp!87633 b_and!40827)))

(declare-fun b!1173043 () Bool)

(declare-fun e!666796 () Bool)

(declare-fun e!666795 () Bool)

(assert (=> b!1173043 (= e!666796 e!666795)))

(declare-fun res!778997 () Bool)

(assert (=> b!1173043 (=> res!778997 e!666795)))

(declare-datatypes ((array!75782 0))(
  ( (array!75783 (arr!36537 (Array (_ BitVec 32) (_ BitVec 64))) (size!37074 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75782)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173043 (= res!778997 (not (validKeyInArray!0 (select (arr!36537 _keys!1208) from!1455))))))

(declare-datatypes ((V!44465 0))(
  ( (V!44466 (val!14808 Int)) )
))
(declare-datatypes ((tuple2!19022 0))(
  ( (tuple2!19023 (_1!9521 (_ BitVec 64)) (_2!9521 V!44465)) )
))
(declare-datatypes ((List!25795 0))(
  ( (Nil!25792) (Cons!25791 (h!27000 tuple2!19022) (t!37767 List!25795)) )
))
(declare-datatypes ((ListLongMap!17003 0))(
  ( (ListLongMap!17004 (toList!8517 List!25795)) )
))
(declare-fun lt!528658 () ListLongMap!17003)

(declare-fun lt!528659 () ListLongMap!17003)

(assert (=> b!1173043 (= lt!528658 lt!528659)))

(declare-fun lt!528656 () ListLongMap!17003)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1530 (ListLongMap!17003 (_ BitVec 64)) ListLongMap!17003)

(assert (=> b!1173043 (= lt!528659 (-!1530 lt!528656 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528647 () array!75782)

(declare-fun minValue!944 () V!44465)

(declare-datatypes ((ValueCell!14042 0))(
  ( (ValueCellFull!14042 (v!17447 V!44465)) (EmptyCell!14042) )
))
(declare-datatypes ((array!75784 0))(
  ( (array!75785 (arr!36538 (Array (_ BitVec 32) ValueCell!14042)) (size!37075 (_ BitVec 32))) )
))
(declare-fun lt!528657 () array!75784)

(declare-fun zeroValue!944 () V!44465)

(declare-fun getCurrentListMapNoExtraKeys!4949 (array!75782 array!75784 (_ BitVec 32) (_ BitVec 32) V!44465 V!44465 (_ BitVec 32) Int) ListLongMap!17003)

(assert (=> b!1173043 (= lt!528658 (getCurrentListMapNoExtraKeys!4949 lt!528647 lt!528657 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75784)

(assert (=> b!1173043 (= lt!528656 (getCurrentListMapNoExtraKeys!4949 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38588 0))(
  ( (Unit!38589) )
))
(declare-fun lt!528650 () Unit!38588)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!754 (array!75782 array!75784 (_ BitVec 32) (_ BitVec 32) V!44465 V!44465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38588)

(assert (=> b!1173043 (= lt!528650 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!754 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173044 () Bool)

(declare-fun e!666805 () Bool)

(declare-fun e!666799 () Bool)

(assert (=> b!1173044 (= e!666805 e!666799)))

(declare-fun res!779007 () Bool)

(assert (=> b!1173044 (=> (not res!779007) (not e!666799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75782 (_ BitVec 32)) Bool)

(assert (=> b!1173044 (= res!779007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528647 mask!1564))))

(assert (=> b!1173044 (= lt!528647 (array!75783 (store (arr!36537 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37074 _keys!1208)))))

(declare-fun b!1173045 () Bool)

(declare-fun e!666797 () Unit!38588)

(declare-fun Unit!38590 () Unit!38588)

(assert (=> b!1173045 (= e!666797 Unit!38590)))

(declare-fun lt!528653 () Unit!38588)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75782 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38588)

(assert (=> b!1173045 (= lt!528653 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173045 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528655 () Unit!38588)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75782 (_ BitVec 32) (_ BitVec 32)) Unit!38588)

(assert (=> b!1173045 (= lt!528655 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25796 0))(
  ( (Nil!25793) (Cons!25792 (h!27001 (_ BitVec 64)) (t!37768 List!25796)) )
))
(declare-fun arrayNoDuplicates!0 (array!75782 (_ BitVec 32) List!25796) Bool)

(assert (=> b!1173045 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25793)))

(declare-fun lt!528651 () Unit!38588)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75782 (_ BitVec 64) (_ BitVec 32) List!25796) Unit!38588)

(assert (=> b!1173045 (= lt!528651 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25793))))

(assert (=> b!1173045 false))

(declare-fun b!1173046 () Bool)

(declare-fun e!666794 () Bool)

(declare-fun tp_is_empty!29503 () Bool)

(assert (=> b!1173046 (= e!666794 tp_is_empty!29503)))

(declare-fun b!1173047 () Bool)

(declare-fun e!666798 () Bool)

(declare-fun e!666802 () Bool)

(assert (=> b!1173047 (= e!666798 e!666802)))

(declare-fun res!778998 () Bool)

(assert (=> b!1173047 (=> res!778998 e!666802)))

(assert (=> b!1173047 (= res!778998 (not (= (select (arr!36537 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46082 () Bool)

(declare-fun mapRes!46082 () Bool)

(assert (=> mapIsEmpty!46082 mapRes!46082))

(declare-fun res!779005 () Bool)

(assert (=> start!99430 (=> (not res!779005) (not e!666805))))

(assert (=> start!99430 (= res!779005 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37074 _keys!1208))))))

(assert (=> start!99430 e!666805))

(assert (=> start!99430 tp_is_empty!29503))

(declare-fun array_inv!27802 (array!75782) Bool)

(assert (=> start!99430 (array_inv!27802 _keys!1208)))

(assert (=> start!99430 true))

(assert (=> start!99430 tp!87633))

(declare-fun e!666801 () Bool)

(declare-fun array_inv!27803 (array!75784) Bool)

(assert (=> start!99430 (and (array_inv!27803 _values!996) e!666801)))

(declare-fun b!1173048 () Bool)

(declare-fun res!779004 () Bool)

(assert (=> b!1173048 (=> (not res!779004) (not e!666805))))

(assert (=> b!1173048 (= res!779004 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46082 () Bool)

(declare-fun tp!87634 () Bool)

(assert (=> mapNonEmpty!46082 (= mapRes!46082 (and tp!87634 e!666794))))

(declare-fun mapRest!46082 () (Array (_ BitVec 32) ValueCell!14042))

(declare-fun mapValue!46082 () ValueCell!14042)

(declare-fun mapKey!46082 () (_ BitVec 32))

(assert (=> mapNonEmpty!46082 (= (arr!36538 _values!996) (store mapRest!46082 mapKey!46082 mapValue!46082))))

(declare-fun b!1173049 () Bool)

(declare-fun res!779010 () Bool)

(assert (=> b!1173049 (=> (not res!779010) (not e!666805))))

(assert (=> b!1173049 (= res!779010 (and (= (size!37075 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37074 _keys!1208) (size!37075 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173050 () Bool)

(declare-fun res!779008 () Bool)

(assert (=> b!1173050 (=> (not res!779008) (not e!666805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173050 (= res!779008 (validMask!0 mask!1564))))

(declare-fun b!1173051 () Bool)

(declare-fun e!666803 () Bool)

(assert (=> b!1173051 (= e!666801 (and e!666803 mapRes!46082))))

(declare-fun condMapEmpty!46082 () Bool)

(declare-fun mapDefault!46082 () ValueCell!14042)

