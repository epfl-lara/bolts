; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98776 () Bool)

(assert start!98776)

(declare-fun b_free!24345 () Bool)

(declare-fun b_next!24345 () Bool)

(assert (=> start!98776 (= b_free!24345 (not b_next!24345))))

(declare-fun tp!85747 () Bool)

(declare-fun b_and!39553 () Bool)

(assert (=> start!98776 (= tp!85747 b_and!39553)))

(declare-fun b!1150818 () Bool)

(declare-fun e!654588 () Bool)

(declare-fun e!654600 () Bool)

(declare-fun mapRes!45137 () Bool)

(assert (=> b!1150818 (= e!654588 (and e!654600 mapRes!45137))))

(declare-fun condMapEmpty!45137 () Bool)

(declare-datatypes ((V!43627 0))(
  ( (V!43628 (val!14494 Int)) )
))
(declare-datatypes ((ValueCell!13728 0))(
  ( (ValueCellFull!13728 (v!17132 V!43627)) (EmptyCell!13728) )
))
(declare-datatypes ((array!74554 0))(
  ( (array!74555 (arr!35924 (Array (_ BitVec 32) ValueCell!13728)) (size!36461 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74554)

(declare-fun mapDefault!45137 () ValueCell!13728)

(assert (=> b!1150818 (= condMapEmpty!45137 (= (arr!35924 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13728)) mapDefault!45137)))))

(declare-datatypes ((array!74556 0))(
  ( (array!74557 (arr!35925 (Array (_ BitVec 32) (_ BitVec 64))) (size!36462 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74556)

(declare-fun e!654596 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1150819 () Bool)

(declare-fun arrayContainsKey!0 (array!74556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150819 (= e!654596 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun zeroValue!944 () V!43627)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!515081 () array!74554)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!53678 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18478 0))(
  ( (tuple2!18479 (_1!9249 (_ BitVec 64)) (_2!9249 V!43627)) )
))
(declare-datatypes ((List!25269 0))(
  ( (Nil!25266) (Cons!25265 (h!26474 tuple2!18478) (t!36613 List!25269)) )
))
(declare-datatypes ((ListLongMap!16459 0))(
  ( (ListLongMap!16460 (toList!8245 List!25269)) )
))
(declare-fun call!53683 () ListLongMap!16459)

(declare-fun minValue!944 () V!43627)

(declare-fun lt!515078 () array!74556)

(declare-fun getCurrentListMapNoExtraKeys!4686 (array!74556 array!74554 (_ BitVec 32) (_ BitVec 32) V!43627 V!43627 (_ BitVec 32) Int) ListLongMap!16459)

(assert (=> bm!53678 (= call!53683 (getCurrentListMapNoExtraKeys!4686 lt!515078 lt!515081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150820 () Bool)

(declare-fun call!53684 () ListLongMap!16459)

(declare-fun e!654589 () Bool)

(declare-fun -!1331 (ListLongMap!16459 (_ BitVec 64)) ListLongMap!16459)

(assert (=> b!1150820 (= e!654589 (= call!53683 (-!1331 call!53684 k0!934)))))

(declare-fun b!1150821 () Bool)

(declare-datatypes ((Unit!37771 0))(
  ( (Unit!37772) )
))
(declare-fun e!654594 () Unit!37771)

(declare-fun lt!515075 () Unit!37771)

(assert (=> b!1150821 (= e!654594 lt!515075)))

(declare-fun call!53687 () Unit!37771)

(assert (=> b!1150821 (= lt!515075 call!53687)))

(declare-fun call!53686 () Bool)

(assert (=> b!1150821 call!53686))

(declare-fun e!654593 () Bool)

(declare-fun b!1150822 () Bool)

(assert (=> b!1150822 (= e!654593 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150823 () Bool)

(declare-fun res!765486 () Bool)

(declare-fun e!654598 () Bool)

(assert (=> b!1150823 (=> (not res!765486) (not e!654598))))

(assert (=> b!1150823 (= res!765486 (and (= (size!36461 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36462 _keys!1208) (size!36461 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun c!113911 () Bool)

(declare-fun bm!53679 () Bool)

(declare-fun call!53682 () ListLongMap!16459)

(declare-fun lt!515072 () ListLongMap!16459)

(declare-fun c!113915 () Bool)

(declare-fun lt!515064 () ListLongMap!16459)

(declare-fun +!3582 (ListLongMap!16459 tuple2!18478) ListLongMap!16459)

(assert (=> bm!53679 (= call!53682 (+!3582 (ite c!113915 lt!515064 lt!515072) (ite c!113915 (tuple2!18479 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113911 (tuple2!18479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18479 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1150824 () Bool)

(declare-fun e!654587 () Bool)

(declare-fun lt!515073 () ListLongMap!16459)

(assert (=> b!1150824 (= e!654587 (= lt!515073 (getCurrentListMapNoExtraKeys!4686 lt!515078 lt!515081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1150825 () Bool)

(declare-fun e!654585 () Unit!37771)

(declare-fun Unit!37773 () Unit!37771)

(assert (=> b!1150825 (= e!654585 Unit!37773)))

(declare-fun call!53688 () Bool)

(declare-fun bm!53680 () Bool)

(declare-fun call!53685 () ListLongMap!16459)

(declare-fun contains!6740 (ListLongMap!16459 (_ BitVec 64)) Bool)

(assert (=> bm!53680 (= call!53688 (contains!6740 (ite c!113915 lt!515064 call!53685) k0!934))))

(declare-fun b!1150826 () Bool)

(declare-fun e!654591 () Bool)

(assert (=> b!1150826 (= e!654598 e!654591)))

(declare-fun res!765481 () Bool)

(assert (=> b!1150826 (=> (not res!765481) (not e!654591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74556 (_ BitVec 32)) Bool)

(assert (=> b!1150826 (= res!765481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515078 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150826 (= lt!515078 (array!74557 (store (arr!35925 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36462 _keys!1208)))))

(declare-fun bm!53681 () Bool)

(assert (=> bm!53681 (= call!53684 (getCurrentListMapNoExtraKeys!4686 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150827 () Bool)

(declare-fun res!765479 () Bool)

(assert (=> b!1150827 (=> (not res!765479) (not e!654591))))

(declare-datatypes ((List!25270 0))(
  ( (Nil!25267) (Cons!25266 (h!26475 (_ BitVec 64)) (t!36614 List!25270)) )
))
(declare-fun arrayNoDuplicates!0 (array!74556 (_ BitVec 32) List!25270) Bool)

(assert (=> b!1150827 (= res!765479 (arrayNoDuplicates!0 lt!515078 #b00000000000000000000000000000000 Nil!25267))))

(declare-fun b!1150828 () Bool)

(declare-fun res!765475 () Bool)

(assert (=> b!1150828 (=> (not res!765475) (not e!654598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150828 (= res!765475 (validKeyInArray!0 k0!934))))

(declare-fun b!1150829 () Bool)

(declare-fun lt!515066 () Bool)

(assert (=> b!1150829 (= e!654596 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515066) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1150830 () Bool)

(assert (=> b!1150830 (= c!113911 (and (not lt!515066) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!654597 () Unit!37771)

(assert (=> b!1150830 (= e!654597 e!654594)))

(declare-fun b!1150831 () Bool)

(declare-fun e!654599 () Bool)

(assert (=> b!1150831 (= e!654591 (not e!654599))))

(declare-fun res!765482 () Bool)

(assert (=> b!1150831 (=> res!765482 e!654599)))

(assert (=> b!1150831 (= res!765482 (bvsgt from!1455 i!673))))

(assert (=> b!1150831 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!515070 () Unit!37771)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74556 (_ BitVec 64) (_ BitVec 32)) Unit!37771)

(assert (=> b!1150831 (= lt!515070 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!45137 () Bool)

(assert (=> mapIsEmpty!45137 mapRes!45137))

(declare-fun b!1150832 () Bool)

(declare-fun e!654586 () Bool)

(declare-fun e!654584 () Bool)

(assert (=> b!1150832 (= e!654586 e!654584)))

(declare-fun res!765488 () Bool)

(assert (=> b!1150832 (=> res!765488 e!654584)))

(assert (=> b!1150832 (= res!765488 (not (= (select (arr!35925 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1150832 e!654589))

(declare-fun c!113912 () Bool)

(assert (=> b!1150832 (= c!113912 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515083 () Unit!37771)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!569 (array!74556 array!74554 (_ BitVec 32) (_ BitVec 32) V!43627 V!43627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37771)

(assert (=> b!1150832 (= lt!515083 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!569 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150833 () Bool)

(declare-fun res!765477 () Bool)

(assert (=> b!1150833 (=> (not res!765477) (not e!654598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150833 (= res!765477 (validMask!0 mask!1564))))

(declare-fun b!1150834 () Bool)

(assert (=> b!1150834 (= e!654599 e!654586)))

(declare-fun res!765478 () Bool)

(assert (=> b!1150834 (=> res!765478 e!654586)))

(assert (=> b!1150834 (= res!765478 (not (= from!1455 i!673)))))

(declare-fun lt!515079 () ListLongMap!16459)

(assert (=> b!1150834 (= lt!515079 (getCurrentListMapNoExtraKeys!4686 lt!515078 lt!515081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!515069 () V!43627)

(assert (=> b!1150834 (= lt!515081 (array!74555 (store (arr!35924 _values!996) i!673 (ValueCellFull!13728 lt!515069)) (size!36461 _values!996)))))

(declare-fun dynLambda!2714 (Int (_ BitVec 64)) V!43627)

(assert (=> b!1150834 (= lt!515069 (dynLambda!2714 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!515074 () ListLongMap!16459)

(assert (=> b!1150834 (= lt!515074 (getCurrentListMapNoExtraKeys!4686 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45137 () Bool)

(declare-fun tp!85746 () Bool)

(declare-fun e!654590 () Bool)

(assert (=> mapNonEmpty!45137 (= mapRes!45137 (and tp!85746 e!654590))))

(declare-fun mapKey!45137 () (_ BitVec 32))

(declare-fun mapValue!45137 () ValueCell!13728)

(declare-fun mapRest!45137 () (Array (_ BitVec 32) ValueCell!13728))

(assert (=> mapNonEmpty!45137 (= (arr!35924 _values!996) (store mapRest!45137 mapKey!45137 mapValue!45137))))

(declare-fun bm!53682 () Bool)

(assert (=> bm!53682 (= call!53685 call!53682)))

(declare-fun b!1150835 () Bool)

(assert (=> b!1150835 (= e!654589 (= call!53683 call!53684))))

(declare-fun b!1150836 () Bool)

(assert (=> b!1150836 call!53686))

(declare-fun lt!515068 () Unit!37771)

(assert (=> b!1150836 (= lt!515068 call!53687)))

(assert (=> b!1150836 (= e!654585 lt!515068)))

(declare-fun res!765484 () Bool)

(assert (=> start!98776 (=> (not res!765484) (not e!654598))))

(assert (=> start!98776 (= res!765484 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36462 _keys!1208))))))

(assert (=> start!98776 e!654598))

(declare-fun tp_is_empty!28875 () Bool)

(assert (=> start!98776 tp_is_empty!28875))

(declare-fun array_inv!27392 (array!74556) Bool)

(assert (=> start!98776 (array_inv!27392 _keys!1208)))

(assert (=> start!98776 true))

(assert (=> start!98776 tp!85747))

(declare-fun array_inv!27393 (array!74554) Bool)

(assert (=> start!98776 (and (array_inv!27393 _values!996) e!654588)))

(declare-fun b!1150837 () Bool)

(assert (=> b!1150837 (= e!654590 tp_is_empty!28875)))

(declare-fun bm!53683 () Bool)

(declare-fun call!53681 () Unit!37771)

(assert (=> bm!53683 (= call!53687 call!53681)))

(declare-fun b!1150838 () Bool)

(declare-fun res!765483 () Bool)

(assert (=> b!1150838 (=> (not res!765483) (not e!654598))))

(assert (=> b!1150838 (= res!765483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150839 () Bool)

(declare-fun e!654592 () Unit!37771)

(declare-fun Unit!37774 () Unit!37771)

(assert (=> b!1150839 (= e!654592 Unit!37774)))

(assert (=> b!1150839 (= lt!515066 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150839 (= c!113915 (and (not lt!515066) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515085 () Unit!37771)

(assert (=> b!1150839 (= lt!515085 e!654597)))

(declare-fun lt!515082 () Unit!37771)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!466 (array!74556 array!74554 (_ BitVec 32) (_ BitVec 32) V!43627 V!43627 (_ BitVec 64) (_ BitVec 32) Int) Unit!37771)

(assert (=> b!1150839 (= lt!515082 (lemmaListMapContainsThenArrayContainsFrom!466 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113913 () Bool)

(assert (=> b!1150839 (= c!113913 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765476 () Bool)

(assert (=> b!1150839 (= res!765476 e!654596)))

(assert (=> b!1150839 (=> (not res!765476) (not e!654593))))

(assert (=> b!1150839 e!654593))

(declare-fun lt!515076 () Unit!37771)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74556 (_ BitVec 32) (_ BitVec 32)) Unit!37771)

(assert (=> b!1150839 (= lt!515076 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150839 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25267)))

(declare-fun lt!515084 () Unit!37771)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74556 (_ BitVec 64) (_ BitVec 32) List!25270) Unit!37771)

(assert (=> b!1150839 (= lt!515084 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25267))))

(assert (=> b!1150839 false))

(declare-fun bm!53684 () Bool)

(declare-fun addStillContains!882 (ListLongMap!16459 (_ BitVec 64) V!43627 (_ BitVec 64)) Unit!37771)

(assert (=> bm!53684 (= call!53681 (addStillContains!882 lt!515072 (ite (or c!113915 c!113911) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113915 c!113911) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1150840 () Bool)

(declare-fun res!765487 () Bool)

(assert (=> b!1150840 (=> (not res!765487) (not e!654598))))

(assert (=> b!1150840 (= res!765487 (= (select (arr!35925 _keys!1208) i!673) k0!934))))

(declare-fun bm!53685 () Bool)

(assert (=> bm!53685 (= call!53686 call!53688)))

(declare-fun b!1150841 () Bool)

(declare-fun res!765474 () Bool)

(assert (=> b!1150841 (=> (not res!765474) (not e!654598))))

(assert (=> b!1150841 (= res!765474 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36462 _keys!1208))))))

(declare-fun b!1150842 () Bool)

(assert (=> b!1150842 (= e!654594 e!654585)))

(declare-fun c!113914 () Bool)

(assert (=> b!1150842 (= c!113914 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515066))))

(declare-fun b!1150843 () Bool)

(assert (=> b!1150843 (contains!6740 call!53682 k0!934)))

(declare-fun lt!515067 () Unit!37771)

(assert (=> b!1150843 (= lt!515067 (addStillContains!882 lt!515064 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1150843 call!53688))

(assert (=> b!1150843 (= lt!515064 (+!3582 lt!515072 (tuple2!18479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!515065 () Unit!37771)

(assert (=> b!1150843 (= lt!515065 call!53681)))

(assert (=> b!1150843 (= e!654597 lt!515067)))

(declare-fun b!1150844 () Bool)

(declare-fun Unit!37775 () Unit!37771)

(assert (=> b!1150844 (= e!654592 Unit!37775)))

(declare-fun b!1150845 () Bool)

(assert (=> b!1150845 (= e!654600 tp_is_empty!28875)))

(declare-fun b!1150846 () Bool)

(declare-fun res!765485 () Bool)

(assert (=> b!1150846 (=> (not res!765485) (not e!654598))))

(assert (=> b!1150846 (= res!765485 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25267))))

(declare-fun b!1150847 () Bool)

(assert (=> b!1150847 (= e!654584 true)))

(assert (=> b!1150847 e!654587))

(declare-fun res!765480 () Bool)

(assert (=> b!1150847 (=> (not res!765480) (not e!654587))))

(assert (=> b!1150847 (= res!765480 (= lt!515073 lt!515072))))

(assert (=> b!1150847 (= lt!515073 (-!1331 lt!515074 k0!934))))

(declare-fun lt!515080 () V!43627)

(assert (=> b!1150847 (= (-!1331 (+!3582 lt!515072 (tuple2!18479 (select (arr!35925 _keys!1208) from!1455) lt!515080)) (select (arr!35925 _keys!1208) from!1455)) lt!515072)))

(declare-fun lt!515077 () Unit!37771)

(declare-fun addThenRemoveForNewKeyIsSame!180 (ListLongMap!16459 (_ BitVec 64) V!43627) Unit!37771)

(assert (=> b!1150847 (= lt!515077 (addThenRemoveForNewKeyIsSame!180 lt!515072 (select (arr!35925 _keys!1208) from!1455) lt!515080))))

(declare-fun get!18316 (ValueCell!13728 V!43627) V!43627)

(assert (=> b!1150847 (= lt!515080 (get!18316 (select (arr!35924 _values!996) from!1455) lt!515069))))

(declare-fun lt!515071 () Unit!37771)

(assert (=> b!1150847 (= lt!515071 e!654592)))

(declare-fun c!113916 () Bool)

(assert (=> b!1150847 (= c!113916 (contains!6740 lt!515072 k0!934))))

(assert (=> b!1150847 (= lt!515072 (getCurrentListMapNoExtraKeys!4686 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98776 res!765484) b!1150833))

(assert (= (and b!1150833 res!765477) b!1150823))

(assert (= (and b!1150823 res!765486) b!1150838))

(assert (= (and b!1150838 res!765483) b!1150846))

(assert (= (and b!1150846 res!765485) b!1150841))

(assert (= (and b!1150841 res!765474) b!1150828))

(assert (= (and b!1150828 res!765475) b!1150840))

(assert (= (and b!1150840 res!765487) b!1150826))

(assert (= (and b!1150826 res!765481) b!1150827))

(assert (= (and b!1150827 res!765479) b!1150831))

(assert (= (and b!1150831 (not res!765482)) b!1150834))

(assert (= (and b!1150834 (not res!765478)) b!1150832))

(assert (= (and b!1150832 c!113912) b!1150820))

(assert (= (and b!1150832 (not c!113912)) b!1150835))

(assert (= (or b!1150820 b!1150835) bm!53678))

(assert (= (or b!1150820 b!1150835) bm!53681))

(assert (= (and b!1150832 (not res!765488)) b!1150847))

(assert (= (and b!1150847 c!113916) b!1150839))

(assert (= (and b!1150847 (not c!113916)) b!1150844))

(assert (= (and b!1150839 c!113915) b!1150843))

(assert (= (and b!1150839 (not c!113915)) b!1150830))

(assert (= (and b!1150830 c!113911) b!1150821))

(assert (= (and b!1150830 (not c!113911)) b!1150842))

(assert (= (and b!1150842 c!113914) b!1150836))

(assert (= (and b!1150842 (not c!113914)) b!1150825))

(assert (= (or b!1150821 b!1150836) bm!53683))

(assert (= (or b!1150821 b!1150836) bm!53682))

(assert (= (or b!1150821 b!1150836) bm!53685))

(assert (= (or b!1150843 bm!53685) bm!53680))

(assert (= (or b!1150843 bm!53683) bm!53684))

(assert (= (or b!1150843 bm!53682) bm!53679))

(assert (= (and b!1150839 c!113913) b!1150819))

(assert (= (and b!1150839 (not c!113913)) b!1150829))

(assert (= (and b!1150839 res!765476) b!1150822))

(assert (= (and b!1150847 res!765480) b!1150824))

(assert (= (and b!1150818 condMapEmpty!45137) mapIsEmpty!45137))

(assert (= (and b!1150818 (not condMapEmpty!45137)) mapNonEmpty!45137))

(get-info :version)

(assert (= (and mapNonEmpty!45137 ((_ is ValueCellFull!13728) mapValue!45137)) b!1150837))

(assert (= (and b!1150818 ((_ is ValueCellFull!13728) mapDefault!45137)) b!1150845))

(assert (= start!98776 b!1150818))

(declare-fun b_lambda!19469 () Bool)

(assert (=> (not b_lambda!19469) (not b!1150834)))

(declare-fun t!36612 () Bool)

(declare-fun tb!9165 () Bool)

(assert (=> (and start!98776 (= defaultEntry!1004 defaultEntry!1004) t!36612) tb!9165))

(declare-fun result!18887 () Bool)

(assert (=> tb!9165 (= result!18887 tp_is_empty!28875)))

(assert (=> b!1150834 t!36612))

(declare-fun b_and!39555 () Bool)

(assert (= b_and!39553 (and (=> t!36612 result!18887) b_and!39555)))

(declare-fun m!1061055 () Bool)

(assert (=> b!1150840 m!1061055))

(declare-fun m!1061057 () Bool)

(assert (=> b!1150826 m!1061057))

(declare-fun m!1061059 () Bool)

(assert (=> b!1150826 m!1061059))

(declare-fun m!1061061 () Bool)

(assert (=> b!1150839 m!1061061))

(declare-fun m!1061063 () Bool)

(assert (=> b!1150839 m!1061063))

(declare-fun m!1061065 () Bool)

(assert (=> b!1150839 m!1061065))

(declare-fun m!1061067 () Bool)

(assert (=> b!1150839 m!1061067))

(declare-fun m!1061069 () Bool)

(assert (=> b!1150822 m!1061069))

(declare-fun m!1061071 () Bool)

(assert (=> bm!53679 m!1061071))

(declare-fun m!1061073 () Bool)

(assert (=> b!1150832 m!1061073))

(declare-fun m!1061075 () Bool)

(assert (=> b!1150832 m!1061075))

(assert (=> b!1150819 m!1061069))

(declare-fun m!1061077 () Bool)

(assert (=> b!1150846 m!1061077))

(declare-fun m!1061079 () Bool)

(assert (=> b!1150824 m!1061079))

(assert (=> bm!53678 m!1061079))

(declare-fun m!1061081 () Bool)

(assert (=> b!1150838 m!1061081))

(declare-fun m!1061083 () Bool)

(assert (=> b!1150834 m!1061083))

(declare-fun m!1061085 () Bool)

(assert (=> b!1150834 m!1061085))

(declare-fun m!1061087 () Bool)

(assert (=> b!1150834 m!1061087))

(declare-fun m!1061089 () Bool)

(assert (=> b!1150834 m!1061089))

(declare-fun m!1061091 () Bool)

(assert (=> bm!53680 m!1061091))

(declare-fun m!1061093 () Bool)

(assert (=> bm!53681 m!1061093))

(declare-fun m!1061095 () Bool)

(assert (=> b!1150843 m!1061095))

(declare-fun m!1061097 () Bool)

(assert (=> b!1150843 m!1061097))

(declare-fun m!1061099 () Bool)

(assert (=> b!1150843 m!1061099))

(declare-fun m!1061101 () Bool)

(assert (=> b!1150827 m!1061101))

(declare-fun m!1061103 () Bool)

(assert (=> b!1150820 m!1061103))

(declare-fun m!1061105 () Bool)

(assert (=> b!1150831 m!1061105))

(declare-fun m!1061107 () Bool)

(assert (=> b!1150831 m!1061107))

(declare-fun m!1061109 () Bool)

(assert (=> b!1150833 m!1061109))

(declare-fun m!1061111 () Bool)

(assert (=> bm!53684 m!1061111))

(declare-fun m!1061113 () Bool)

(assert (=> b!1150828 m!1061113))

(declare-fun m!1061115 () Bool)

(assert (=> start!98776 m!1061115))

(declare-fun m!1061117 () Bool)

(assert (=> start!98776 m!1061117))

(assert (=> b!1150847 m!1061093))

(declare-fun m!1061119 () Bool)

(assert (=> b!1150847 m!1061119))

(declare-fun m!1061121 () Bool)

(assert (=> b!1150847 m!1061121))

(assert (=> b!1150847 m!1061119))

(declare-fun m!1061123 () Bool)

(assert (=> b!1150847 m!1061123))

(assert (=> b!1150847 m!1061073))

(declare-fun m!1061125 () Bool)

(assert (=> b!1150847 m!1061125))

(assert (=> b!1150847 m!1061123))

(declare-fun m!1061127 () Bool)

(assert (=> b!1150847 m!1061127))

(assert (=> b!1150847 m!1061073))

(assert (=> b!1150847 m!1061073))

(declare-fun m!1061129 () Bool)

(assert (=> b!1150847 m!1061129))

(declare-fun m!1061131 () Bool)

(assert (=> b!1150847 m!1061131))

(declare-fun m!1061133 () Bool)

(assert (=> mapNonEmpty!45137 m!1061133))

(check-sat (not bm!53681) (not b!1150839) tp_is_empty!28875 (not b!1150847) (not mapNonEmpty!45137) (not b!1150819) (not b!1150827) (not bm!53679) (not b!1150838) b_and!39555 (not bm!53684) (not b!1150826) (not b_next!24345) (not bm!53678) (not bm!53680) (not b!1150828) (not b!1150843) (not b!1150820) (not b!1150822) (not b!1150846) (not start!98776) (not b!1150832) (not b!1150831) (not b!1150824) (not b!1150833) (not b_lambda!19469) (not b!1150834))
(check-sat b_and!39555 (not b_next!24345))
