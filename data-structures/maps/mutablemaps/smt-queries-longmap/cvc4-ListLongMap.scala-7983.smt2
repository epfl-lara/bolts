; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98778 () Bool)

(assert start!98778)

(declare-fun b_free!24347 () Bool)

(declare-fun b_next!24347 () Bool)

(assert (=> start!98778 (= b_free!24347 (not b_next!24347))))

(declare-fun tp!85753 () Bool)

(declare-fun b_and!39557 () Bool)

(assert (=> start!98778 (= tp!85753 b_and!39557)))

(declare-datatypes ((V!43629 0))(
  ( (V!43630 (val!14495 Int)) )
))
(declare-fun zeroValue!944 () V!43629)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18480 0))(
  ( (tuple2!18481 (_1!9250 (_ BitVec 64)) (_2!9250 V!43629)) )
))
(declare-datatypes ((List!25271 0))(
  ( (Nil!25268) (Cons!25267 (h!26476 tuple2!18480) (t!36617 List!25271)) )
))
(declare-datatypes ((ListLongMap!16461 0))(
  ( (ListLongMap!16462 (toList!8246 List!25271)) )
))
(declare-fun lt!515151 () ListLongMap!16461)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!654642 () Bool)

(declare-fun minValue!944 () V!43629)

(declare-fun b!1150910 () Bool)

(declare-datatypes ((array!74558 0))(
  ( (array!74559 (arr!35926 (Array (_ BitVec 32) (_ BitVec 64))) (size!36463 (_ BitVec 32))) )
))
(declare-fun lt!515148 () array!74558)

(declare-datatypes ((ValueCell!13729 0))(
  ( (ValueCellFull!13729 (v!17133 V!43629)) (EmptyCell!13729) )
))
(declare-datatypes ((array!74560 0))(
  ( (array!74561 (arr!35927 (Array (_ BitVec 32) ValueCell!13729)) (size!36464 (_ BitVec 32))) )
))
(declare-fun lt!515141 () array!74560)

(declare-fun getCurrentListMapNoExtraKeys!4687 (array!74558 array!74560 (_ BitVec 32) (_ BitVec 32) V!43629 V!43629 (_ BitVec 32) Int) ListLongMap!16461)

