; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101196 () Bool)

(assert start!101196)

(declare-fun b_free!26083 () Bool)

(declare-fun b_next!26083 () Bool)

(assert (=> start!101196 (= b_free!26083 (not b_next!26083))))

(declare-fun tp!91271 () Bool)

(declare-fun b_and!43293 () Bool)

(assert (=> start!101196 (= tp!91271 b_and!43293)))

(declare-datatypes ((V!46177 0))(
  ( (V!46178 (val!15450 Int)) )
))
(declare-fun zeroValue!944 () V!46177)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1213768 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78334 0))(
  ( (array!78335 (arr!37798 (Array (_ BitVec 32) (_ BitVec 64))) (size!38335 (_ BitVec 32))) )
))
(declare-fun lt!551920 () array!78334)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14684 0))(
  ( (ValueCellFull!14684 (v!18104 V!46177)) (EmptyCell!14684) )
))
(declare-datatypes ((array!78336 0))(
  ( (array!78337 (arr!37799 (Array (_ BitVec 32) ValueCell!14684)) (size!38336 (_ BitVec 32))) )
))
(declare-fun lt!551904 () array!78336)

(declare-datatypes ((tuple2!19994 0))(
  ( (tuple2!19995 (_1!10007 (_ BitVec 64)) (_2!10007 V!46177)) )
))
(declare-datatypes ((List!26813 0))(
  ( (Nil!26810) (Cons!26809 (h!28018 tuple2!19994) (t!39883 List!26813)) )
))
(declare-datatypes ((ListLongMap!17975 0))(
  ( (ListLongMap!17976 (toList!9003 List!26813)) )
))
(declare-fun lt!551900 () ListLongMap!17975)

(declare-fun minValue!944 () V!46177)

(declare-fun e!689345 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5408 (array!78334 array!78336 (_ BitVec 32) (_ BitVec 32) V!46177 V!46177 (_ BitVec 32) Int) ListLongMap!17975)

