; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99058 () Bool)

(assert start!99058)

(declare-fun b_free!24627 () Bool)

(declare-fun b_next!24627 () Bool)

(assert (=> start!99058 (= b_free!24627 (not b_next!24627))))

(declare-fun tp!86593 () Bool)

(declare-fun b_and!40117 () Bool)

(assert (=> start!99058 (= tp!86593 b_and!40117)))

(declare-fun b!1163790 () Bool)

(declare-datatypes ((V!44003 0))(
  ( (V!44004 (val!14635 Int)) )
))
(declare-datatypes ((tuple2!18740 0))(
  ( (tuple2!18741 (_1!9380 (_ BitVec 64)) (_2!9380 V!44003)) )
))
(declare-datatypes ((List!25514 0))(
  ( (Nil!25511) (Cons!25510 (h!26719 tuple2!18740) (t!37140 List!25514)) )
))
(declare-datatypes ((ListLongMap!16721 0))(
  ( (ListLongMap!16722 (toList!8376 List!25514)) )
))
(declare-fun lt!524371 () ListLongMap!16721)

(declare-fun minValue!944 () V!44003)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6854 (ListLongMap!16721 (_ BitVec 64)) Bool)

(declare-fun +!3697 (ListLongMap!16721 tuple2!18740) ListLongMap!16721)

