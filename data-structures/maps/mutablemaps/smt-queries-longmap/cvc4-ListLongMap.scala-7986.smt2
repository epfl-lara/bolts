; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98796 () Bool)

(assert start!98796)

(declare-fun b_free!24365 () Bool)

(declare-fun b_next!24365 () Bool)

(assert (=> start!98796 (= b_free!24365 (not b_next!24365))))

(declare-fun tp!85807 () Bool)

(declare-fun b_and!39593 () Bool)

(assert (=> start!98796 (= tp!85807 b_and!39593)))

(declare-fun b!1151738 () Bool)

(declare-fun res!765927 () Bool)

(declare-fun e!655105 () Bool)

(assert (=> b!1151738 (=> (not res!765927) (not e!655105))))

(declare-datatypes ((array!74592 0))(
  ( (array!74593 (arr!35943 (Array (_ BitVec 32) (_ BitVec 64))) (size!36480 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74592)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1151738 (= res!765927 (= (select (arr!35943 _keys!1208) i!673) k!934))))

(declare-fun b!1151739 () Bool)

(declare-fun res!765928 () Bool)

(assert (=> b!1151739 (=> (not res!765928) (not e!655105))))

(declare-datatypes ((List!25284 0))(
  ( (Nil!25281) (Cons!25280 (h!26489 (_ BitVec 64)) (t!36648 List!25284)) )
))
(declare-fun arrayNoDuplicates!0 (array!74592 (_ BitVec 32) List!25284) Bool)

(assert (=> b!1151739 (= res!765928 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25281))))

(declare-fun b!1151740 () Bool)

(declare-fun e!655107 () Bool)

(declare-fun e!655096 () Bool)

(assert (=> b!1151740 (= e!655107 (not e!655096))))

(declare-fun res!765925 () Bool)

(assert (=> b!1151740 (=> res!765925 e!655096)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1151740 (= res!765925 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151740 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37804 0))(
  ( (Unit!37805) )
))
(declare-fun lt!515727 () Unit!37804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74592 (_ BitVec 64) (_ BitVec 32)) Unit!37804)

