; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98852 () Bool)

(assert start!98852)

(declare-fun b_free!24421 () Bool)

(declare-fun b_next!24421 () Bool)

(assert (=> start!98852 (= b_free!24421 (not b_next!24421))))

(declare-fun tp!85974 () Bool)

(declare-fun b_and!39705 () Bool)

(assert (=> start!98852 (= tp!85974 b_and!39705)))

(declare-datatypes ((array!74698 0))(
  ( (array!74699 (arr!35996 (Array (_ BitVec 32) (_ BitVec 64))) (size!36533 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74698)

(declare-fun e!656525 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1154314 () Bool)

(declare-fun arrayContainsKey!0 (array!74698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154314 (= e!656525 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!45251 () Bool)

(declare-fun mapRes!45251 () Bool)

(assert (=> mapIsEmpty!45251 mapRes!45251))

(declare-fun res!767189 () Bool)

(declare-fun e!656523 () Bool)

(assert (=> start!98852 (=> (not res!767189) (not e!656523))))

(assert (=> start!98852 (= res!767189 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36533 _keys!1208))))))

(assert (=> start!98852 e!656523))

(declare-fun tp_is_empty!28951 () Bool)

(assert (=> start!98852 tp_is_empty!28951))

(declare-fun array_inv!27430 (array!74698) Bool)

(assert (=> start!98852 (array_inv!27430 _keys!1208)))

(assert (=> start!98852 true))

(assert (=> start!98852 tp!85974))

(declare-datatypes ((V!43729 0))(
  ( (V!43730 (val!14532 Int)) )
))
(declare-datatypes ((ValueCell!13766 0))(
  ( (ValueCellFull!13766 (v!17170 V!43729)) (EmptyCell!13766) )
))
(declare-datatypes ((array!74700 0))(
  ( (array!74701 (arr!35997 (Array (_ BitVec 32) ValueCell!13766)) (size!36534 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74700)

(declare-fun e!656534 () Bool)

(declare-fun array_inv!27431 (array!74700) Bool)

(assert (=> start!98852 (and (array_inv!27431 _values!996) e!656534)))

(declare-fun zeroValue!944 () V!43729)

(declare-fun bm!54590 () Bool)

(declare-fun c!114599 () Bool)

(declare-datatypes ((tuple2!18544 0))(
  ( (tuple2!18545 (_1!9282 (_ BitVec 64)) (_2!9282 V!43729)) )
))
(declare-datatypes ((List!25328 0))(
  ( (Nil!25325) (Cons!25324 (h!26533 tuple2!18544) (t!36748 List!25328)) )
))
(declare-datatypes ((ListLongMap!16525 0))(
  ( (ListLongMap!16526 (toList!8278 List!25328)) )
))
(declare-fun lt!517584 () ListLongMap!16525)

(declare-datatypes ((Unit!37901 0))(
  ( (Unit!37902) )
))
(declare-fun call!54593 () Unit!37901)

(declare-fun c!114597 () Bool)

(declare-fun minValue!944 () V!43729)

(declare-fun lt!517574 () ListLongMap!16525)

(declare-fun addStillContains!908 (ListLongMap!16525 (_ BitVec 64) V!43729 (_ BitVec 64)) Unit!37901)

(assert (=> bm!54590 (= call!54593 (addStillContains!908 (ite c!114599 lt!517584 lt!517574) (ite c!114599 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114597 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114599 minValue!944 (ite c!114597 zeroValue!944 minValue!944)) k!934))))

(declare-fun call!54598 () ListLongMap!16525)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!54591 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4718 (array!74698 array!74700 (_ BitVec 32) (_ BitVec 32) V!43729 V!43729 (_ BitVec 32) Int) ListLongMap!16525)

(assert (=> bm!54591 (= call!54598 (getCurrentListMapNoExtraKeys!4718 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!517587 () Bool)

(declare-fun b!1154315 () Bool)

(assert (=> b!1154315 (= e!656525 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517587) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154316 () Bool)

(declare-fun res!767194 () Bool)

(assert (=> b!1154316 (=> (not res!767194) (not e!656523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154316 (= res!767194 (validKeyInArray!0 k!934))))

(declare-fun b!1154317 () Bool)

(declare-fun call!54599 () ListLongMap!16525)

(declare-fun contains!6767 (ListLongMap!16525 (_ BitVec 64)) Bool)

(assert (=> b!1154317 (contains!6767 call!54599 k!934)))

(declare-fun lt!517591 () Unit!37901)

(assert (=> b!1154317 (= lt!517591 call!54593)))

(declare-fun call!54594 () Bool)

(assert (=> b!1154317 call!54594))

(declare-fun +!3611 (ListLongMap!16525 tuple2!18544) ListLongMap!16525)

(assert (=> b!1154317 (= lt!517584 (+!3611 lt!517574 (tuple2!18545 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517577 () Unit!37901)

(assert (=> b!1154317 (= lt!517577 (addStillContains!908 lt!517574 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!656538 () Unit!37901)

(assert (=> b!1154317 (= e!656538 lt!517591)))

(declare-fun b!1154318 () Bool)

(declare-fun res!767196 () Bool)

(assert (=> b!1154318 (=> (not res!767196) (not e!656523))))

(assert (=> b!1154318 (= res!767196 (and (= (size!36534 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36533 _keys!1208) (size!36534 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1154319 () Bool)

(declare-fun e!656524 () Unit!37901)

(declare-fun Unit!37903 () Unit!37901)

(assert (=> b!1154319 (= e!656524 Unit!37903)))

(assert (=> b!1154319 (= lt!517587 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1154319 (= c!114599 (and (not lt!517587) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517583 () Unit!37901)

(assert (=> b!1154319 (= lt!517583 e!656538)))

(declare-fun lt!517580 () Unit!37901)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!488 (array!74698 array!74700 (_ BitVec 32) (_ BitVec 32) V!43729 V!43729 (_ BitVec 64) (_ BitVec 32) Int) Unit!37901)

(assert (=> b!1154319 (= lt!517580 (lemmaListMapContainsThenArrayContainsFrom!488 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114600 () Bool)

(assert (=> b!1154319 (= c!114600 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767195 () Bool)

(assert (=> b!1154319 (= res!767195 e!656525)))

(declare-fun e!656535 () Bool)

(assert (=> b!1154319 (=> (not res!767195) (not e!656535))))

(assert (=> b!1154319 e!656535))

(declare-fun lt!517573 () Unit!37901)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74698 (_ BitVec 32) (_ BitVec 32)) Unit!37901)

(assert (=> b!1154319 (= lt!517573 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25329 0))(
  ( (Nil!25326) (Cons!25325 (h!26534 (_ BitVec 64)) (t!36749 List!25329)) )
))
(declare-fun arrayNoDuplicates!0 (array!74698 (_ BitVec 32) List!25329) Bool)

(assert (=> b!1154319 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25326)))

(declare-fun lt!517585 () Unit!37901)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74698 (_ BitVec 64) (_ BitVec 32) List!25329) Unit!37901)

(assert (=> b!1154319 (= lt!517585 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25326))))

(assert (=> b!1154319 false))

(declare-fun b!1154320 () Bool)

(assert (=> b!1154320 (= c!114597 (and (not lt!517587) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656536 () Unit!37901)

(assert (=> b!1154320 (= e!656538 e!656536)))

(declare-fun b!1154321 () Bool)

(declare-fun e!656533 () Bool)

(assert (=> b!1154321 (= e!656534 (and e!656533 mapRes!45251))))

(declare-fun condMapEmpty!45251 () Bool)

(declare-fun mapDefault!45251 () ValueCell!13766)

