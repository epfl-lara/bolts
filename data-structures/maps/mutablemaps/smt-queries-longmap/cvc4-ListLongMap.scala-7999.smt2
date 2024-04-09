; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98874 () Bool)

(assert start!98874)

(declare-fun b_free!24443 () Bool)

(declare-fun b_next!24443 () Bool)

(assert (=> start!98874 (= b_free!24443 (not b_next!24443))))

(declare-fun tp!86040 () Bool)

(declare-fun b_and!39749 () Bool)

(assert (=> start!98874 (= tp!86040 b_and!39749)))

(declare-fun bm!54854 () Bool)

(declare-datatypes ((Unit!37944 0))(
  ( (Unit!37945) )
))
(declare-fun call!54862 () Unit!37944)

(declare-fun call!54863 () Unit!37944)

(assert (=> bm!54854 (= call!54862 call!54863)))

(declare-fun b!1155326 () Bool)

(declare-fun c!114794 () Bool)

(declare-fun lt!518312 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1155326 (= c!114794 (and (not lt!518312) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!657097 () Unit!37944)

(declare-fun e!657092 () Unit!37944)

(assert (=> b!1155326 (= e!657097 e!657092)))

(declare-datatypes ((array!74742 0))(
  ( (array!74743 (arr!36018 (Array (_ BitVec 32) (_ BitVec 64))) (size!36555 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74742)

(declare-fun b!1155327 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!657090 () Bool)

(declare-fun arrayContainsKey!0 (array!74742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155327 (= e!657090 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155328 () Bool)

(declare-fun e!657094 () Bool)

(declare-datatypes ((V!43757 0))(
  ( (V!43758 (val!14543 Int)) )
))
(declare-datatypes ((tuple2!18564 0))(
  ( (tuple2!18565 (_1!9292 (_ BitVec 64)) (_2!9292 V!43757)) )
))
(declare-datatypes ((List!25348 0))(
  ( (Nil!25345) (Cons!25344 (h!26553 tuple2!18564) (t!36790 List!25348)) )
))
(declare-datatypes ((ListLongMap!16545 0))(
  ( (ListLongMap!16546 (toList!8288 List!25348)) )
))
(declare-fun call!54859 () ListLongMap!16545)

(declare-fun call!54860 () ListLongMap!16545)

(assert (=> b!1155328 (= e!657094 (= call!54859 call!54860))))

(declare-fun b!1155329 () Bool)

(declare-fun lt!518304 () Unit!37944)

(assert (=> b!1155329 (= e!657092 lt!518304)))

(assert (=> b!1155329 (= lt!518304 call!54862)))

(declare-fun call!54858 () Bool)

(assert (=> b!1155329 call!54858))

(declare-fun b!1155330 () Bool)

(declare-fun e!657099 () Bool)

(declare-fun e!657095 () Bool)

(assert (=> b!1155330 (= e!657099 e!657095)))

(declare-fun res!767682 () Bool)

(assert (=> b!1155330 (=> res!767682 e!657095)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155330 (= res!767682 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43757)

(declare-fun lt!518310 () array!74742)

(declare-fun lt!518309 () ListLongMap!16545)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43757)

(declare-datatypes ((ValueCell!13777 0))(
  ( (ValueCellFull!13777 (v!17181 V!43757)) (EmptyCell!13777) )
))
(declare-datatypes ((array!74744 0))(
  ( (array!74745 (arr!36019 (Array (_ BitVec 32) ValueCell!13777)) (size!36556 (_ BitVec 32))) )
))
(declare-fun lt!518318 () array!74744)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4727 (array!74742 array!74744 (_ BitVec 32) (_ BitVec 32) V!43757 V!43757 (_ BitVec 32) Int) ListLongMap!16545)

(assert (=> b!1155330 (= lt!518309 (getCurrentListMapNoExtraKeys!4727 lt!518310 lt!518318 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!518298 () V!43757)

(declare-fun _values!996 () array!74744)

(assert (=> b!1155330 (= lt!518318 (array!74745 (store (arr!36019 _values!996) i!673 (ValueCellFull!13777 lt!518298)) (size!36556 _values!996)))))

(declare-fun dynLambda!2742 (Int (_ BitVec 64)) V!43757)

(assert (=> b!1155330 (= lt!518298 (dynLambda!2742 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!518314 () ListLongMap!16545)

(assert (=> b!1155330 (= lt!518314 (getCurrentListMapNoExtraKeys!4727 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1155331 () Bool)

(declare-fun e!657083 () Unit!37944)

(declare-fun Unit!37946 () Unit!37944)

(assert (=> b!1155331 (= e!657083 Unit!37946)))

(declare-fun b!1155332 () Bool)

(declare-fun e!657088 () Bool)

(assert (=> b!1155332 (= e!657088 (not e!657099))))

(declare-fun res!767691 () Bool)

(assert (=> b!1155332 (=> res!767691 e!657099)))

(assert (=> b!1155332 (= res!767691 (bvsgt from!1455 i!673))))

(assert (=> b!1155332 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!518308 () Unit!37944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74742 (_ BitVec 64) (_ BitVec 32)) Unit!37944)

(assert (=> b!1155332 (= lt!518308 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!54855 () Bool)

(declare-fun c!114797 () Bool)

(declare-fun lt!518319 () ListLongMap!16545)

(declare-fun lt!518307 () ListLongMap!16545)

(declare-fun addStillContains!916 (ListLongMap!16545 (_ BitVec 64) V!43757 (_ BitVec 64)) Unit!37944)

(assert (=> bm!54855 (= call!54863 (addStillContains!916 (ite c!114797 lt!518307 lt!518319) (ite c!114797 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114794 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114797 minValue!944 (ite c!114794 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1155333 () Bool)

(declare-fun res!767689 () Bool)

(assert (=> b!1155333 (=> (not res!767689) (not e!657088))))

(declare-datatypes ((List!25349 0))(
  ( (Nil!25346) (Cons!25345 (h!26554 (_ BitVec 64)) (t!36791 List!25349)) )
))
(declare-fun arrayNoDuplicates!0 (array!74742 (_ BitVec 32) List!25349) Bool)

(assert (=> b!1155333 (= res!767689 (arrayNoDuplicates!0 lt!518310 #b00000000000000000000000000000000 Nil!25346))))

(declare-fun bm!54856 () Bool)

(declare-fun call!54861 () ListLongMap!16545)

(declare-fun +!3619 (ListLongMap!16545 tuple2!18564) ListLongMap!16545)

(assert (=> bm!54856 (= call!54861 (+!3619 (ite c!114797 lt!518307 lt!518319) (ite c!114797 (tuple2!18565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114794 (tuple2!18565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun call!54857 () ListLongMap!16545)

(declare-fun bm!54857 () Bool)

(declare-fun call!54864 () Bool)

(declare-fun contains!6776 (ListLongMap!16545 (_ BitVec 64)) Bool)

(assert (=> bm!54857 (= call!54864 (contains!6776 (ite c!114797 lt!518307 call!54857) k!934))))

(declare-fun b!1155334 () Bool)

(declare-fun res!767683 () Bool)

(declare-fun e!657093 () Bool)

(assert (=> b!1155334 (=> (not res!767683) (not e!657093))))

(assert (=> b!1155334 (= res!767683 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36555 _keys!1208))))))

(declare-fun b!1155335 () Bool)

(declare-fun -!1366 (ListLongMap!16545 (_ BitVec 64)) ListLongMap!16545)

(assert (=> b!1155335 (= e!657094 (= call!54859 (-!1366 call!54860 k!934)))))

(declare-fun bm!54858 () Bool)

(assert (=> bm!54858 (= call!54857 call!54861)))

(declare-fun b!1155336 () Bool)

(declare-fun res!767686 () Bool)

(assert (=> b!1155336 (=> (not res!767686) (not e!657093))))

(assert (=> b!1155336 (= res!767686 (= (select (arr!36018 _keys!1208) i!673) k!934))))

(declare-fun b!1155337 () Bool)

(declare-fun res!767680 () Bool)

(assert (=> b!1155337 (=> (not res!767680) (not e!657093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74742 (_ BitVec 32)) Bool)

(assert (=> b!1155337 (= res!767680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!767692 () Bool)

(assert (=> start!98874 (=> (not res!767692) (not e!657093))))

(assert (=> start!98874 (= res!767692 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36555 _keys!1208))))))

(assert (=> start!98874 e!657093))

(declare-fun tp_is_empty!28973 () Bool)

(assert (=> start!98874 tp_is_empty!28973))

(declare-fun array_inv!27444 (array!74742) Bool)

(assert (=> start!98874 (array_inv!27444 _keys!1208)))

(assert (=> start!98874 true))

(assert (=> start!98874 tp!86040))

(declare-fun e!657089 () Bool)

(declare-fun array_inv!27445 (array!74744) Bool)

(assert (=> start!98874 (and (array_inv!27445 _values!996) e!657089)))

(declare-fun b!1155338 () Bool)

(assert (=> b!1155338 (= e!657090 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518312) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!54859 () Bool)

(assert (=> bm!54859 (= call!54860 (getCurrentListMapNoExtraKeys!4727 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155339 () Bool)

(assert (=> b!1155339 (= e!657093 e!657088)))

(declare-fun res!767687 () Bool)

(assert (=> b!1155339 (=> (not res!767687) (not e!657088))))

(assert (=> b!1155339 (= res!767687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518310 mask!1564))))

(assert (=> b!1155339 (= lt!518310 (array!74743 (store (arr!36018 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36555 _keys!1208)))))

(declare-fun b!1155340 () Bool)

(declare-fun e!657091 () Bool)

(assert (=> b!1155340 (= e!657091 true)))

(declare-fun e!657098 () Bool)

(assert (=> b!1155340 e!657098))

(declare-fun res!767688 () Bool)

(assert (=> b!1155340 (=> (not res!767688) (not e!657098))))

(declare-fun lt!518300 () ListLongMap!16545)

(assert (=> b!1155340 (= res!767688 (= lt!518300 lt!518319))))

(assert (=> b!1155340 (= lt!518300 (-!1366 lt!518314 k!934))))

(declare-fun lt!518302 () V!43757)

(assert (=> b!1155340 (= (-!1366 (+!3619 lt!518319 (tuple2!18565 (select (arr!36018 _keys!1208) from!1455) lt!518302)) (select (arr!36018 _keys!1208) from!1455)) lt!518319)))

(declare-fun lt!518316 () Unit!37944)

(declare-fun addThenRemoveForNewKeyIsSame!209 (ListLongMap!16545 (_ BitVec 64) V!43757) Unit!37944)

(assert (=> b!1155340 (= lt!518316 (addThenRemoveForNewKeyIsSame!209 lt!518319 (select (arr!36018 _keys!1208) from!1455) lt!518302))))

(declare-fun get!18377 (ValueCell!13777 V!43757) V!43757)

(assert (=> b!1155340 (= lt!518302 (get!18377 (select (arr!36019 _values!996) from!1455) lt!518298))))

(declare-fun lt!518306 () Unit!37944)

(assert (=> b!1155340 (= lt!518306 e!657083)))

(declare-fun c!114798 () Bool)

(assert (=> b!1155340 (= c!114798 (contains!6776 lt!518319 k!934))))

(assert (=> b!1155340 (= lt!518319 (getCurrentListMapNoExtraKeys!4727 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155341 () Bool)

(assert (=> b!1155341 call!54858))

(declare-fun lt!518317 () Unit!37944)

(assert (=> b!1155341 (= lt!518317 call!54862)))

(declare-fun e!657087 () Unit!37944)

(assert (=> b!1155341 (= e!657087 lt!518317)))

(declare-fun b!1155342 () Bool)

(declare-fun e!657096 () Bool)

(declare-fun mapRes!45284 () Bool)

(assert (=> b!1155342 (= e!657089 (and e!657096 mapRes!45284))))

(declare-fun condMapEmpty!45284 () Bool)

(declare-fun mapDefault!45284 () ValueCell!13777)