(assert (=> b!1163790 (contains!6854 (+!3697 lt!524371 (tuple2!18741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!38307 0))(
  ( (Unit!38308) )
))
(declare-fun lt!524370 () Unit!38307)

(declare-fun addStillContains!994 (ListLongMap!16721 (_ BitVec 64) V!44003 (_ BitVec 64)) Unit!38307)

(assert (=> b!1163790 (= lt!524370 (addStillContains!994 lt!524371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!57068 () Bool)

(assert (=> b!1163790 call!57068))

(declare-fun call!57065 () ListLongMap!16721)

(assert (=> b!1163790 (= lt!524371 call!57065)))

(declare-fun lt!524383 () Unit!38307)

(declare-fun call!57071 () Unit!38307)

(assert (=> b!1163790 (= lt!524383 call!57071)))

(declare-fun e!661784 () Unit!38307)

(assert (=> b!1163790 (= e!661784 lt!524370)))

(declare-fun bm!57062 () Bool)

(declare-fun call!57067 () ListLongMap!16721)

(assert (=> bm!57062 (= call!57067 call!57065)))

(declare-fun mapNonEmpty!45560 () Bool)

(declare-fun mapRes!45560 () Bool)

(declare-fun tp!86592 () Bool)

(declare-fun e!661785 () Bool)

(assert (=> mapNonEmpty!45560 (= mapRes!45560 (and tp!86592 e!661785))))

(declare-datatypes ((ValueCell!13869 0))(
  ( (ValueCellFull!13869 (v!17273 V!44003)) (EmptyCell!13869) )
))
(declare-fun mapValue!45560 () ValueCell!13869)

(declare-fun mapKey!45560 () (_ BitVec 32))

(declare-fun mapRest!45560 () (Array (_ BitVec 32) ValueCell!13869))

(declare-datatypes ((array!75104 0))(
  ( (array!75105 (arr!36199 (Array (_ BitVec 32) ValueCell!13869)) (size!36736 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75104)

(assert (=> mapNonEmpty!45560 (= (arr!36199 _values!996) (store mapRest!45560 mapKey!45560 mapValue!45560))))

(declare-fun b!1163791 () Bool)

(declare-fun res!771821 () Bool)

(declare-fun e!661790 () Bool)

(assert (=> b!1163791 (=> (not res!771821) (not e!661790))))

(declare-datatypes ((array!75106 0))(
  ( (array!75107 (arr!36200 (Array (_ BitVec 32) (_ BitVec 64))) (size!36737 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75106)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1163791 (= res!771821 (and (= (size!36736 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36737 _keys!1208) (size!36736 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163793 () Bool)

(declare-fun e!661776 () Unit!38307)

(declare-fun lt!524384 () Unit!38307)

(assert (=> b!1163793 (= e!661776 lt!524384)))

(declare-fun call!57070 () Unit!38307)

(assert (=> b!1163793 (= lt!524384 call!57070)))

(declare-fun call!57069 () Bool)

(assert (=> b!1163793 call!57069))

(declare-fun b!1163794 () Bool)

(declare-fun e!661777 () Unit!38307)

(declare-fun Unit!38309 () Unit!38307)

(assert (=> b!1163794 (= e!661777 Unit!38309)))

(declare-fun lt!524378 () Bool)

(assert (=> b!1163794 (= lt!524378 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116451 () Bool)

(assert (=> b!1163794 (= c!116451 (and (not lt!524378) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!524375 () Unit!38307)

(assert (=> b!1163794 (= lt!524375 e!661784)))

(declare-fun zeroValue!944 () V!44003)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!524379 () Unit!38307)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!561 (array!75106 array!75104 (_ BitVec 32) (_ BitVec 32) V!44003 V!44003 (_ BitVec 64) (_ BitVec 32) Int) Unit!38307)

(assert (=> b!1163794 (= lt!524379 (lemmaListMapContainsThenArrayContainsFrom!561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116454 () Bool)

(assert (=> b!1163794 (= c!116454 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771830 () Bool)

(declare-fun e!661778 () Bool)

(assert (=> b!1163794 (= res!771830 e!661778)))

(declare-fun e!661779 () Bool)

(assert (=> b!1163794 (=> (not res!771830) (not e!661779))))

(assert (=> b!1163794 e!661779))

(declare-fun lt!524385 () Unit!38307)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75106 (_ BitVec 32) (_ BitVec 32)) Unit!38307)

(assert (=> b!1163794 (= lt!524385 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25515 0))(
  ( (Nil!25512) (Cons!25511 (h!26720 (_ BitVec 64)) (t!37141 List!25515)) )
))
(declare-fun arrayNoDuplicates!0 (array!75106 (_ BitVec 32) List!25515) Bool)

(assert (=> b!1163794 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25512)))

(declare-fun lt!524386 () Unit!38307)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75106 (_ BitVec 64) (_ BitVec 32) List!25515) Unit!38307)

(assert (=> b!1163794 (= lt!524386 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25512))))

(assert (=> b!1163794 false))

(declare-fun b!1163795 () Bool)

(declare-fun res!771820 () Bool)

(assert (=> b!1163795 (=> (not res!771820) (not e!661790))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163795 (= res!771820 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36737 _keys!1208))))))

(declare-fun bm!57063 () Bool)

(assert (=> bm!57063 (= call!57069 call!57068)))

(declare-fun b!1163796 () Bool)

(declare-fun res!771831 () Bool)

(assert (=> b!1163796 (=> (not res!771831) (not e!661790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163796 (= res!771831 (validMask!0 mask!1564))))

(declare-fun b!1163797 () Bool)

(declare-fun e!661788 () Bool)

(declare-fun e!661781 () Bool)

(assert (=> b!1163797 (= e!661788 (and e!661781 mapRes!45560))))

(declare-fun condMapEmpty!45560 () Bool)

(declare-fun mapDefault!45560 () ValueCell!13869)

(assert (=> b!1163797 (= condMapEmpty!45560 (= (arr!36199 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13869)) mapDefault!45560)))))

(declare-fun b!1163798 () Bool)

(declare-fun e!661775 () Bool)

(declare-fun e!661787 () Bool)

(assert (=> b!1163798 (= e!661775 e!661787)))

(declare-fun res!771827 () Bool)

(assert (=> b!1163798 (=> res!771827 e!661787)))

(assert (=> b!1163798 (= res!771827 (not (= from!1455 i!673)))))

(declare-fun lt!524381 () ListLongMap!16721)

(declare-fun lt!524390 () array!75104)

(declare-fun lt!524376 () array!75106)

(declare-fun getCurrentListMapNoExtraKeys!4810 (array!75106 array!75104 (_ BitVec 32) (_ BitVec 32) V!44003 V!44003 (_ BitVec 32) Int) ListLongMap!16721)

(assert (=> b!1163798 (= lt!524381 (getCurrentListMapNoExtraKeys!4810 lt!524376 lt!524390 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524374 () V!44003)

(assert (=> b!1163798 (= lt!524390 (array!75105 (store (arr!36199 _values!996) i!673 (ValueCellFull!13869 lt!524374)) (size!36736 _values!996)))))

(declare-fun dynLambda!2807 (Int (_ BitVec 64)) V!44003)

(assert (=> b!1163798 (= lt!524374 (dynLambda!2807 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!524382 () ListLongMap!16721)

(assert (=> b!1163798 (= lt!524382 (getCurrentListMapNoExtraKeys!4810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1163799 () Bool)

(declare-fun Unit!38310 () Unit!38307)

(assert (=> b!1163799 (= e!661777 Unit!38310)))

(declare-fun b!1163800 () Bool)

(declare-fun e!661786 () Bool)

(assert (=> b!1163800 (= e!661787 e!661786)))

(declare-fun res!771822 () Bool)

(assert (=> b!1163800 (=> res!771822 e!661786)))

(assert (=> b!1163800 (= res!771822 (not (= (select (arr!36200 _keys!1208) from!1455) k0!934)))))

(declare-fun e!661783 () Bool)

(assert (=> b!1163800 e!661783))

(declare-fun c!116449 () Bool)

(assert (=> b!1163800 (= c!116449 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!524373 () Unit!38307)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!665 (array!75106 array!75104 (_ BitVec 32) (_ BitVec 32) V!44003 V!44003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38307)

(assert (=> b!1163800 (= lt!524373 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!665 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57064 () Bool)

(assert (=> bm!57064 (= call!57068 (contains!6854 (ite c!116451 lt!524371 call!57067) k0!934))))

(declare-fun b!1163801 () Bool)

(declare-fun arrayContainsKey!0 (array!75106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163801 (= e!661778 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163802 () Bool)

(declare-fun res!771833 () Bool)

(assert (=> b!1163802 (=> (not res!771833) (not e!661790))))

(assert (=> b!1163802 (= res!771833 (= (select (arr!36200 _keys!1208) i!673) k0!934))))

(declare-fun b!1163803 () Bool)

(declare-fun c!116452 () Bool)

(assert (=> b!1163803 (= c!116452 (and (not lt!524378) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1163803 (= e!661784 e!661776)))

(declare-fun bm!57065 () Bool)

(declare-fun call!57072 () ListLongMap!16721)

(assert (=> bm!57065 (= call!57072 (getCurrentListMapNoExtraKeys!4810 lt!524376 lt!524390 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57066 () Bool)

(declare-fun call!57066 () ListLongMap!16721)

(assert (=> bm!57066 (= call!57066 (getCurrentListMapNoExtraKeys!4810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57067 () Bool)

(assert (=> bm!57067 (= call!57070 call!57071)))

(declare-fun lt!524377 () ListLongMap!16721)

(declare-fun bm!57068 () Bool)

(assert (=> bm!57068 (= call!57071 (addStillContains!994 lt!524377 (ite (or c!116451 c!116452) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116451 c!116452) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1163804 () Bool)

(assert (=> b!1163804 (= e!661786 true)))

(declare-fun e!661780 () Bool)

(assert (=> b!1163804 e!661780))

(declare-fun res!771824 () Bool)

(assert (=> b!1163804 (=> (not res!771824) (not e!661780))))

(declare-fun lt!524387 () ListLongMap!16721)

(assert (=> b!1163804 (= res!771824 (= lt!524387 lt!524377))))

(declare-fun -!1441 (ListLongMap!16721 (_ BitVec 64)) ListLongMap!16721)

(assert (=> b!1163804 (= lt!524387 (-!1441 lt!524382 k0!934))))

(declare-fun lt!524391 () V!44003)

(assert (=> b!1163804 (= (-!1441 (+!3697 lt!524377 (tuple2!18741 (select (arr!36200 _keys!1208) from!1455) lt!524391)) (select (arr!36200 _keys!1208) from!1455)) lt!524377)))

(declare-fun lt!524388 () Unit!38307)

(declare-fun addThenRemoveForNewKeyIsSame!274 (ListLongMap!16721 (_ BitVec 64) V!44003) Unit!38307)

(assert (=> b!1163804 (= lt!524388 (addThenRemoveForNewKeyIsSame!274 lt!524377 (select (arr!36200 _keys!1208) from!1455) lt!524391))))

(declare-fun get!18504 (ValueCell!13869 V!44003) V!44003)

(assert (=> b!1163804 (= lt!524391 (get!18504 (select (arr!36199 _values!996) from!1455) lt!524374))))

(declare-fun lt!524372 () Unit!38307)

(assert (=> b!1163804 (= lt!524372 e!661777)))

(declare-fun c!116450 () Bool)

(assert (=> b!1163804 (= c!116450 (contains!6854 lt!524377 k0!934))))

(assert (=> b!1163804 (= lt!524377 (getCurrentListMapNoExtraKeys!4810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!771826 () Bool)

(assert (=> start!99058 (=> (not res!771826) (not e!661790))))

(assert (=> start!99058 (= res!771826 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36737 _keys!1208))))))

(assert (=> start!99058 e!661790))

(declare-fun tp_is_empty!29157 () Bool)

(assert (=> start!99058 tp_is_empty!29157))

(declare-fun array_inv!27568 (array!75106) Bool)

(assert (=> start!99058 (array_inv!27568 _keys!1208)))

(assert (=> start!99058 true))

(assert (=> start!99058 tp!86593))

(declare-fun array_inv!27569 (array!75104) Bool)

(assert (=> start!99058 (and (array_inv!27569 _values!996) e!661788)))

(declare-fun b!1163792 () Bool)

(declare-fun res!771819 () Bool)

(assert (=> b!1163792 (=> (not res!771819) (not e!661790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75106 (_ BitVec 32)) Bool)

(assert (=> b!1163792 (= res!771819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163805 () Bool)

(declare-fun res!771825 () Bool)

(assert (=> b!1163805 (=> (not res!771825) (not e!661790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163805 (= res!771825 (validKeyInArray!0 k0!934))))

(declare-fun b!1163806 () Bool)

(assert (=> b!1163806 (= e!661785 tp_is_empty!29157)))

(declare-fun b!1163807 () Bool)

(declare-fun res!771823 () Bool)

(assert (=> b!1163807 (=> (not res!771823) (not e!661790))))

(assert (=> b!1163807 (= res!771823 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25512))))

(declare-fun bm!57069 () Bool)

(assert (=> bm!57069 (= call!57065 (+!3697 lt!524377 (ite (or c!116451 c!116452) (tuple2!18741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1163808 () Bool)

(assert (=> b!1163808 (= e!661778 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!524378) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1163809 () Bool)

(declare-fun res!771828 () Bool)

(declare-fun e!661789 () Bool)

(assert (=> b!1163809 (=> (not res!771828) (not e!661789))))

(assert (=> b!1163809 (= res!771828 (arrayNoDuplicates!0 lt!524376 #b00000000000000000000000000000000 Nil!25512))))

(declare-fun b!1163810 () Bool)

(assert (=> b!1163810 (= e!661780 (= lt!524387 (getCurrentListMapNoExtraKeys!4810 lt!524376 lt!524390 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1163811 () Bool)

(assert (=> b!1163811 (= e!661783 (= call!57072 call!57066))))

(declare-fun b!1163812 () Bool)

(assert (=> b!1163812 (= e!661789 (not e!661775))))

(declare-fun res!771832 () Bool)

(assert (=> b!1163812 (=> res!771832 e!661775)))

(assert (=> b!1163812 (= res!771832 (bvsgt from!1455 i!673))))

(assert (=> b!1163812 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!524380 () Unit!38307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75106 (_ BitVec 64) (_ BitVec 32)) Unit!38307)

(assert (=> b!1163812 (= lt!524380 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1163813 () Bool)

(assert (=> b!1163813 (= e!661779 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163814 () Bool)

(assert (=> b!1163814 call!57069))

(declare-fun lt!524389 () Unit!38307)

(assert (=> b!1163814 (= lt!524389 call!57070)))

(declare-fun e!661782 () Unit!38307)

(assert (=> b!1163814 (= e!661782 lt!524389)))

(declare-fun b!1163815 () Bool)

(assert (=> b!1163815 (= e!661783 (= call!57072 (-!1441 call!57066 k0!934)))))

(declare-fun b!1163816 () Bool)

(declare-fun Unit!38311 () Unit!38307)

(assert (=> b!1163816 (= e!661782 Unit!38311)))

(declare-fun b!1163817 () Bool)

(assert (=> b!1163817 (= e!661790 e!661789)))

(declare-fun res!771829 () Bool)

(assert (=> b!1163817 (=> (not res!771829) (not e!661789))))

(assert (=> b!1163817 (= res!771829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524376 mask!1564))))

(assert (=> b!1163817 (= lt!524376 (array!75107 (store (arr!36200 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36737 _keys!1208)))))

(declare-fun b!1163818 () Bool)

(assert (=> b!1163818 (= e!661776 e!661782)))

(declare-fun c!116453 () Bool)

(assert (=> b!1163818 (= c!116453 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!524378))))

(declare-fun b!1163819 () Bool)

(assert (=> b!1163819 (= e!661781 tp_is_empty!29157)))

(declare-fun mapIsEmpty!45560 () Bool)

(assert (=> mapIsEmpty!45560 mapRes!45560))

(assert (= (and start!99058 res!771826) b!1163796))

(assert (= (and b!1163796 res!771831) b!1163791))

(assert (= (and b!1163791 res!771821) b!1163792))

(assert (= (and b!1163792 res!771819) b!1163807))

(assert (= (and b!1163807 res!771823) b!1163795))

(assert (= (and b!1163795 res!771820) b!1163805))

(assert (= (and b!1163805 res!771825) b!1163802))

(assert (= (and b!1163802 res!771833) b!1163817))

(assert (= (and b!1163817 res!771829) b!1163809))

(assert (= (and b!1163809 res!771828) b!1163812))

(assert (= (and b!1163812 (not res!771832)) b!1163798))

(assert (= (and b!1163798 (not res!771827)) b!1163800))

(assert (= (and b!1163800 c!116449) b!1163815))

(assert (= (and b!1163800 (not c!116449)) b!1163811))

(assert (= (or b!1163815 b!1163811) bm!57065))

(assert (= (or b!1163815 b!1163811) bm!57066))

(assert (= (and b!1163800 (not res!771822)) b!1163804))

(assert (= (and b!1163804 c!116450) b!1163794))

(assert (= (and b!1163804 (not c!116450)) b!1163799))

(assert (= (and b!1163794 c!116451) b!1163790))

(assert (= (and b!1163794 (not c!116451)) b!1163803))

(assert (= (and b!1163803 c!116452) b!1163793))

(assert (= (and b!1163803 (not c!116452)) b!1163818))

(assert (= (and b!1163818 c!116453) b!1163814))

(assert (= (and b!1163818 (not c!116453)) b!1163816))

(assert (= (or b!1163793 b!1163814) bm!57067))

(assert (= (or b!1163793 b!1163814) bm!57062))

(assert (= (or b!1163793 b!1163814) bm!57063))

(assert (= (or b!1163790 bm!57063) bm!57064))

(assert (= (or b!1163790 bm!57067) bm!57068))

(assert (= (or b!1163790 bm!57062) bm!57069))

(assert (= (and b!1163794 c!116454) b!1163801))

(assert (= (and b!1163794 (not c!116454)) b!1163808))

(assert (= (and b!1163794 res!771830) b!1163813))

(assert (= (and b!1163804 res!771824) b!1163810))

(assert (= (and b!1163797 condMapEmpty!45560) mapIsEmpty!45560))

(assert (= (and b!1163797 (not condMapEmpty!45560)) mapNonEmpty!45560))

(get-info :version)

(assert (= (and mapNonEmpty!45560 ((_ is ValueCellFull!13869) mapValue!45560)) b!1163806))

(assert (= (and b!1163797 ((_ is ValueCellFull!13869) mapDefault!45560)) b!1163819))

(assert (= start!99058 b!1163797))

(declare-fun b_lambda!19751 () Bool)

(assert (=> (not b_lambda!19751) (not b!1163798)))

(declare-fun t!37139 () Bool)

(declare-fun tb!9447 () Bool)

(assert (=> (and start!99058 (= defaultEntry!1004 defaultEntry!1004) t!37139) tb!9447))

(declare-fun result!19451 () Bool)

(assert (=> tb!9447 (= result!19451 tp_is_empty!29157)))

(assert (=> b!1163798 t!37139))

(declare-fun b_and!40119 () Bool)

(assert (= b_and!40117 (and (=> t!37139 result!19451) b_and!40119)))

(declare-fun m!1072359 () Bool)

(assert (=> b!1163794 m!1072359))

(declare-fun m!1072361 () Bool)

(assert (=> b!1163794 m!1072361))

(declare-fun m!1072363 () Bool)

(assert (=> b!1163794 m!1072363))

(declare-fun m!1072365 () Bool)

(assert (=> b!1163794 m!1072365))

(declare-fun m!1072367 () Bool)

(assert (=> bm!57066 m!1072367))

(declare-fun m!1072369 () Bool)

(assert (=> b!1163790 m!1072369))

(assert (=> b!1163790 m!1072369))

(declare-fun m!1072371 () Bool)

(assert (=> b!1163790 m!1072371))

(declare-fun m!1072373 () Bool)

(assert (=> b!1163790 m!1072373))

(declare-fun m!1072375 () Bool)

(assert (=> b!1163817 m!1072375))

(declare-fun m!1072377 () Bool)

(assert (=> b!1163817 m!1072377))

(declare-fun m!1072379 () Bool)

(assert (=> b!1163796 m!1072379))

(declare-fun m!1072381 () Bool)

(assert (=> b!1163810 m!1072381))

(declare-fun m!1072383 () Bool)

(assert (=> b!1163812 m!1072383))

(declare-fun m!1072385 () Bool)

(assert (=> b!1163812 m!1072385))

(declare-fun m!1072387 () Bool)

(assert (=> b!1163802 m!1072387))

(declare-fun m!1072389 () Bool)

(assert (=> bm!57064 m!1072389))

(declare-fun m!1072391 () Bool)

(assert (=> b!1163798 m!1072391))

(declare-fun m!1072393 () Bool)

(assert (=> b!1163798 m!1072393))

(declare-fun m!1072395 () Bool)

(assert (=> b!1163798 m!1072395))

(declare-fun m!1072397 () Bool)

(assert (=> b!1163798 m!1072397))

(declare-fun m!1072399 () Bool)

(assert (=> b!1163809 m!1072399))

(declare-fun m!1072401 () Bool)

(assert (=> mapNonEmpty!45560 m!1072401))

(declare-fun m!1072403 () Bool)

(assert (=> b!1163815 m!1072403))

(declare-fun m!1072405 () Bool)

(assert (=> bm!57069 m!1072405))

(declare-fun m!1072407 () Bool)

(assert (=> b!1163807 m!1072407))

(declare-fun m!1072409 () Bool)

(assert (=> start!99058 m!1072409))

(declare-fun m!1072411 () Bool)

(assert (=> start!99058 m!1072411))

(declare-fun m!1072413 () Bool)

(assert (=> b!1163800 m!1072413))

(declare-fun m!1072415 () Bool)

(assert (=> b!1163800 m!1072415))

(declare-fun m!1072417 () Bool)

(assert (=> b!1163804 m!1072417))

(assert (=> b!1163804 m!1072367))

(assert (=> b!1163804 m!1072413))

(declare-fun m!1072419 () Bool)

(assert (=> b!1163804 m!1072419))

(declare-fun m!1072421 () Bool)

(assert (=> b!1163804 m!1072421))

(declare-fun m!1072423 () Bool)

(assert (=> b!1163804 m!1072423))

(assert (=> b!1163804 m!1072413))

(declare-fun m!1072425 () Bool)

(assert (=> b!1163804 m!1072425))

(assert (=> b!1163804 m!1072421))

(declare-fun m!1072427 () Bool)

(assert (=> b!1163804 m!1072427))

(declare-fun m!1072429 () Bool)

(assert (=> b!1163804 m!1072429))

(assert (=> b!1163804 m!1072423))

(assert (=> b!1163804 m!1072413))

(declare-fun m!1072431 () Bool)

(assert (=> b!1163801 m!1072431))

(assert (=> bm!57065 m!1072381))

(assert (=> b!1163813 m!1072431))

(declare-fun m!1072433 () Bool)

(assert (=> b!1163805 m!1072433))

(declare-fun m!1072435 () Bool)

(assert (=> b!1163792 m!1072435))

(declare-fun m!1072437 () Bool)

(assert (=> bm!57068 m!1072437))

(check-sat tp_is_empty!29157 (not b!1163817) (not b!1163812) (not b!1163815) (not bm!57064) (not bm!57065) (not b!1163809) (not b!1163804) (not mapNonEmpty!45560) (not b!1163798) (not start!99058) (not b!1163810) (not b!1163807) (not b_lambda!19751) (not b!1163801) (not b!1163794) (not b!1163792) b_and!40119 (not b!1163805) (not b!1163813) (not bm!57069) (not b_next!24627) (not bm!57066) (not bm!57068) (not b!1163796) (not b!1163800) (not b!1163790))
(check-sat b_and!40119 (not b_next!24627))