(assert (=> b!1213768 (= e!689345 (= lt!551900 (getCurrentListMapNoExtraKeys!5408 lt!551920 lt!551904 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213769 () Bool)

(declare-fun e!689350 () Bool)

(declare-fun e!689355 () Bool)

(assert (=> b!1213769 (= e!689350 e!689355)))

(declare-fun res!805985 () Bool)

(assert (=> b!1213769 (=> (not res!805985) (not e!689355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78334 (_ BitVec 32)) Bool)

(assert (=> b!1213769 (= res!805985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551920 mask!1564))))

(declare-fun _keys!1208 () array!78334)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213769 (= lt!551920 (array!78335 (store (arr!37798 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38335 _keys!1208)))))

(declare-fun b!1213770 () Bool)

(declare-fun res!805979 () Bool)

(assert (=> b!1213770 (=> (not res!805979) (not e!689350))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213770 (= res!805979 (validKeyInArray!0 k!934))))

(declare-fun bm!60474 () Bool)

(declare-datatypes ((Unit!40180 0))(
  ( (Unit!40181) )
))
(declare-fun call!60479 () Unit!40180)

(declare-fun call!60484 () Unit!40180)

(assert (=> bm!60474 (= call!60479 call!60484)))

(declare-fun b!1213771 () Bool)

(declare-fun res!805987 () Bool)

(assert (=> b!1213771 (=> (not res!805987) (not e!689350))))

(declare-datatypes ((List!26814 0))(
  ( (Nil!26811) (Cons!26810 (h!28019 (_ BitVec 64)) (t!39884 List!26814)) )
))
(declare-fun arrayNoDuplicates!0 (array!78334 (_ BitVec 32) List!26814) Bool)

(assert (=> b!1213771 (= res!805987 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26811))))

(declare-fun b!1213772 () Bool)

(declare-fun e!689351 () Bool)

(assert (=> b!1213772 (= e!689351 true)))

(assert (=> b!1213772 e!689345))

(declare-fun res!805988 () Bool)

(assert (=> b!1213772 (=> (not res!805988) (not e!689345))))

(declare-fun lt!551910 () ListLongMap!17975)

(assert (=> b!1213772 (= res!805988 (= lt!551900 lt!551910))))

(declare-fun lt!551905 () ListLongMap!17975)

(declare-fun -!1897 (ListLongMap!17975 (_ BitVec 64)) ListLongMap!17975)

(assert (=> b!1213772 (= lt!551900 (-!1897 lt!551905 k!934))))

(declare-fun lt!551919 () V!46177)

(declare-fun +!4028 (ListLongMap!17975 tuple2!19994) ListLongMap!17975)

(assert (=> b!1213772 (= (-!1897 (+!4028 lt!551910 (tuple2!19995 (select (arr!37798 _keys!1208) from!1455) lt!551919)) (select (arr!37798 _keys!1208) from!1455)) lt!551910)))

(declare-fun lt!551911 () Unit!40180)

(declare-fun addThenRemoveForNewKeyIsSame!295 (ListLongMap!17975 (_ BitVec 64) V!46177) Unit!40180)

(assert (=> b!1213772 (= lt!551911 (addThenRemoveForNewKeyIsSame!295 lt!551910 (select (arr!37798 _keys!1208) from!1455) lt!551919))))

(declare-fun lt!551917 () V!46177)

(declare-fun _values!996 () array!78336)

(declare-fun get!19315 (ValueCell!14684 V!46177) V!46177)

(assert (=> b!1213772 (= lt!551919 (get!19315 (select (arr!37799 _values!996) from!1455) lt!551917))))

(declare-fun lt!551906 () Unit!40180)

(declare-fun e!689343 () Unit!40180)

(assert (=> b!1213772 (= lt!551906 e!689343)))

(declare-fun c!119898 () Bool)

(declare-fun contains!7017 (ListLongMap!17975 (_ BitVec 64)) Bool)

(assert (=> b!1213772 (= c!119898 (contains!7017 lt!551910 k!934))))

(assert (=> b!1213772 (= lt!551910 (getCurrentListMapNoExtraKeys!5408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60475 () Bool)

(declare-fun call!60481 () Bool)

(declare-fun call!60483 () Bool)

(assert (=> bm!60475 (= call!60481 call!60483)))

(declare-fun b!1213773 () Bool)

(declare-fun Unit!40182 () Unit!40180)

(assert (=> b!1213773 (= e!689343 Unit!40182)))

(declare-fun lt!551902 () Bool)

(assert (=> b!1213773 (= lt!551902 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119899 () Bool)

(assert (=> b!1213773 (= c!119899 (and (not lt!551902) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551901 () Unit!40180)

(declare-fun e!689342 () Unit!40180)

(assert (=> b!1213773 (= lt!551901 e!689342)))

(declare-fun lt!551921 () Unit!40180)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!620 (array!78334 array!78336 (_ BitVec 32) (_ BitVec 32) V!46177 V!46177 (_ BitVec 64) (_ BitVec 32) Int) Unit!40180)

(assert (=> b!1213773 (= lt!551921 (lemmaListMapContainsThenArrayContainsFrom!620 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119901 () Bool)

(assert (=> b!1213773 (= c!119901 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805976 () Bool)

(declare-fun e!689349 () Bool)

(assert (=> b!1213773 (= res!805976 e!689349)))

(declare-fun e!689347 () Bool)

(assert (=> b!1213773 (=> (not res!805976) (not e!689347))))

(assert (=> b!1213773 e!689347))

(declare-fun lt!551915 () Unit!40180)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78334 (_ BitVec 32) (_ BitVec 32)) Unit!40180)

(assert (=> b!1213773 (= lt!551915 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1213773 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26811)))

(declare-fun lt!551912 () Unit!40180)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78334 (_ BitVec 64) (_ BitVec 32) List!26814) Unit!40180)

(assert (=> b!1213773 (= lt!551912 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26811))))

(assert (=> b!1213773 false))

(declare-fun b!1213774 () Bool)

(declare-fun e!689346 () Bool)

(declare-fun e!689340 () Bool)

(declare-fun mapRes!48055 () Bool)

(assert (=> b!1213774 (= e!689346 (and e!689340 mapRes!48055))))

(declare-fun condMapEmpty!48055 () Bool)

(declare-fun mapDefault!48055 () ValueCell!14684)