(assert (=> b!1151740 (= lt!515727 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1151741 () Bool)

(declare-fun e!655108 () Bool)

(assert (=> b!1151741 (= e!655108 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151742 () Bool)

(declare-datatypes ((V!43653 0))(
  ( (V!43654 (val!14504 Int)) )
))
(declare-datatypes ((tuple2!18494 0))(
  ( (tuple2!18495 (_1!9257 (_ BitVec 64)) (_2!9257 V!43653)) )
))
(declare-datatypes ((List!25285 0))(
  ( (Nil!25282) (Cons!25281 (h!26490 tuple2!18494) (t!36649 List!25285)) )
))
(declare-datatypes ((ListLongMap!16475 0))(
  ( (ListLongMap!16476 (toList!8253 List!25285)) )
))
(declare-fun lt!515745 () ListLongMap!16475)

(declare-fun minValue!944 () V!43653)

(declare-fun contains!6746 (ListLongMap!16475 (_ BitVec 64)) Bool)

(declare-fun +!3588 (ListLongMap!16475 tuple2!18494) ListLongMap!16475)

(assert (=> b!1151742 (contains!6746 (+!3588 lt!515745 (tuple2!18495 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!515741 () Unit!37804)

(declare-fun call!53923 () Unit!37804)

(assert (=> b!1151742 (= lt!515741 call!53923)))

(declare-fun call!53927 () Bool)

(assert (=> b!1151742 call!53927))

(declare-fun call!53921 () ListLongMap!16475)

(assert (=> b!1151742 (= lt!515745 call!53921)))

(declare-fun zeroValue!944 () V!43653)

(declare-fun lt!515735 () ListLongMap!16475)

(declare-fun lt!515736 () Unit!37804)

(declare-fun addStillContains!888 (ListLongMap!16475 (_ BitVec 64) V!43653 (_ BitVec 64)) Unit!37804)

(assert (=> b!1151742 (= lt!515736 (addStillContains!888 lt!515735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!655106 () Unit!37804)

(assert (=> b!1151742 (= e!655106 lt!515741)))

(declare-fun b!1151743 () Bool)

(declare-fun res!765924 () Bool)

(assert (=> b!1151743 (=> (not res!765924) (not e!655105))))

(assert (=> b!1151743 (= res!765924 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36480 _keys!1208))))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!53918 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!53928 () ListLongMap!16475)

(declare-datatypes ((ValueCell!13738 0))(
  ( (ValueCellFull!13738 (v!17142 V!43653)) (EmptyCell!13738) )
))
(declare-datatypes ((array!74594 0))(
  ( (array!74595 (arr!35944 (Array (_ BitVec 32) ValueCell!13738)) (size!36481 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74594)

(declare-fun getCurrentListMapNoExtraKeys!4693 (array!74592 array!74594 (_ BitVec 32) (_ BitVec 32) V!43653 V!43653 (_ BitVec 32) Int) ListLongMap!16475)

(assert (=> bm!53918 (= call!53928 (getCurrentListMapNoExtraKeys!4693 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53919 () Bool)

(declare-fun c!114091 () Bool)

(declare-fun c!114094 () Bool)

(assert (=> bm!53919 (= call!53923 (addStillContains!888 (ite c!114091 lt!515745 lt!515735) (ite c!114091 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114094 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114091 minValue!944 (ite c!114094 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!53920 () Bool)

(declare-fun call!53922 () ListLongMap!16475)

(assert (=> bm!53920 (= call!53922 call!53921)))

(declare-fun b!1151744 () Bool)

(declare-fun e!655104 () Bool)

(assert (=> b!1151744 (= e!655096 e!655104)))

(declare-fun res!765938 () Bool)

(assert (=> b!1151744 (=> res!765938 e!655104)))

(assert (=> b!1151744 (= res!765938 (not (= from!1455 i!673)))))

(declare-fun lt!515742 () array!74594)

(declare-fun lt!515744 () ListLongMap!16475)

(declare-fun lt!515726 () array!74592)

(assert (=> b!1151744 (= lt!515744 (getCurrentListMapNoExtraKeys!4693 lt!515726 lt!515742 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!515731 () V!43653)

(assert (=> b!1151744 (= lt!515742 (array!74595 (store (arr!35944 _values!996) i!673 (ValueCellFull!13738 lt!515731)) (size!36481 _values!996)))))

(declare-fun dynLambda!2719 (Int (_ BitVec 64)) V!43653)

(assert (=> b!1151744 (= lt!515731 (dynLambda!2719 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!515734 () ListLongMap!16475)

(assert (=> b!1151744 (= lt!515734 (getCurrentListMapNoExtraKeys!4693 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1151745 () Bool)

(declare-fun e!655094 () Unit!37804)

(declare-fun lt!515732 () Unit!37804)

(assert (=> b!1151745 (= e!655094 lt!515732)))

(declare-fun call!53926 () Unit!37804)

(assert (=> b!1151745 (= lt!515732 call!53926)))

(declare-fun call!53924 () Bool)

(assert (=> b!1151745 call!53924))

(declare-fun b!1151747 () Bool)

(declare-fun e!655101 () Unit!37804)

(declare-fun Unit!37806 () Unit!37804)

(assert (=> b!1151747 (= e!655101 Unit!37806)))

(declare-fun b!1151748 () Bool)

(declare-fun e!655102 () Bool)

(assert (=> b!1151748 (= e!655102 true)))

(declare-fun e!655109 () Bool)

(assert (=> b!1151748 e!655109))

(declare-fun res!765937 () Bool)

(assert (=> b!1151748 (=> (not res!765937) (not e!655109))))

(declare-fun lt!515733 () ListLongMap!16475)

(assert (=> b!1151748 (= res!765937 (= lt!515733 lt!515735))))

(declare-fun -!1338 (ListLongMap!16475 (_ BitVec 64)) ListLongMap!16475)

(assert (=> b!1151748 (= lt!515733 (-!1338 lt!515734 k!934))))

(declare-fun lt!515725 () V!43653)

(assert (=> b!1151748 (= (-!1338 (+!3588 lt!515735 (tuple2!18495 (select (arr!35943 _keys!1208) from!1455) lt!515725)) (select (arr!35943 _keys!1208) from!1455)) lt!515735)))

(declare-fun lt!515729 () Unit!37804)

(declare-fun addThenRemoveForNewKeyIsSame!185 (ListLongMap!16475 (_ BitVec 64) V!43653) Unit!37804)

(assert (=> b!1151748 (= lt!515729 (addThenRemoveForNewKeyIsSame!185 lt!515735 (select (arr!35943 _keys!1208) from!1455) lt!515725))))

(declare-fun get!18327 (ValueCell!13738 V!43653) V!43653)

(assert (=> b!1151748 (= lt!515725 (get!18327 (select (arr!35944 _values!996) from!1455) lt!515731))))

(declare-fun lt!515730 () Unit!37804)

(assert (=> b!1151748 (= lt!515730 e!655101)))

(declare-fun c!114096 () Bool)

(assert (=> b!1151748 (= c!114096 (contains!6746 lt!515735 k!934))))

(assert (=> b!1151748 (= lt!515735 (getCurrentListMapNoExtraKeys!4693 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151749 () Bool)

(declare-fun e!655098 () Bool)

(declare-fun tp_is_empty!28895 () Bool)

(assert (=> b!1151749 (= e!655098 tp_is_empty!28895)))

(declare-fun b!1151750 () Bool)

(declare-fun e!655110 () Bool)

(assert (=> b!1151750 (= e!655110 tp_is_empty!28895)))

(declare-fun b!1151751 () Bool)

(declare-fun res!765931 () Bool)

(assert (=> b!1151751 (=> (not res!765931) (not e!655105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151751 (= res!765931 (validKeyInArray!0 k!934))))

(declare-fun b!1151752 () Bool)

(assert (=> b!1151752 (= e!655105 e!655107)))

(declare-fun res!765930 () Bool)

(assert (=> b!1151752 (=> (not res!765930) (not e!655107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74592 (_ BitVec 32)) Bool)

(assert (=> b!1151752 (= res!765930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515726 mask!1564))))

(assert (=> b!1151752 (= lt!515726 (array!74593 (store (arr!35943 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36480 _keys!1208)))))

(declare-fun b!1151753 () Bool)

(declare-fun Unit!37807 () Unit!37804)

(assert (=> b!1151753 (= e!655101 Unit!37807)))

(declare-fun lt!515743 () Bool)

(assert (=> b!1151753 (= lt!515743 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1151753 (= c!114091 (and (not lt!515743) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515724 () Unit!37804)

(assert (=> b!1151753 (= lt!515724 e!655106)))

(declare-fun lt!515737 () Unit!37804)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!473 (array!74592 array!74594 (_ BitVec 32) (_ BitVec 32) V!43653 V!43653 (_ BitVec 64) (_ BitVec 32) Int) Unit!37804)

(assert (=> b!1151753 (= lt!515737 (lemmaListMapContainsThenArrayContainsFrom!473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114092 () Bool)

(assert (=> b!1151753 (= c!114092 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765935 () Bool)

(declare-fun e!655097 () Bool)

(assert (=> b!1151753 (= res!765935 e!655097)))

(assert (=> b!1151753 (=> (not res!765935) (not e!655108))))

(assert (=> b!1151753 e!655108))

(declare-fun lt!515740 () Unit!37804)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74592 (_ BitVec 32) (_ BitVec 32)) Unit!37804)

(assert (=> b!1151753 (= lt!515740 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1151753 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25281)))

(declare-fun lt!515739 () Unit!37804)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74592 (_ BitVec 64) (_ BitVec 32) List!25284) Unit!37804)

(assert (=> b!1151753 (= lt!515739 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25281))))

(assert (=> b!1151753 false))

(declare-fun bm!53921 () Bool)

(declare-fun call!53925 () ListLongMap!16475)

(assert (=> bm!53921 (= call!53925 (getCurrentListMapNoExtraKeys!4693 lt!515726 lt!515742 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53922 () Bool)

(assert (=> bm!53922 (= call!53924 call!53927)))

(declare-fun b!1151754 () Bool)

(declare-fun e!655100 () Bool)

(declare-fun mapRes!45167 () Bool)

(assert (=> b!1151754 (= e!655100 (and e!655098 mapRes!45167))))

(declare-fun condMapEmpty!45167 () Bool)

(declare-fun mapDefault!45167 () ValueCell!13738)