(assert (=> b!1150910 (= e!654642 (= lt!515151 (getCurrentListMapNoExtraKeys!4687 lt!515148 lt!515141 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun _keys!1208 () array!74558)

(declare-fun b!1150911 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!654649 () Bool)

(declare-fun arrayContainsKey!0 (array!74558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150911 (= e!654649 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150912 () Bool)

(declare-fun e!654647 () Bool)

(declare-fun e!654637 () Bool)

(assert (=> b!1150912 (= e!654647 e!654637)))

(declare-fun res!765530 () Bool)

(assert (=> b!1150912 (=> res!765530 e!654637)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150912 (= res!765530 (not (= from!1455 i!673)))))

(declare-fun lt!515142 () ListLongMap!16461)

(assert (=> b!1150912 (= lt!515142 (getCurrentListMapNoExtraKeys!4687 lt!515148 lt!515141 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74560)

(declare-fun lt!515140 () V!43629)

(assert (=> b!1150912 (= lt!515141 (array!74561 (store (arr!35927 _values!996) i!673 (ValueCellFull!13729 lt!515140)) (size!36464 _values!996)))))

(declare-fun dynLambda!2715 (Int (_ BitVec 64)) V!43629)

(assert (=> b!1150912 (= lt!515140 (dynLambda!2715 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!515147 () ListLongMap!16461)

(assert (=> b!1150912 (= lt!515147 (getCurrentListMapNoExtraKeys!4687 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53702 () Bool)

(declare-fun call!53709 () Bool)

(declare-fun call!53708 () Bool)

(assert (=> bm!53702 (= call!53709 call!53708)))

(declare-fun b!1150913 () Bool)

(declare-fun e!654646 () Bool)

(assert (=> b!1150913 (= e!654646 true)))

(assert (=> b!1150913 e!654642))

(declare-fun res!765519 () Bool)

(assert (=> b!1150913 (=> (not res!765519) (not e!654642))))

(declare-fun lt!515137 () ListLongMap!16461)

(assert (=> b!1150913 (= res!765519 (= lt!515151 lt!515137))))

(declare-fun -!1332 (ListLongMap!16461 (_ BitVec 64)) ListLongMap!16461)

(assert (=> b!1150913 (= lt!515151 (-!1332 lt!515147 k!934))))

(declare-fun lt!515146 () V!43629)

(declare-fun +!3583 (ListLongMap!16461 tuple2!18480) ListLongMap!16461)

(assert (=> b!1150913 (= (-!1332 (+!3583 lt!515137 (tuple2!18481 (select (arr!35926 _keys!1208) from!1455) lt!515146)) (select (arr!35926 _keys!1208) from!1455)) lt!515137)))

(declare-datatypes ((Unit!37776 0))(
  ( (Unit!37777) )
))
(declare-fun lt!515149 () Unit!37776)

(declare-fun addThenRemoveForNewKeyIsSame!181 (ListLongMap!16461 (_ BitVec 64) V!43629) Unit!37776)

(assert (=> b!1150913 (= lt!515149 (addThenRemoveForNewKeyIsSame!181 lt!515137 (select (arr!35926 _keys!1208) from!1455) lt!515146))))

(declare-fun get!18317 (ValueCell!13729 V!43629) V!43629)

(assert (=> b!1150913 (= lt!515146 (get!18317 (select (arr!35927 _values!996) from!1455) lt!515140))))

(declare-fun lt!515133 () Unit!37776)

(declare-fun e!654640 () Unit!37776)

(assert (=> b!1150913 (= lt!515133 e!654640)))

(declare-fun c!113934 () Bool)

(declare-fun contains!6741 (ListLongMap!16461 (_ BitVec 64)) Bool)

(assert (=> b!1150913 (= c!113934 (contains!6741 lt!515137 k!934))))

(assert (=> b!1150913 (= lt!515137 (getCurrentListMapNoExtraKeys!4687 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150914 () Bool)

(declare-fun e!654650 () Bool)

(declare-fun e!654635 () Bool)

(assert (=> b!1150914 (= e!654650 e!654635)))

(declare-fun res!765529 () Bool)

(assert (=> b!1150914 (=> (not res!765529) (not e!654635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74558 (_ BitVec 32)) Bool)

(assert (=> b!1150914 (= res!765529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515148 mask!1564))))

(assert (=> b!1150914 (= lt!515148 (array!74559 (store (arr!35926 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36463 _keys!1208)))))

(declare-fun e!654639 () Bool)

(declare-fun b!1150915 () Bool)

(assert (=> b!1150915 (= e!654639 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!113929 () Bool)

(declare-fun c!113933 () Bool)

(declare-fun lt!515144 () ListLongMap!16461)

(declare-fun bm!53703 () Bool)

(declare-fun call!53712 () Unit!37776)

(declare-fun addStillContains!883 (ListLongMap!16461 (_ BitVec 64) V!43629 (_ BitVec 64)) Unit!37776)

(assert (=> bm!53703 (= call!53712 (addStillContains!883 (ite c!113933 lt!515144 lt!515137) (ite c!113933 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113929 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113933 minValue!944 (ite c!113929 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1150916 () Bool)

(declare-fun Unit!37778 () Unit!37776)

(assert (=> b!1150916 (= e!654640 Unit!37778)))

(declare-fun lt!515134 () Bool)

(assert (=> b!1150916 (= lt!515134 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150916 (= c!113933 (and (not lt!515134) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515132 () Unit!37776)

(declare-fun e!654644 () Unit!37776)

(assert (=> b!1150916 (= lt!515132 e!654644)))

(declare-fun lt!515138 () Unit!37776)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!467 (array!74558 array!74560 (_ BitVec 32) (_ BitVec 32) V!43629 V!43629 (_ BitVec 64) (_ BitVec 32) Int) Unit!37776)

(assert (=> b!1150916 (= lt!515138 (lemmaListMapContainsThenArrayContainsFrom!467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113931 () Bool)

(assert (=> b!1150916 (= c!113931 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765520 () Bool)

(assert (=> b!1150916 (= res!765520 e!654639)))

(assert (=> b!1150916 (=> (not res!765520) (not e!654649))))

(assert (=> b!1150916 e!654649))

(declare-fun lt!515150 () Unit!37776)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74558 (_ BitVec 32) (_ BitVec 32)) Unit!37776)

(assert (=> b!1150916 (= lt!515150 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25272 0))(
  ( (Nil!25269) (Cons!25268 (h!26477 (_ BitVec 64)) (t!36618 List!25272)) )
))
(declare-fun arrayNoDuplicates!0 (array!74558 (_ BitVec 32) List!25272) Bool)

(assert (=> b!1150916 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25269)))

(declare-fun lt!515130 () Unit!37776)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74558 (_ BitVec 64) (_ BitVec 32) List!25272) Unit!37776)

(assert (=> b!1150916 (= lt!515130 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25269))))

(assert (=> b!1150916 false))

(declare-fun b!1150917 () Bool)

(declare-fun e!654643 () Unit!37776)

(declare-fun e!654636 () Unit!37776)

(assert (=> b!1150917 (= e!654643 e!654636)))

(declare-fun c!113930 () Bool)

(assert (=> b!1150917 (= c!113930 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515134))))

(declare-fun c!113932 () Bool)

(declare-fun bm!53704 () Bool)

(declare-fun call!53711 () ListLongMap!16461)

(assert (=> bm!53704 (= call!53711 (getCurrentListMapNoExtraKeys!4687 (ite c!113932 _keys!1208 lt!515148) (ite c!113932 _values!996 lt!515141) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150918 () Bool)

(declare-fun lt!515145 () Unit!37776)

(assert (=> b!1150918 (= e!654643 lt!515145)))

(declare-fun call!53710 () Unit!37776)

(assert (=> b!1150918 (= lt!515145 call!53710)))

(assert (=> b!1150918 call!53709))

(declare-fun b!1150919 () Bool)

(declare-fun e!654641 () Bool)

(declare-fun call!53705 () ListLongMap!16461)

(assert (=> b!1150919 (= e!654641 (= call!53711 call!53705))))

(declare-fun b!1150920 () Bool)

(declare-fun res!765532 () Bool)

(assert (=> b!1150920 (=> (not res!765532) (not e!654635))))

(assert (=> b!1150920 (= res!765532 (arrayNoDuplicates!0 lt!515148 #b00000000000000000000000000000000 Nil!25269))))

(declare-fun b!1150921 () Bool)

(assert (=> b!1150921 call!53709))

(declare-fun lt!515131 () Unit!37776)

(assert (=> b!1150921 (= lt!515131 call!53710)))

(assert (=> b!1150921 (= e!654636 lt!515131)))

(declare-fun mapIsEmpty!45140 () Bool)

(declare-fun mapRes!45140 () Bool)

(assert (=> mapIsEmpty!45140 mapRes!45140))

(declare-fun b!1150922 () Bool)

(declare-fun Unit!37779 () Unit!37776)

(assert (=> b!1150922 (= e!654640 Unit!37779)))

(declare-fun bm!53705 () Bool)

(assert (=> bm!53705 (= call!53710 call!53712)))

(declare-fun b!1150923 () Bool)

(declare-fun e!654651 () Bool)

(declare-fun tp_is_empty!28877 () Bool)

(assert (=> b!1150923 (= e!654651 tp_is_empty!28877)))

(declare-fun b!1150924 () Bool)

(declare-fun res!765523 () Bool)

(assert (=> b!1150924 (=> (not res!765523) (not e!654650))))

(assert (=> b!1150924 (= res!765523 (and (= (size!36464 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36463 _keys!1208) (size!36464 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1150925 () Bool)

(declare-fun res!765525 () Bool)

(assert (=> b!1150925 (=> (not res!765525) (not e!654650))))

(assert (=> b!1150925 (= res!765525 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36463 _keys!1208))))))

(declare-fun b!1150926 () Bool)

(declare-fun e!654638 () Bool)

(assert (=> b!1150926 (= e!654638 tp_is_empty!28877)))

(declare-fun b!1150927 () Bool)

(declare-fun e!654648 () Bool)

(assert (=> b!1150927 (= e!654648 (and e!654651 mapRes!45140))))

(declare-fun condMapEmpty!45140 () Bool)

(declare-fun mapDefault!45140 () ValueCell!13729)

