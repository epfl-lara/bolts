; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98440 () Bool)

(assert start!98440)

(declare-fun b_free!24009 () Bool)

(declare-fun b_next!24009 () Bool)

(assert (=> start!98440 (= b_free!24009 (not b_next!24009))))

(declare-fun tp!84738 () Bool)

(declare-fun b_and!38881 () Bool)

(assert (=> start!98440 (= tp!84738 b_and!38881)))

(declare-fun b!1135583 () Bool)

(declare-fun e!646275 () Bool)

(declare-fun e!646280 () Bool)

(assert (=> b!1135583 (= e!646275 (not e!646280))))

(declare-fun res!758089 () Bool)

(assert (=> b!1135583 (=> res!758089 e!646280)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135583 (= res!758089 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73900 0))(
  ( (array!73901 (arr!35597 (Array (_ BitVec 32) (_ BitVec 64))) (size!36134 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73900)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135583 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37141 0))(
  ( (Unit!37142) )
))
(declare-fun lt!504806 () Unit!37141)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73900 (_ BitVec 64) (_ BitVec 32)) Unit!37141)

(assert (=> b!1135583 (= lt!504806 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1135584 () Bool)

(declare-fun e!646281 () Bool)

(assert (=> b!1135584 (= e!646281 true)))

(declare-fun lt!504809 () Bool)

(declare-datatypes ((List!24984 0))(
  ( (Nil!24981) (Cons!24980 (h!26189 (_ BitVec 64)) (t!35992 List!24984)) )
))
(declare-fun contains!6595 (List!24984 (_ BitVec 64)) Bool)

(assert (=> b!1135584 (= lt!504809 (contains!6595 Nil!24981 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!646279 () Bool)

(declare-fun lt!504821 () Bool)

(declare-fun b!1135585 () Bool)

(assert (=> b!1135585 (= e!646279 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504821) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135586 () Bool)

(assert (=> b!1135586 (= e!646279 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49646 () Bool)

(declare-datatypes ((V!43179 0))(
  ( (V!43180 (val!14326 Int)) )
))
(declare-datatypes ((tuple2!18174 0))(
  ( (tuple2!18175 (_1!9097 (_ BitVec 64)) (_2!9097 V!43179)) )
))
(declare-datatypes ((List!24985 0))(
  ( (Nil!24982) (Cons!24981 (h!26190 tuple2!18174) (t!35993 List!24985)) )
))
(declare-datatypes ((ListLongMap!16155 0))(
  ( (ListLongMap!16156 (toList!8093 List!24985)) )
))
(declare-fun call!49654 () ListLongMap!16155)

(declare-fun call!49651 () ListLongMap!16155)

(assert (=> bm!49646 (= call!49654 call!49651)))

(declare-fun b!1135587 () Bool)

(declare-fun e!646283 () Bool)

(assert (=> b!1135587 (= e!646283 e!646281)))

(declare-fun res!758073 () Bool)

(assert (=> b!1135587 (=> res!758073 e!646281)))

(assert (=> b!1135587 (= res!758073 (or (bvsge (size!36134 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36134 _keys!1208)) (bvsge from!1455 (size!36134 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!73900 (_ BitVec 32) List!24984) Bool)

(assert (=> b!1135587 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24981)))

(declare-fun lt!504815 () Unit!37141)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73900 (_ BitVec 32) (_ BitVec 32)) Unit!37141)

(assert (=> b!1135587 (= lt!504815 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646271 () Bool)

(assert (=> b!1135587 e!646271))

(declare-fun res!758077 () Bool)

(assert (=> b!1135587 (=> (not res!758077) (not e!646271))))

(assert (=> b!1135587 (= res!758077 e!646279)))

(declare-fun c!110919 () Bool)

(assert (=> b!1135587 (= c!110919 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!43179)

(declare-fun lt!504816 () Unit!37141)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13560 0))(
  ( (ValueCellFull!13560 (v!16964 V!43179)) (EmptyCell!13560) )
))
(declare-datatypes ((array!73902 0))(
  ( (array!73903 (arr!35598 (Array (_ BitVec 32) ValueCell!13560)) (size!36135 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73902)

(declare-fun minValue!944 () V!43179)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!355 (array!73900 array!73902 (_ BitVec 32) (_ BitVec 32) V!43179 V!43179 (_ BitVec 64) (_ BitVec 32) Int) Unit!37141)

(assert (=> b!1135587 (= lt!504816 (lemmaListMapContainsThenArrayContainsFrom!355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504812 () Unit!37141)

(declare-fun e!646273 () Unit!37141)

(assert (=> b!1135587 (= lt!504812 e!646273)))

(declare-fun c!110922 () Bool)

(assert (=> b!1135587 (= c!110922 (and (not lt!504821) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135587 (= lt!504821 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135588 () Bool)

(declare-fun res!758090 () Bool)

(declare-fun e!646277 () Bool)

(assert (=> b!1135588 (=> (not res!758090) (not e!646277))))

(assert (=> b!1135588 (= res!758090 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24981))))

(declare-fun b!1135589 () Bool)

(declare-fun e!646278 () Unit!37141)

(declare-fun Unit!37143 () Unit!37141)

(assert (=> b!1135589 (= e!646278 Unit!37143)))

(declare-fun b!1135590 () Bool)

(declare-fun c!110921 () Bool)

(assert (=> b!1135590 (= c!110921 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504821))))

(declare-fun e!646282 () Unit!37141)

(assert (=> b!1135590 (= e!646282 e!646278)))

(declare-fun b!1135591 () Bool)

(declare-fun res!758074 () Bool)

(assert (=> b!1135591 (=> res!758074 e!646281)))

(assert (=> b!1135591 (= res!758074 (contains!6595 Nil!24981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135592 () Bool)

(declare-fun res!758085 () Bool)

(assert (=> b!1135592 (=> (not res!758085) (not e!646277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73900 (_ BitVec 32)) Bool)

(assert (=> b!1135592 (= res!758085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49647 () Bool)

(declare-fun call!49650 () Bool)

(declare-fun call!49653 () Bool)

(assert (=> bm!49647 (= call!49650 call!49653)))

(declare-fun res!758086 () Bool)

(assert (=> start!98440 (=> (not res!758086) (not e!646277))))

(assert (=> start!98440 (= res!758086 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36134 _keys!1208))))))

(assert (=> start!98440 e!646277))

(declare-fun tp_is_empty!28539 () Bool)

(assert (=> start!98440 tp_is_empty!28539))

(declare-fun array_inv!27166 (array!73900) Bool)

(assert (=> start!98440 (array_inv!27166 _keys!1208)))

(assert (=> start!98440 true))

(assert (=> start!98440 tp!84738))

(declare-fun e!646276 () Bool)

(declare-fun array_inv!27167 (array!73902) Bool)

(assert (=> start!98440 (and (array_inv!27167 _values!996) e!646276)))

(declare-fun lt!504818 () ListLongMap!16155)

(declare-fun bm!49648 () Bool)

(declare-fun contains!6596 (ListLongMap!16155 (_ BitVec 64)) Bool)

(assert (=> bm!49648 (= call!49653 (contains!6596 (ite c!110922 lt!504818 call!49654) k0!934))))

(declare-fun b!1135593 () Bool)

(declare-fun e!646270 () Bool)

(assert (=> b!1135593 (= e!646270 e!646283)))

(declare-fun res!758083 () Bool)

(assert (=> b!1135593 (=> res!758083 e!646283)))

(declare-fun lt!504819 () ListLongMap!16155)

(assert (=> b!1135593 (= res!758083 (not (contains!6596 lt!504819 k0!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4541 (array!73900 array!73902 (_ BitVec 32) (_ BitVec 32) V!43179 V!43179 (_ BitVec 32) Int) ListLongMap!16155)

(assert (=> b!1135593 (= lt!504819 (getCurrentListMapNoExtraKeys!4541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!110920 () Bool)

(declare-fun bm!49649 () Bool)

(declare-fun call!49652 () Unit!37141)

(declare-fun addStillContains!748 (ListLongMap!16155 (_ BitVec 64) V!43179 (_ BitVec 64)) Unit!37141)

(assert (=> bm!49649 (= call!49652 (addStillContains!748 (ite c!110922 lt!504818 lt!504819) (ite c!110922 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110920 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110922 minValue!944 (ite c!110920 zeroValue!944 minValue!944)) k0!934))))

(declare-fun mapNonEmpty!44633 () Bool)

(declare-fun mapRes!44633 () Bool)

(declare-fun tp!84739 () Bool)

(declare-fun e!646272 () Bool)

(assert (=> mapNonEmpty!44633 (= mapRes!44633 (and tp!84739 e!646272))))

(declare-fun mapKey!44633 () (_ BitVec 32))

(declare-fun mapRest!44633 () (Array (_ BitVec 32) ValueCell!13560))

(declare-fun mapValue!44633 () ValueCell!13560)

(assert (=> mapNonEmpty!44633 (= (arr!35598 _values!996) (store mapRest!44633 mapKey!44633 mapValue!44633))))

(declare-fun b!1135594 () Bool)

(declare-fun e!646284 () Bool)

(assert (=> b!1135594 (= e!646280 e!646284)))

(declare-fun res!758075 () Bool)

(assert (=> b!1135594 (=> res!758075 e!646284)))

(assert (=> b!1135594 (= res!758075 (not (= from!1455 i!673)))))

(declare-fun lt!504810 () array!73902)

(declare-fun lt!504813 () ListLongMap!16155)

(declare-fun lt!504817 () array!73900)

(assert (=> b!1135594 (= lt!504813 (getCurrentListMapNoExtraKeys!4541 lt!504817 lt!504810 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2606 (Int (_ BitVec 64)) V!43179)

(assert (=> b!1135594 (= lt!504810 (array!73903 (store (arr!35598 _values!996) i!673 (ValueCellFull!13560 (dynLambda!2606 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36135 _values!996)))))

(declare-fun lt!504808 () ListLongMap!16155)

(assert (=> b!1135594 (= lt!504808 (getCurrentListMapNoExtraKeys!4541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135595 () Bool)

(declare-fun e!646274 () Bool)

(assert (=> b!1135595 (= e!646274 tp_is_empty!28539)))

(declare-fun b!1135596 () Bool)

(declare-fun lt!504807 () Unit!37141)

(assert (=> b!1135596 (= e!646278 lt!504807)))

(declare-fun call!49655 () Unit!37141)

(assert (=> b!1135596 (= lt!504807 call!49655)))

(assert (=> b!1135596 call!49650))

(declare-fun b!1135597 () Bool)

(assert (=> b!1135597 call!49650))

(declare-fun lt!504811 () Unit!37141)

(assert (=> b!1135597 (= lt!504811 call!49655)))

(assert (=> b!1135597 (= e!646282 lt!504811)))

(declare-fun b!1135598 () Bool)

(declare-fun res!758084 () Bool)

(assert (=> b!1135598 (=> (not res!758084) (not e!646277))))

(assert (=> b!1135598 (= res!758084 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36134 _keys!1208))))))

(declare-fun call!49656 () ListLongMap!16155)

(declare-fun e!646268 () Bool)

(declare-fun call!49649 () ListLongMap!16155)

(declare-fun b!1135599 () Bool)

(declare-fun -!1205 (ListLongMap!16155 (_ BitVec 64)) ListLongMap!16155)

(assert (=> b!1135599 (= e!646268 (= call!49649 (-!1205 call!49656 k0!934)))))

(declare-fun mapIsEmpty!44633 () Bool)

(assert (=> mapIsEmpty!44633 mapRes!44633))

(declare-fun b!1135600 () Bool)

(declare-fun res!758082 () Bool)

(assert (=> b!1135600 (=> (not res!758082) (not e!646277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135600 (= res!758082 (validKeyInArray!0 k0!934))))

(declare-fun bm!49650 () Bool)

(assert (=> bm!49650 (= call!49655 call!49652)))

(declare-fun b!1135601 () Bool)

(assert (=> b!1135601 (= e!646268 (= call!49649 call!49656))))

(declare-fun b!1135602 () Bool)

(assert (=> b!1135602 (= e!646277 e!646275)))

(declare-fun res!758088 () Bool)

(assert (=> b!1135602 (=> (not res!758088) (not e!646275))))

(assert (=> b!1135602 (= res!758088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504817 mask!1564))))

(assert (=> b!1135602 (= lt!504817 (array!73901 (store (arr!35597 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36134 _keys!1208)))))

(declare-fun b!1135603 () Bool)

(declare-fun lt!504820 () Unit!37141)

(assert (=> b!1135603 (= e!646273 lt!504820)))

(declare-fun lt!504822 () Unit!37141)

(assert (=> b!1135603 (= lt!504822 (addStillContains!748 lt!504819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1135603 (= lt!504818 call!49651)))

(assert (=> b!1135603 call!49653))

(assert (=> b!1135603 (= lt!504820 call!49652)))

(declare-fun +!3448 (ListLongMap!16155 tuple2!18174) ListLongMap!16155)

(assert (=> b!1135603 (contains!6596 (+!3448 lt!504818 (tuple2!18175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1135604 () Bool)

(assert (=> b!1135604 (= e!646284 e!646270)))

(declare-fun res!758087 () Bool)

(assert (=> b!1135604 (=> res!758087 e!646270)))

(assert (=> b!1135604 (= res!758087 (not (= (select (arr!35597 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1135604 e!646268))

(declare-fun c!110918 () Bool)

(assert (=> b!1135604 (= c!110918 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504814 () Unit!37141)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!461 (array!73900 array!73902 (_ BitVec 32) (_ BitVec 32) V!43179 V!43179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37141)

(assert (=> b!1135604 (= lt!504814 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135605 () Bool)

(declare-fun res!758080 () Bool)

(assert (=> b!1135605 (=> res!758080 e!646281)))

(declare-fun noDuplicate!1616 (List!24984) Bool)

(assert (=> b!1135605 (= res!758080 (not (noDuplicate!1616 Nil!24981)))))

(declare-fun b!1135606 () Bool)

(declare-fun res!758078 () Bool)

(assert (=> b!1135606 (=> (not res!758078) (not e!646275))))

(assert (=> b!1135606 (= res!758078 (arrayNoDuplicates!0 lt!504817 #b00000000000000000000000000000000 Nil!24981))))

(declare-fun b!1135607 () Bool)

(assert (=> b!1135607 (= e!646271 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49651 () Bool)

(assert (=> bm!49651 (= call!49656 (getCurrentListMapNoExtraKeys!4541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135608 () Bool)

(declare-fun res!758076 () Bool)

(assert (=> b!1135608 (=> (not res!758076) (not e!646277))))

(assert (=> b!1135608 (= res!758076 (and (= (size!36135 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36134 _keys!1208) (size!36135 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1135609 () Bool)

(declare-fun res!758081 () Bool)

(assert (=> b!1135609 (=> (not res!758081) (not e!646277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135609 (= res!758081 (validMask!0 mask!1564))))

(declare-fun b!1135610 () Bool)

(declare-fun res!758079 () Bool)

(assert (=> b!1135610 (=> (not res!758079) (not e!646277))))

(assert (=> b!1135610 (= res!758079 (= (select (arr!35597 _keys!1208) i!673) k0!934))))

(declare-fun bm!49652 () Bool)

(assert (=> bm!49652 (= call!49649 (getCurrentListMapNoExtraKeys!4541 lt!504817 lt!504810 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135611 () Bool)

(assert (=> b!1135611 (= e!646272 tp_is_empty!28539)))

(declare-fun bm!49653 () Bool)

(assert (=> bm!49653 (= call!49651 (+!3448 lt!504819 (ite (or c!110922 c!110920) (tuple2!18175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1135612 () Bool)

(assert (=> b!1135612 (= e!646273 e!646282)))

(assert (=> b!1135612 (= c!110920 (and (not lt!504821) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1135613 () Bool)

(assert (=> b!1135613 (= e!646276 (and e!646274 mapRes!44633))))

(declare-fun condMapEmpty!44633 () Bool)

(declare-fun mapDefault!44633 () ValueCell!13560)

(assert (=> b!1135613 (= condMapEmpty!44633 (= (arr!35598 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13560)) mapDefault!44633)))))

(assert (= (and start!98440 res!758086) b!1135609))

(assert (= (and b!1135609 res!758081) b!1135608))

(assert (= (and b!1135608 res!758076) b!1135592))

(assert (= (and b!1135592 res!758085) b!1135588))

(assert (= (and b!1135588 res!758090) b!1135598))

(assert (= (and b!1135598 res!758084) b!1135600))

(assert (= (and b!1135600 res!758082) b!1135610))

(assert (= (and b!1135610 res!758079) b!1135602))

(assert (= (and b!1135602 res!758088) b!1135606))

(assert (= (and b!1135606 res!758078) b!1135583))

(assert (= (and b!1135583 (not res!758089)) b!1135594))

(assert (= (and b!1135594 (not res!758075)) b!1135604))

(assert (= (and b!1135604 c!110918) b!1135599))

(assert (= (and b!1135604 (not c!110918)) b!1135601))

(assert (= (or b!1135599 b!1135601) bm!49651))

(assert (= (or b!1135599 b!1135601) bm!49652))

(assert (= (and b!1135604 (not res!758087)) b!1135593))

(assert (= (and b!1135593 (not res!758083)) b!1135587))

(assert (= (and b!1135587 c!110922) b!1135603))

(assert (= (and b!1135587 (not c!110922)) b!1135612))

(assert (= (and b!1135612 c!110920) b!1135597))

(assert (= (and b!1135612 (not c!110920)) b!1135590))

(assert (= (and b!1135590 c!110921) b!1135596))

(assert (= (and b!1135590 (not c!110921)) b!1135589))

(assert (= (or b!1135597 b!1135596) bm!49650))

(assert (= (or b!1135597 b!1135596) bm!49646))

(assert (= (or b!1135597 b!1135596) bm!49647))

(assert (= (or b!1135603 bm!49647) bm!49648))

(assert (= (or b!1135603 bm!49650) bm!49649))

(assert (= (or b!1135603 bm!49646) bm!49653))

(assert (= (and b!1135587 c!110919) b!1135586))

(assert (= (and b!1135587 (not c!110919)) b!1135585))

(assert (= (and b!1135587 res!758077) b!1135607))

(assert (= (and b!1135587 (not res!758073)) b!1135605))

(assert (= (and b!1135605 (not res!758080)) b!1135591))

(assert (= (and b!1135591 (not res!758074)) b!1135584))

(assert (= (and b!1135613 condMapEmpty!44633) mapIsEmpty!44633))

(assert (= (and b!1135613 (not condMapEmpty!44633)) mapNonEmpty!44633))

(get-info :version)

(assert (= (and mapNonEmpty!44633 ((_ is ValueCellFull!13560) mapValue!44633)) b!1135611))

(assert (= (and b!1135613 ((_ is ValueCellFull!13560) mapDefault!44633)) b!1135595))

(assert (= start!98440 b!1135613))

(declare-fun b_lambda!19133 () Bool)

(assert (=> (not b_lambda!19133) (not b!1135594)))

(declare-fun t!35991 () Bool)

(declare-fun tb!8829 () Bool)

(assert (=> (and start!98440 (= defaultEntry!1004 defaultEntry!1004) t!35991) tb!8829))

(declare-fun result!18215 () Bool)

(assert (=> tb!8829 (= result!18215 tp_is_empty!28539)))

(assert (=> b!1135594 t!35991))

(declare-fun b_and!38883 () Bool)

(assert (= b_and!38881 (and (=> t!35991 result!18215) b_and!38883)))

(declare-fun m!1048155 () Bool)

(assert (=> mapNonEmpty!44633 m!1048155))

(declare-fun m!1048157 () Bool)

(assert (=> b!1135610 m!1048157))

(declare-fun m!1048159 () Bool)

(assert (=> b!1135609 m!1048159))

(declare-fun m!1048161 () Bool)

(assert (=> b!1135588 m!1048161))

(declare-fun m!1048163 () Bool)

(assert (=> start!98440 m!1048163))

(declare-fun m!1048165 () Bool)

(assert (=> start!98440 m!1048165))

(declare-fun m!1048167 () Bool)

(assert (=> bm!49649 m!1048167))

(declare-fun m!1048169 () Bool)

(assert (=> b!1135594 m!1048169))

(declare-fun m!1048171 () Bool)

(assert (=> b!1135594 m!1048171))

(declare-fun m!1048173 () Bool)

(assert (=> b!1135594 m!1048173))

(declare-fun m!1048175 () Bool)

(assert (=> b!1135594 m!1048175))

(declare-fun m!1048177 () Bool)

(assert (=> b!1135602 m!1048177))

(declare-fun m!1048179 () Bool)

(assert (=> b!1135602 m!1048179))

(declare-fun m!1048181 () Bool)

(assert (=> bm!49651 m!1048181))

(declare-fun m!1048183 () Bool)

(assert (=> b!1135583 m!1048183))

(declare-fun m!1048185 () Bool)

(assert (=> b!1135583 m!1048185))

(declare-fun m!1048187 () Bool)

(assert (=> b!1135587 m!1048187))

(declare-fun m!1048189 () Bool)

(assert (=> b!1135587 m!1048189))

(declare-fun m!1048191 () Bool)

(assert (=> b!1135587 m!1048191))

(declare-fun m!1048193 () Bool)

(assert (=> b!1135605 m!1048193))

(declare-fun m!1048195 () Bool)

(assert (=> b!1135592 m!1048195))

(declare-fun m!1048197 () Bool)

(assert (=> b!1135584 m!1048197))

(declare-fun m!1048199 () Bool)

(assert (=> b!1135607 m!1048199))

(declare-fun m!1048201 () Bool)

(assert (=> b!1135599 m!1048201))

(declare-fun m!1048203 () Bool)

(assert (=> bm!49652 m!1048203))

(declare-fun m!1048205 () Bool)

(assert (=> b!1135600 m!1048205))

(assert (=> b!1135586 m!1048199))

(declare-fun m!1048207 () Bool)

(assert (=> b!1135606 m!1048207))

(declare-fun m!1048209 () Bool)

(assert (=> b!1135593 m!1048209))

(assert (=> b!1135593 m!1048181))

(declare-fun m!1048211 () Bool)

(assert (=> b!1135604 m!1048211))

(declare-fun m!1048213 () Bool)

(assert (=> b!1135604 m!1048213))

(declare-fun m!1048215 () Bool)

(assert (=> bm!49648 m!1048215))

(declare-fun m!1048217 () Bool)

(assert (=> b!1135603 m!1048217))

(declare-fun m!1048219 () Bool)

(assert (=> b!1135603 m!1048219))

(assert (=> b!1135603 m!1048219))

(declare-fun m!1048221 () Bool)

(assert (=> b!1135603 m!1048221))

(declare-fun m!1048223 () Bool)

(assert (=> bm!49653 m!1048223))

(declare-fun m!1048225 () Bool)

(assert (=> b!1135591 m!1048225))

(check-sat (not b!1135609) (not b!1135591) (not b!1135602) tp_is_empty!28539 (not b!1135603) (not b!1135607) (not b!1135600) (not b!1135599) (not b!1135587) (not b!1135588) (not bm!49653) (not b!1135586) (not b!1135592) (not b_next!24009) (not b!1135594) (not b!1135584) (not b_lambda!19133) (not bm!49651) (not mapNonEmpty!44633) (not bm!49649) (not b!1135583) (not bm!49652) (not bm!49648) (not b!1135604) (not b!1135606) (not b!1135605) (not start!98440) b_and!38883 (not b!1135593))
(check-sat b_and!38883 (not b_next!24009))
